require "pry"

def nyc_pigeon_organizer(pigeon_data)
  hash = { }
  pigeon_data.each do |k, v|
    v.each do |attributes, names|
    names.each do |name|

      if hash[name] == nil
        hash[name] = {}
      end
      if hash[name][k] == nil
        hash[name][k] = []
      end

      hash[name][k] << attributes.to_s

      end
    end
  end
hash
end

