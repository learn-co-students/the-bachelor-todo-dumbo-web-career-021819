require 'pry'

def get_first_name_of_season_winner(data, season)
  name = nil
  data[season].each do |contestant|
    if contestant['status'] == 'Winner'
      name = contestant['name'].split(' ')
    end
  end
  name[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_data|
    #contestant_data is an array, each element of the array is a hash
    contestant_data.each do |data|
      #binding.pry
      if data["occupation"] == occupation
        return data["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant_data|
    contestant_data.each do |data|
      if data["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant_data|
    contestant_data.each do |data|
      if data["hometown"] == hometown
        return data["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  contestant_count = 0
  data.each do |seasons, contestant|
    if seasons.to_s == season
      puts season
      contestant.each do |data|
        contestant_count += 1
        total_age += data["age"].to_i
      end
    end
  end
  avg_age = total_age/contestant_count.to_f
  avg_age.round
end
















def get_average_age_for_season(data, season)
  # code here
end
