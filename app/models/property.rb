class Property < ApplicationRecord
  validates :property_name, presence: true
  validates :rent, presence: true
  validates :street_address, presence: true
  validates :age, presence: true
  has_many :nearstations, dependent: :destroy, inverse_of: :property
  accepts_nested_attributes_for :nearstations, allow_destroy: true, reject_if: :all_blank

  # def reject_both_blank(attributes)
  #   if attributes[:property_id]
  #     attributes.merge!(_destroy: "1") if attributes[:route].blank? and attributes[:station].blank? and attributes[:minutes_walk].blank?
  #     !attributes[:route].blank? and attributes[:station].blank? and attributes[:minutes_walk].blank?
  #   else
  #     attributes[:route].blank? and attributes[:station].blank? and attributes[:minutes_walk].blank?
  #   end
  # end

end
