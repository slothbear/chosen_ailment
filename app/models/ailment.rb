class Ailment < ActiveRecord::Base
  def to_s
    name
  end

  def self.choices(params)
    return Ailment.all
    choices = Ailment.all
    if params.has_key?("prac")
      choices << Ailment.new(:name => [:prac][:ailment_id])
    end
    choices
  end

  def self.find_or_create(aid)
    if integer?(aid)
      Ailment.find_by_id(aid)
    elsif aid.present?
      Ailment.create(:name => aid, :category => aid)
    else
      Ailment.new
    end
  end

  private

  # TODO: [THANKS] To Sarah Mei [1].
  def self.integer?(value)
    value.to_i.to_s == value
  end

end

# [1] http://stackoverflow.com/questions/1235863/test-if-a-string-is-basically-an-integer-in-quotes-using-ruby
