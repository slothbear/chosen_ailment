class Prac < ActiveRecord::Base
  belongs_to :ailment
  attr_accessible :ailment_attributes, :name, :ailment, :category, :ailment_id

  validates_presence_of :name

  def ailment_id=(aid)
    self.ailment = Ailment.find_or_create(aid)
  end

end