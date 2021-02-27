require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here


#binding.pry

m1 = Manager.new("m1", "d1", 1)
m2 = Manager.new("m2", "d2", 3)
m3 = Manager.new("m3", "d2", 2)

e1 = Employee.new("e1", 1, m1)
e2 = Employee.new("e2", 2, m1)
e3 = Employee.new("e3", 5, m3)
e4 = Employee.new("e4", 3, m2)



p Employee.find_by_department('d1')




puts "done"
