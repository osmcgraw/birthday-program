DURATION_OF_DAY_SECS = 60*60*24
DURATION_OF_YEAR_SECS = DURATION_OF_DAY_SECS * 365


class Person

  def initialize(name, birth_year, birth_month, birth_day)
    @birthday = Time.new(birth_year, birth_month, birth_day)
    @name = name
  end
  
  def calculate_age_in_days
    today = Time.new
    current_day_in_loop = @birthday
    age_in_days = 0
    while current_day_in_loop < today do
      current_day_in_loop += DURATION_OF_DAY_SECS
      age_in_days += 1
    end
  
    age_in_days
  end


  def calculate_age_in_months
    today = Time.new
    age_in_months = today.month - @birthday.month + (calculate_age_in_years * 12)
    age_in_months
  end

  def calculate_age_in_years

    today = Time.new
    age_in_years = today.year - @birthday.year
  
    future = Time.new(@birthday.year+age_in_years, @birthday.month, @birthday.day)
    if future > today
      age_in_years -= 1
    end
    age_in_years  
  end
  
  def print_hello_world
    "#{@name} is a funny one who was born on #{@birthday.strftime("%m/%d/%Y")}"
  end

  def print_age
    "Her current age is: \n" + 
    calculate_age_in_years.to_s.ljust(20, '.') + 
    "years  \n" +
    calculate_age_in_months.to_s.ljust(20, '.') +
    "months \n" +
    calculate_age_in_days.to_s.ljust(20, '.') +
    "days"
    
  end
  

end
#
# petra = Person.new("Petra", 2016, 8, 5)
# lauren = Person.new("Lauren", 1985, 2, 26)
# #
# # age_in_days = calculate_age_in_days(birthday)
# # age_in_months = calculate_age_in_months(birthday)
# # age_in_years = calculate_age_in_years(birthday)
# #
# puts petra.print_hello_world
# puts petra.print_age
#
# puts lauren.print_hello_world
# puts lauren.print_age
#

people = Array.new
people << Person.new("Petra", 2016, 8, 5)
people << Person.new("Lauren", 1985, 2, 26)
people << Person.new("Marty", 1945, 1, 30)
people << Person.new("Paul", 1944, 11, 13)
  
people.each do |person|
  puts person.print_hello_world
  puts person.print_age
  puts "\n" 
end



