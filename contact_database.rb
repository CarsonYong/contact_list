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
    end
  # use row here...
  end
  def self.show(id)
    test = false
    CSV.foreach("contact.csv") do |row|
      #puts row[0].to_i == id.to_i

      if row[0].to_i == id.to_i
        test = true
        puts row
      #elsif row[0].to_i != id.to_i
      #puts "That contact cannot be found.
      end
    end
    if test == false
      puts "Contact cannot be found "
    end
  end
  def self.find(contact)
    CSV.foreach("contact.csv") do |row|
      if row[1] == contact
      puts row
      end
    end
  end
end

