# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file, go to db/schema.rb to see what the row headers are 
# 1b. check out the model file g ot models/salesperson.rb thats how you know what the class is called :

puts "Salespeople: #{Salesperson.all.count}"

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new
new_salesperson ["first_name"] = "Karina"
new_salesperson ["last_name"] = "Finn"
new_salesperson ["email"] = "testing@msn.com"
new_salesperson.save

new_salesperson = Salesperson.new
new_salesperson ["first_name"] = "Ben"
new_salesperson ["last_name"] = "Block"
new_salesperson ["email"] = "writing@msn.com"
new_salesperson.save


# 3. write code to display how many salespeople rows are in the database

# puts "Salespeople: #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
# find Ben Block row in salespeople
ben = Salesperson.find_by({"first_name" => "Ben", "last_name" => "Block"})
# assign email column
ben["email"] = "bjblock@gmail.com"
# update (aka save) the row
ben.save

# CHALLENGE:
# 5. write code to display each salesperson's full name (LOOP)
puts "Salespeople: #{Salesperson.all.count}"
salespeople = Salesperson.all
for person in salespeople
    puts "#{person["first_name"]} #{person["last_name"]}"
end



# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
