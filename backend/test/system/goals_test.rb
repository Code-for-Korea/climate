require "application_system_test_case"

class GoalsTest < ApplicationSystemTestCase
  setup do
    @goal = goals(:one)
  end

  test "visiting the index" do
    visit goals_url
    assert_selector "h1", text: "Goals"
  end

  test "should create goal" do
    visit goals_url
    click_on "New goal"

    fill_in "Data status", with: @goal.data_status
    fill_in "Depth", with: @goal.depth
    fill_in "Detail", with: @goal.detail
    fill_in "Emission 2016", with: @goal.emission_2016
    fill_in "Emission 2017", with: @goal.emission_2017
    fill_in "Emission 2018", with: @goal.emission_2018
    fill_in "Emission 2019", with: @goal.emission_2019
    fill_in "Emission 2020", with: @goal.emission_2020
    fill_in "Emission 2021", with: @goal.emission_2021
    fill_in "Emission 2022", with: @goal.emission_2022
    fill_in "Emission goal 2030", with: @goal.emission_goal_2030
    fill_in "Title", with: @goal.title
    click_on "Create Goal"

    assert_text "Goal was successfully created"
    click_on "Back"
  end

  test "should update Goal" do
    visit goal_url(@goal)
    click_on "Edit this goal", match: :first

    fill_in "Data status", with: @goal.data_status
    fill_in "Depth", with: @goal.depth
    fill_in "Detail", with: @goal.detail
    fill_in "Emission 2016", with: @goal.emission_2016
    fill_in "Emission 2017", with: @goal.emission_2017
    fill_in "Emission 2018", with: @goal.emission_2018
    fill_in "Emission 2019", with: @goal.emission_2019
    fill_in "Emission 2020", with: @goal.emission_2020
    fill_in "Emission 2021", with: @goal.emission_2021
    fill_in "Emission 2022", with: @goal.emission_2022
    fill_in "Emission goal 2030", with: @goal.emission_goal_2030
    fill_in "Title", with: @goal.title
    click_on "Update Goal"

    assert_text "Goal was successfully updated"
    click_on "Back"
  end

  test "should destroy Goal" do
    visit goal_url(@goal)
    click_on "Destroy this goal", match: :first

    assert_text "Goal was successfully destroyed"
  end
end
