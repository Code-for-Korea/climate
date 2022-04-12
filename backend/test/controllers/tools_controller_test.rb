require "test_helper"

class ToolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tool = tools(:one)
  end

  test "should get index" do
    get tools_url
    assert_response :success
  end

  test "should get new" do
    get new_tool_url
    assert_response :success
  end

  test "should create tool" do
    assert_difference("Tool.count") do
      post tools_url, params: { tool: { detail: @tool.detail, goal_id: @tool.goal_id, indicator_2016: @tool.indicator_2016, indicator_2017: @tool.indicator_2017, indicator_2018: @tool.indicator_2018, indicator_2019: @tool.indicator_2019, indicator_2020: @tool.indicator_2020, indicator_2021: @tool.indicator_2021, indicator_2022: @tool.indicator_2022, indicator_goal_2030: @tool.indicator_goal_2030, key_indicator: @tool.key_indicator, key_indicator_unit: @tool.key_indicator_unit, title: @tool.title, tool_data_status: @tool.tool_data_status, url: @tool.url } }
    end

    assert_redirected_to tool_url(Tool.last)
  end

  test "should show tool" do
    get tool_url(@tool)
    assert_response :success
  end

  test "should get edit" do
    get edit_tool_url(@tool)
    assert_response :success
  end

  test "should update tool" do
    patch tool_url(@tool), params: { tool: { detail: @tool.detail, goal_id: @tool.goal_id, indicator_2016: @tool.indicator_2016, indicator_2017: @tool.indicator_2017, indicator_2018: @tool.indicator_2018, indicator_2019: @tool.indicator_2019, indicator_2020: @tool.indicator_2020, indicator_2021: @tool.indicator_2021, indicator_2022: @tool.indicator_2022, indicator_goal_2030: @tool.indicator_goal_2030, key_indicator: @tool.key_indicator, key_indicator_unit: @tool.key_indicator_unit, title: @tool.title, tool_data_status: @tool.tool_data_status, url: @tool.url } }
    assert_redirected_to tool_url(@tool)
  end

  test "should destroy tool" do
    assert_difference("Tool.count", -1) do
      delete tool_url(@tool)
    end

    assert_redirected_to tools_url
  end
end
