class Student
attr_reader :cohort, :name, :talk
attr_writer :cohort, :name, :talk

 def initialize (cohort, name, talk)
   @cohort = cohort
   @name = name
   @talk = talk
 end

 def say_favourite_language(what_they_said)
   @talk = "I Love " + what_they_said
 end
end



class Team
attr_reader :name, :players, :couch
attr_writer :name, :players, :couch

def initialize (name, players, couch)
  @name = name
  @players = players
  @couch = couch
end

def add_new_player(new_player)
  @players << "Kasia"
end

def check_players
  for player in players
    return true if players.include? player
  end
end



end
