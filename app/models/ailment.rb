class Ailment < ActiveRecord::Base

  # Select menus via Koenpunt/Chosen [1] allows user to select
  # an existing Ailment or type in a new ailment name.
  #   *  Existing ailments are represented by integers.
  #   *  A new ailment name is passed as a string.
  #   *  If no choice is made, a blank string is passed.

  def self.find_or_create(new_id)
    if integer?(new_id)
      Ailment.find_by_id(new_id)
    elsif new_id.present?
      Ailment.find_or_create_by_name(new_id)
    else
      nil  # nil is returned automatically if the if/elsif isn't matched.
           # make this condition explicit for now
    end
  end

  def to_s
    name
  end

  private

  # THANKS: Sarah Mei [2]
  def self.integer?(value)
    value.to_i.to_s == value
  end

end

# [1] https://github.com/harvesthq/chosen/pull/166

# [2] http://stackoverflow.com/questions/1235863/test-if-a-string-is-basically-an-integer-in-quotes-using-ruby
