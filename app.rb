require 'haml'
set :haml, :format => :html5 # default Haml format is :xhtml

$geoip ||= GeoIP.new('db/GeoIP.dat')


# template :layout do
#   "%html\n  =yield\n"
# end

# template :index2 do
#   '%div.title Hello World!'
# end


get '/' do
	@ip = (params[:q] || '').strip
	@ip = request.ip if @ip.empty?

	@country = $geoip.country(@ip)[5]
  
	haml :index
end


# get '/hello/:name' do |n|
#   "Hello #{n}!"
# end
# 
# get '/view' do
#   haml :index
# end
