class Offer < ApplicationRecord
  belongs_to :user

  validates :category, :title, :description, :electric, :safety_equipment,
            :price_in_cents, :optional, :address, presence: true
  validates :category, inclusion: { in: ['Bicycle', 'Skateboard', 'Scooter', 'Rollerblades'] }
  validates :price_in_cents, numericality: { only_integer: true }
  validates :rating, length: { in: 0..5 }
  validates :description, length: { in: 10..300 }, allow_blank: false
  validates :title, length: { in: 10..30 }, allow_blank: false
  validates :price_in_cents, { minimum: 100 }
  validates :optional, inclusion: { in: ['None', 'Padlock', 'Backseat'] }
end
