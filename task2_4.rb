animals = ["dog","cat","bird"]
animals[3] = "elepant"
animals << "tiger"

animals.each do |animal|
 puts animal+","
 puts "\n"
end
