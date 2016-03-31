class Contact

  # Add any attr_reader and attr_accessors here
attr_reader :id
attr_accessor :first_name, :last_name, :email, :note
  # Add any class variables here
@@contacts = []
@@id = 1
  # This method should take four string arguments (first_name, last_name, email, note),
  # and initialize this instance of Contact.
  def initialize(first_name, last_name, email, note)
    # Fill this in
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

 # a getter (*get* the value of an attribute)


 # a setter (*set* the value of an attribute)



  # This method should take four string rguments (first_name, last_name, email, note),
  # and return the newly created contact
  def self.create(first_name, last_name, email, note)
    # Fill this in
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    new_contact
  end

  # This method takes no arguments
  # and return all of the existing contacts in array form
  def self.all
    # Fill this in
    @@contacts
  end

  # This method should take an integer id argument
  # and return the contact that corresponds to the id
  def self.find(id)
    @@contacts.find {|contact| contact.id == id}
    # Fill this in
  end

  # This method should take two string arguments (attribute, value)
  # It should look for the contact with the attribute corresponding to the value
  # and return that contact
  #
  # For example:
  #   Contact.find_by('first_name', 'Joe')
  # should return the first contact with the first_name of Joe.
  def self.find_by(attribute, value)
    # Fill this in
    @@contacts.select do |person|
      if attribute == 'first_name' && person.first_name == value
        true
      elsif attribute == 'last_name' && person.last_name == value
        true
      elsif attribute == 'email' && person.email == value
        true
      elsif attribute == 'note' && note.email == value
    end
  end
end
  # This method takes no arguments
  # It should delete all of the contacts from memory
  def self.delete_all
    # Fill this in
    @@contacts.Delete
  end

  # This method takes no arguments
  # It should return a string that is composed of the first and last names of the contact.
  def full_name
    # Fill this in
    return "#{first_name} #{last_name}"
  end

  # This method should take two string arguments (attribute, value)
  # It should update the current instance of contact with the new value of the attribute
  #
  # For example:
  #   mary.update('email', 'mary_new_email@gmail.com')
  # should update mary's email address to the new one.
  def update(attribute, value)
    # Fill this in
    if attribute == 'first_name'
      self.first_name = value
    elsif atrribute == 'last_name'
      self.last_name = value
    elsif attribute == 'email'
      self.email = value
    elsif attribute == 'note'
      self.note = value
    end
  end

  # This method takes no arguments
  # It should delete the current instance of contact from memory
  def delete
    # Fill this in
    @@contacts.delete()
  end
end

Contact.create("Amin", "Shafiee", "shafiee.amin@gmail.com", "Hello")
Contact.create("face", "hey", "yop@gmail.com", "damn")
