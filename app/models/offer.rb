class Offer < ApplicationRecord
  belongs_to :user

  validates :category, :title, :description, :price, presence: true

  validates :category, inclusion: { in: ['Bicycle', 'Skateboard', 'Scooter', 'Rollerblades'] }

  validates :price, numericality: { only_integer: true }

  # validates :rating, length: { in: 0..5 }

  validates :description, length: { in: 10..800 }, allow_blank: false

  validates :title, length: { in: 10..100 }, allow_blank: false

  validates :price, numericality: { greater_than_or_equal_to: 1}, allow_blank: false

  validates :optional, inclusion: { in: ['None', 'Padlock', 'Backseat'] }

  validates :electric, :safety_equipment, inclusion: { in: [true, false] }, allow_blank: false
end
