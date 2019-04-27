require "pry"

def nyc_pigeon_organizer(data)

  pigeon_list = {}

  data.each do |details, keys|
    keys.each do |feature, birds|
      birds.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end
        if !pigeon_list[name].has_key?(details)
          pigeon_list[name][details] = []
        end
        if !pigeon_list[name][details].include?(feature)
          pigeon_list[name][details] << feature.to_s
        end
      end
    end
  end
  pigeon_list
end
