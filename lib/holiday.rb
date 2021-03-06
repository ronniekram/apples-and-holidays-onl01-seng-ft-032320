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
  holiday_hash[:spring].each do |holiday, item|
    item << supply
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
   holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = Array.new
  holiday_hash[:winter].each do |holiday, items|
    winter_supplies << items
  end
    winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.map do |season, holiday|
    puts "#{season.to_s.capitalize()}:"
    holiday.map do |holiday, items|
      puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{items.join(", ")}"
    end 
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, item|
      holiday if item.include?("BBQ")
    end
  end.flatten.compact
end