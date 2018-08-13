class Developer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable
  has_many :proposals, dependent: :destroy

  has_many :members
  has_many :projects, through: :members
  has_many :developer_skills
  has_many :skills, through: :developer_skills

  has_many :posts
  # has_many :projects throgh:



  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      fullname = auth.info.name.split
      if fullname.length == 1
        user.first_name = auth.info.name
      else
        user.first_name = auth.info.name.split.first
        user.last_name = auth.info.name.split.last
      end
      user.github_username = auth.info.nickname
      user.avatar = auth.info.image
      user.description = auth.extra.raw_info.bio
      user.save
    end
  end
  if !:avatar
    mount_uploader :avatar, PhotoUploader
  end
end
