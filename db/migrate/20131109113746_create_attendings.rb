class CreateAttendings < ActiveRecord::Migration
  def change
    create_table :attendings do |t|
	  t.integer  :user_id
      t.string :name
      t.string :attending
      t.string :name1
      t.string :attending1
      t.string :name2
      t.string :attending2
      t.string :name3
      t.string :attending3

      t.timestamps
    end
  end
end
