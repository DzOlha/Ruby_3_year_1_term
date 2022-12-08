require_relative  "./PhoneNumber"
require_relative  "./Email"
require_relative  "./Telegram"

contact_1 = PhoneNumber.new(1, "Olha", "Dziuhal", "+380663764739");
contact_2 = Email.new(2, "Petro", "Petrenko", "pp@gmail.com");
contact_3 = Telegram.new(3, "Taras", "Schevchenko", "@taras_schevchenko_24");

puts contact_1;