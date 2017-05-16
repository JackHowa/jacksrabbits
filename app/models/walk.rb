class Walk < ActiveRecord::Base
  belongs_to :users 
  belongs_to :rabbits
end
