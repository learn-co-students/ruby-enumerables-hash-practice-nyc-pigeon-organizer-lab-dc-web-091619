require 'pry'
pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }

def nyc_pigeon_organizer(data)
  h = {}
 data.each do|key, value|
  value.each do |key, name|
    name.each do |element|
      h[element] = {:color => [], :gender => [], :lives => []}
    end
  end
 end
 
data.each do |key,value|
  h.each do |name, properties|
  if key == :color 
    data[:color].each do |color,array|
      if array.include?(name)
        h[name][:color] << color.to_s
      end
      end
    end
  if key == :gender
    data[:gender].each do |gender, array|
      if array.include?(name)
        h[name][:gender] << gender.to_s
      end
    end
  end
 if key == :lives 
    data[:lives].each do |lives,array|
      if array.include?(name)
        h[name][:lives] << lives.to_s
      end
      end
    end
 end
 end
return h
end
nyc_pigeon_organizer(pigeon_data)