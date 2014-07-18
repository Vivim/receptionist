class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = %w[building_owner company_owner worker]
  validates :first_name, :last_name, :telephone,  presence: true
  has_many :buildings, dependent: :destroy
  has_many :companies, dependent: :destroy


  def role_to_str
  	self.role.split('_').join(' ').capitalize
  end
end
