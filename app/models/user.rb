class User < ActiveRecord::Base
  has_many :projects
  has_one :picture, as: :pictureable
  accepts_nested_attributes_for :picture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :picture_attributes
  validates :first_name, :last_name, presence: true

  
  

  # attr_accessible :title, :body
  after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver
  end

end
