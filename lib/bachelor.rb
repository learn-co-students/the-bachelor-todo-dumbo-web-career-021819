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
  
  data.select do |season, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        counter += 1
        # binding.pry
      end
    end
  end
  counter
end




def get_occupation(data, hometown)
  # code here
  
  occupation = ""
  
  data.each do |season, contestants|
    contestants.each do |person|
      
      if person["hometown"] == hometown
        return occupation = person["occupation"]
        # binding.pry
      end
      
    end
  end
end



def get_average_age_for_season(data, season)
  # code here
  age_array = []
  count = 0
  sum = 0
  average = 0
  
  data[season].each do |person|
      
      age_array << person["age"].to_i               #changes all string numbers into intergers in array
     # binding.pry
      
  end
  
  age_array.each do |x|
    count += 1                                    #should be 25
    sum = x + sum
    #binding .pry
  end
  
  average = sum.to_f / count
   
  average.round
  #binding.pry
  
end















