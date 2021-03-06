require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas]<<"Balloons"
  holiday_hash[:winter][:new_years]<<"Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day]<<"Grill"
holiday_hash[:spring][:memorial_day]<<"Table Cloth"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[:fall][:columbus_day]=["Flags", "Parade Floats", "Italian Food"]
holiday_hash[:winter][:valentines_day]=["Cupid Cut-Out", "Candy Hearts"]
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten

end

holiday_hash= {
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



def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  string =""
   holiday_hash.each do |season , season_hash|
     puts season.to_s.capitalize + ":"
    string=""
     season_hash.each do |festival, supply_array|
       f=festival.to_s.split("_")
       s=""
       f.each_with_index do |element,index|
         if index!=f.length-1
         s=s+element.capitalize + " "
       else
         s=s+element.capitalize
       end
       end

       string = string + "  " + s + ": "
       supply_array.each_with_index do |supply,index|
         if index!=supply_array.length-1
             string=string+ supply + ", "
          else
             string=string +supply
        end

    end
    puts string
    string = ""

      end

end
end


all_supplies_in_holidays(holiday_hash)
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  fesarray=[]
holiday_hash.each do |key , season_hash|
season_hash.each do | festival, supply|
   if supply.include?("BBQ")
      fesarray<<festival
    end
end
end
fesarray
end
