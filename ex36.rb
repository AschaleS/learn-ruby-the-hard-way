def prompt()
  print ">"
end

def ground_floor()
  puts "You get in to the house and you see two doors at the ground floor: door1 takes to the basement and door2 will take you to the next floor. Which door do you take?"
  
  prompt; action = gets.chomp
  if action == "door1"
    basement_room()
  elsif action == "door2"
    dead ("You go to up stair and the guard will kill you as you do not have any protection.")
  else
    puts "Man! You need to choose one of the two doors."
  end
end

def dead(why)
  puts "#{why} You tried your best. Good Job!"
  Process.exit(0)
end

def basement_room()
  puts " In the basement you see a lot of weapon on the shelf and another door in the basement room. What will you do?"
  prompt; action = gets.chomp
  if action.include? "weapon"
    up_stair()
  elsif action.include? "door"
    dead("The guard on the next floor will kill you immediately as you do not have a weapon to kill him")
  else
    puts "Man, try to be smart and do the game again"
  end
end

def up_stair()
  puts "When you take the weapon you will get access to the next floor in a safe door and you will get a man standing on the door on the first floor."
  puts "You need to do something to go in to the second floor otherwise the man will kill you."
  puts "What will you do?"
  prompt; action = gets.chomp
  if action.include? "kill"
    second_floor()
  else
    dead("He will kill you")
  end
end

def start()
  puts "You are going in a mission to rescue a queen that is held hostage in a house by a group of Monsters on the out skirt of a city."
  puts "After driving for two hours you arrive in the area where the house is located."
  puts "When you arrive at the house you found out that the house has two doors. At the front door there is a big monster and at the back door there is a guard with a gun. which door do you take?"
  prompt; door = gets.chomp
  if door.include? "front"
    dead("The monster will eat your head and you will be dead.")
  elsif door.include? "back"
    guard_one()
  else
    start()
  end
end

def guard_one()
  puts "When you go to the the back door, the guard will see you and will try to kill you. What do you do?"
  prompt; action = gets.chomp
  if action.include? "run"
    puts "You are a coward and have no courage to save the queen"
  elsif action.include? "kill"
    ground_floor()
  else
    puts "I do not know what are you thinking. Either you have to kill the guard or run away before he kills you."
  end
end

def second_floor()
  puts "When you kill the guard you can take his gun and you will have access to the second floor."
  puts "But in the second floor you will see two doors labelled as 'A' and 'B'."
  puts "In door 'A' there is a big Lion and in door 'B' there is a man with a gun. which door do you take: 'A' or 'B'?"
  prompt; door = gets.chomp
  if door == "A"
    lion()
  elsif door == "B"
    man()
  else
    puts "Hey, you have to choose either A or B in order to complete the mission."
  end
end

def man()
  puts "The man will see you and will try to kill you before you get in to the room to get the queen. What will you do?"
  prompt; action = gets.chomp
  if action.include? "run"
    dead("You failed with out saving the queen.")
  elsif action.include? "kill"
    puts "When you kill the man the Lion will run and you can enter the door and save the queen. Good job, you win the game!"
  else
    puts "I do not know what you are trying to do. This doesn't make any sense. Try to do something useful again."
  end
end

def lion()
  puts "You will see a big lion in front of the door. What will you do?"
  puts "1. You will taunt the lion."
  puts "2. You will give the lion a meat so that the lion will keep silent."
  puts "3. You will shoot the lion to kill him."
  prompt; choice = gets.chomp
  if choice == "1"
    puts "The lion will get angry and will cut of your head and you are dead. You failed the game without saving the queen. You tried your best."
  elsif choice == "2"
    puts "The lion will keep silent and you can enter the room to save the queen and the guard will go away. You win. Mission completed. Good Job!"
  elsif choice == "3"
    shooting()
  else
    puts "You don't know what you are getting in to. You failed any ways."
  end
end

def shooting()
  puts "When you shoot the lion the guard on the other door will come to you and engage with you in a shooting. What do you do?"
  puts "A. Will hide and run back to save my self."
  puts "B. Will hide my self and will kill the man first."
  puts "C. Will engage in a shooting with the man."
  prompt; action = gets.chomp
  if action == "A"
    puts "You failed because you did not complete the mission."
  elsif action == "B"
    puts "Congratulations, now you can enter the door safely and rescue the queen. You win. Good Job!!!"
  elsif action == "C"
    dead("The guard will kill you as you do not hide your self before killing him.")
  else
    puts "You failed, you can not complete the game. Try again."
  end
end 

start()