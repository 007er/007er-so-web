class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.belongs_to :oo7er

      t.timestamps
    end

    add_foreign_key :articles, :oo7ers, primary_key: 'oo7er_id'
  end
end
