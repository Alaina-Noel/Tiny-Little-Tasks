class Employee

    attr_reader :name, :salary

    def name= name
        if name == ""
            raise "Name can't be blank"
        end
        @name = name
    end

    def salary= salary
        if salary < 0
            raise "Salary must be greater than 0."
        end
        @salary = salary
    end

    def print_pay
        puts "Name: #{@name}"
        pay_for_period = (@salary/ 365) * 14
        puts "Pay This Period: #{pay_for_period}"
    end

end

allie = Employee.new
allie.name = "Allie"
allie.salary = 120000

leah = Employee.new
leah.name = "Leah"
leah.salary = 130000

alaina = Employee.new
alaina.name = "Alaina"
alaina.salary = 200000
alaina.print_pay
