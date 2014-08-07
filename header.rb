############################################################
#  name:         Ryan Teskey
#  Assignment:   Assignment 2
#  Date:         1/19/2011
#  Class:        CIS 282
#  Ruby Version: 1.9.2
#  Description:  Makes a header for all of my assignments
############################################################
@border = '#'
fields = {'name' => ["#{@border}  Name:         ",'Enter your Name: '],
          'assignment' => ["#{@border}  Assignment:   ",'Enter your Assignment: '],
          'date' => ["#{@border}  Date:         ",'Enter the Date: '],
          'room' => ["#{@border}  Class:        ",'Enter Your Class: '],
          'version' => ["#{@border}  Ruby Version: ",'Enter Your Ruby Version: '],
          'description' => ["#{@border}  Description:  ",'Enter the Description: ']
}
# This creates a variable and sets it to what ever the user puts in from the prompt.
fields.each do |key, value|
  instance_variable_set("@#{key}",prompt(value[1]))
end

line
# Loops throw the hash and returns the display string from the hash. Then gets the key and returns
# the variable from the user that has the same name as the key.
fields.each do |key, value|
  puts "#{value[0]}#{instance_variable_get("@#{key}")}"
end
line

def prompt(statement)
  print statement
  gets.strip.chomp
end

def line
  puts @border * 60
end