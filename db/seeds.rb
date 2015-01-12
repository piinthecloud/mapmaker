




####This is how I was trying to work around it #######

Policeshootings.destroy_all

CSV.parse("public/shooting_data.csv", :headers => true).each do |x|
  Policeshootings.create( x )
end

Policeshootings.add_locations




### --**--**--**--**--**--**--**--**--**--**--**--**###

##               This code works                     ##

### --**--**--**--**--**--**--**--**--**--**--**--**###

# Policeshootings.destroy_all
#
# JSON.parse(File.read("public/us-states.json")).each do |x|
#   Policeshootings.create( x )
# end
#
# Policeshootings.add_locations
