def nyc_pigeon_organizer(data)
  pigeon_list = {}
  list_of_names = []
  data[:gender].values.each{|list|
    list.each{|name|
      if !list_of_names.include?(name)
        list_of_names << name
        pigeon_list[name] = {:color => [],
        :gender => [],
        :lives => []}
      end}}
      list_of_names.each{|name|
        data.keys.each{|item|
          paired_elems = data[item].to_a
          paired_elems.each{|arr|
            if arr[1].include?(name)
              pigeon_list[name][item] << arr[0].to_s
            end}
          }}
      pigeon_list
end
