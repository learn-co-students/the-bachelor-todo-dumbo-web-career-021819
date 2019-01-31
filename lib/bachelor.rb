def get_first_name_of_season_winner(data, season)
  winner = "no"
  data.each do |year, obj|
    if season == year.to_s
      obj.each do |key|
        key.each do |attribute, value|
          if value == "Winner"
            winner = key["name"]
          end 
        end 
      end 
    end 
  end 
  winner = winner.split(" ")
  winner[0]
end


def get_contestant_name(data, occupation)
  data.each do |year, obj|
    obj.each do |key|
      key.each do |attribute, value|
        if value == occupation
          return key["name"]
        end 
      end 
    end 
  end 
end


def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |year, obj|
    obj.each do |key|
      key.each do |attribute, value|
        if value == hometown
          count += 1
        end 
      end 
    end 
  end 
  count
end


def get_occupation(data, hometown)
  data.each do |year, obj|
    obj.each do |key|
      key.each do |attribute, value|
        if value == hometown
          return key["occupation"]
        end 
      end 
    end 
  end
end


def get_average_age_for_season(data, season)

  count = 0
  ages = 0 

  data[season].each do |person|
    count += 1
    person.each do |attribute, value|
      if attribute == "age"  
        ages += value.to_f
      end 
    end 
  end 
  temp = ages / count
  temp.round
end








