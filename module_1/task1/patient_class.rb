class Patient 
    def initialize(
         id, firstName, lastName, fatherName, adress,
         phoneNumber, numberMedCard, diagnosis)
        @id, @firstName, @lastName, @fatherName, @adress = id, firstName, lastName, fatherName, adress
        @phoneNumber, @numberMedCard, @diagnosis = phoneNumber, numberMedCard, diagnosis
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
    #--------------------------------------
    def getFatherName 
        @fatherName
    end
    def setFatherName(newFatherName) 
        @fatherName = newFatherName
    end
    #--------------------------------------
    def getAdress
        @adress
    end
    def setAdress(newAdress) 
        @adress = newAdress
    end
    #--------------------------------------
    def getPhoneNumber
        @phoneNumber
    end
    def setPhoneNumber(newPhoneNumber) 
        @phoneNumber = newPhoneNumber
    end
    #--------------------------------------
    def getNumberMedCard
        @numberMedCard
    end
    def setNumberMedCard(newNumberMedCard) 
        @numberMedCard = newNumberMedCard
    end
    #--------------------------------------
    def getDiagnosis
        @diagnosis
    end
    def setDiagnosis(newDiagnosis) 
        @diagnosis = newDiagnosis
    end

    def to_s
        "ID => " + @id.to_s + "; FirstName => " + @firstName +
        + "; LastName => " + @lastName + "; FatherName => " + @fatherName +
        + "; Adress => " + @adress + "; PhoneNumber => " + @phoneNumber.to_s + 
        + "; Number Medical Card => " + @numberMedCard.to_s + 
        + "; Diagnosis => " + @diagnosis + "."
    end
end

class PatientGroup 
    def initialize(size)
        @size = size
        @patients =  Array.new(@size)
        for i in 0..@size-1 do
            si = i.to_s
            @patients[i] = Patient.new(i,"F"+si,"L"+si,"f"+si,"a"+si, i+4000,i+250, "ill_"+si)
        end
    end
    def printAll()
        puts @patients
    end
    def setDiagnosis(index, diag)
        @patients[index].setDiagnosis(diag)
    end
    def patientsWithDiagnosis(diagnosis)
        resultArr = Array.new(0)
        for i in 0..@size-1 do 
            currDiag = @patients[i].getDiagnosis
            if(currDiag === diagnosis) then
                resultArr.append(@patients[i])
            end 
        end
        if(resultArr.length == 0) then
            resultArr.append("No patients found whose diagnosis is : " + diagnosis);
        else resultArr.unshift("Patients whose diagnosis is : " + diagnosis)
        end
        return resultArr
    end

    def patientsWithNumberCardFromInterval(a, b)
        resultArr = Array.new(0)
        for i in 0..@size-1 do 
            currNum = @patients[i].getNumberMedCard
            if(currNum >= a && currNum <= b) then
                resultArr.append(@patients[i])
            end 
        end
        if(resultArr.length == 0) then
            resultArr.append("No patients found whose number medical card is from interval ["+
                + a.to_s + "; " + b.to_s + "]!")
            else resultArr.unshift("Patients whose number medical card is from interval ["+
                + a.to_s + "; " + b.to_s + "]!")
            end
        return resultArr
    end
end

patients = PatientGroup.new(5)
flu = "flu"
patients.setDiagnosis(2, flu)
patients.setDiagnosis(3, flu)

cold = "cold"
patients.setDiagnosis(1, cold)
patients.setDiagnosis(4, cold)

resultFlu = patients.patientsWithDiagnosis(flu)
resultCold = patients.patientsWithDiagnosis(cold)

puts resultFlu, "\n"
puts resultCold, "\n"

a = 120
b = 250
intervalP = patients.patientsWithNumberCardFromInterval(a, b)
puts intervalP
