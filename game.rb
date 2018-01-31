def white_house
  puts " you find 2 doors"
  puts "which one do you pick? door 1 or 2 ?"

  print ">"
  choice = $stdin.gets.chomp

  if choice == "1"
    door_1
  elsif choice == "2"
    door_2
  else
    die("the space gets smaller and smaller until it squashes you")
  end
end

def door_1
  puts "you find a red box and a blue box"
  puts "which one do you open"

  print ">"
  choice = $stdin.gets.chomp

  if choice.include?("red")
    puts "you find a lot of books"
    puts "what do you do?"

    print ">"
    choice = $stdin.gets.chomp

    if choice == "pick a book and read "
      puts "you win"
      exit(0)
    elsif choice == "ignore them"
      die("your head falls off you illiterate")
    else
      puts "sending you to the blue house"
      blue_house
    end

  elsif choice.include?("blue")
      puts "you find dolls who came to life"
      puts "what do you do ?"

      print "<"
      choice = $stdin.gets.chomp

      if choice == "scream and run"
        die("dolls are faster than you.they caught you and strangled you")
      elsif choice == "attack them"
        puts " you win"
        black_house
      else
        blue_house
      end

  else
    die("heart attack")
  end
end


def door_2
    puts "you find some vampires sitting around"
    puts "what do you do?"

    print "<"
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

   print "<"
   choice = $stdin.gets.chomp

   if choice.include?("red")
     die("the house exploded")
   elsif choice.include?("black")
     puts "it starts to rain" , "what do you do? Do you go out or enjoy the rain or what?"

     print "<"
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
   puts " you've been walking in a forest and suddenly you find your way out."
   puts " you find yourself in front of 3 houses, a white house ,a blue house, and a black house"
   puts " which one do you enter?"

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
