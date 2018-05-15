def nyc_pigeon_organizer(data)
  # write your code here!
  organized_pigeons = []
  
  data.each do |key, value_hash|
    value_hash.each do |attribute, birds|
      birds.each do |bird|
        if !organized_pigeons[bird]
          organized_pigeons[bird] = {}
          organized_pigeons[bird][key] = [] << attribute.to_s
        elsif !organized_pigeons[bird][key]
          organized_pigeons[bird][key] = [] << attribute.to_s
        else
          organized_pigeons[bird][key] << attribute.to_s
        end
      end
    end
  end
  organized_pigeons
end