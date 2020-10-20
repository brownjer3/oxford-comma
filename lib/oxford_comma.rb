require "pry"

def oxford_comma(array)
    if array.size == 1
        array.join
    elsif array.size == 2
        array.join(" and ")
    else
        new_arr =[]
        array.each_with_index do |item, index|
            if index < array.size - 2
                new_item = item << ", "
                new_arr.push(new_item)
            elsif index == array.size - 2
                new_item = item << ", and "
                new_arr.push(new_item)
            else
                new_arr.push(item)
            end
        end
        new_arr.join
    end
end


