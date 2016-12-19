class Schedule

  
  def initialize
       @schedule = Array.new
  end
  
  def add_item(action_type)
    puts "#{action_type} has been passed"
    item_at_time = Hash.new
    item_at_time[action_type.to_sym] = Time.new
    @schedule << item_at_time
    puts "The schedule now says #{@schedule}"
  end
  
  def print_schedule(length)
    #This will print the last (length) of scheduled items. 
  end
  
  
end