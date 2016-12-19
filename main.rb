require_relative 'baby'


keyboard = ""

petra = Person.new("Petra", 2016, 8, 5)
puts petra.hello_world

while keyboard != 4    #This allows you to quit the program by entering 4
  puts "Change her status by entering one of the following numbers:"
  puts "1. Sleeping \n 2. Awake \n 3. Eating \n 4. Quit Program" 
  
  keyboard = gets.to_i #This gets the input from the keyboard and changes it to an Integer
  
  if keyboard == 1
    petra.add_schedule_item(:asleep)
  
  elsif keyboard == 2
    petra.add_schedule_item(:awake)
  elsif keyboard == 3
    petra.add_schedule_item(:eating)
    
  else
    nil
  end
end