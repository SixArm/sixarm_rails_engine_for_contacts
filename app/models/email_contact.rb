class EmailContact < ActiveRecord::Base

  has_many :user_email_contact_joins
  has_many :users, :through => :user_email_contact_joins
  has_many :emails, :through => :user_email_contact_joins
  
end
