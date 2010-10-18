class PostalContact < ActiveRecord::Base

  has_many :user_postal_contact_joins
  has_many :users, :through => :user_postal_contact_joins
  has_many :postals, :through => :user_postal_contact_joins

end
