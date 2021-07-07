def get_first_name_of_season_winner(data, season)
  data[season].each do |item|
    if item["status"] == "Winner"
      return item["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestantarray|
    contestantarray.each do |item|
      if item["occupation"] == occupation
        return item["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestantarray|
    contestantarray.each do |item|
      if item["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestantarray|
    contestantarray.each do |item|
      if item["hometown"] == hometown
        return item["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestants = 0.0
  agecombo = 0.0
  data[season].each do |person|
    contestants += 1
    agecombo += person["age"].to_i
  end
  (agecombo / contestants).round
end
