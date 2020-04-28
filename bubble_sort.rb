bubble_sort =[4,3,78,2,0,2]


def sorting(arr)
  stop = 0
  arr.each_with_index do |num, value|
    
    next_one = arr[value+1]
   
    if num == arr.last && stop == 1 
      stop = 0
      sorting(arr)
      break  

    elsif stop == 0 && next_one == nil
      print arr
      return arr
    
    elsif num > next_one
      
      stop = 1
      hold = next_one
      arr[value+1] = num
      arr[value] = next_one
 
    end 
  end
end

sorting(bubble_sort)