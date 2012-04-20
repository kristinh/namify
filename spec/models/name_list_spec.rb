require 'spec_helper'

describe NameList do
  it "saves names as an array" do
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia'})
    list.save
    list.reload.names.should eq(["Amelie", "Zenobia"])
  end

  it "saves list as permutation of name array" do
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia', :at_least => 2, :at_most => 2})
    list.save
    list.reload.list.should eq([["Amelie", "Zenobia"], ["Zenobia", "Amelie"]])
  end

  it "limits the minimum size of permutation when not specified" do
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia, Ida'})
    list.save
    list.reload.list.each do |name| 
      name.length.should be >= NameList.never_less_than
    end
  end

  it "limits the maximum size of permutation when not specified" do
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia, Ida, Marie, Tenenbaum, Lovely, Backwoard'})
    list.save
    list.reload.list.each do |name| 
      name.length.should be <=  NameList.never_more_than
    end
  end

  it "sets the maximium size of permutations" do
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia, Ida, Denise, Barbie', :at_most => 3 })
    list.save
    list.reload.list.each do |name| 
      name.length.should be <= 3 
    end
  end

  it "sets the minimum size of permutations" do
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia, Ida, Denise, Barbie', :at_least => 2, :at_most => 3 })
    list.save
    list.reload.list.each do |name| 
      name.length.should be >= 2  
    end
  end

  it "sets minimum if too small" do 
    min = NameList.never_less_than - 1
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia, Ida, Denise, Barbie', :at_least => min})
    list.save
    list.reload.list.each do |name| 
      name.length.should be >= min  
    end
  end

  it "sets maximum if too large" do
    max = NameList.never_more_than + 1
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia, Ida, Denise, Barbie, Xanadu, Tina, Leona, Kitty', :at_most => max })
    list.save
    list.reload.list.each do |name| 
      name.length.should be <= max
    end
  end

  it "checks that names in name list are unique" do
    list = NameList.new({:title => 'My List', :names => 'Amelie, Amelie, Amelie', :at_least => 1, :at_most => 1})
    list.save
    list.reload.names.should eq(["Amelie"])
  end

end
