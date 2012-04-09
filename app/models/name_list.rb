class NameList < ActiveRecord::Base
  serialize :names

  before_create do
    self.names = names.scan(/[[:alpha:]-]+/)
  end
end
