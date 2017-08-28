class AddEditToCategories < ActiveRecord::Migration[5.1]
  def change
    def change
      create_table :categories do |t|
        t.string :name

        t.timestamps
      end

     add_column :works, :category_id, :integer
     add_index :works, :category_id
    end
  end
end
