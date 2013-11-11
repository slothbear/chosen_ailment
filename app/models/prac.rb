class Prac < ActiveRecord::Base
  belongs_to :ailment
  # accepts_nested_attributes_for :ailment
  attr_accessible :ailment_attributes, :name, :ailment, :category, :ailment_id

  validates_presence_of :name

  def ailment_attributes=(attrs)
    p "------------------your attrs:"
    p "------------------#{attrs.inspect}"
    self.ailment = Ailment.find_by_id(attrs[:id]) ||
      Ailment.create(:name => attrs[:id])

    p "++++++++ #{ailment.attributes.inspect}"
    p "++++++++ #{ailment.id}"
  end
end
