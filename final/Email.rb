require_relative  "./Contact"
class Email < Contact 
    def initialize(id, firstName, lastName, email)
        super(id, firstName, lastName)
        @email = email
    end
    def getEmail 
        @email
    end
    def setEmail(newEmail) 
        @email = email
    end
end