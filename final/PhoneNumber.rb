require_relative  "./Contact"

class PhoneNumber < Contact 
    def initialize(id, firstName, lastName, phoneNumber)
        super(id, firstName, lastName)
        @phoneNumber = phoneNumber
    end
    def getPhoneNumber 
        @phoneNumber
    end
    def setPhoneNumber(newPhoneNumber) 
        @phoneNumber = newPhoneNumber
    end
end