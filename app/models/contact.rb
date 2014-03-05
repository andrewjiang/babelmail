class Contact < ActiveRecord::Base

	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :email, presence: true
	validates :language, presence: true

end
