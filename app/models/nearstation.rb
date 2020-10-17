class Nearstation < ApplicationRecord
  belongs_to :property, inverse_of: :nearstations
end
