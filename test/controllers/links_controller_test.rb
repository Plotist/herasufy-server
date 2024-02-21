require "test_helper"

class LinksControllerTest < ActionDispatch::IntegrationTest
  test "link successfully created" do

    assert_difference 'Link.count' do
      post "/links", params: { original_url: "https://www.cronofy.com/developer/calendar-api" }
    end

  end

  test "failed to create a link without url" do

    assert_difference 'Link.count', 0 do
      post "/links", params: { original_url: "" }
    end

  end
end
