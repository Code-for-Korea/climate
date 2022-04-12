require "application_system_test_case"

class DataSourcesTest < ApplicationSystemTestCase
  setup do
    @data_source = data_sources(:one)
  end

  test "visiting the index" do
    visit data_sources_url
    assert_selector "h1", text: "Data sources"
  end

  test "should create data source" do
    visit data_sources_url
    click_on "New data source"

    fill_in "Detail", with: @data_source.detail
    fill_in "Title", with: @data_source.title
    fill_in "Url", with: @data_source.url
    click_on "Create Data source"

    assert_text "Data source was successfully created"
    click_on "Back"
  end

  test "should update Data source" do
    visit data_source_url(@data_source)
    click_on "Edit this data source", match: :first

    fill_in "Detail", with: @data_source.detail
    fill_in "Title", with: @data_source.title
    fill_in "Url", with: @data_source.url
    click_on "Update Data source"

    assert_text "Data source was successfully updated"
    click_on "Back"
  end

  test "should destroy Data source" do
    visit data_source_url(@data_source)
    click_on "Destroy this data source", match: :first

    assert_text "Data source was successfully destroyed"
  end
end
