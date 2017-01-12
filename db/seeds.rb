# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


colorado = State.create(name: "Colorado", country: 'USA')
utah = State.create(name: "Utah", country: 'USA')

colorado.mountains.create(city: 'Vail', country: 'US', lon: '-106.3602599', lat: '39.6334609')
colorado.mountains.create(city: 'Breckenridge', country: 'US', lon: '-106.043211', lat: '39.501242')
colorado.mountains.create(city: 'Copper Mountain', country: 'US', lon: '-106.1561543', lat: '39.5009626')
colorado.mountains.create(city: 'Winter Park', country: 'US', lon: '-105.77689', lat: '39.8906294')
colorado.mountains.create(city: 'Keystone', country: 'US', lon: '-105.9765127', lat: '39.6053315')
colorado.mountains.create(city: 'Beaver Creek', country: 'US', lon: '-106.5160722', lat: '39.6031749')
colorado.mountains.create(city: 'Abasin', country: 'US', lon: '-105.871685', lat: '39.642312')
colorado.mountains.create(city: 'Loveland', country: 'US', lon: '-105.0609221', lat: '40.4076165')

utah.mountains.create(city: 'Alta', country: 'US', lon: '-111.6251433', lat: '40.5902597')
