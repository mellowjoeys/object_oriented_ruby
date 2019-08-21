# employee_1 = ["Randy", "Newman", 65000, true]
# employee_2 = ["Joan", "Jett", 80000, true]

# puts employee_1[0] + "" + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{employee_2[0]} #{employee_2[1]} makes #{employee_2[2]} a year."
# puts employee_2[0]

# employee_1 = {"first_name" => "Randy", "last_name" => "Newman", "salary" => 65000, "active" => true}
# employee_2 = {"first_name" => "Joan", "last_name" => "Jett", "salary" => 80000, "active" => true}

# puts "#{employee_1["first_name"]} #{employee_1["last_name"]} makes #{employee_1["salary"]} a year."
# puts "#{employee_1["first_name"]} #{employee_1["last_name"]} \"makes\" #{employee_1["salary"]} a year."

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active
  def initialize(options)
    @first_name = options[:first_name]
    @last_name = options[:last_name]
    @salary = options[:salary]
    @active = options[:active]
  end

  def print_info
    puts "#{self.first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  # def first_name
  #   @first_name
  # end

  # def last_name
  #   @last_name
  # end

  # def salary
  #   @salary
  # end

  # def active 
  #   @active
  # end

  # def active=(new_active)
  #   @active = new_active
  # end

end

employee_1 = Employee.new(  
                          first_name: "Randy", 
                          last_name: "Newman", 
                          salary: 65000, 
                          active: true
                          )

p employee_1.active
employee_1.active = false
p employee_1.active