class AddListToNameLists < ActiveRecord::Migration
  def change
    add_column :name_lists, :list, :text
  end
end
