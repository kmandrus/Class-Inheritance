require_relative 'employee'

class Manager < Employee
    attr_accessor :subordinates

    def initialize(name, title, salary, boss)
        super
        @subordinates = []
    end

    def bonus(multiplier)
        all_subordinate_salaries = @subordinates.sum do |employee|
            if employee.respond_to?(:subordinates)
                subordinate_salaries = employee.bonus(1)
                employee.salary + subordinate_salaries
            else
                employee.salary
            end 
        end
        all_subordinate_salaries * multiplier
    end
end