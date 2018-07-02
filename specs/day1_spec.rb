require('minitest/autorun')
require_relative('../day1.rb')
require('minitest/rg')

class TestStudent < MiniTest::Test


  def test_cohort_name
   person = Student.new("E23", "Stuart", "talk")
   assert_equal("Stuart", person.name)
  end

  def test_set_name
    person = Student.new("E23", "Stuart", "talk")
    person.name = "Bea"
    assert_equal("Bea", person.name)
  end

  def test_talk
    person = Student.new("E23", "Stuart", "I Can Talk!")
    assert_equal("I Can Talk!", person.talk)
  end

  def test_say_favourite_language
      person = Student.new("E23", "Stuart", "I Can Talk!")
      person.say_favourite_language("Ruby")
      assert_equal("I Love Ruby", person.talk)
  end

end


### Part B
#
# Now we would like you to make a class that represents a sports team.
#
# * Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# * For each property in the class make a getter method than can return them.
# * Create a setter method to allow the coach's name to be updated.
# * Refactor the class to use `attr_reader` or `attr_accessor` instead of your own getter and setter methods.
# * Create a method that adds a new player to the players array.
# * Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# * Add a points property into your class that starts at 0.
# * Create a method that takes in whether the team has won or lost and updates the points property for a win.
#
#


class TestTeam < MiniTest::Test

def test_team_name
  team = Team.new("SuperTeam", ["Thelma", "Louise"], "George")
  assert_equal("SuperTeam", team.name)
end

def test_players
  team = Team.new("SuperTeam", ["Thelma", "Louise"], "George")
  assert_equal(["Thelma", "Louise"], team.players)
end

def test_couch
  team = Team.new("SuperTeam", ["Thelma", "Louise"], "George")
  assert_equal("George", team.couch)
end

def test_add_new_player
  team = Team.new("SuperTeam", ["Thelma", "Louise"], "George")
  team.add_new_player("Kasia")
  assert_equal(["Thelma", "Louise", "Kasia"], team.players)
end

def test_check_players
  team = Team.new("SuperTeam", ["Thelma", "Louise"], "George")
  team.check_players
  assert_equal(true, team.check_players)
end


end
