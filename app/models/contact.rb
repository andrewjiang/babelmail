class Contact < ActiveRecord::Base

	validates :firstname, presence: true
	validates :lastname, presence: true
	validates_uniqueness_of :email, scope: [:user], presence: true
	validates :language, presence: true

	belongs_to :user

end
