class Employee

    @@all = []

    attr_accessor :name, :salary, :manager

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        self.class.all << self
    end

    def self.all
        @@all
    end

    def manager_name
        @manager.name
    end

    def self.paid_over(amount)
        moneyed_employees = self.all.select do |employee|
            employee.salary > amount
        end
        moneyed_employees
    end

    def self.find_by_department(find_by_department)
        temp = self.all.find do |employee|
            employee.manager.department == find_by_department
        end
        temp.manager
    end

    def self.tax_bracket(amount)
        moneyed_employees = self.all.select do |employee|
            (employee.salary > (amount - 1000)) && (employee.salary < (amount + 1000))
        end
        moneyed_employees
    end

end
