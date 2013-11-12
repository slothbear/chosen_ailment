class Prac < ActiveRecord::Base
  belongs_to :ailment
  attr_accessible :name, :ailment_id

  validates :name, :presence => true

  def ailment_id=(aid)
    self.ailment = Ailment.find_or_create(aid)
  end

end