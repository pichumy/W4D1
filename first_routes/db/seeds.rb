# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

tony = User.new(username: 'Tony')
michelle = User.new(username: 'Michelle')
ashley = User.new(username: 'ashley')
felix = User.new(username: 'felix')

tony.save
michelle.save
ashley.save
felix.save

sky = Artwork.new(title: 'the sky',image_url: 'oiuhoiu,' , artist_id: tony.id )
Artwork.new(title: 'the sea',image_url: 'oiuopvsadfsa', artist_id: tony.id ).save
Artwork.new(title: 'the land',image_url:'avredd,', artist_id: tony.id ).save
Artwork.new(title: 'space',image_url: 'kjbkgiuiu', artist_id: tony.id ).save

Artwork.new(title: 'the sky',image_url: 'ovijas;oij', artist_id: michelle.id ).save
sea = Artwork.new(title: 'the sea',image_url: 'ovijas;oijre', artist_id: michelle.id )
Artwork.new(title: 'the land', image_url: 'ovijas;oijrsdfge', artist_id: michelle.id ).save
Artwork.new(title: 'space', image_url: 'ovijas;oijrljlojhoie', artist_id: michelle.id ).save

Artwork.new(title: 'the sky',image_url: 'kjbkghmfiuiu', artist_id: ashley.id ).save
Artwork.new(title: 'the sea',image_url: 'kjbsfsafskgiuiu', artist_id: ashley.id ).save
land = Artwork.new(title: 'the land',image_url: 'kjgdghsbkgiuiu', artist_id: ashley.id )
Artwork.new(title: 'space',image_url: 'kjbsdgsfgsdhsdkgiuiu', artist_id: ashley.id ).save

Artwork.new(title: 'the sky', image_url: 'kjbkghdfhdhdhiuiu',artist_id: felix.id ).save
Artwork.new(title: 'the sea',image_url: 'kjbkgdfgbdfbfdiuiu', artist_id: felix.id ).save
Artwork.new(title: 'the land',image_url: 'kjfhbdfnfghmhjhbkgiuiu', artist_id: felix.id ).save
space = Artwork.new(title: 'space', image_url: 'kvdfhdhjljicjbkgiuiu',artist_id: felix.id )

sky.save
sea.save
land.save
space.save

ArtworkShare.new(artwork_id: sky.id, viewer_id: ashley.id).save
ArtworkShare.new(artwork_id: sky.id, viewer_id: tony.id).save
ArtworkShare.new(artwork_id: space.id, viewer_id: tony.id).save
ArtworkShare.new(artwork_id: land.id, viewer_id: felix.id).save
