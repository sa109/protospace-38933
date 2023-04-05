class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :prototypes
  has_many :comments, dependent: :destroy
  validates :name, :profile, :occupation, :position, presence: true
end