class Person
    attr_reader :name
    def initialize(name, cashInHand)
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
    def withdraw(customer, withAmount)
        if  withAmount > customer.bankBalance
            puts "#{customer.name} does not have enough money in the account to withdraw #{withAmount}."
        else
            customer.bankBalance -= withAmount
            customer.cashInHand += withAmount
            puts "#{customer.name} withdrew #{withAmount} from #{@bankName}. #{customer.name} has #{customer.cashInHand}. #{customer.name}'s account has #{customer.bankBalance}." 
        end
    end
    def deposit(customer, depAmount)
        if depAmount > customer.cashInHand
           puts  "#{customer.name} does not have enough cash to deposit #{depAmount}."
        else
            customer.bankBalance += depAmount
            customer.cashInHand -= depAmount
            puts "#{customer.name} deposited #{depAmount} to #{@bankName}. #{customer.name} has #{customer.cashInHand}. #{customer.name}'s account has #{customer.bankBalance}." 
        end
    end
    def transfer(customer, transferTo, transAmount)
        @bankName.customer["bankBalance"] -= transAmount
        transferTo.customer["bankBalance"] += transAmount
        puts "#{customer.name} transferred #{transAmount} from the #{@bankName} account to the #{transferTo} account. The #{@bankName} account has #{@bankName.customer["bankBalance"]} and the #{transferTo} account has #{transferTo.customer["bankBalance"]}"
    end
    def total_cash_in_bank
        total = 0
        i = 0
        while i < @customers.count
            total = total + @customers[i].bankBalance
        end
        puts "#{@bankName} has #{total} in the bank."
    end
end
