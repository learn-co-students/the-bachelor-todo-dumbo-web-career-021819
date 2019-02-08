require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name_grabber = []
  data.each do |seasons, contestants|
    # binding.pry
    if seasons == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          first_name_grabber = contestant["name"].split(" ")
          # binding.pry
        end
      end
    end
  end
  first_name_grabber[0]
end

def get_contestant_name(data, occupation)
  name_grabber = []
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        name_grabber = contestant["name"]
        # binding.pry
      end
    end
  end
  name_grabber
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, item|
        if item == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, item|
        if item == hometown
          return contestant["occupation"]
        end
      end
    end
  end
  "No one from that hometown got a job :("
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |seasons, contestants|
    if seasons.to_s == season
      contestants.each do |contestant|
        contestant.each do |attribute, item|
          if attribute.to_s == "age"
            ages << item.to_f
          end
        end
      end
    end
  end
  if ages.length == 0
    return nil
  else
    i = 0
    sum = 0
    while i < ages.length
      sum += ages[i]
      i += 1
    end
    average_age = sum/ages.length
    return average_age.round(0)
  end
end

def bachelor_hash
  {
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
end

get_average_age_for_season(bachelor_hash, "season 30")
# get_first_name_of_season_winner(bachelor_hash, "season 30")
# count_contestants_by_hometown(bachelor_hash, "Great Falls, Virginia")
