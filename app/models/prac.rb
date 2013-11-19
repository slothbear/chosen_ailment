class Prac < ActiveRecord::Base
  belongs_to :ailment
  attr_accessible :name, :ailment_id
  validates :name, :presence => true
end
