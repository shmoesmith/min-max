require 'pry'

@clone_bank = []
@result = 0


def test_array_max
    @clone_bank.each {|number| number = @result if @result <= number}
    puts "your max is #{@result}"
end
       

def enter_array
    puts "Enter the number you would like to include in your array.  When complete type 'done'"

    array_number = gets.chomp
    
        if /\d+/.match(array_number)
           
            @clone_bank <<  array_number.to_i
            enter_array
        elsif
            array_number == "done"
                welcome_menu
        else
            puts "enter a number or type 'done'"
        end
end



def welcome_menu
    puts "a litle program to determine min/max of an array without .min/.max methods"
    puts "\n\n1. Enter array values"
    puts "2. Test array max"
    puts "3. Test array min"
    puts "4. Exit"

    welcome_choice = gets.chomp

    case welcome_choice
        when "1"
            enter_array
        when "2"
            test_array_max
        when "3"
            test_array_min
        when "4"
            exit
        else
            "enter a valid selection"
    end
end
welcome_menu