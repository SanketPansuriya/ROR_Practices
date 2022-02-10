def array_flatten(arr)
    output = []
    arr.each_with_index { |x , y| 
        if x.class == Array
            output = output.concat(array_flatten(x))
        else 
            output[y] = x
        end
    }
    return output
end


a = [1,2,[3,4], [5,6,[7,[1,2,3]]]]
b = array_flatten(a)
print b  # b => [1, 2, 3, 4, 5, 6, 7, 1, 2, 3]