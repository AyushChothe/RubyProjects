# 5. (Serialization & Deserialization)
# 1. Create a simple class(e.g. Employee) with some attributes(e.g. name, age, gender) and serialize-deserialize objects using YAML and Marshal and compare both of these methods. (Take values from user as inputs at the first time and to update them at the second time after deserializing and then serialize them)

# 2. Try serializing file handler object.

# 3. Use complex classes created in 'Classes' module and serialize-deserialize objects of them.

class Employee
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    "#{@name},#{@age},#{@gender}"
  end
end

# Main
begin
  emp = Employee.new('Ayush', 22, 'Male')
  emp_serial = Marshal.dump(emp)
  emp_de_serial = Marshal.load(emp_serial)

  # Marshal Serialize
  puts('Marshal Serialize:', emp_serial)
  puts('-----')
  puts('Marshal Deserialize:', emp_de_serial)
  puts('-----')
  puts('Marshal Object Match:', emp.to_s == emp_de_serial.to_s)
rescue StandardError
  print('Invalid Input!')
end
