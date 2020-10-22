class Employee
    attr_accessor :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @salary = salary
        @title = title
        @boss = nil
        add_boss(boss)
    end

    def bonus(multiplier)
        salary * multiplier
    end

    def add_boss(boss)
        unless boss == nil
            @boss = boss
            @boss.subordinates << self
        end
    end
end