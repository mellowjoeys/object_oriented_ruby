module Reportable
  def send_report
    puts "Sending email..."
    # code to send email
    puts "Email sent"
  end
end

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end
end

class Manager < Employee 
  include Reportable
  attr_reader :employees

  def initialize(input_options)
    super(input_options)

    @employees = input_options[:employees]
  end

  def give_all_raises
    # input: @employees, Array of Employee Objects
    # output/effect: all employees will have a raise

    # steps
    # 1 - access my list of employees
    # 2 - access each employee individually
    # 3 - change the indivdual employee, so they get a raise
        
    # i = 0  # this method uses an explicit i, no block variable. 
    # while i < employees.length
    #   employees[i].give_annual_raise
    #   i += 1
    # end

    employees.each do |employee| #this method uses an each do, with block variable i. This is more commonly used in ruby if iterating through the entire array.
      # employees[i].give_annual_raise
      employee.give_annual_raise
      p employee
    end
  end

  def fire_all_employees
    # i = 0
    # while i < employees.length
    employees.each do |employee|
      employee.active = false
      p employee
    end
  end

end

class Intern < Employee
  include Reportable
end
# Runner Code
# ==========================

employee_1 = Employee.new(
                          first_name: "Randy", 
                          last_name: "Newman", 
                          salary: 65000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Joan", 
                          last_name: "Jett", 
                          salary: 80000, 
                          active: true
                          )
manager = Manager.new(
                      first_name: "Ada",
                      last_name: "Lovelace",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
intern = Intern.new(
                    first_name: "Jimmy"
                    last_name: "Olsen"
                    salary: 40000
                    active: true
                    )

manager.give_all_raises
# p manager.employees
# puts "=================================="
manager.fire_all_employees
# p manager.employees