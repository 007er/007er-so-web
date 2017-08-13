class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.belongs_to :oo7er
      t.belongs_to :article, foreign_key: true

      t.timestamps
    end

    add_foreign_key :comments, :oo7ers, primary_key: 'oo7er_id'
  end
end
