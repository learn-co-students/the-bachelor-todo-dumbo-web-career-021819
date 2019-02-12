# return the first name of that season's winner
# How will you check to see if a contestant's status equals "Winner"
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant| 
    if contestant["status"] == "Winner"
      winner_name = contestant["name"].split(" ")
      winner_name.pop
      winner_name = winner_name.join(" ")
      return winner_name
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_list| 
    contestant_list.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  contestants_count = 0
    data.each do |season, contestant_list| 
      contestant_list.each do |contestant|
        if contestant["hometown"] == hometown
          contestants_count += 1
        end
      end
    end
  return contestants_count
end

def get_occupation(data, hometown)
  data.each do |season, contestant_list| 
    contestant_list.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  data[season].each do |contestant|
    total_age += contestant["age"].to_f
  end
  avg_age = (total_age / data[season].length).round
  return avg_age
end
