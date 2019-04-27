require 'pry'
# given

# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

# pigeon_data.
#
#
# def get_pigeon_names(data)
#   boy_pigeons = data[:gender][:male]
#   girl_pigeons = data[:gender][:female]
#   pigeon_names = boy_pigeons.concat(girl_pigeons)
# end
#
# def get_pigeon_hash(pigeon_names)
#   pigeon_hash = {}
#   pigeon_names.each do |name|
#      pigeon_hash[name] = {}
#    end
#    pigeon_hash
# end
#
# def nyc_pigeon_organizer(data)
#   pigeon_names = get_pigeon_names(data)
#   pigeon_hash = get_pigeon_hash(pigeon_names)
#   # pigeon_hash.each do |key, value|
#   #   value[data.key] = []
#   # end
#
#     binding.pry
# end

# require "pry"

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
#  binding.pry
end
#p furniture.map {|x| x.keys}.uniq
#( .uniq is a function that erases all duplicate keys or values)



# {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms .K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
