class Person
    attr_reader :name
    def initialize(name,cashInHand)
        @name = name
        @cashInHand = cashInHand
        puts "Hi, #{@name}. You have $#{@cashInHand}!"
    end
end

class Bank
    attr_reader :bankName
    def initialize(bankName)
        @bankName = bankName
        @customers = []
        puts "#{@bankName} bank was just created."
    end
    def open_account(customer)
        @customers << customer
        puts "#{customer.name}, thanks for opening an account at #{@bankName}!"
    end
    def withdraw
    
    end
    def deposit
    
    end
    def transfer
    
    end
end
