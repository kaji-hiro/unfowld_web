class AddColumnToMicroposts < ActiveRecord::Migration[6.0]
  def change
    add_column :microposts, :article_type, :integer, null: false
  end
end
