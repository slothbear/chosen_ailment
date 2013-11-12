class Prac < ActiveRecord::Base

  belongs_to :ailment
  attr_accessible :name, :ailment_id
  validates :name, :presence => true

  def ailment_id=(id_or_name)
    self.ailment = Ailment.find_or_create(id_or_name)
  end

end
