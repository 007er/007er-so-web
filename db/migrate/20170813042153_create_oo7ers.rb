class CreateOo7ers < ActiveRecord::Migration[5.1]
  def change
    create_table :oo7ers do |t|
      t.integer :oo7er_id, limit: 8
      t.string :name
      t.belongs_to :group, foreign_key: true

      t.timestamps
    end

    add_index :oo7ers, :oo7er_id
  end
end
