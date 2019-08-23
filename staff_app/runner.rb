
require "./employee.rb"
require "./manager.rb"
require "./intern.rb"
# Runner Code
# ==========================

employee_1 = Actualize::Employee.new(
                          first_name: "Randy", 
                          last_name: "Newman", 
                          salary: 65000, 
                          active: true
                          )

employee_2 = Actualize::Employee.new(
                          first_name: "Joan", 
                          last_name: "Jett", 
                          salary: 80000, 
                          active: true
                          )
manager = Actualize::Manager.new(
                      first_name: "Ada",
                      last_name: "Lovelace",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
intern = Actualize::Intern.new(
                    first_name: "Jimmy",
                    last_name: "Olsen",
                    salary: 40000,
                    active: true
                    )

manager.give_all_raises
# p manager.employees
# puts "=================================="
manager.fire_all_employees
# p manager.employees