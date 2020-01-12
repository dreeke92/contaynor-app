# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_12_131519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "description", comment: "A name describing the location. e.g. client warehouse"
    t.string "street_name", comment: "street name"
    t.integer "street_number", comment: "street number"
    t.integer "postal_code", comment: "postal code"
    t.string "city", comment: "city"
    t.string "country", comment: "country"
    t.string "telephone_number", comment: "telephone number"
    t.bigint "organization_id"
    t.boolean "is_headquarter", comment: "If the organization belongs to an organization, the boolean denotes whether or not the address is an HQ of the organization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_addresses_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name", comment: "Name of the organization"
    t.string "industry", comment: "Industry of the organization"
    t.string "logo_img", comment: "Cloudinary reference of the logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trees_planted", comment: "Amount of trees planted as a result of transportation assignments"
    t.float "tree_emission_impact", comment: "Amount of CO2 reduced from the atmosphere as a result of trees planted"
    t.float "distance_realized", comment: "Amount of zero-emission KMs driven as a result of transportation assignments"
    t.float "distance_emission_impact", comment: "Amount of CO2 saved from driving zero-emission with Contaynor"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", comment: "First name of the user"
    t.string "last_name", comment: "Second name of the user"
    t.string "company_role", comment: "Company role of the user"
    t.string "telephone_number", comment: "Personal telephone number of the user"
    t.boolean "organization_admin", default: false, comment: "Boolean denoting whether or not the user has admin rights in his/her organization"
    t.boolean "employee_admin", default: false, comment: "Boolean denoting whether or not the user is an employee of Contaynor, and thus has admin rights"
    t.boolean "master_admin", default: false, comment: "Boolean denoting wether or not the user has master admin rights"
    t.boolean "dark_theme", default: false, comment: "Preferred theme is usually white team, unless the user chooses for the dark theme and sets boolean to true"
    t.bigint "organization_id", comment: "A user is part of an organization, be it Contaynor or a client of contaynor."
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["organization_id"], name: "index_users_on_organization_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "organizations"
end
