class Policeshootings
  include MongoMapper::Document

  def add_locations?
    Policeshootings.where(:city.ne => nil).each do |incident|
      @path = (URI.encode("https://maps.googleapis.com/maps/api/geocode/json?address=#{incident.city.gsub!(" ", "-")||incident.city}&components=country:US|administrative_area:#{incident.state[0..1]}"))

      response = HTTParty.get(@path)
      incident.set(:lat => response['results'][0]['geometry']['location']['lat'] )
      incident.set(:lng => response['results'][0]['geometry']['location']['lng'] )
    end
  end

end
