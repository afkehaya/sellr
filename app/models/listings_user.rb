class ListingsUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :merchant
  belongs_to :listing
end
