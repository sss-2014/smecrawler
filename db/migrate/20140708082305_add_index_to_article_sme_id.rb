class AddIndexToArticleSmeId < ActiveRecord::Migration
  def change
      add_index :articles, :sme_id, unique: true
  end
end
