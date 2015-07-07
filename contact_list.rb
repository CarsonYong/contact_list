require_relative 'contact'
require_relative 'contact_database'


# TODO: Implement command line interaction
# This should be the only file where you use puts and gets

@argv = ARGV[0]


  if @argv == "help"
    puts "Here is a list of available commands: "
    puts "new  - Create a new contact"
    puts "list - List all contacts"
    puts "show - Show a contact"
    puts "find - Find a contact"
  end
  #help_response = gets.chomp.downcase
    if @argv == "new"
      puts "Enter in a name"
      name = STDIN.gets.chomp.downcase
      puts "Enter in an email"
      email = STDIN.gets.chomp.downcase
      new_contact = Contact.new(name, email)
      Contact.create(new_contact.name, new_contact.email)

      
      #puts "#{@new_contact}"
    elsif @argv =="list"
    elsif @argv =="show"
    elsif @argv == "find"
    end



