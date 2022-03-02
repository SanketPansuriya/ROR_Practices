=begin
Given an array of numbers, remove the duplicates such that each unique element appears only once.

Input: numbers = [0,0,1,1,1,2,2,3,3,4]
Expected output: [0,1,2,3,4, nil, nil, nil, nil, nil]

=end

def get_uniq(arr)
  ## empty array 'b' for storing output
  b = []
  
  ## Integer variable for tracking index of 'b'
  index = 0
  
  ## Iterete loop in 'arr' array
  arr.each do |v| 
    
    ## Checking Where 'b' array has 'v' value or not 
    ## if 'v' value is there then push nil at last position into 'b'
    if b.include?(v)
      next if b.push(nil)
    end
    
    ## Pushing 'v' value at 'index' position
    b.insert(index, v)
    index +=1
  end
  b
end

a =  [1,3,1,2,5,4,2,1,3,5]

p get_uniq(a)