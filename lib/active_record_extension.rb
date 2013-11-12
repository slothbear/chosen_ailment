require 'active_support/concern'

module ActiveRecordExtension

  extend ActiveSupport::Concern

  module ClassMethods
    # THANKS: Sarah Mei [1]
    def integer?(value)
      value.to_i.to_s == value
    end
  end

end

ActiveRecord::Base.send(:include, ActiveRecordExtension)

# [1] http://stackoverflow.com/questions/1235863/test-if-a-string-is-basically-an-integer-in-quotes-using-ruby
