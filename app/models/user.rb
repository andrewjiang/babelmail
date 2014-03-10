class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  before_create :add_credit

  validates :username, format: { with: /\A[0-9a-zA-Z]+\z/,
   										 message: "only allows letters and numbers" }, 
   										 presence: true, 
   										 uniqueness: true

  validates :account_type, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :contacts

  def add_credit

  	self.credits = 5

  end

end
