class AddColumnToMember < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :category, :integer
  end
end
