require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  contestants = data[season]
  contestants.each do |info|
    if info["status"] == "Winner"
      return info["name"].split[0]
    end
  end
end

#also works
#def get_first_name_of_season_winner(data, season)
  #winner = data[season][0]["name"].split[0]
#end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, info|
    info.each do |details|
      if details["occupation"] == occupation
        return details["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_array = []
  data.each do |season, info|
    info.each do |details|
      if details["hometown"] == hometown
        hometown_array << details["hometown"]
      end
    end
  end
  hometown_array.size
end

#with counter
#def count_contestants_by_hometown(data, hometown)
  #hometown_loc = 0
  #data.each do |season, info|
    #info.each do |details|
      #if details.value?(hometown)
        #hometown_loc += 1
      #end
    #end
  #end
  #hometown_loc
#end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each do |details|
      if details["hometown"] == hometown
        return details["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  count = 0
  contestants = data[season]
  contestants.each do |info|
    num = info["age"].to_f
    age = age + num
    count += 1
  end
  (age / count).round
end
