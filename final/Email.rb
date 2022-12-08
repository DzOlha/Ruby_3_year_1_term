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
    def to_s 
        "ID => " + @id.to_s + "; FirstName => " + @firstName +
        + "; LastName => " + @lastName + "; " +
        +"Email => " + @email;
    end
end