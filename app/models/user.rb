class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, uniqueness: true

  has_many :locations
  has_many :reviews
  has_one_attached :avatar

  def avatar_or_default_url
    avatar.attached? ? avatar_url : default_avatar_url
  end

  private

  def default_avatar_url
    ActionController::Base.helpers.asset_path('avatar-white.png')
  end
end
