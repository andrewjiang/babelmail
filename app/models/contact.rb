class Contact < ActiveRecord::Base

	validates_format_of :firstname, :with => /([a-z]|[A-Z])/, presence: true
	validates_format_of :lastname, :with => /([a-z]|[A-Z])/, presence: true
	validates_uniqueness_of :email, scope: [:user], presence: true
	validates :language, presence: true

	belongs_to :user

	before_save :set_hash

  def set_hash 

  	self.firstname = self.firstname.split(/(\W)/).map(&:capitalize).join
  	self.lastname = self.lastname.split(/(\W)/).map(&:capitalize).join

  	@trybabel = self.firstname + self.lastname + "." + self.user.username + "@babel-mail.com"

  	@trybabel = @trybabel.delete(' ').downcase

  	@counter = Contact.where(babeladdress: @trybabel).count.to_s

  	if @counter != "0"

  		@trybabel = self.firstname + self.lastname + @counter + "." + self.user.username + "@babel-mail.com"

  		@trybabel = @trybabel.delete(' ').downcase

  	end

  	self.babeladdress = @trybabel

  end


end
