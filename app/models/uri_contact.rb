class UriContact < ActiveRecord::Base

  has_many :user_uri_contact_joins
  has_many :users, :through => :user_uri_contact_joins
  has_many :uris, :through => :user_uri_contact_joins

end
