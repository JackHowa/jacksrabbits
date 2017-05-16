require 'bcrypt'

class User < ActiveRecord::Base
  
	 validates :email, presence: true, uniqueness: true
	 validates :hashed_password, presence: true

   has_many :walks
   has_many :rabbits, through: :walks


  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(plain_text_password)
    @raw_password = plain_text_password
    @password = BCrypt::Password.create(plain_text_password)
    self.hashed_password = @password
  end

  def authenticate(plain_text_password)
    self.password == plain_text_password
  end

end