class PhoneContact < ActiveRecord::Base

  has_many :user_phone_contact_joins
  has_many :users, :through => :user_phone_contact_joins
  has_many :phones, :through => :user_phone_contact_joins

end
