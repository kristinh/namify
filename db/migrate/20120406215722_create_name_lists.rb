class CreateNameLists < ActiveRecord::Migration
  def change
    create_table :name_lists do |t|
      t.string :title
      t.text :names
      t.boolean :published

      t.timestamps
    end
  end
end
