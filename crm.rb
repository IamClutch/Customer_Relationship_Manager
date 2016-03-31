# Add any require_relative statements here
require_relative 'contact'
class CRM
  attr_accessor :name

  def self.run(name)
    # Fill this in
    crm = CRM.new(name)
    crm.main_menu
  end

  def initialize(name)
    # Fill this in
    @name = name
  end

  def main_menu
    # Fill this in
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    # Fill this in
    puts '[1] Add a new contact'
    puts '[2] Modify an exisiting contacts'
    puts '[3] Delete a contact'
    puts '[4] Display contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number'
  end

  def call_option(user_selected)
    # Fill this in
      if 1 == user_selected
      add_new_contact
      elsif 2 == user_selected
      modify_existing_contact
      elsif 3 == user_selected
      delete_contact
      elsif 4 == user_selected
      display_contacts
      elsif 5 == user_selected
      search_by_attribute
      elsif 6 == user_selected
      abort
      end
  end

  def add_new_contact
    print 'Enter First Name'
    first_name = gets.chomp

    print 'Enter Last Name:'
    last_name = gets.chomp

    print 'Enter Email Address'
    email = gets.chomp

    print 'Enter a Note'
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact ##NEEED HELPP
    # Fill this in
    puts 'Enter the id modify the exisiting contact'
    contact_id = gets.to_i

    contact = Contact.find(contact_id)

    puts 'What would you to change? 1. #{first_name} 2. #{last_name} 3. #{email} 4. #{note} '
    answer = gets.to_i

    puts 'Please enter the new value'
    new_answer = gets.chomp

    if answer == 1
      contact.update("first_name", new_answer)
    elsif answer == 2
      contact.update("last_name", new_answer)
    elsif answer == 3
      contact.update("email", new_answer)
    elsif answer == 4
      contact.update("note", new_answer)
    end
  end

  def delete_contact
    # Fill this in

    puts 'Which contact would you to delete?'
    id_delete = gets.to_i
    contact = Contact.find(id_delete)
    contact.delete
  end



  def search_by_attribute
    # Fill this in
    # HINT: Make use of the display_contacts method
    puts 'Which arribute would you to search? 1. First name 2. Last name 3. email 4. note'
    attribute_selection = gets.to_i

    puts 'What is the search term?'
    term = gets.chomp

    if attribute_selection == 1
    selection_1 =  Contact.find_by("first_name", term)
    elsif attribute_selection == 2
    selection_1 =  Contact.find_by("last_name", term)
    elsif attribute_selection == 3
    selection_1 =  Contact.find_by("email", term)
    elsif attrubute_selection == 4
    selection_1 = Contact.find_by("note", term)
    end

    selection_1.each do |contact|
      puts "#{contact.first_name} #{contact.last_name} #{contact.email} #{contact.note}"

    end

  end

  # This method should accept as its argument an array of contacts
  # and display each contact in the contacts array
  def display_contacts
    # Fill this in
    # HINT: Make use of this method in the display_all_contacts and search_by_attribute methods
    Contact.all.each do |contacts|
      puts ":#{contacts.full_name},  #{contacts.email}, #{contacts.id}, #{contacts.note}"
    end
  end

  def attribute_name(atrribute_number)
    case  attrribute_number
    when 1 then 'first_name'
    when 2 then 'last_name'
    when 3 then 'email'
    when 4 then 'note'
    # Add other methods here, if you need them.
    end
  end

end


# Run the program here (See 'Using a class method`)
CRM.run ' '
