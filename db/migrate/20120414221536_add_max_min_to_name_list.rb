class AddMaxMinToNameList < ActiveRecord::Migration
  def change
    add_column :name_lists, :at_least, :integer
    add_column :name_lists, :at_most, :integer
  end
end
