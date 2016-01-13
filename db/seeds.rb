puts "deleting data"
Gig.delete_all
Artist.delete_all
Venue.delete_all

User.create!([
  {email: "admin@gmail.com", encrypted_password: "$2a$10$lTsE9cvuPNVkm95FH/2gb.bMiDemvC3EUu.B4iwFDkO3IXXwCo166", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 12, current_sign_in_at: "2016-01-13 12:57:20", last_sign_in_at: "2016-01-13 12:02:35", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: "admin"},
  {email: "guest@gmail.com", encrypted_password: "$2a$10$C8o7ZTyTanpc.Q2TMRg9mOn2qLUTr1LJhChNC4qRd5lNW8wHFsbnq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 7, current_sign_in_at: "2016-01-13 12:02:57", last_sign_in_at: "2016-01-13 11:52:29", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: nil},
  {email: "a@gmail.com", encrypted_password: "$2a$10$dD.FYNwOdxhmZtNPMFNgeuPO8bTci9ph9gZHhYpCmhmYh08KinoIW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-01-12 14:13:17", last_sign_in_at: "2016-01-12 14:13:17", current_sign_in_ip: "::1", last_sign_in_ip: "::1", role: nil}
])
Artist.create!([
  {title: "Hells Bells", description: "Hells Bells are an accomplished AC/DC Tribute Band who have performed all over the UK as well as Portugal, Austria, Russia, Belgium, Czech Republic and the Middle East.\r\n\r\nIf you love AC/DC then you'll love our high energy performance - a show not to be missed. Check out the Gig Guide to find out when we're playing near you and we'll see you there!", image: "http://marstalent.com/groups/hells-bells.jpg", genre_id: nil},
  {title: "Food Fighterz", description: "Wolverhampton's 2nd Best Foo Fighters Tribute Band", image: "http://s3.amazonaws.com/content.sitezoogle.com/u/7106/bc93694b00fc24dc1df616f716f0ba05c59a9dae/original/img-20150627-wa0032.jpg?1445634146http://content.sitezoogle.com.s3.amazonaws.com/u/7106/style/page-photo-272892.jpg?ae4850f877a44c30c9667d066a8f694a", genre_id: nil},
  {title: "The Kaiser Thiefs", description: "The Kaiser Thiefs have appeared at festivals inc. Glastonbudget (to 4500 people), Lunacy Festival in Wales as well as Mathew Street Festival Liverpool (to an estimated audience of 8000).\r\n\r\nThey have also played at many universities inc. Guildford, Bath and Colchester, plus the the usual circuit of venues like Beacon Court Tavern in Gillingham, JB's Dudley, Glasgow campus and many more.. \r\n\r\nKaiser Thiefs are the only tribute band to the most exciting band in the UK.", image: "http://kaiserthiefs.com/pix/banner.jpg", genre_id: nil},
  {title: "Mentallica", description: "The Sandman Returns!  Mentallica are Europe's leading tribute to metal giants Metallica, now in their 17th year as a band. Fronted by singer Chris Jones, you won't find a better Hetfield in the UK. The band play a lengthy 2 hour set filled with the latest and greatest Metallica hits from their entire back catalogue.", image: "http://www.philipduerden.co.uk/bands/mentallica/mentallica_blue140x.jpg", genre_id: nil},
  {title: "Hi-On Maiden", description: "Hi-on Maiden are the worlds longest running and ONLY Iron Maiden tribute band officially endorsed by Iron Maiden themselves. \r\n\r\nOver the past fifteen years Hi-on Maiden have firmly established themselves as the most recognised and popular tribute to the mighty Iron Maiden. With you from the start with a powerful and dynamic performance Hi-on Maiden put on the most accurate and explosive Iron Maiden tribute experience anywhere. \r\n\r\nWe cut no corners and offer no half measures, both visually and musically, and have grabbed the attention of Maiden fans all over the world, as well as the Maiden boys themselves!", image: "http://www.hi-onmaiden.com/images/rotating_banners/rotate.php", genre_id: nil},
  {title: "Fake No More", description: "Formed in 2001, Fake No More is the ultimate Faith No More tribute, reliving the original Faith No More vibe on stage. Expect all the great known songs of Faith No More, such as Epic, Midlife Crisis and Easy, as well as songs well known by die hard fans, but never experienced live!", image: "http://www.fakenomore.eu/blog/wp-content/plugins/slider4allFree/img/1421794830header.jpg", genre_id: nil},
  {title: "Abbatoir", description: "ondon based hard rockers, 'Abbatoir' are getting more notice, having attracted the attention of a major record label, and plan to enter the studio to record an album soon. What makes this band \"special\" is that all of their songs are cover versions of classic Abba music.\r\n\r\nIt all began when Londoner, Lance Barrington went to the local pub with a friend and they began to discuss music. When Abba came on the jukebox, they joked, \"Imagine a heavy metal version of Abba!\"\r\n\r\nBarrington quickly set about recruiting three other band members, then faced the challenge of finding a vocalist with a set of lungs to match the Abba girls. After auditioning hundreds, they eventually stumbled over 24 year old florist, Laura.", image: "http://www.metal-archives.com/images/5/1/0/510_logo.jpg?4648", genre_id: nil},
  {title: "Dread Zepplin", description: "Since the release in 1990 of their debut cd “Un-Led-Ed” for IRS Records, Dread Zeppelin have continued to play to diehard fans and confused faces in crowds around the world for 20 years. While the make-up of the band has gone through a few member changes, the main forces of the band have remained to reveal new and old sounds, and look for a new generation of Led Zeppelin fans and anti-Led Zeppelin fans.", image: "http://www.dreadzeppelin.com/0116/dreadzeppelintourbanner.jpg", genre_id: nil},
  {title: "AB/CD", description: "AB/CD are one of the world's greatest AC/DC tribute bands. Originally formed in 1986 under the monikers Heatseeker and then Maximum Overdrive. In 2001 the newly formed AB/CD was created, delivering a high energy, extremely entertaining show. \r\n\r\nThese guys recently won an MTV worldwide competition to find the best AC/DC tribute band around, so they are well worth catching!", image: "http://www.abcd-germany.de/abcd/graphics/top.jpg", genre_id: nil},
  {title: "The Wholigans", description: "You know….you may have noticed (and it’s hard not to) that “The Wholigans” are not the same group of guys every gig.\r\nReason is, not every man can play the gig ,be it for family or day job reasons. Over the years we have connected to the best Who tribute players in the world, whether they are from the UK or Canada or the USA or Germany.\r\nWe've played in NYC at the Hard Rock Café in 2001 or 2002 and worked with ‘Who’s Next’ at ‘Wholapalooza.  So we put out the signal that we wanted only the best WHO musicians to “fill in”…..and it worked !", image: "http://markusleemusic.net/thewholigans/wp-content/uploads/2013/08/header1.png", genre_id: nil}
])
Booking.create!([
  {user_id: 2, gig_id: 1, no_of_tickets: 4},
  {user_id: 1, gig_id: 1, no_of_tickets: 2},
  {user_id: 1, gig_id: 5, no_of_tickets: 2},
  {user_id: 2, gig_id: 8, no_of_tickets: 5}
])
Gig.create!([
  {capacity: 100, artist_id: 1, venue_id: 1, start_date: "2016-02-01 19:00:00", end_date: "2016-02-01 20:59:00"},
  {capacity: 100, artist_id: 2, venue_id: 3, start_date: "2016-02-04 22:00:00", end_date: "2016-02-04 23:59:00"},
  {capacity: 150, artist_id: 4, venue_id: 2, start_date: "2016-02-03 21:00:00", end_date: "2016-02-03 22:59:00"},
  {capacity: 150, artist_id: 5, venue_id: 3, start_date: "2016-02-04 20:00:00", end_date: "2016-02-04 21:59:00"},
  {capacity: nil, artist_id: 7, venue_id: 4, start_date: "2016-01-30 19:00:00", end_date: "2016-01-30 20:59:00"},
  {capacity: nil, artist_id: 8, venue_id: 4, start_date: "2016-01-31 20:00:00", end_date: "2016-01-31 21:59:00"},
  {capacity: 100, artist_id: 10, venue_id: 2, start_date: "2016-02-02 19:00:00", end_date: "2016-02-03 20:59:00"},
  {capacity: nil, artist_id: 6, venue_id: 2, start_date: "2016-02-03 19:00:00", end_date: "2016-02-03 20:59:00"}
])
Venue.create!([
  {name: "The Liquid Room", add_1: "9c Victoria St", add_2: "", town: "Edinburgh", postcode: "EH1 2HE", image: "https://c1.staticflickr.com/9/8399/8612347570_631e2154cb_b.jpg"},
  {name: "Whistle Binkies", add_1: "4-6 South Bridge", add_2: "", town: "Edinburgh", postcode: "EH1 1LL", image: ""},
  {name: "Bannermans Bar", add_1: "202 Cowgate", add_2: "", town: "Edinburgh", postcode: "EH1 1NQ", image: "https://brewmook.files.wordpress.com/2014/03/wpid-015-bannermans-cowgate-edinburgh-exterior.jpg?w=1200"},
  {name: "Sneeky Petes", add_1: "73 Cowgate", add_2: "", town: "Edinburgh", postcode: "EH1 1JW", image: "https://files.list.co.uk/images/2010/04/21/muscles-of-joy-LST072204.jpg"}
])
