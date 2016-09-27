class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, length: {in: 6..20}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
