require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  result = ""
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_stats|
      if player_name == player_stats[:player_name] 
        result = player_stats[:points]
      end
    end 
  end
  result
end

def shoe_size(player_name)
  result = ""
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_stats|
      if player_name == player_stats[:player_name]
        result = player_stats[:shoe]
      end 
    end 
  end 
  result
end

def team_colors(team_name)
  result = []
  game_hash.each do |team, team_info|
    if team_name == team_info[:team_name]
      result = team_info[:colors]
    end
  end 
  result
end
  
def team_names
  game_hash.collect do |team, team_info|
    team_info[:team_name]
  end 
end

def player_numbers(team_name)
  result = []
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_stats|
      if team_name == team_info[:team_name]
        result << player_stats[:number]
      end
    end 
  end 
  result.sort
end 

def player_stats(player_name)
  result = {}
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_stats|
      if player_name == player_stats[:player_name]
        result = player_stats
      end 
    end
  end 
  result
end

def big_shoe_rebounds
  largest_shoe = 0
  result = ""
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_stats|
      if largest_shoe < player_stats[:shoe]
        largest_shoe = player_stats[:shoe]
        result = player_stats[:rebounds]
      end
    end 
  end 
  result 
end

def most_points_scored
  most_points = 0 
  result = ""
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_stats|
      if most_points < player_stats[:points]
        most_points = player_stats[:points]
        result = player_stats[:player_name]
      end 
    end 
  end 
  result
end 

puts most_points_scored

def winning_team
    team_home_pts = 0
    team_away_pts = 0
    winning_team = ""
    game_hash.each do |team, team_info|
      team_info[:players].each do |player_stats|
        if team == :home
          team_home_pts += player_stats[:points]
        else 
          team_away_pts += player_stats[:points]
        end
      end 
    end 
    puts team_home_pts
    puts team_away_pts
   if team_home_pts > team_away_pts 
      winning_team = game_hash[:home][:team_name]
   elsif team_home_pts < team_away_pts
      winning_team = game_hash[:away][:team_name]
   else 
      winning_team = "Both teams are winners!"
   end
    winning_team
  end
  
  puts winning_team

def player_with_longest_name
  longest_name = 0
  result = ""
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_stats|
      if longest_name < player_stats[:player_name].length
        longest_name = player_stats[:player_name].length
        result = player_stats[:player_name]
      end
    end 
  end 
  result
end
puts player_with_longest_name

