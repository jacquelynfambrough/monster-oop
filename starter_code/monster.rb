



# Monster class
class Monster
  # getters and setters for instance variables
  attr_accessor :threat_level
  # class variable for count
  @@count = 0
  # class instance variable for class description
  @description = "monster?"
  # class method getter for @@count class variable
  def self.count
    @@count
  end
  # class method getter for @class_description class instance variable
  def self.decription
    @description
  end
  # initial behavior
  def initialize (threat_level)
    @threat_level = threat_level
    puts "RAWR"
    @@count =+ 1
    puts "#{@@count}monster count"
  end

  # habitat? instance method
  def habitat?(hab)
     @habitat == hab

  end

  # get_dangerous instance method

    def get_dangerous
      # ruby version of a switch statement is case
      case @threat_level
        when :low
          @threat_level = :eh
        when :medium
          @threat_level = :moderate
        when :high
          @threat_level = :dangerous
        when :midnight
          :dangerous_af
      end
    end
end
  # fight class method
# # Zombie class
class Zombie < Monster


  # zombie version of class_description
  @description = "favorite food: brains"
  # initial behavior and values
  def initialize (threat_level=:medium)
    super (threat_level)
    @habitat = "graveyard"


  end
end
robert = Zombie.new
puts robert.get_dangerous
puts "rob lives in a #{@habitat}"




class Werewolf < Monster
  # werewolf version of class_description
  @description = "loves moonlit beaches"
  # initial behavior and values
  def initialize (threat_level=:high)
    super (threat_level)
    # @habitat = "house of unsespecting family"

  end


  # update_threat_level instance method

  def update_threat_level(full_moon)
    if full_moon
      @threat_level = :midnight
    else
      @threat_level = :low
    end
    @threat_level
  end
end


  tom = Werewolf.new
  puts tom.get_dangerous
  puts tom.update_threat_level
# Flying module

  #fly method

# Vampire class

  # vampire class description

  # Flying module included
