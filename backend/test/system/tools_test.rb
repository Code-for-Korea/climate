require "application_system_test_case"

class ToolsTest < ApplicationSystemTestCase
  setup do
    @tool = tools(:one)
  end

  test "visiting the index" do
    visit tools_url
    assert_selector "h1", text: "Tools"
  end

  test "should create tool" do
    visit tools_url
    click_on "New tool"

    fill_in "Detail", with: @tool.detail
    fill_in "Goal", with: @tool.goal_id
    fill_in "Indicator 2016", with: @tool.indicator_2016
    fill_in "Indicator 2017", with: @tool.indicator_2017
    fill_in "Indicator 2018", with: @tool.indicator_2018
    fill_in "Indicator 2019", with: @tool.indicator_2019
    fill_in "Indicator 2020", with: @tool.indicator_2020
    fill_in "Indicator 2021", with: @tool.indicator_2021
    fill_in "Indicator 2022", with: @tool.indicator_2022
    fill_in "Indicator goal 2030", with: @tool.indicator_goal_2030
    fill_in "Key indicator", with: @tool.key_indicator
    fill_in "Key indicator unit", with: @tool.key_indicator_unit
    fill_in "Title", with: @tool.title
    fill_in "Tool data status", with: @tool.tool_data_status
    fill_in "Url", with: @tool.url
    click_on "Create Tool"

    assert_text "Tool was successfully created"
    click_on "Back"
  end

  test "should update Tool" do
    visit tool_url(@tool)
    click_on "Edit this tool", match: :first

    fill_in "Detail", with: @tool.detail
    fill_in "Goal", with: @tool.goal_id
    fill_in "Indicator 2016", with: @tool.indicator_2016
    fill_in "Indicator 2017", with: @tool.indicator_2017
    fill_in "Indicator 2018", with: @tool.indicator_2018
    fill_in "Indicator 2019", with: @tool.indicator_2019
    fill_in "Indicator 2020", with: @tool.indicator_2020
    fill_in "Indicator 2021", with: @tool.indicator_2021
    fill_in "Indicator 2022", with: @tool.indicator_2022
    fill_in "Indicator goal 2030", with: @tool.indicator_goal_2030
    fill_in "Key indicator", with: @tool.key_indicator
    fill_in "Key indicator unit", with: @tool.key_indicator_unit
    fill_in "Title", with: @tool.title
    fill_in "Tool data status", with: @tool.tool_data_status
    fill_in "Url", with: @tool.url
    click_on "Update Tool"

    assert_text "Tool was successfully updated"
    click_on "Back"
  end

  test "should destroy Tool" do
    visit tool_url(@tool)
    click_on "Destroy this tool", match: :first

    assert_text "Tool was successfully destroyed"
  end
end
