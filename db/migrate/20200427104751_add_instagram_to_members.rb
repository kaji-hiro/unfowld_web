class AddInstagramToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :instagram, :string
  end
end
