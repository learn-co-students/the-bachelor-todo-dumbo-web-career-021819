def get_first_name_of_season_winner(data, season)
  temp_string = ""
  data[season].each do |list|
    list.each do |attribute, value|
    if value == "Winner"
      temp_string = list["name"]
    end
  end
  end
      temp_array = temp_string.split(" ")
      temp_array[0]
end

def get_contestant_name(data, occupation)
  temp_string = ""
  data.each do |season, stuff|
    stuff.each do |list|
      list.each do |attribute, value|
        if value == occupation
          temp_string = list["name"]
        end
      end
    end
  end
  temp_string
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, stuff|
    stuff.each do |list|
      list.each do |attribute, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  temp_array = []
  data.each do |season, stuff|
    stuff.each do |list|
      list.each do |attribute, value|
        if value == hometown
          temp_array << list["occupation"]
      end
    end
  end
end
  temp_array[0]
end


def get_average_age_for_season(data, season)
  average_age = 0
  average_age_array = []
  data[season].each do |list|
    average_age_array << list["age"].to_f
  end
  average_age_array.each do |age|
    average_age += age
  end
  average_age = average_age / average_age_array.size
  average_age.round
end
