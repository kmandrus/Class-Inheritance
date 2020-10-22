require_relative 'employee'

class Manager < Employee
    attr_accessor :subordinates

    def initialize(name, title, salary, boss=nil)
        super
        @subordinates = []
    end

    def bonus(multiplier)
        all_subsalaries * multiplier
    end

    def add_employee(employee)
        employee.add_boss(self)
    end

    protected

    def all_subsalaries
        @subordinates.sum do |employee|
            if employee.is_a?(Manager)
                employee.salary + employee.all_subsalaries
            else
                employee.salary
            end
        end
    end
end