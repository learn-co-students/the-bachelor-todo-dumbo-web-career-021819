require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  data.map do |seasons, contestants|
    contestants.map do |info|
      if season == seasons && info["status"] == "Winner"
        return info["name"].split(" ")[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.map do |seasons, contestants|
    contestants.map do |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.map do |seasons, contestants|
    contestants.map do |info|
      if info["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.map do |seasons, contestants|
    contestants.map do |info|
      if info["hometown"] == hometown
        return info["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data.map do |seasons, contestants|
    if seasons == season
      contestants.map do |info|
        ages << info["age"].to_f
      end
    end
  end
  i = 0
  sum = 0
  while i < ages.size
    sum += ages[i]
    i += 1
  end
  return (sum/ages.size).round(0)
end
