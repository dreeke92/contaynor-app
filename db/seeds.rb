# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all existing accounts"
Address.destroy_all
User.destroy_all
OrganizationStat.destroy_all
User.destroy_all
Organization.destroy_all

puts "Creating organizations and their stats..."
contaynor = Organization.create!(name: "Contaynor", industry: "Transportation")
contaynor_stat = OrganizationStat.create!(tree_count: 15, tree_emission_impact: 3000, kilometer_count: 1500, kilometer_emission_impact: 30000, organization: contaynor)
ontex = Organization.create!(name: "Ontex", industry: "FMCG producer")
ontex_stat = OrganizationStat.create!(tree_count: 1, tree_emission_impact: 150, kilometer_count: 150, kilometer_emission_impact: 1500, organization: ontex)

puts "Creating users..."
andreas = User.create!(email: "andreas@contaynor.com", password: "123456", first_name: "Andreas", last_name: "Van Assche", dark_theme: false, organization: contaynor)
andreas.organization = contaynor
suzanne = User.create!(email: "suzanne@ontex.com", password: "123456", first_name: "Suzanne", last_name: "Ogiers", dark_theme: false, organization: ontex)
suzanne.organization = ontex
