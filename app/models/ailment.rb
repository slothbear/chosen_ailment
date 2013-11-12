class Ailment < ActiveRecord::Base

  def self.find_or_create(aid)
    if integer?(aid)
      Ailment.find_by_id(aid)
    elsif aid.present?
      Ailment.find_or_create_by_name(aid)
    else
      Ailment.new
    end
  end

  def to_s
    name
  end

  private

  # TODO: [THANKS] To Sarah Mei [1].
  def self.integer?(value)
    value.to_i.to_s == value
  end

end

# [1] http://stackoverflow.com/questions/1235863/test-if-a-string-is-basically-an-integer-in-quotes-using-ruby
