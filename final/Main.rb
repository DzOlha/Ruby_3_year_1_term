require_relative  "./Contact"
require_relative  "./PhoneNumber"
require_relative  "./Email"
require_relative  "./Telegram"

contact_1 = PhoneNumber.new(1, "Olha", "Dziuhal", "+380663764739");
contact_2 = Email.new(2, "Petro", "Petrenko", "pp@gmail.com");
contact_3 = Telegram.new(3, "Taras", "Schevchenko", "@taras_schevchenko_24");
contact_4 = PhoneNumber.new(4, "Olha", "Dziuhal", "+380669764739");


arr = [contact_3, contact_1, contact_2, contact_4];
print "Before sorting by LastName: \n" 
puts arr
print "\nAfter sorting by LastName: \n"
book = ContactBook.new(arr, 3);
book.sortByLastName;
book.printAllContacts;

print "\nSearch by part of the phone number and first name: '7647', 'Olha'\n"
puts book.searchByPartOfPhoneNumber_andFirstName('7647', 'Olha');
