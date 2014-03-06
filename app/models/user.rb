class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  validates :username, format: { with: /\A[0-9a-zA-Z]+\z/,
   										 message: "only allows letters and numbers" }, 
   										 presence: true, 
   										 uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contacts       
end
