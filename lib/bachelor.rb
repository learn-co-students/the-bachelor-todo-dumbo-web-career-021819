data = { 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
}
def get_first_name_of_season_winner(data,season)
 data[season.to_sym].each do |into_array|
   if into_array[:status] =="Winner"
     return into_array[:name].split(" ")[0]
   end
 end
end

def get_contestant_name(data, occupation)
data.each do |season, season_array|
  season_array.each do |into_array|
    if into_array[:occupation] == occupation
      return into_array[:name]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
 data.each do |season, season_array|
    season_array.each do |into_array|
      if into_array[:hometown] == hometown
        counter+=1
      end 
  end 
 end 
 return counter 
end

def get_occupation(data, hometown)
  data.each do |season, season_array|
    season_array.each do |into_array|
      if into_array[:hometown] == hometown
        return into_array[:name]
      end 
  end 
end

get_occupation(data,"New York, New York")



