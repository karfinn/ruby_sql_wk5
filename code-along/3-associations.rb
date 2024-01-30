# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
#find apple
apple = Company.find_by ({"name" => "Apple"})

# 1. insert new rows in the contacts table with relationship to a company
new_contact = Contact.new
new_contact["first_name"] = "Tim"
new_contact["last_name"] = "Cook"
new_contact["email"] = "tim@apple.com"
new_contact["company_id"] = apple["id"]
new_contact.save

new_contact = Contact.new
new_contact["first_name"] = "Craig"
new_contact["last_name"] = "Smith"
new_contact["email"] = "craig@apple.com"
new_contact["company_id"] = apple["id"]
new_contact.save

# tell DB that this row is associated to apple with foreign key
# do rails runners data.rb and then see its' 43 BUT DO IT WITH FIND BY
# need row 13 to find the id in the Company DB

# 2. How many contacts work at Apple?

apple_contacts = Contact.where({"company_id" => apple["id"]})
puts "Apple contacts: #{apple_contacts.count}"

# 3. What is the full name of each contact who works at Apple?

for contacts in apple_contacts
    puts "#{contacts["first_name"]} #{contacts["last_name"]}"
end 
