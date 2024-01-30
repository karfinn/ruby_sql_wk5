class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.integer "id"
      t.string "name"
      t. string "city"
      t.string "state"
      t.string "url"
      t.timestamps
    end
  end
end

# equivalent of in SQL: 
#   CREATE TABLE companies (
#   id primary key autoincrement
#   name TEXT
# )
