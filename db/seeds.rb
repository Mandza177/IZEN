# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "creating specialty"

specialty = ["Ostéopathie", "Chiropraxie", "Hypnose", "Naturopathie", "Massage", "Réfléxologie", "Psychothérapie", "Sophrologie", "Méditation", "Art thérapeute"]

puts "creating user"

user0 = User.create!(name: "Pierre", email: "pierregigolo@gmail.com", password: "biloute")

# e_table "users", force: :cascade do |t|
#   t.string "email", default: "", null: false
#   t.string "encrypted_password", default: "", null: false
#   t.string "reset_password_token"
#   t.datetime "reset_password_sent_at"
#   t.datetime "remember_created_at"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "first_name"
#   t.string "last_name"
#   t.string "location"
#   t.string "profile_custom"
#   t.index ["email"], name: "index_users_on_email", unique: true
#   t.index ["reset_ssword_token"], name: "index_users_on_reset_password_token", unique: true


# puts "creating user done"
