class Membership < ApplicationRecord
  validates :gym_id, presence: true
  validates :client_id, presence: true
  validates :charge, presence: true

  belongs_to :gym
  belongs_to :client
end