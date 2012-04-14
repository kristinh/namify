require 'spec_helper'

describe NameList do
  it "saves names as an array" do
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia'})
    list.save
    list.reload.names.should eq(["Amelie", "Zenobia"])
  end

  it "saves list as permutation of name array" do
    list = NameList.new({:title => 'My List', :names => 'Amelie, Zenobia'})
    list.save
    list.reload.list.should eq([["Amelie", "Zenobia"], ["Zenobia", "Amelie"]])
  end
end
