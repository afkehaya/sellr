class Listing < ActiveRecord::Base
  has_many :listings_users
  belongs_to :user
end
