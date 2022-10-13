
class Student 
    def initialize(lastName, street, houseNumber, flatNumber)
        @lastName, @street = lastName, street
        @houseNumber, @flatNumber = houseNumber, flatNumber
    end
    #--------------------------------------
    def getLastName 
        @lastName
    end
    def setLastName(newLastName) 
        @lastName = newLastName
    end
    #--------------------------------------
    def getStreet 
        @street
    end
    def setStreet(newStreet) 
        @street = newStreet
    end
    #---------------------------------------
    def getHouseNumber 
        @houseNumber
    end
    def setHouseNumber(newHouseNumber) 
        @houseNumber = newHouseNumber
    end
    #---------------------------------------
    def getFlatNumber 
        @flatNumber
    end
    def setFlatNumber(newFlatNumber) 
        @flatNumber = newFlatNumber
    end
    #---------------------------------------
    def to_s
        "LastName => " + @lastName + "; Street => " + @street +
        + "; HouseNumber => " + @houseNumber.to_s + "; FlatNumber => " + @flatNumber.to_s + "."
    end
end

class StudentsClass 
    @@size = 5
    @@students =  Array.new(@@size)
    def initialize()
        @@students[0] = Student.new("Kovalenko", "Well_Street", 4, 10)
        @@students[1] = Student.new("Shevchenko", "Peremohy_Street", 8, 15)
        @@students[2] = Student.new("Omelko", "Grand_Street", 4, 1)
        @@students[3] = Student.new("Dziuhal", "Peremohy_Street", 4, 22)
        @@students[4] = Student.new("Petrenko", "Well_Street", 3, 16)
    end
    def howManyStudentsLiveOnEachStreet_HouseNumberN(house_n)
        houseArr = Array.new(0)
        streetHash = Hash.new(0)
        tmpStreet = '', tmpHouse = 0
        for i in 0..@@size-1 do 
            tmpStreet = @@students[i].getStreet
            streetHash[tmpStreet] += 1

            tmpHouse = @@students[i].getHouseNumber
            if(tmpHouse === house_n) then
                houseArr.append(@@students[i])
            end 
        end
        return [streetHash, houseArr]
    end
end

students = StudentsClass.new
arr = students.howManyStudentsLiveOnEachStreet_HouseNumberN(8)
print arr[0], "\n\n"
puts arr[1]