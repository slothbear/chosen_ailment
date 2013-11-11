class Prac < ActiveRecord::Base
  belongs_to :ailment
  # accepts_nested_attributes_for :ailment
  attr_accessible :ailment_attributes, :name, :ailment, :category, :ailment_id

  validates_presence_of :name

  def ailment_id=(aid)
    self.ailment = if integer?(aid)
      Ailment.find_by_id(aid)
    elsif aid.present?
      Ailment.create(:name => aid)
    else
      Ailment.new
    end
  end

  private

  # TODO: [THANKS] To Sarah Mei [1].
  def integer?(value)
    value.to_i.to_s == value
  end

end

# [1] http://stackoverflow.com/questions/1235863/test-if-a-string-is-basically-an-integer-in-quotes-using-ruby
