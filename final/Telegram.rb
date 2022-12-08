require_relative  "./Contact"

class Telegram < Contact 
    def initialize(id, firstName, lastName, telegram)
        super(id, firstName, lastName)
        @telegram = telegram
    end
    def getTelegram
        @telegram
    end
    def setTelegram(newTelegram) 
        @telegram = telegram
    end
end