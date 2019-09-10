def nyc_pigeon_organizer(data)
    new_hash = Hash.new

    data.each do |key, value|
        #key = color, gender, lives
        #value = hashes with above keys
        value.each do |new_value, name_key|
            # new_value = `colors`, `genders`, `domiciles`
            # name_key = `array of names`
            name_key.each do |name|
                if !new_hash[name]
                    new_hash[name] = {}
                end

                if !new_hash[name][key]
                    new_hash[name][key] = []
                end

                new_hash[name][key] << new_value.to_s
            end
        end
    end
    new_hash
end
