class Agenda < ApplicationRecord
  belongs_to :user
  belongs_to :eatery
  belongs_to :attraction
end
