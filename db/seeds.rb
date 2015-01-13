

Policeshootings.destroy_all


CSV.foreach("public/shooting_data.csv", :headers => true,  encoding: 'ISO8859-1').each do |shooting|
  Policeshootings.create( shooting.to_h )
end


Policeshootings.add_locations








###This is how I was trying to work around it #######
#
#
# def csv_to_hash row
#   {
#
#    date: row[1],
#    date_searched: row[2],
#    state: row[3],
#    county: row[4],
#    city: row[5],
#    agency_name: row[6],
#    victim_name: row[7],
#    victim_age: row[8],
#    victim_gender: row[9],
#    Race: row[10],
#    latino?: row[11],
#    shots_fired: row[12],
#    hit_killed?: row[13],
#    armed_unarmed?: row[14],
#    Weapon: row[15],
#    Summary: row[16],
#    source_link: row[17],
#    name_of_officer: row[18],
#    Shootings: row[19],
#    justified?: row[20],
#
#   }
#
# end

#
#
# @raw_data = CSV.read("public/shooting_data.csv", encoding: 'ISO8859-1')
#
#
# CSV.parse(@raw_data, :headers => true,  encoding: 'ISO8859-1').each do |shooting|
#
#
#   hash_shooting = csv_to_hash(shooting)
#
#   Policeshootings.create( hash_shooting )
#
#
# end
#
#
#
#
# Policeshootings.add_locations
#
# ar1 = []


### --**--**--**--**--**--**--**--**--**--**--**--**###

##               This code works                     ##

### --**--**--**--**--**--**--**--**--**--**--**--**###

# Policeshootings.destroy_all
#
# JSON.parse(File.read("public/data.json")).each do |x|
#   Policeshootings.create( x )
# end
#
# Policeshootings.add_locations
