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
#  binding.pry
end

#        pigeon_list[name][] = details[0]
#         details[1].keys.each do |attribute|
# #          binding.pry
#            if pigeon_list[name][details[0]] == nil
#              pigeon_list[name][details[0]] = [attribute.to_s]
#            else
#              pigeon_list[name][details[0]].concat([attribute.to_s])
#            end
#         end


        # if details[1].values {|names| name.include?(names)}
        #   pigeon_list[name] = details[1].keys
        #   binding.pry
        # end

# pigeon_list = {
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
#   "Ms. K" => {
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
