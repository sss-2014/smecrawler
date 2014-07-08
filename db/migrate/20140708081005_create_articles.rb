class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :sme_id, null: false
      t.string :title, null: false
      t.text :perex, null: false

      t.timestamps
    end
  end
end
