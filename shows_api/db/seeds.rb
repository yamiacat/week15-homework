# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Favourite.delete_all
Show.delete_all
User.delete_all

s1 = Show.create({
  title: "Red Dwarf",
  series: 6,
  description:"The series follows the fortunes of Dave Lister who is stranded three million years in the future,
  together with the hologrammatic representation of his former bunkmate and immediate superior Arnold Rimmer;
  a creature known only as Cat; and a mechanoid called Kryten. Red Dwarf has been stolen from the crew, forcing them
  to travel in the smaller Starbug craft",
  image: "http://www.reddwarf.co.uk/merchandise/browse/images/VICoverUK-02.jpg",
  programmeID: "tt0094535"
    })

s2 = Show.create({
  title: "The Expanse",
  series: 1,
  description:"A police detective in the asteroid belt, the first officer of an interplanetary ice freighter and
  an earth-bound United Nations executive slowly discover a vast conspiracy that threatens the Earth's rebellious
  colony on the asteroid belt.",
  image: "https://vignette1.wikia.nocookie.net/expanse/images/8/8a/1484233348223075652.jpg",
  programmeID: "tt3230854"
  })

s3 = Show.create({
  title: "Westworld",
  series: 1,
  description:"Set at the intersection of the near future and the reimagined past, explore a world in which every
  human appetite, no matter how noble or depraved, can be indulged without consequence.",
  image: "http://www.firstcomicsnews.com/wp-content/uploads/2016/12/West-World-Season-1.jpg",
  programmeID: "tt0475784"
  })

s4 = Show.create({
  title: "Jam",
  series: 1,
  description:"Jam was a British horror/comedy sketch show, created, written, and directed by Chris Morris.
  It was based on the earlier BBC Radio 1 show, Blue Jam, and consists of a series of disturbing and surreal sketches,
  unfolding over an ambient soundtrack. Many of the sketches re-used the original radio soundtracks with the actors
  lip-syncing their lines, an unusual technique which added to the programme's unsettling atmosphere.",
  image: "http://www.fangoria.com/new/wp-content/uploads/2015/08/jam-e1439201916702.jpg",
  programmeID: "tt0240273"
  })

  u1 = User.create({ name: "Matt"})
  u2 = User.create({ name: "Marilena"})
  u3 = User.create({ name: "Irma"})
  u4 = User.create({ name: "Paul"})
  u5 = User.create({ name: "Louise"})
  u6 = User.create({ name: "Mungo"})
  u7 = User.create({ name: "Eoghan"})

  Favourite.create({show:s1, user:u1})
  Favourite.create({show:s2, user:u1})
  Favourite.create({show:s3, user:u1})
  Favourite.create({show:s4, user:u1})
  Favourite.create({show:s1, user:u2})
  Favourite.create({show:s1, user:u3})
  Favourite.create({show:s1, user:u3})
  Favourite.create({show:s2, user:u2})
  Favourite.create({show:s3, user:u4})
  Favourite.create({show:s4, user:u5})
  Favourite.create({show:s4, user:u6})
  Favourite.create({show:s1, user:u7})
  Favourite.create({show:s2, user:u7})
  Favourite.create({show:s4, user:u7})
