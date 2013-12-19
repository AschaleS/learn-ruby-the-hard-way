def check_animals(ordinal)

  animals = ['bear', 'python', 'peacock', 'kangaroo', 'whale', 'platypus']
  if ordinal >= 1 and ordinal < 7
    puts "The animal at ordinal #{ordinal} is a %s and is at cardinal value #{ordinal - 1}" % animals[ordinal - 1]
  else
    puts "Sorry, this is not a valid number for this test"
  end
end

check_animals(0)
check_animals(1)
check_animals(2)
check_animals(3)
check_animals(4)
check_animals(5)
check_animals(6)
check_animals(7)