class Project < ActiveRecord::Base
	belongs_to :users
	has_many :pictures, as: :pictureable
  attr_accessible :description, :name, :url
  
end
