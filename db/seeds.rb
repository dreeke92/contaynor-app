# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all existing accounts"
Address.destroy_all
Organization.destroy_all
User.destroy_all

puts "Creating organizations and their stats..."
contaynor = Organization.create!(name: "Contaynor", industry: "Transportation", trees_planted: "100", tree_emission_impact: "5", distance_realized: "200", distance_emission_impact: "10")
ontex = Organization.create!(name: "Ontex", industry: "FMCG producer", trees_planted: "100", tree_emission_impact: "5", distance_realized: "200", distance_emission_impact: "10")

puts "Creating users..."
andreas = User.create!(email: "andreas@contaynor.com", password: "123456", first_name: "Andreas", last_name: "Van Assche", dark_theme: false, organization: contaynor)
andreas.organization = contaynor
suzanne = User.create!(email: "suzanne@ontex.com", password: "123456", first_name: "Suzanne", last_name: "Ogiers", dark_theme: false, organization: ontex)
suzanne.organization = ontex
