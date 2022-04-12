require "test_helper"

class GoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goal = goals(:one)
  end

  test "should get index" do
    get goals_url
    assert_response :success
  end

  test "should get new" do
    get new_goal_url
    assert_response :success
  end

  test "should create goal" do
    assert_difference("Goal.count") do
      post goals_url, params: { goal: { data_status: @goal.data_status, depth: @goal.depth, detail: @goal.detail, emission_2016: @goal.emission_2016, emission_2017: @goal.emission_2017, emission_2018: @goal.emission_2018, emission_2019: @goal.emission_2019, emission_2020: @goal.emission_2020, emission_2021: @goal.emission_2021, emission_2022: @goal.emission_2022, emission_goal_2030: @goal.emission_goal_2030, title: @goal.title } }
    end

    assert_redirected_to goal_url(Goal.last)
  end

  test "should show goal" do
    get goal_url(@goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_goal_url(@goal)
    assert_response :success
  end

  test "should update goal" do
    patch goal_url(@goal), params: { goal: { data_status: @goal.data_status, depth: @goal.depth, detail: @goal.detail, emission_2016: @goal.emission_2016, emission_2017: @goal.emission_2017, emission_2018: @goal.emission_2018, emission_2019: @goal.emission_2019, emission_2020: @goal.emission_2020, emission_2021: @goal.emission_2021, emission_2022: @goal.emission_2022, emission_goal_2030: @goal.emission_goal_2030, title: @goal.title } }
    assert_redirected_to goal_url(@goal)
  end

  test "should destroy goal" do
    assert_difference("Goal.count", -1) do
      delete goal_url(@goal)
    end

    assert_redirected_to goals_url
  end
end
