require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, items|
    items << supply
  end 
end 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].each do |items|
    items << supply
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
   holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = Array.new 
  holiday_hash[:winter].each do |holiday|
    holiday.each do |items|
      winter_supplies << items
    end 
  end
    winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
end

# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.

def all_holidays_with_bbq(holiday_hash)
  bbq_days = Array.new
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, item|
      if item.include?("BBQ")
        bbq_days << holiday
      end
    end
    bbq_days.flatten.compact
  end
end