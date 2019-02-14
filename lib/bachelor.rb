def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_str, players_array|
    if season_str == season
      players_array.each do |player|
        if player["status"].downcase == "winner"
          return player["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_str, players_array|
    players_array.each do |player|
      if player["occupation"] == occupation
        return player["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  result = []
  data.each do |season_str, players_array|
    players_array.each do |player|
      if player["hometown"] == hometown
        result << player
      end
    end
  end
  result.length
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_str, players_array|
    players_array.each do |player|
      if player["hometown"] == hometown
        return player["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  number = 0
  data.each do |season_str, players_array|
    if season_str == season
      players_array.each do |player|
        sum += player["age"].to_i
        number += 1
      end
    end
  end
  (sum * 1.0 / number).round
  # (sum / number).round
end
