require "administrate/base_dashboard"

class ToolDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    goal: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    detail: Field::Text,
    key_indicator: Field::String,
    key_indicator_unit: Field::String,
    indicator_2016: Field::String.with_options(searchable: false),
    indicator_2017: Field::String.with_options(searchable: false),
    indicator_2018: Field::String.with_options(searchable: false),
    indicator_2019: Field::String.with_options(searchable: false),
    indicator_2020: Field::String.with_options(searchable: false),
    indicator_2021: Field::String.with_options(searchable: false),
    indicator_2022: Field::String.with_options(searchable: false),
    indicator_goal_2030: Field::String.with_options(searchable: false),
    tool_data_status: Field::String,
    url: Field::Text,
    data_sources: Field::HasMany.with_options(
      searchable: true,
      searchable_fields: ['title']
    ),
    policies: Field::HasMany.with_options(
      searchable: true,
      searchable_fields: ['title']
    ),
    stories: Field::HasMany.with_options(
      searchable: true,
      searchable_fields: ['title']
    ),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    goal
    id
    title
    detail
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    goal
    id
    title
    detail
    key_indicator
    key_indicator_unit
    indicator_2016
    indicator_2017
    indicator_2018
    indicator_2019
    indicator_2020
    indicator_2021
    indicator_2022
    indicator_goal_2030
    tool_data_status
    url
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    goal
    title
    detail
    key_indicator
    key_indicator_unit
    indicator_2016
    indicator_2017
    indicator_2018
    indicator_2019
    indicator_2020
    indicator_2021
    indicator_2022
    indicator_goal_2030
    tool_data_status
    url
    data_sources
    policies
    stories
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how tools are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(tool)
  #   "Tool ##{tool.id}"
  # end
end
