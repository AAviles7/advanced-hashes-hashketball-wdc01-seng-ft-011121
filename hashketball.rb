# Write your code below game_hash
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

# Write code here
#num_points_scored
#  knows the number of points scored by each player (FAILED - 1)
def num_points_scored(player)
  
  ans = 0
  game = game_hash
  game.each do |key, value|
    value.each do |k, v|
      if k == :players
        x = 0
        v.length.times do
          temp = v[x]
          if temp[:player_name] == player
            ans = temp[:points]
          end
          x += 1
        end
      end
    end
  end
  return ans
  
end

#shoe_size
#  knows the shoe size of each player (FAILED - 2)
def shoe_size(player)
  
  ans = 0
  game = game_hash
  game.each do |key, value|
    value.each do |k, v|
      if k == :players
        x = 0
        v.length.times do
          temp = v[x]
          if temp[:player_name] == player
            ans = temp[:shoe]
          end
          x += 1
        end
      end
    end
  end
  return ans
  
end

#team_colors
#  knows the Brooklyn Nets colors are Black and White (FAILED - 3)
#  knows the Charlotte Hornets colors are Turquoise and Purple (FAILED - 4)
def team_colors(team)
  
  ans = []
  game = game_hash
  game.each do |key, value|
    if value[:team_name] == team
      ans = value[:colors]
    end
  end
  return ans
  
end

#team_names
#  returns the team names (FAILED - 5)
def team_names
  
  ans = []
  game = game_hash
  game.each do |key, value|
    ans.push(value[:team_name])
  end
  return ans
  
end

#player_numbers
#  returns the player jersey numbers (FAILED - 6)
def player_numbers(team)
  
  ans = []
  game = game_hash
  game.each do |key, value|
    if value[:team_name] == team
      value.each do |k, v|
        if k == :players
          x = 0
          v.length.times do
            temp = v[x]
            ans.push(temp[:number])
            x += 1
          end
        end
      end
    end
  end
  return ans
  
end

#player_stats
#  returns all stats for a given player (FAILED - 7)
def player_stats(name)
  
  ans = {}
  game = game_hash
  game.each do |key, value|
    value.each do |k, v|
      if k == :players
        x = 0
        v.length.times do
          temp = v[x]
          if temp[:player_name] == name
            ans = temp
          end
          x += 1
        end
      end
    end
  end
  return ans
  
end

#big_shoe_rebounds
#  returns the number of rebounds of the player with the biggest shoe size (FAILED - 8)
def big_shoe_rebounds
  
  ans = 0
  size = 0
  game = game_hash
  game.each do |key, value|
    value.each do |k, v|
      if k == :players
        x = 0
        v.length.times do
          temp = v[x]
          if temp[:shoe] > size
            size = temp[:shoe]
            ans = temp[:rebounds]
          end
          x += 1
        end
      end
    end
  end
  return ans
  
end

























