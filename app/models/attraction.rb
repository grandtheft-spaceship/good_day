class Attraction < ApplicationRecord
  has_many :agendas
  has_many :users, through: :agendas
end
