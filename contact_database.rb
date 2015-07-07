## TODO: Implement CSV reading/writing
require 'csv'

class ContactDatabase 
  def self.add(contact)
    CSV.open("contact.csv", "wb") do |csv|
      csv << contact
    end
  end
end





# class ContactDatabase 
#   def self.add(contact)
#   name = "contact.csv"
#   csv = File.open(name, "a")
#   csv.puts contact
#   csv.close
#   end
# end
