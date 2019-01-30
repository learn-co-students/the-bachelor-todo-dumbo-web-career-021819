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
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
