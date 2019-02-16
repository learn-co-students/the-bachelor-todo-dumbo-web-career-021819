require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  
  # data.each do |season, data_types|                 #hashes iteration
  #   data_types.each do |person|                     #array iteration
      
  #     if person["status"] == "Winner"               #conditional for winner
  #       winner = person["name"]                     #assign winner name to variable
  #       binding.pry
  #     end
      
  #   end
  # end
  
  
  data[season].each do |person|
    if person["status"] == "Winner"
         winner = person["name"]                     
        # binding.pry
    end
  end
  
  winner.split(" ").shift
end



def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, contestants|
    contestants.each do |person|
      if person["occupation"] == occupation
        name = person["name"]
        #binding.pry
      end
    end
  end
  name
end





def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  
  data.each do |season, contestants|
    contestants.each do |person|
  
  
    end
  end
  
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
