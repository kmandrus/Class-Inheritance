class Employee
    attr_accessor :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @salary = salary
        @title = title
        @boss = boss
    end

    def bonus(multiplier)
        salary * multiplier
    end
end