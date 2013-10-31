class Picture < ActiveRecord::Base
	belongs_to :pictureable, polymorphic: true
  attr_accessible :caption, :description, :image
  has_attached_file :image, 
  									:styles => { 
  									:medium => "300x300>",
  									:thumb => "100x100>" },
  									default_url: "/images/:style/missing.png"

  validates :image, presence: true
end
