class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name1
      t.string :attending1
      t.string :name2
      t.string :attending2
      t.string :name3
      t.string :attending3
      t.string :name4
      t.string :attending4

      t.timestamps
    end
  end
end
