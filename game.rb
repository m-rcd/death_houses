def white_house
  puts "You find 2 doors"
  puts "Which one do you pick? door 1 or 2 ?"

  print "< "
  choice = $stdin.gets.chomp

  if choice == "1"
    door_1
  elsif choice == "2"
    door_2
  else
    die("The space gets smaller and smaller until it squashes you")
  end
end

def door_1
  puts "You find a red box and a blue box"
  puts "Which one do you open"

  print "< "
  choice = $stdin.gets.chomp

  if choice.include?("red")
    puts "You find a lot of books"
    puts "What do you do? Do you pick a book and read or ignore them or what?"

    print "< "
    choice = $stdin.gets.chomp

    if choice == "pick a book and read "
      puts "You win!wohooo"
      exit(0)
    elsif choice == "ignore them"
      die("your head falls off you illiterate")
    else
      puts "sending you to the blue house"
      blue_house
    end

  elsif choice.include?("blue")
      puts "You find dolls who came to life"
      puts "Do you scream and run, attack them or what?"

      print "< "
      choice = $stdin.gets.chomp

      if choice == "scream and run"
        die("dolls are faster than you.they caught you and strangled you")
      elsif choice == "attack them"
        puts "You win!"
        black_house
      else
        puts "Sending you to the blue house"
        blue_house
      end

  else
    die("heart attack")
  end
end


def door_2
    puts "you find some vampires sitting around"
    puts "What do you do?Do you say hello to them or bow to them or what?"

    print "< "
    choice = $stdin.gets.chomp

    if choice == "say hello"
      puts "you think vampires are friendly?"
      die("vampires eat you")
    elsif choice == "bow to them"
      puts "you survived and can go through"
      white_house
    else
      die("the shock was so great you died")
   end
 end

 def blue_house
   puts "you find two buttons, one red and one black"
   puts "which one do you press?"

   print "< "
   choice = $stdin.gets.chomp

   if choice.include?("red")
     die("the house exploded")
   elsif choice.include?("black")
     puts "it starts to rain" , "what do you do? Do you go out or enjoy the rain or what?"

     print "< "
     choice = $stdin.gets.chomp

     if choice == "go out"
       puts "you win"
       exit(0)
     elsif choice == "enjoy the rain"
       die("you freeze to death")
     else
       puts "you're transported to another house"
       white_house
     end
   else
     die("if you don't do anything you die ")
   end
 end

 def black_house
   puts "you find nothing here you can just relax. you win"
   exit(0)
 end

 def die(why)
   puts why
   exit(0)
   too bad
 end

 def start
   puts " You've been walking in a forest and suddenly you find your way out."
   puts " You find yourself in front of 3 houses, a white house ,a blue house, and a black house"
   puts " Which one do you enter?"

   print "< "
   choice = $stdin.gets.chomp

   if choice.include?("white")
     white_house
   elsif choice.include?("blue")
     blue_house
   elsif choice.include?("black")
     black_house
   else
     die("you starve")
   end
end

start
