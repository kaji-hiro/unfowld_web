class RenamearticleToArticle < ActiveRecord::Migration[6.0]
  def change
    rename_table :articles, :articles
  end
end
