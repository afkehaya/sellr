class Listing < ActiveRecord::Base
  has_many :listings_users
  belongs_to :user
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" },
    :url => "/system/:attachment/:id/:style/:basename.:extension",
    :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  validates_attachment :image, 
    :presence => true,
    :content_type => { :content_type => /\Aimage/ },
    :attachment_size => { less_than: 5.megabytes }
end
