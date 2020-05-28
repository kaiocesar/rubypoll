require 'test_helper'
require 'json'

class PollsControllerTest < ActionDispatch::IntegrationTest
  test "should get a poll" do
    poll_expected = {
      "poll_id": 1,
      "poll_description": "This is the description",
      "options": [
        {"option_id": 1, "option_description": "First option"},
        {"option_id": 2, "option_description": "Second option"},
        {"option_id": 3, "option_description": "Third option"},
      ]
    }
    get '/poll/1'
    assert_response :success
    assert_equal poll_expected.to_json, @response.body
  end

  test "should create a poll" do
    expected_response = {"poll_id": 2}
    post '/poll',
      params: {"poll_description": "This is the description", "options": [
        "First option",
        "Second Option",
        "Third Option"
      ]}
    assert_response :success
    assert_equal expected_response.to_json , @response.body
  end

  test "should get poll stats" do
    expected_response = {
      "views": 5,
      "votes": [
        {"option_id": 1, "qty": 2},
        {"option_id": 2, "qty": 1},
        {"option_id": 2, "qty": 0},
      ]
    }
    get '/poll/1/stats'
    assert_response :success
    assert_equal expected_response.to_json, @response.body
  end

  test "create a vote with a invalid option id" do
    expected_response = {"voted": true}
    post '/poll/1/vote',
      params: {"option_id": 1000}
    assert_response :missing
    assert_equal expected_response.to_json, @response.body
  end
  
end