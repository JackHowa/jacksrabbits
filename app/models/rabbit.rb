class Rabbit < ActiveRecord::Base
  has_many :walks 
  has_many :users, through: :walks 
end
