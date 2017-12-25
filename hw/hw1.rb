class Monster
  attr_reader :name, :actions

  def initialize(name)
    @name = name
    @actions = {
      screams: 0,
      scares: 0,
      runs: 0,
      hides: 0,
    }
    
   def print_scoreboard
    puts "----------------------------------------------------------"
    puts "#{name} scoreboard"
    puts "----------------------------------------------------------"
    puts "- screams: #{actions[:screams]}"
    puts "- scares: #{actions[:scares]}"
    puts "- runs: #{actions[:runs]}"
    puts "- hides: #{actions[:hides]}"
    end
    def inspect
      "<#{name}, #{actions}"
    end
   def say(&block)
    print "#{name} says... "
    yield
   end

   def scream(&block)
    actions[:screams] +=1
    print "#{name} screams "
    yield
   end

   def scare(&block)
    actions[:scares] +=1
    print "#{name} has scared you... "
    yield
   end

   def runs(&block)
    actions[:runs] +=1
    print "#{name} has run. "
    yield
   end

   def hides(&block)
    actions[:hides] +=1
    print "#{name} has hidden. " ##### => Remember that data can be sent back to the block which called on this method.
    yield self if block_given?
   end
  end

  monster = Monster.new("Fluffy")
  monster.say { puts "Welcome to my home." }

  monster.scream do
    puts "Boo!"
  end
  monster.scare do
    puts "go Away!"
  end
  monster.runs do
    puts "I'm going to come get you!"
  end
  monster.hides do | monster |    #### => The monster instance is now accessible
    puts "I'll see you soon...!"
    puts monster.inspect
  end

  puts "\n"
  monster.print_scoreboard
