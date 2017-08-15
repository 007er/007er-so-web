class AddTitleToGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :title, :string
    add_column :groups, :description, :text
  end
end
