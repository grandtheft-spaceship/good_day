class User < ApplicationRecord
  has_many :agendas
  has_many :eateries, through: :agendas
  has_many :attractions, through: :agendas
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
