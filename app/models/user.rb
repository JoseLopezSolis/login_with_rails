class User < ApplicationRecord
  #?What we created
  #email: string
  #password_digest: string
  #
  #password: string
  #password_confirmation:string virtual

  #This is for have the password and password confirmation
  has_secure_password
  #Validations
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

end
