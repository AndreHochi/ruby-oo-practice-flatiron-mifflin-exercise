class Manager

    attr_reader :name, :age
    attr_accessor :department

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        self.class.all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end

    def employees
        Employee.all.select do |employee|
            employee.manager == self
        end
    end


    def self.average_age
        count = 0.0
        t_age = 0.0
        self.all.each do |manager|
            t_age = t_age + manager.age 
            count = count + 1
        end
        t_age/count
    end

end
