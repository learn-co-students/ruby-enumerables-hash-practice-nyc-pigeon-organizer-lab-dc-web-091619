require "pry"
def nyc_pigeon_organizer(pigeon_data)
  new_hash = {}
  pigeon_data.each do |key, value|
    value.each do |attribute, array|
      array.each do |name|
        
        if new_hash[name] == nil 
          new_hash[name] = {}
        end 
        if new_hash[name][key] == nil
          new_hash[name][key] = []
        end 
        #   new_hash[name][key] = []
        # else 
        new_hash[name][key] << attribute.to_s
        # end 
      end 
    end
  end
  return new_hash
end
