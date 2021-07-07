require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, contestants|
    if seasons == season
    contestants.each do |stats|
      stats.each do |attribute, value|
        #binding.pry
        if value == 'Winner'
          name_array = stats["name"].split(" ")
          return name_array[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
    contestants.each do |stats|
      stats.each do |attribute, value|
        if value == occupation
          return stats["name"]
        end
      #binding.pry
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  
  data.each do |seasons, contestants|
    contestants.each do |stats|
      stats.each do |attribute, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each do |stats|
        if hometown == stats["hometown"]
          return stats["occupation"]
        end
        #binding.pry
      end
      end
end

def get_average_age_for_season(data, season)
  sum = 0
  counter = 0

  data.each do |seasons, people|
    if seasons == season 
    people.each do |contestant|
      contestant.each do |stats, value|
        #binding.pry
        if stats == "age"
          sum += contestant["age"].to_i
          counter += 1
        end
      end
    end
  end
end
  return (sum.to_f / counter.to_f ).round
end



