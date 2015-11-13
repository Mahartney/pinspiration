class User < ActiveRecord::Base
  has_many :pins
  has_many :boards, dependent: :destroy
  has_many :tags
  has_many :captions, through: :tags

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
