require 'test_helper'

class SelectTemplateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get select_template_index_url
    assert_response :success
  end

end
