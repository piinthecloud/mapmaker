# class Groupedshootings
#   include MongoMapper::Document
#   many :policeshootings
#
#   @state_data = {}
#
#   def self.group
#
#     Policeshootings.where(:city.ne => nil)
#   end
#
#
#
#   @city_data = {}
#   def self.get_lat_lng(incident)
#
#     city_details = [incident.lat, incident.lng]
#     existing_loc = @city_lat_lng[city_details]
#
#     puts city_details
#
#     if existing_loc
#
#     else
#
#
#       incident.set(:lat => response['results'][0]['geometry']['location']['lat'])
#       incident.set(:lng => response['results'][0]['geometry']['location']['lng'])
#
#     end
#
# end
