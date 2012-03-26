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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120326055138) do

  create_table "cinematographers", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "currencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directors", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "featuremovattribs", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.integer  "joint_id"
    t.integer  "jointb_id"
    t.integer  "jointc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "jointd_id"
    t.integer  "jointe_id"
  end

  create_table "femalecasts", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "film_users", :force => true do |t|
    t.integer  "film_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "films", :force => true do |t|
    t.string   "name"
    t.string   "titlea"
    t.string   "titleb"
    t.string   "titlec"
    t.string   "titled"
    t.string   "titlee"
    t.string   "company"
    t.string   "country"
    t.date     "start_date"
    t.date     "year_date"
    t.text     "lenght"
    t.string   "color"
    t.string   "sound"
    t.string   "based_on"
    t.string   "autor"
    t.integer  "moviselect_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "titlef"
    t.string   "meter"
    t.string   "feed"
    t.string   "source"
    t.integer  "color_id"
    t.integer  "sound_id"
  end

  create_table "functions", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.integer  "salleinfo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jointbs", :force => true do |t|
    t.integer  "film_id"
    t.integer  "ville_id"
    t.integer  "salle_id"
    t.string   "titreoriginal"
    t.string   "titreoriginalb"
    t.string   "genre"
    t.string   "date"
    t.string   "price"
    t.string   "show"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "schedule"
    t.string   "onstage"
    t.string   "episode"
    t.string   "audience"
    t.string   "source"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "day"
    t.string   "daybis"
    t.boolean  "holydays"
    t.datetime "time"
    t.boolean  "and"
    t.boolean  "to"
    t.datetime "timebis"
    t.boolean  "andbis"
    t.boolean  "tobis"
    t.datetime "timeter"
    t.boolean  "andter"
    t.boolean  "toter"
    t.datetime "timefour"
    t.string   "dayextra"
    t.datetime "timeextra"
    t.boolean  "andextra"
    t.boolean  "toextra"
    t.datetime "timeextrabis"
    t.integer  "currency_id"
    t.string   "number"
  end

  create_table "jointcs", :force => true do |t|
    t.integer  "film_id"
    t.integer  "ville_id"
    t.integer  "salle_id"
    t.string   "titreoriginal"
    t.string   "titreoriginalb"
    t.string   "genre"
    t.string   "date"
    t.string   "price"
    t.string   "show"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "schedule"
    t.string   "onstage"
    t.string   "episode"
    t.string   "audience"
    t.string   "source"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "day"
    t.string   "daybis"
    t.boolean  "holydays"
    t.datetime "time"
    t.boolean  "and"
    t.boolean  "to"
    t.datetime "timebis"
    t.boolean  "andbis"
    t.boolean  "tobis"
    t.datetime "timeter"
    t.boolean  "andter"
    t.boolean  "toter"
    t.datetime "timefour"
    t.string   "dayextra"
    t.datetime "timeextra"
    t.boolean  "andextra"
    t.boolean  "toextra"
    t.datetime "timeextrabis"
    t.integer  "currency_id"
    t.string   "number"
  end

  create_table "jointds", :force => true do |t|
    t.integer  "film_id"
    t.integer  "ville_id"
    t.integer  "salle_id"
    t.string   "titreoriginal"
    t.string   "titreoriginalb"
    t.string   "genre"
    t.string   "date"
    t.string   "price"
    t.string   "show"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "schedule"
    t.string   "onstage"
    t.string   "episode"
    t.string   "audience"
    t.string   "source"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "day"
    t.string   "daybis"
    t.boolean  "holydays"
    t.datetime "time"
    t.boolean  "and"
    t.boolean  "to"
    t.datetime "timebis"
    t.boolean  "andbis"
    t.boolean  "tobis"
    t.datetime "timeter"
    t.boolean  "andter"
    t.boolean  "toter"
    t.datetime "timefour"
    t.string   "dayextra"
    t.datetime "timeextra"
    t.boolean  "andextra"
    t.boolean  "toextra"
    t.datetime "timeextrabis"
    t.integer  "currency_id"
    t.string   "number"
  end

  create_table "jointes", :force => true do |t|
    t.integer  "film_id"
    t.integer  "ville_id"
    t.integer  "salle_id"
    t.string   "titreoriginal"
    t.string   "titreoriginalb"
    t.string   "genre"
    t.string   "date"
    t.string   "price"
    t.string   "show"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "schedule"
    t.string   "onstage"
    t.string   "episode"
    t.string   "audience"
    t.string   "source"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "day"
    t.string   "daybis"
    t.boolean  "holydays"
    t.datetime "time"
    t.boolean  "and"
    t.boolean  "to"
    t.datetime "timebis"
    t.boolean  "andbis"
    t.boolean  "tobis"
    t.datetime "timeter"
    t.boolean  "andter"
    t.boolean  "toter"
    t.datetime "timefour"
    t.string   "dayextra"
    t.datetime "timeextra"
    t.boolean  "andextra"
    t.boolean  "toextra"
    t.datetime "timeextrabis"
    t.integer  "currency_id"
    t.string   "number"
  end

  create_table "joints", :force => true do |t|
    t.integer  "film_id"
    t.integer  "ville_id"
    t.integer  "salle_id"
    t.string   "titreoriginal"
    t.string   "titreoriginalb"
    t.string   "genre"
    t.string   "date"
    t.string   "price"
    t.string   "show"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "schedule"
    t.string   "onstage"
    t.string   "episode"
    t.string   "audience"
    t.string   "source"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "day"
    t.string   "daybis"
    t.boolean  "holydays"
    t.string   "dayextra"
    t.datetime "timeextra"
    t.boolean  "andextra"
    t.boolean  "toextra"
    t.datetime "timeextrabis"
    t.integer  "currency_id"
    t.string   "number"
    t.string   "time"
    t.string   "timebis"
    t.string   "timeter"
    t.string   "timefour"
    t.integer  "and_or_to"
    t.integer  "and_or_to_bis"
    t.integer  "and_or_to_ter"
  end

  create_table "malecasts", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moviselects", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musicians", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", :force => true do |t|
    t.string   "titre"
    t.string   "titreo"
    t.string   "rea"
    t.string   "year"
    t.string   "country"
    t.string   "dure"
    t.string   "son"
    t.string   "producer"
    t.string   "lieu"
    t.string   "format"
    t.string   "support"
    t.string   "genre"
    t.string   "themea"
    t.string   "themeb"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "onstageattribs", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.integer  "joint_id"
    t.integer  "jointb_id"
    t.integer  "jointc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "jointd_id"
    t.integer  "jointe_id"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.integer  "function_id"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "director_id"
    t.integer  "malecast_id"
    t.integer  "femalecast_id"
    t.integer  "producer_id"
    t.integer  "scripwriter_id"
    t.integer  "cinematographer_id"
    t.integer  "musician_id"
    t.integer  "scriptwriter_id"
  end

  create_table "producers", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "salleinfoattribs", :force => true do |t|
    t.string   "name"
    t.integer  "salleinfo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salleinfos", :force => true do |t|
    t.string   "name"
    t.integer  "salle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salles", :force => true do |t|
    t.string   "name"
    t.string   "district"
    t.string   "adresse"
    t.string   "owner"
    t.string   "place"
    t.string   "orchester"
    t.string   "open"
    t.string   "source"
    t.text     "comment"
    t.integer  "ville_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "exhib"
    t.string   "soundsys"
    t.integer  "currency_id"
    t.string   "number"
  end

  create_table "scriptwriters", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shortmovattribs", :force => true do |t|
    t.string   "name"
    t.string   "based_on"
    t.integer  "film_id"
    t.integer  "joint_id"
    t.integer  "jointb_id"
    t.integer  "jointc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "jointd_id"
    t.integer  "jointe_id"
  end

  create_table "sounds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tecnicalattribs", :force => true do |t|
    t.string   "name"
    t.integer  "tecnical_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tecnicals", :force => true do |t|
    t.string   "name"
    t.integer  "film_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "villes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
