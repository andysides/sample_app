require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  # Tests that the root_path is rendered by the correct template and that all our links are present
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path, count: 2
  end

end
