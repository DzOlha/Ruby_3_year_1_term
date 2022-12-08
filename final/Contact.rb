class Contact 
    def initialize(id, firstName, lastName)
        @id, @firstName, @lastName = id, firstName, lastName
    end
    #--------------------------------------
    def getID 
        @id
    end
    def setID(newID) 
        @id = newID
    end
    #--------------------------------------
    def getFirstName 
        @firstName
    end
    def setFirstName(newFirstName) 
        @firstName = newFirstName
    end
    #--------------------------------------
    def getLastName 
        @lastName
    end
    def setLastName(newLastName) 
        @lastName = newLastName
    end
    def to_s
        "ID => " + @id.to_s + "; FirstName => " + @firstName +
        + "; LastName => " + @lastName + "; "
    end
end