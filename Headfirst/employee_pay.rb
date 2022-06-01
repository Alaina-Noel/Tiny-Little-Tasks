class Employee

    attr_reader :name

    def name= name
        if name == ""
            raise "Name can't be blank"
        end
        @name = name
    end

    def print_name
        puts "Name: #{self.name}"
    end

    def initialize(name = "No Name Set")
       self.name = name
    end

end

class SalariedEmployee < Employee

    attr_reader :salary

    def salary= salary
        if salary < 0
            raise "Salary must be greater than 0."
        end
        @salary = salary
    end

    def initialize(name = "No Name Set", salary = 0.0)
       super(name)
       self.salary = salary
    end

    def print_pay
        print_name
        pay_for_period = (salary/ 365.0) * 14
        formatted_pay = format("%.2f", pay_for_period)
        puts "Pay This Period: $#{formatted_pay}"
    end

end

class HourlyEmployee < Employee

    attr_reader :hourly_wage, :hours_per_week

    def HourlyEmployee.security_guard(name)
            HourlyEmployee.new(name, 19.25, 30)
    end

    def HourlyEmployee.cashier(name)
        HourlyEmployee.new(name, 12.75, 25)
    end

    def HourlyEmployee.janitor(name)
        HourlyEmployee.new(name, 12.00, 20)
    end

    def hourly_wage= hourly_wage
        if hourly_wage > 0
            puts "Your hourly wage is #{@hourly_wage}."
        end
        @hourly_wage = hourly_wage
    end

    def initialize(name = "No Name Set", hourly_wage = 0.0, hours_per_week = 0.0)
       super(name)
       self.hourly_wage = hourly_wage
       self.hours_per_week = hours_per_week
    end

    def hours_per_week= hours_per_week
        if hours_per_week > 0 && hours_per_week < 80
            puts "You worked #{hours_per_week} hours this week."
        end
        @hours_per_week = hours_per_week
    end

    def print_pay
        print_name
        pay_for_period = hourly_wage * hours_per_week * 2
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Your pay is #{formatted_pay} for this period"
    end

end

jane = SalariedEmployee.new
jane.name = "Janey"
jane.salary = 60000
jane.print_pay
jane.print_name

susie = HourlyEmployee.new
susie.name = "Susie"
susie.hourly_wage = 14.56
susie.hours_per_week = 20.0
susie.print_pay

molly = HourlyEmployee.new("Molly", 50000)
molly.print_pay

angela = HourlyEmployee.security_guard("Angela Martin")
edwin = HourlyEmployee.cashier("Edwin Burges")
peter = HourlyEmployee.janitor("Pilot Pete")

puts
puts

angela.print_pay
edwin.print_pay
ivan.print_pay
