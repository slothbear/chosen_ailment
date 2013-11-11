require 'test_helper'

class SkeletonTest < ActionDispatch::IntegrationTest
  fixtures :all

  test "load home page" do
    visit new_prac_path
    # fill_in :name, :with => "test name"
    fill_in :category, :with => "jones"
    click_button :submit
  end
end
