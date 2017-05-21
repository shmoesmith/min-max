
@numberbank = []
@clone_bank = @number.clone.



def test_array_max
        while @clone_bank.first > @clone_bank.last
                @clone_bank.pop
        end
        while @clone_bank.last > @clone_bank.first
                @clone_bank.shift
        end
        puts @clone_bank


end

def test_array_min
end


def enter_array
    puts "Enter the number you would like to include in your array.  When complete type 'done'"

    array_number = gets.chomp
    
        if /\d+/.match(array_number)
            array_number.to_i
            @numberbank << array_number
            enter_array
        elseif
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