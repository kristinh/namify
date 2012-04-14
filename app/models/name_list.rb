class NameList < ActiveRecord::Base
  serialize :names
  serialize :list

  before_create do
    if !names.nil?  
      self.names = names.scan(/[[:alpha:]-]+/).map! { |name| name.capitalize }
    end

    self.list = iterate(self.names,2,2)
  end

  def iterate(names,min,max)
    return nil if names.nil? || names.length <= 0
    return [names] if names.length == 1 

    if min.nil? || min == 0
      min = 1
    end

    if max.nil? || max == 0
      max = 1
    end

    if min > max 
      min, max = max, min 
    end

    if max > names.length
      max = names.length
    end

    if min > names.length
      min = names.length
    end

    name_list = names
    name_list.sort!

    permutations = []
    (min..max).each do |num|
      name_list.combination(num).to_a.each do |combo|
        combo.permutation.to_a.each do |perm|
          permutations << perm
        end 
      end
    end

    permutations.sort!
  end
end
