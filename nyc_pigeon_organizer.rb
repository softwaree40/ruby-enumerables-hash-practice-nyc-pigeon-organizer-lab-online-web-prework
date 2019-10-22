require 'pry'

def nyc_pigeon_organizer(data)
    new = Hash.new
    
    data.each do |key, value|
      value.each do |att,names|
        names.each do |name|
          if !new.has_key?(name)
            new[name] = {}
          end
          if !new[name].has_key?(key)
             new[name][key] = []
          end
           if !new[name][key].include?(att)
             new[name][key] << att.to_s
           end
           #binding.pry
        end
      end
    end
    return new
end
