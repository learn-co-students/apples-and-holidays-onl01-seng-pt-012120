# require 'pry'

# def second_supply_for_fourth_of_july(holiday_hash)
#   # given that holiday_hash looks like this:
#   # {
#   #   :winter => {
#   #     :christmas => ["Lights", "Wreath"],
#   #     :new_years => ["Party Hats"]
#   #   },
#   #   :summer => {
#   #     :fourth_of_july => ["Fireworks", "BBQ"]
#   #   },
#   #   :fall => {
#   #     :thanksgiving => ["Turkey"]
#   #   },
#   #   :spring => {
#   #     :memorial_day => ["BBQ"]
#   #   }
#   # }
#   # return the second element in the 4th of July array
# end

# def add_supply_to_winter_holidays(holiday_hash, supply)
#   # holiday_hash is identical to the one above
#   # add the second argument, which is a supply, to BOTH the
#   # Christmas AND the New Year's arrays

# end


# def add_supply_to_memorial_day(holiday_hash, supply)
#   # again, holiday_hash is the same as the ones above
#   # add the second argument to the memorial day array

# end

# def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
#   # code here
#   # remember to return the updated hash

# end

# def all_winter_holiday_supplies(holiday_hash)
#   # return an array of all of the supplies that are used in the winter season

# end

# def all_supplies_in_holidays(holiday_hash)
#   # iterate through holiday_hash and print items such that your readout resembles:
#   # Winter:
#   #   Christmas: Lights, Wreath
#   #   New Years: Party Hats
#   # Summer:
#   #   Fourth Of July: Fireworks, BBQ
#   # etc.

# end

# def all_holidays_with_bbq(holiday_hash)
#   # return an array of holiday names (as symbols) where supply lists
#   # include the string "BBQ"

# end







holiday_hash = {
  :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
  },
  :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
      :thanksgiving => ["Turkey"]
  },
  :spring => {
      :memorial_day => ["BBQ"]
  }
}

# Write a method that returns the second supply for the Fourth of July.
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

# Write a method that adds a supply to both Winter holidays.
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each { |key, value| holiday_hash[:winter][key] << supply}
end

# Write a method that adds a supply to Memorial Day.
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

# Write a method that adds a new holiday and its associated supplies to any season.
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
end

# Write a method to collect all Winter supplies from all the winter holidays.
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

# Write a method that uses a loop to list out all the supplies you have for each holiday and the season.
def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |season, holiday|
     puts "#{season.to_s.capitalize!}:"
       holiday.each do |name, supply|
         new_array = []
         array = name.to_s.split("_")
         array.each { |word| new_array << word.capitalize! }
         name = new_array.join(" ")
         #turn array to string with join 
         supply = supply.join(", ")
         puts "  #{name}: #{supply}"
       end
    end
 end


def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday|
      holiday.each do |name, supply|
      if supply.include?("BBQ")
        array << name
      end
      end
  end  
  array
end
