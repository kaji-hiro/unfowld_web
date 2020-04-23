class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.integer :order
      t.string :name
      t.string :position
      t.string :introduction

      t.timestamps
    end
  end
end
