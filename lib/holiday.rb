require 'pry'
holiday_supplies =
   {
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
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
   holiday_hash.each do |season, holidays|
     if season == :winter
       holidays.map do |holiday, supplies|
       supplies.push(supply)
     end
   end
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
   holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.map do |holiday, supplies|
      supplies.push(supply)
    end
  end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
     
holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  
    holiday_hash[:winter].map do |holiday, supplies|
      supplies
     end.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
      holiday_hash.each do |season, holidays|
      puts "#{season.capitalize}:"
      holidays.each do |holiday, supply|
      puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{supply.join(", ")}"
    end
    end
end

def all_holidays_with_bbq(holiday_hash)
  
   holiday_hash.map do |season, holiday|
     holiday.map do |holidays, supply|
       holidays if supply.include?("BBQ")
     end
   end.flatten.compact
 end








