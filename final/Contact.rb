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
    protected
    def to_s
        "ID => " + @id.to_s + "; FirstName => " + @firstName +
        + "; LastName => " + @lastName + "; "
    end
end

class ContactBook 
    def initialize(arr, size)
        @size = size;
        @contacts = arr;
        sortByLastName();
    end
    def sortByLastName()
        @contacts.sort! { |a, b|  a.getLastName <=> b.getLastName }
    end

    def searchByPartOfPhoneNumber_andFirstName(targetPhoneNumberPart, firstName)
        resultArr = Array.new(0)
        for i in 0..@size-1 do 
            if(@contacts[i].instance_variable_defined?(:@phoneNumber)) then
                if(((@contacts[i].getPhoneNumber).include? targetPhoneNumberPart) && @contacts[i].getFirstName == firstName) then
                    resultArr.append(@contacts[i]);
                end
            end
        end
        return resultArr
    end
    def printAllContacts()
        for i in 0..@size-1 do 
            puts @contacts[i];
        end
    end
end