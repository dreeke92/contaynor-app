class AddStatsToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :trees_planted, :integer, comment: "Amount of trees planted as a result of transportation assignments"
    add_column :organizations, :tree_emission_impact, :float, comment: "Amount of CO2 reduced from the atmosphere as a result of trees planted"
    add_column :organizations, :distance_realized, :float, comment: "Amount of zero-emission KMs driven as a result of transportation assignments"
    add_column :organizations, :distance_emission_impact, :float, comment: "Amount of CO2 saved from driving zero-emission with Contaynor"
  end
end
