require 'pry'
def get_first_name_of_season_winner(data, season)
winner = ""
data[season].each do |x|
if x["status"] == "Winner"
  winner = x["name"].split(" ").first
end
end
winner
end


def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |k,v|
    v.each do |x|
      if x["occupation"] == occupation
        name = x["name"]
      #binding.pry
    end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |k,v|
    v.each do |x|
      if x["hometown"] == hometown
        count +=1

    end
    end
  end
count
  #binding.pry
end

def get_occupation(data, hometown)
  # code here
  name = ""
  data.each do |k,v|
    v.each do |x|
      if x["hometown"] == hometown
        name = x["occupation"]
        if name == "Journalist"
          return name
        end
      #binding.pry
    end
    end
  end
  name

end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  data[season].each do |k,v|
    k.each do |x|
      if x[0] == "age"
        age_array << x[1]
      end
    end
  end
  count = 0
  average = 0
  age_array.each do |x|
    count += x.to_i
    average = (count.to_f/age_array.length)
  end
    average.round
end
