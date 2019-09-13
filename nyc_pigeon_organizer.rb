require'pry'


def nyc_pigeon_organizer(data)
    
  new_hash = {}
  data.each do |attributes, values|
    values.each do |keys, values2|
      values2.each do |name|
        if new_hash[name]
        else
        new_hash[name] = {:color => [], :gender =>[], :lives => []}
        end
     end
    end
  end
   we added a new hash so that we 
  data.each do |attributes, values|
    values.each do |keys, values2|
      new_hash.each do |names, attributes_new|
        if values2.include?(names)
        new_hash[names][attributes].push(keys.to_s)  
    
        end
       end
      end
    
    end
    return new_hash
  binding.pry
end
#def add(key_value)
# 2	  new_hash = {}
# 3	  key_value.each do |key, valu
# 4	    new_hash[key] = value
# 5	  end
# 6	  return new_hash
# 7	end