require "./employee.rb"
require "./reportable.rb"

module
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
end
