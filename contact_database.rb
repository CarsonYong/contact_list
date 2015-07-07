## TODO: Implement CSV reading/writing
require 'csv'

class ContactDatabase 

  def self.add(contact)

    id = CSV.read("contact.csv")
    id = id.length
    id += 1
    CSV.open("contact.csv", "ab") do |csv|
     #id = csv.length += 1
      csv << [id, contact.name, contact.email]
    end
  end

  def self.read()
    CSV.foreach("contact.csv") do |row|
      puts row.join(" ")
  # use row here...
end
  end
end



#arr_of_arrs = CSV.read("contact.csv")


# class ContactDatabase 
#   def self.add(contact)
#   name = "contact.csv"
#   csv = File.open(name, "a")
#   csv.puts contact
#   csv.close
#   end
# end
