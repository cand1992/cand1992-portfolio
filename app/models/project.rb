class Project < ActiveRecord::Base
	belongs_to :user
	has_many :pictures, as: :pictureable
	accepts_nested_attributes_for :pictures
  attr_accessible :description, :name, :url, :pictures_attributes
  
end
