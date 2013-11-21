class Ailment < ActiveRecord::Base
  validates :name, :presence => true

  # Select menus via Koenpunt/Chosen [1] allows user to
  # select an existing Ailment or type in a new ailment name.
  #   *  Existing ailments are represented by integers.
  #   *  A new ailment name is passed as a string.
  #   *  If no choice is made, a blank string is passed.

  def self.find_or_new_name(attribute)
    if integer?(attribute)
      find_by_id(attribute)
    elsif attribute.present?
      find_or_initialize_by_name(attribute)
    else
      nil
    end
  end

  def self.choices(new_choice)
    list = order("lower(name)")
    list.unshift(new(:name => new_choice)) if new_choice
    list
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
