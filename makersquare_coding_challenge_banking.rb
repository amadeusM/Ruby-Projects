class Person
    attr_reader :name
    attr_accessor :cash
    def initialize(name,cash)
        @name = name
        @cash = cash
        puts "Hi, #{@name}. You have $#{@cash}!"
    end
end

class Bank
    attr_reader :bankName
    attr_accessor :bankBalance
    def initialize(bankName)
        @bankName = bankName
        @customers = []
        puts "#{@bankName} bank was just created."
    end
    def open_account(customer, bankBalance=0)
        @bankBalance = bankBalance
        @customers << [customer, bankBalance]
        puts "#{customer.name}, thanks for opening an account at #{@bankName}!"
    end
    def withdraw(customer, withAmount)
        @customers.each{|cusArray| 
            if cusArray[0] == customer
                if  withAmount > cusArray[1]
                    puts "#{cusArray[0].name} does not have enough money in the account to withdraw $#{withAmount}."
                else
                    cusArray[1] = cusArray[1] - withAmount
                    cusArray[0].cash = cusArray[0].cash + withAmount
                    puts "#{cusArray[0].name} withdrew $#{withAmount} from #{@bankName}. #{cusArray[0].name} has $#{cusArray[0].cash}. #{cusArray[0].name}'s account has $#{cusArray[1]}." 
                end
            end
        }
    end
    def deposit(customer, depAmount)
        @customers.each{|cusArray|
            if cusArray[0] == customer
                if depAmount > cusArray[0].cash
                    puts  "#{cusArray[0].name} does not have enough cash to deposit $#{depAmount}."
                else
                    cusArray[1] = cusArray[1] + depAmount
                    cusArray[0].cash = cusArray[0].cash - depAmount
                    puts "#{cusArray[0].name} deposited $#{depAmount} to #{@bankName}. #{cusArray[0].name} has $#{cusArray[0].cash}. #{cusArray[0].name}'s account has #{cusArray[1]}." 
                end
            end
        }
    end
    def transfer(customer, transferTo, transAmount)
        @customers.each{|cusArray| 
            if cusArray[0] == customer
                cusArray[1] = cusArray[1] - transAmount
                transferTo.@customers[1] = transferTo.@customers[1] + transAmount
                puts "#{customer.name} transferred $#{transAmount} from the #{@bankName} account to the #{transferTo} account. The #{@bankName} account has $#{cusArray[1]} and the #{transferTo} account has $#{transferTo.@customers[1]}"
            end
        }
    end
    def total_cash_in_bank
        total = 0
        i = 0
        while i < @customers.count
            total = total + @customers[i][1]
            i = i + 1
        end
        puts "#{@bankName} has #{total} in the bank."
    end
end
