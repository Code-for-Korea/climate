require "administrate/base_dashboard"

class GoalDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    depth: Field::String,
    detail: Field::Text,
    data_status: Field::String,
    emission_2016: Field::Number.with_options(searchable: false),
    emission_2017: Field::Number.with_options(searchable: false),
    emission_2018: Field::Number.with_options(searchable: false),
    emission_2019: Field::Number.with_options(searchable: false),
    emission_2020: Field::Number.with_options(searchable: false),
    emission_2021: Field::Number.with_options(searchable: false),
    emission_2022: Field::Number.with_options(searchable: false),
    emission_goal_2030: Field::Number.with_options(searchable: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    title
    depth
    detail
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    title
    depth
    detail
    data_status
    emission_2016
    emission_2017
    emission_2018
    emission_2019
    emission_2020
    emission_2021
    emission_2022
    emission_goal_2030
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    title
    depth
    detail
    data_status
    emission_2016
    emission_2017
    emission_2018
    emission_2019
    emission_2020
    emission_2021
    emission_2022
    emission_goal_2030
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

  # Overwrite this method to customize how goals are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(goal)
  #   "Goal ##{goal.id}"
  # end

  def display_resource(goal)
    "#{goal.title} (##{goal.id})"
  end
end
