require 'pry'
def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |contestants|
    contestants.each do |key, value|
      if value = "Winnner"
        winner = contestants["name"]
        array = winner.split
        return array[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |stat, detail|
        if detail == occupation
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = []
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |stat, detail|
        if detail == hometown
          count.push(contestant["name"])
        end
      end
    end
  end
  return count.length 
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |stat, detail|
        if detail == hometown
          return contestant["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data[season].each do |contestants|
        contestant.each do |stat, detail|
        binding.pry
          age_array.push(contestant["age"])
    end
  end
  
  age_array
end
