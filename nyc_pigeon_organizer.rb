require 'pry'
def nyc_pigeon_organizer(data)
  list={}
  data.each do |color_gender_lives,info_hash|
    info_hash.each do |key,arrays|
      arrays.each do |names|
        if !list[names]
          list[names]={}
        end
        if !list[names][color_gender_lives]
          list[names][color_gender_lives]=[]
        end 
          list[names][color_gender_lives] << key.to_s

      end
    end
  end
  list
end