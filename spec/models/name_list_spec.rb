require 'spec_helper'

describe NameList do
  it "saves names as an array" do
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia'})
    list.save
    list.reload.names.should eq(["Amelie", "Zenobia"])
  end
end
