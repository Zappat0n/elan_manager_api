# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "Classrooms", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 45
  end

  create_table "Contacts", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 45
    t.string "email", limit: 45
    t.string "mobile_phone", limit: 45
    t.string "job", limit: 45
    t.integer "student1"
    t.integer "student2"
    t.integer "student3"
    t.integer "student4"
    t.integer "student5"
    t.text "notes", size: :long
    t.index ["student1"], name: "fk_Contacts_1_idx"
    t.index ["student2"], name: "fk_Contacts_2_idx"
    t.index ["student3"], name: "fk_Contacts_3_idx"
    t.index ["student4"], name: "fk_Contacts_4_idx"
  end

  create_table "DriveFolderKeys", primary_key: "folder", id: { type: :string, limit: 45 }, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "secret", limit: 45, null: false
  end

  create_table "Events", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.date "date"
    t.integer "student"
    t.integer "event_type"
    t.integer "event_id"
    t.integer "event_sub"
    t.text "notes", size: :long
    t.integer "teacher"
    t.index ["event_type"], name: "fk_Event_2_idx"
    t.index ["student"], name: "fk_Event_1_idx"
    t.index ["teacher"], name: "fk_Events_1_idx"
  end

  create_table "EventsEoYReport", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "date", limit: 45
    t.integer "student"
    t.integer "event_id"
    t.text "notes", size: :long
    t.integer "teacher"
  end

  create_table "EventsYet", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.date "date", null: false
    t.integer "student", null: false
    t.integer "event_id", null: false
    t.text "notes", size: :long
    t.integer "teacher"
  end

  create_table "Events_type", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 45
  end

  create_table "Global_vars", primary_key: ["year", "name"], charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.integer "year", null: false
    t.string "name", limit: 16, null: false
    t.string "value", limit: 32, null: false
  end

  create_table "Links", primary_key: ["presentation", "presentation_sub", "Outcomes", "Targets"], charset: "utf8", collation: "utf8_spanish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.integer "presentation", null: false
    t.integer "presentation_sub", null: false
    t.integer "Outcomes", null: false
    t.integer "Targets", null: false
    t.text "Comment", size: :long
  end

  create_table "Media", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.date "date"
    t.integer "student"
    t.integer "presentation"
    t.integer "presentation_sub"
    t.text "comment", size: :medium
    t.string "fileId", limit: 120
  end

  create_table "NC_areas", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 45
    t.string "nombre", limit: 45
  end

  create_table "NC_subareas", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 120
    t.string "nombre", limit: 120
    t.integer "area"
    t.index ["area"], name: "fk_NC_subareas_1_idx"
  end

  create_table "Observations", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 45
  end

  create_table "Outcomes", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "name", limit: 256
    t.string "nombre", limit: 256
    t.integer "subarea"
    t.integer "start_month"
    t.integer "end_month"
    t.index ["subarea"], name: "fk_Outcomes_1_idx"
  end

  create_table "Presentations", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 120
    t.integer "subarea"
    t.float "year", limit: 53
    t.float "year_end", limit: 53
    t.integer "priority"
    t.string "nombre", limit: 120, collation: "utf8_general_ci"
    t.text "description", size: :long, collation: "utf8_general_ci"
    t.boolean "planning", default: true, null: false
    t.index ["subarea"], name: "fk_Presentations_1_idx"
  end

  create_table "Presentations_areas", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 45
    t.string "nombre", limit: 45
  end

  create_table "Presentations_sub", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.text "name", size: :long
    t.text "nombre", size: :long
    t.integer "presentation"
    t.integer "1750"
    t.string "Beginning to be aware of the way stories are structured", limit: 1024
    t.integer "350"
    t.index ["presentation"], name: "fk_Presentations_sub_1_idx"
  end

  create_table "Presentations_subareas", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 90
    t.integer "area"
    t.string "nombre", limit: 90
    t.index ["area"], name: "fk_Subarea_1_idx"
  end

  create_table "Students", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 45
    t.date "birth_date"
    t.integer "classroom"
    t.string "address", limit: 200
    t.string "chronic diseases", limit: 45
    t.string "medical treatment", limit: 45
    t.string "allergies or dietary restrictions", limit: 45
    t.string "special needs", limit: 45
    t.string "taking medications", limit: 45
    t.date "firstday_snails"
    t.date "firstday_cdb"
    t.date "firstday_primary"
    t.date "exit_date"
    t.text "notes", size: :long
    t.string "drive_main", limit: 64
    t.string "drive_documents", limit: 64
    t.string "drive_photos", limit: 64
    t.string "drive_reports", limit: 64
    t.index ["classroom"], name: "fk_Students_1_idx"
  end

  create_table "Targets", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 512
    t.string "nombre", limit: 512
    t.boolean "NC"
    t.integer "subarea"
    t.float "year", limit: 53
    t.index ["subarea"], name: "fk_Targets_1_idx"
  end

  create_table "Teachers", id: :integer, charset: "utf8", collation: "utf8_spanish_ci", force: :cascade do |t|
    t.string "name", limit: 45
    t.string "nick", limit: 45
    t.integer "classroom"
    t.index ["classroom"], name: "fk_Teachers_1_idx"
  end

  create_table "tempEvents", primary_key: ["event_id", "event_sub", "student"], charset: "utf8", collation: "utf8_spanish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "event_sub", null: false
    t.integer "event_type"
    t.integer "student", null: false
    t.integer "teacher"
  end

  create_table "tempIds", primary_key: "ids", id: :integer, default: nil, charset: "utf8", collation: "utf8_spanish_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.integer "teacher"
  end

  add_foreign_key "Contacts", "Students", column: "student1", name: "fk_Contacts_1"
  add_foreign_key "Contacts", "Students", column: "student2", name: "fk_Contacts_2"
  add_foreign_key "Contacts", "Students", column: "student3", name: "fk_Contacts_3"
  add_foreign_key "Contacts", "Students", column: "student4", name: "fk_Contacts_4"
  add_foreign_key "Events", "Events_type", column: "event_type", name: "fk_Event_2"
  add_foreign_key "Events", "Students", column: "student", name: "fk_Event_1"
  add_foreign_key "Events", "Teachers", column: "teacher", name: "fk_Events_1"
  add_foreign_key "NC_subareas", "NC_areas", column: "area", name: "fk_NC_subareas_1"
  add_foreign_key "Presentations", "Presentations_subareas", column: "subarea", name: "fk_Presentations_1"
  add_foreign_key "Presentations_sub", "Presentations", column: "presentation", name: "fk_Presentations_sub_1"
  add_foreign_key "Presentations_subareas", "Presentations_areas", column: "area", name: "fk_Subarea_1"
  add_foreign_key "Students", "Classrooms", column: "classroom", name: "fk_Students_1"
  add_foreign_key "Targets", "NC_subareas", column: "subarea", name: "fk_Targets_1"
  add_foreign_key "Teachers", "Classrooms", column: "classroom", name: "fk_Teachers_1"
end
