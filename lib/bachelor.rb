def get_first_name_of_season_winner(data, season)
  # code here
    data[season].each do |contestant|
      if contestant["status"] == "Winner"
        return contestant["name"].split(" ").first
      end
    end
  end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant|
    contestant.each do |challenger|
      if challenger["occupation"] == occupation
        return challenger["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
    data.each do |season, contestant|
      contestant.each do |challenger|
        if challenger["hometown"] == hometown
          counter += 1
        end
      end
    end
    counter
  end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant|
    contestant.each do |challenger|
      if challenger["hometown"] == hometown
        return challenger["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  total_contestants = 0
    data[season].each do |challenger|
        total_age += (challenger["age"]).to_i
        total_contestants += 1
      end
  (total_age / total_contestants.to_f).round(0)
end
