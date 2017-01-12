# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


colorado = State.create(name: "Colorado", country: 'USA')
utah = State.create(name: "Utah", country: 'USA')
wyoming = State.create(name: 'Wyoming', country: 'USA')
california = State.create(name: 'California', country: 'USA')

colorado.mountains.create(city: 'Vail', country: 'US', lon: '-106.3602599', lat: '39.6334609')
colorado.mountains.create(city: 'Breckenridge', country: 'US', lon: '-106.043211', lat: '39.501242')
colorado.mountains.create(city: 'Copper Mountain', country: 'US', lon: '-106.1561543', lat: '39.5009626')
colorado.mountains.create(city: 'Winter Park', country: 'US', lon: '-105.77689', lat: '39.8906294')
colorado.mountains.create(city: 'Keystone', country: 'US', lon: '-105.9765127', lat: '39.6053315')
colorado.mountains.create(city: 'Beaver Creek', country: 'US', lon: '-106.5160722', lat: '39.6031749')
colorado.mountains.create(city: 'Abasin', country: 'US', lon: '-105.871685', lat: '39.642312')
colorado.mountains.create(city: 'Loveland', country: 'US', lon: '-105.0609221', lat: '40.4076165')

utah.mountains.create(city: 'Alta', country: 'US', lon: '-111.6251433', lat: '40.5902597')
utah.mountains.create(city: 'Beaver', country: 'US', lon: '-111.5601852', lat: '41.9641012')
utah.mountains.create(city: 'Brian Head', country: 'US', lon: '-112.8730865', lat: '37.6976057')
utah.mountains.create(city: 'Brighton', country: 'US', lon: '-112.8730865', lat: '37.6976057')
utah.mountains.create(city: 'Deer Valley', country: 'US', lon: '-111.4930109', lat: '40.6229462')
utah.mountains.create(city: 'Eagle Point', country: 'US', lon: '-111.8670426', lat: '41.3103594')
utah.mountains.create(city: 'Park City Mountain', country: 'US', lon: '-111.5104841', lat: '40.651084')
utah.mountains.create(city: 'Nordic Valley', country: 'US', lon: '-111.8670426', lat: '41.3103594')
utah.mountains.create(city: 'Snowbasin', country: 'US', lon: '-111.8590911', lat: '41.216049')
utah.mountains.create(city: 'Snowbird', country: 'US', lon: '-111.6575006', lat: '40.5804549')
utah.mountains.create(city: 'Sundance', country: 'US', lon: '-111.590965', lat: '40.3934263')
utah.mountains.create(city: 'Solidtude Mountain', country: 'US', lon: '-111.5940791', lat: '40.6198561')

wyoming.mountains.create(city: 'Grand Targhee', country: 'US', lon: '-111.0676455', lat: '43.7425202')
wyoming.mountains.create(city: 'Jackson Hole', country: 'US', lon: '-110.934864', lat: '43.5344854')
wyoming.mountains.create(city: 'Hogadon Basin', country: 'US', lon: '-106.3412326', lat: '42.745248')

california.mountains.create(city: 'Mammoth Mountain', country: 'US', lon: '-119.0348283', lat: '37.6307734')
california.mountains.create(city: 'Big Bear', country: 'US', lon: '-116.93771', lat: '34.2448323')
