def nyc_pigeon_organizer(data)
  bird_names = {}
  data.each do |color_gender_lives, value|
    value.each do |stats, names|
      names.each do |pigeon_names|
        if bird_names[pigeon_names] == nil 
          bird_names[pigeon_names] = {}
        end
        if bird_names[pigeon_names][color_gender_lives] == nil 
           bird_names[pigeon_names][color_gender_lives] = []
         end
         bird_names[pigeon_names][color_gender_lives].push(stats.to_s)
       end
     end
   end 
      bird_names
end
