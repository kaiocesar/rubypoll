require 'test_helper'

class Api::V1::PollsControllerTest < ActionDispatch::IntegrationTest
  test "should get polls" do
    get '/polls'
    assert_response :success
  end

  # test "should create a poll" do
  #   post '/poll'
  #   assert_response :success
  # end

  # test "should get poll" do
  #   get '/poll/1'
  #   assert_response :success
  # end

  # test "should get poll stats" do
  #   get '/poll/1/stats'
  #   assert_response :success
  # end

  # test "create a vote" do
  #   post '/poll/1/vote'
  #   assert_response :success
  # end
  
end