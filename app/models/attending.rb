class Attending < ActiveRecord::Base
  attr_accessible :attending, :attending1, :attending2, :attending3, :name, :name1, :name2, :name3
  
  belongs_to :user
end
