require "open-uri"
require "date"

puts 'Cleaning review database'
Review.destroy_all

puts 'Cleaning messages...'

Message.destroy_all
Conversation.destroy_all

puts 'Cleaning booking database...'
Booking.destroy_all


puts 'Cleaning activity database...'
Activity.destroy_all

puts 'Cleaning user database'
User.destroy_all

puts 'creating Users'
file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583243051/Philipp_Boston_kdjdty.jpg')
user = User.create!(
  first_name: "Philipp",
  last_name: "Hamm",
  email: "philipp.hamm@gmail.com",
  username: "Hammi",
  password: "000000",
  birthday: Date.new(1984,11,29),
  bio: "Everything under control",
  interest: "Music"
  )
user.photo.attach(io: file, filename: 'photo')

file1 = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583427020/SN_00922_iriwi2.jpg')
user1 = User.create!(
  first_name: "Anna",
  last_name: "Herzog",
  username: "Anni",
  email: "anna.herzog@gmail.com",
  password: "000000",
  birthday: Date.new(1990,06,24),
  bio: "I know where to go",
  interest: "Tech"
  )
  user1.photo.attach(io: file1, filename: 'photo1')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583427024/IMG_7189_wfk7oo.jpg')
user = User.create!(
  first_name: "Beixi",
  last_name: "Lu",
  username: "Beixi",
  email: "amy.lu@gmail.com",
  password: "000000",
  birthday: Date.new(1988,07,06),
  bio: "I love sweets",
  interest: "Cooking healty"
  )
  user.photo.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583427017/LduW3PXwE6Hc3BSJrcin2F6R.jpg')
user = User.create!(
  first_name: "Ambar",
  last_name: "Gonzalez",
  username: "Ambi",
  email: "ambar.gonzalez@gmail.com",
  password: "000000",
  birthday: Date.new(1986,10,11),
  bio: "Designing like a boss",
  interest: "I like to dance disco music"
  )
  user.photo.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583243051/pxpk4qnzd8sqlevwyigp.jpg')
user = User.create!(
  first_name: "Gennett",
  last_name: "Wanke",
  email: "g.wanke@gmail.com",
  username: "Genni",
  password: "000000",
  birthday: Date.new(1995,07,29),
  bio: "Am addicted to travelling!",
  interest: "travelling and art",
  )
user.photo.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583243051/ep4qgft4an6alhizmdis.jpg')
user = User.create!(
  first_name: "Jenny",
  last_name: "Briggs",
  email: "j.Briggs@gmail.com",
  username: "Jenni",
  password: "000000",
  birthday: Date.new(1985,01,29),
  bio: "I'm a photographer. I love to meet new people",
  interest: "art, food, and dancing",
  )
user.photo.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583243051/i1dcl4a3teln9vdsvf9x.jpg')
user = User.create!(
  first_name: "Peter",
  last_name: "Lyon",
  email: "p.lyon@gmail.com",
  username: "Peter",
  password: "000000",
  birthday: Date.new(1995,12,29),
  bio: "I'm a Chef and i love outdoor sports, like ski and surfing",
  interest: "ski and surfing",
  )
user.photo.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583243051/trtaoetomxnwce7fvimv.jpg')
user = User.create!(
  first_name: "Simon",
  last_name: "Lennon",
  email: "s.lennon@gmail.com",
  username: "Simon",
  password: "000000",
  birthday: Date.new(1989,10,29),
  bio: "Hi everyone, I am from Canada and new to Berlin. Let's explore berlin together?",
  interest: "card games and culture",
  )
user.photo.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583243051/j2tewwkbnezwnbpt3szy.jpg')
user = User.create!(
  first_name: "Cristine",
  last_name: "Skyle",
  email: "c.skyle@gmail.com",
  username: "Cristine",
  password: "000000",
  birthday: Date.new(1990,11,22),
  bio: "I make movies, as well as my own candles and soaps!",
  interest: "DIY everything",
  )
user.photo.attach(io: file, filename: 'photo')

puts 'Users created'

puts 'creating Activities'

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583253419/Tim_Raue_o1sjdi.jpg')
activity = Activity.create!(
  name: 'Dinner at Tim Raue',
  description: 'Join me at the best restaurant in Berlin!',
  address: "Rudi-Dutschke-Straße 26, 10969 Berlin",
  category: "🍝 Food & Drinks",
  datetime: DateTime.now() - 1.0,
  capacity: 3,
  user_id: User.first.id,
  )
  activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583931064/Tennis_n7bwsu.jpg')
activity = Activity.create!(
  name: 'Tennis in Kreuzberg',
  description: 'Move your body with me playing tennis. I am not very good. ',
  address: "Cantianstr. 24, 10437 Berlin",
  category: "⛹️‍♀️ Sports",
  datetime: DateTime.now() - 1.5,
  capacity: 2,
  user_id: User.first.id + 1,
  )
  activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1583944356/Activities/photo-1558710713-c1e32c4cb5a2_vrbhu7.jpg')
activity = Activity.create!(
  name: 'Party Brunch',
  description: "Brunch Event -'Sorry Mama' - have heard lots about it and would love to check it out!" ,
  address: "Heidestraße 62, 10557 Berlin, Germany",
  category: "🍻 Nightlife",
  datetime: DateTime.now() - 1,
  capacity: 3,
  user_id: User.first.id + 1,
  )
activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583947775/Activities/photo-1536091987692-0b4d0b507a89_zehqes.jpg')
activity = Activity.create!(
  name: 'Second Hand shopping in Mauerpark',
  description: "Shop with me on the infamous fleemarket in Prenzlauer Berg",
  address: "Am Falkplatz 1, 10437 Berlin",
  category: "🤝 Networking",
  datetime: DateTime.now() - 1.8,
  capacity: 3,
  user_id: User.first.id + 1,
  )
activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583944036/Activities/photo-1564769662533-4f00a87b4056_kv0baq.jpg')
activity = Activity.create!(
  name: 'Bouldering at Berta Block',
  description: 'Come boulder with me!',
  address: "Mühlenstraße 62, 13187 Berlin",
  category: "⛹️‍♀️ Sports",
  datetime: DateTime.now() + 4.75/24,
  capacity: 5,
  user_id: User.first.id + 6,
  )
  activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1584020093/Activities/mgg-vitchakorn-98Xi5vMGKck-unsplash_xhflrw.jpg')
activity = Activity.create!(
  name: 'Mädchenitaliener',
  description: 'Who wants to join in on italien food? This place is the besteeeest! super hungry so keen to go earlier too haha',
  address: "Alte Schönhauser Str. 12, 10119 Berlin",
  category: "🍝 Food & Drinks",
  datetime: DateTime.now() + 5.3/24,
  capacity: 4,
  user_id: User.first.id + 3,
  )
  activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1584014041/Activities/bruce-mars-ZXq7xoo98b0-unsplash_xbqgzq.jpg')
activity =Activity.create!(
  name: 'Yoga at Jivamukti Yoga Berlin',
  description: "Let's do Yoga together!" ,
  address: " Brunnenstraße 29, 10119 Berlin",
  category: "🧘‍♀️ Wellness",
  datetime: DateTime.now() + 5.2/24,
  capacity: 3,
  user_id: User.first.id + 4,
  )
  activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583947225/Activities/photo-1488841714725-bb4c32d1ac94_ziy2y7.jpg')
activity = Activity.create!(
  name: 'Fleamarket',
  description: 'Anyone who woul like to join me on a stroll through a fleamarket? 🤗',
  address: "Am Kupfergraben 3, 10117 Berlin",
  category: "🍝 Food & Drinks",
  datetime: DateTime.now() + 6.1/24,
  capacity: 4,
  user_id: User.first.id + 5
  )
  activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583243051/sywK1V66gr1zzvG7U3yH5ksh.jpg')
activity = Activity.create!(
  name: 'Kater Blau',
  description: "Let's dance the night awayyyyyy in one of Berlin's most famous clubs!" ,
  address: "Holzmarktstraße 25, 10243 Berlin",
  category: "🍻 Nightlife",
  datetime: DateTime.now() + 5.28/24,
  capacity: 3,
  user_id: User.first.id + 6,
  )
  activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1584014522/Activities/janko-ferlic-h9Iq22JJlGk-unsplash_suxcjt.jpg')
activity = Activity.create!(
  name: 'Cacao Ceremony',
  description: "Anyone keen on trying out a Cacao Ceremony with me? Cacao is a gentle for people to expirience awakening that is totally safe and accessible. Did one in Bali and loved it!😍" ,
  address: "Rosenthaler Str. 36, 10178 Berlin",
  category: "🧘‍♀️ Wellness",
  datetime: DateTime.now() + 5.48/24,
  capacity: 3,
  user_id: User.first.id + 7,
  )
  activity.photos.attach(io: file, filename: 'photo')


file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1583947765/Activities/jh-dig-2012-10-28-6142-w614xh345-cutout_utwjju.jpg')
activity = Activity.create!(
  name: 'Discover GDR memorial',
  description: "Get in touch with history of Berlin by walking along the memorial in Bernauer",
  address: "Bernauer Str. 111, 13355 Berlin",
  category: "🎭 Culture",
  datetime: DateTime.now() + 5.38/24,
  capacity: 10,
  user_id: User.first.id + 8,
  )
activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/v1584020428/Activities/culture_rf7kme.jpg')
activity = Activity.create!(
  name: 'Explore Naturkundemuseum',
  description: "Everything about the evolution of and on our planet!Let's explore that together:)" ,
  address: "U Naturkundemuseum, 10115 Berlin",
  category: "🎭 Culture",
  datetime: DateTime.now() + 6.28/24,
  capacity: 3,
  user_id: User.first.id + 5,
  )
activity.photos.attach(io: file, filename: 'photo')

file = URI.open('https://res.cloudinary.com/dvpcxhofq/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1584005935/darinka-kievskaya-ff221Bu56mI-unsplash_rrh5vd.jpg')
activity = Activity.create!(
  name: 'Walk in Humboldthain with my dog Otto and me',
  description: "My beautiful dog Otto and me will be out to enjoy weather outside. Join us with your dog!" ,
  address: "Brunnenstraße 91, 13355 Berlin",
  category: "🌳 Nature",
  datetime: DateTime.now() + 5.98/24,
  capacity: 4,
  user_id: User.first.id + 6,
  )
activity.photos.attach(io: file, filename: 'photo')

puts 'Activities created'
()

puts 'creating bookings'

# past events
Booking.create!(
  activity_id: Activity.first.id, #Tim Raue/philipp
  user_id: User.first.id + 6, #Jenni
  )

Booking.create!(
  activity_id: Activity.first.id,
  user_id: User.first.id + 2, #Amy
  )

Booking.create!(
  activity_id: Activity.first.id,
  user_id: User.first.id + 3, #Ambar
  )

Booking.create!(
  activity_id: Activity.first.id + 3, #2nd-Hand/anna
  user_id: User.first.id + 6, #Jenni
  )

Booking.create!(
  activity_id: Activity.first.id + 3,
  user_id: User.first.id + 2, #Amy
  )

Booking.create!(
  activity_id: Activity.first.id + 1, #Tennis/anna
  user_id: User.first.id + 6, #Lyon
  )

Booking.create!(
  activity_id: Activity.first.id + 1,
  user_id: User.first.id + 3, #Ambar
  )

Booking.create!(
  activity_id: Activity.first.id + 3, #brunch/anna
  user_id: User.first.id + 5,
  )

# upcoming events

Booking.create!(
  activity_id: Activity.first.id + 4, #bouldering/ambar
  user_id: User.first.id + 2,
  )

Booking.create!(
  activity_id: Activity.first.id + 5, #italian/wanke
  user_id: User.first.id + 5,
  )

Booking.create!(
  activity_id: Activity.first.id + 6, #yoga/5
  user_id: User.first.id + 6,
  )

Booking.create!(
  activity_id: Activity.first.id + 7,
  user_id: User.first.id + 3 ,
  )

puts 'Bookings created...'


puts 'Creating conversation and messages part 1...'

Conversation.create!(
  sender_id: User.last.id,
  recipient_id: User.first.id,
  activity_id: Activity.first.id
  )

Message.create!(
  user_id: User.last.id,
  conversation_id: Conversation.first.id,
  body: "Hi Philipp, I would like to join your event but I don't know if you are cool. Ambar"
  )

Message.create!(
  user_id: User.first.id,
  conversation_id: Conversation.first.id,
  body: "Hi Ambar, I am supercool. Don't worry and join the event.NOOOWW!!!"
  )

Message.create!(
  user_id: User.last.id,
  conversation_id: Conversation.first.id,
  body: "That's such a cool answer. Now I am very convinced to join the activity. Thank you so much."
  )

Message.create!(
  user_id: User.first.id,
  conversation_id: Conversation.first.id,
  body: "Coolio. See yaaa."
  )

puts 'Creating conversation and messages part 2...'

Conversation.create!(
  sender_id: User.first.id,
  recipient_id: User.first.id + 1,
  activity_id: Activity.first.id + 2
  )

Message.create!(
  user_id: User.first.id,
  conversation_id: Conversation.first.id + 1,
  body: "Hi Anna, nice event"
  )

Message.create!(
  user_id: User.first.id + 1,
  conversation_id: Conversation.first.id + 1,
  body: "I know"
  )

Message.create!(
  user_id: User.first.id,
  conversation_id: Conversation.first.id + 1,
  body: "Are you always that confident about your events"
  )

Message.create!(
  user_id: User.first.id + 1,
  conversation_id: Conversation.first.id + 1,
  body: "Yes"
  )

Message.create!(
  user_id: User.first.id,
  conversation_id: Conversation.first.id + 1,
  body: "Cool I join."
  )

puts 'Messages created...'


puts 'Creating reviews part 1...'

Review.create!(
  booking_id: Booking.first.id,
  content: "It was a super nice dinner, and i absolutely enjoyed it",
  activity_rating: 5
  )

Review.create!(
  booking_id: Booking.first.id + 2,
  content: "The dinner is very tasty! The cusine is inspired by asian flavors. Friendly staff and awesome service. Worthy the money:)",
  activity_rating: 5
  )

Review.create!(
  booking_id: Booking.first.id + 3,
  content: "The food is very good and very well presented, but it took too long!",
  activity_rating: 4
  )

Review.create!(
  booking_id: Booking.first.id + 5,
  content: "A spontaneous sports night! I don't play very well but Anna was very helpful!",
  activity_rating: 5
  )

Review.create!(
  booking_id: Booking.first.id + 6,
  content: "Loved it!!!!!",
  activity_rating: 5
  )

puts 'Reviews created...'












