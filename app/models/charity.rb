class Charity < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects, dependent: :destroy
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  mount_uploader :logo, PhotoUploader

end
