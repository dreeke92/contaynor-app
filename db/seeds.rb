# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all existing accounts"
AddressBook.destroy_all
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

puts "Creating addresses for organizations"
ontex_hq_address = Address.create!(description: "Ontext Headquarters", street_name: "Korte Keppestraat", street_number: "21", postal_code: "9320", city: "Aalst", country: "Belgium")
bme_address = Address.create!(description: "BME Genk", street_name: "Henry Fordlaan", street_number: "62", postal_code: "3600", city: "Genk", country: "Belgium")
contaynor_address = Address.create!(description: "Contaynor HQ", street_name: "Tervurenlaan", street_number: "36/18", postal_code: "1040", city: "Etterbeek", country: "Belgium")

puts "Creating Address books"
AddressBook.create!(organization: ontex, address: ontex_hq_address, address_relation: true, head_quarters: true)
AddressBook.create!(organization: ontex, address: bme_address, address_relation: false, head_quarters: false)

AddressBook.create!(organization: contaynor, address: ontex_hq_address, address_relation: false, head_quarters: false)
AddressBook.create!(organization: contaynor, address: bme_address, address_relation: false, head_quarters: false)
AddressBook.create!(organization: contaynor, address: contaynor_address, address_relation: true, head_quarters: true)

