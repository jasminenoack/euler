def divisors(num)
  return 1 if num==1
  divisors=[]
  index=1
  while index<=num/2
    if num%index==0
      divisors << index
    end
    index+=1
  end
  divisors
end

def sum(divisors)
  divisors.inject(:+)
end

def check_under(num)
  amicable=[]
  index=1
  while index<num
    index+=1
    if amicable.include?(index)
      next
    else
      first_num=index
      first_divisors=divisors(first_num)
      second_num=sum(first_divisors)
      next if first_num==second_num
      next if second_num>=num
      second_divisors=divisors(second_num)
      #for some reason when there is only one number in the array inject isn't working. 
      next if second_divisors==1
      next if first_num != sum(second_divisors)
      amicable << first_num
      amicable << second_num
    end
  end
  amicable
end



print check_under(10000).inject(:+)
