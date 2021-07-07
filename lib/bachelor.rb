require 'pry'

def get_first_name_of_season_winner(data, season)
  
  data.each { |seasons, peopleArr| 
    if seasons == season
      peopleArr.each { |person| 
        person.each { |info, info_data|
          if info_data == 'Winner'
            nameArr = person["name"].split(" ")
            return nameArr[0]
          end
        }
      }
    end
  }
  
end

def get_contestant_name(data, occupation)
    
    data.each { |seasons, peopleArr|
      peopleArr.each { |person| 
        person.each { |info, info_data|
          if info_data == occupation
            return person["name"]
          end
        }
      }
  }
  
end

def count_contestants_by_hometown(data, hometown)
  count = 0  
    data.each { |seasons, peopleArr| 
      peopleArr.each { |person| 
        person.each { |info, info_data|
          if info_data == hometown
            count += 1
          end
        }
      }
  }
  
  return count
end

def get_occupation(data, hometown)
   
  data.each { |seasons, peopleArr| 
      peopleArr.each { |person| 
        person.each { |info, info_data|
          if info_data == hometown
            return person["occupation"]
          end
        }
      }
  }
  
end

def get_average_age_for_season(data, season)
  sum = 0
  count = 0  
  
  data.each { |seasons, peopleArr|
    if seasons == season
    peopleArr.each { |person| 
      person.each { |info, info_data|
        if info == "age"
          sum += person["age"].to_i
          count += 1
        end
      }
    }
  end
  }
  
  return (sum.to_f / count.to_f ).round
end
