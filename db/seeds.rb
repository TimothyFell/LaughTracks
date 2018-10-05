require File.expand_path('../../config/environment.rb', __FILE__)

# Create Comedian 1
comedian_1 = Comedian.create(
  name:"Lewis Black", age:70,
  city: "Silver Spring, Maryland", image_url:"https://www.datocms-assets.com/4857/1522135089-493595692_1280x720.jpg")
special_1a = comedian_1.specials.create(
  name:"Lewis Black: Stark Raving Black", length:80,
  image_url:"https://m.media-amazon.com/images/M/MV5BMTU0OTc1OTQ1N15BMl5BanBnXkFtZTcwNDc5NTE4Mg@@._V1_UY268_CR2,0,182,268_AL_.jpg"
)
special_1b = comedian_1.specials.create(
  name:"Lewis Black: In God We Rust", length:59,
  image_url:"https://m.media-amazon.com/images/M/MV5BMjI2MzEyODY3MF5BMl5BanBnXkFtZTgwMDk5NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg"
)
special_1c = comedian_1.specials.create(
  name:"Lewis Black: Black to the Future", length:49,
  image_url:"https://m.media-amazon.com/images/M/MV5BMDdhMzc3ZTEtMzg4ZC00ZjYzLWE3MzktM2I2ZTA0MGRlNjI5XkEyXkFqcGdeQXVyNjU2MTA3OTY@._V1_UY268_CR22,0,182,268_AL_.jpg"
)

# Create Comedian 2
comedian_2 = Comedian.create(
  name:"Chris Rock", age:53,
  city: "Andrews, South California", image_url:"https://answersafrica.com/wp-content/uploads/2018/05/chris-rock-AP-photo-640x360.jpg")
special_2a = comedian_2.specials.create(
  name:"Chris Rock: Kill the Messenger", length:79,
  image_url:"https://m.media-amazon.com/images/M/MV5BMjAwMjQxNDA5OF5BMl5BanBnXkFtZTcwNTE3MzM5MQ@@._V1_UY268_CR11,0,182,268_AL_.jpg"
)
special_2b = comedian_2.specials.create(
  name:"Chris Rock: Bigger & Blacker", length:65,
  image_url:"https://m.media-amazon.com/images/M/MV5BODQzOWExYjktZDQ2OC00YTA5LWI3YzctMDFjNjc3ZTM5NTA0XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg"
)
special_2c = comedian_2.specials.create(
  name:"Chris Rock: Bring the Pain", length:58,
  image_url:"https://m.media-amazon.com/images/M/MV5BMTU0ODk2MzYyM15BMl5BanBnXkFtZTcwMTUxMzYxMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg"
)

# Create Comedian 3
comedian_3 = Comedian.create(
  name:"Rodney Dangerfield", age:82,
  city: "Deer Park, New York", image_url:"http://www.rodney.com/images/bg/Home.jpg")
special_3a = comedian_3.specials.create(
  name:"Nothin' Goes Right", length:83,
  image_url:"https://m.media-amazon.com/images/M/MV5BMjAyOTU4NzAyM15BMl5BanBnXkFtZTcwMDg1OTIzMQ@@._V1_UY268_CR3,0,182,268_AL_.jpg"
)
special_3b = comedian_3.specials.create(
  name:"Rodney Dangerfield: It's Not Easy Bein' Me", length:59,
  image_url:"https://m.media-amazon.com/images/M/MV5BMTQ0NTkxOTE0N15BMl5BanBnXkFtZTcwNTc1OTIzMQ@@._V1_UY268_CR3,0,182,268_AL_.jpg"
)
special_3c = comedian_3.specials.create(
  name:"The Rodney Dangerfield Special: I Can't Take It No More", length:60,
  image_url:"https://m.media-amazon.com/images/M/MV5BMTk0MTY0MTg0NF5BMl5BanBnXkFtZTcwODY1OTIzMQ@@._V1_UY268_CR3,0,182,268_AL_.jpg"
)

# Create Comedian 4
comedian_4 = Comedian.create(
  name:"Robin Williams", age:63,
  city: "Chicago, Illinois", image_url:"https://www.mghclaycenter.org/assets/robin-williams-cover-ftr-635x325.jpg")
special_4a = comedian_4.specials.create(
  name:"Robin Williams: Weapons of Self Destruction", length:90,
  image_url:"https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_UY268_CR4,0,182,268_AL_.jpg"
)
special_4b = comedian_4.specials.create(
  name:"Robin Williams Live on Broadway", length:99,
  image_url:"https://m.media-amazon.com/images/M/MV5BMTc1MTQ4NjcyOF5BMl5BanBnXkFtZTcwODIyNzIyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg"
)
special_4c = comedian_4.specials.create(
  name:"Robin Williams: An Evening at the Met", length:65,
  image_url:"https://m.media-amazon.com/images/M/MV5BYzM0Zjc0OWItYWI1MC00NjQwLWE4YTktYWY1MDQyYjM3NjRkXkEyXkFqcGdeQXVyMTQ4NDY5OTc@._V1_UX182_CR0,0,182,268_AL_.jpg"
)

# Create Comedian 5
comedian_5 = Comedian.create(
  name:"George Carlin", age:71,
  city: "New York, New York",
  image_url:"https://cdn3.movieweb.com/i/article/B0bgS9S5kgoA8ulYQ3efuDgQRZIyGp/798:50/George-Carlin-Movie-Writer-Stan-Chervin.jpg")
special_5a = comedian_5.specials.create(
  name:"George Carlin: Jammin' in New York", length:59,
  image_url:"https://m.media-amazon.com/images/M/MV5BMTI2MjA5NjEwOF5BMl5BanBnXkFtZTcwMDYzOTIzMQ@@._V1_UY268_CR3,0,182,268_AL_.jpg"
)
special_5b = comedian_5.specials.create(
  name:"George Carlin: Doin' It Again", length:60,
  image_url:"https://m.media-amazon.com/images/M/MV5BMjg4MTYwNjY0NF5BMl5BanBnXkFtZTcwNzg1OTkyMQ@@._V1_UY268_CR5,0,182,268_AL_.jpg"
)
special_5c = comedian_5.specials.create(
  name:"George Carlin... It's Bad for Ya!", length:70,
  image_url:"https://m.media-amazon.com/images/M/MV5BMzI0Njk5ZWYtNGVhNy00MjVmLWFhMWItN2NhNGQ5NDQ3YmE3XkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UX182_CR0,0,182,268_AL_.jpg"
)

# Create Comedian 6
comedian_6 = Comedian.create(
  name:"Bill Burr", age:50,
  city: "Canton, Massachusetts",
  image_url:"https://cdn1.thr.com/sites/default/files/imagecache/landscape_928x523/2018/01/bill_burr.jpg")
special_6a = comedian_6.specials.create(
  name:"Bill Burr: I'm Sorry You Feel That Way", length:80,
  image_url:"https://m.media-amazon.com/images/M/MV5BMTk0MzI5MjAxNV5BMl5BanBnXkFtZTgwNDY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
)
special_6b = comedian_6.specials.create(
  name:"Bill Burr: Let It Go", length:65,
  image_url:"https://m.media-amazon.com/images/M/MV5BMjA0ODUxODkwOV5BMl5BanBnXkFtZTgwNTMwNTA2MDE@._V1_UY268_CR4,0,182,268_AL_.jpg"
)
special_6c = comedian_6.specials.create(
  name:"Bill Burr: Why Do I Do This?", length:55,
  image_url:"https://m.media-amazon.com/images/M/MV5BMjI3OTcxNTA1MV5BMl5BanBnXkFtZTgwNDY2MjA2MDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
)

# Create Comedian 7
comedian_7 = Comedian.create(
  name:"Dave Chappelle", age:45,
  city: "Washington, DC",
  image_url:"https://pixel.nymag.com/imgs/daily/vulture/2018/04/03/03-dave-chappelle.w1200.h630.jpg")
special_7a = comedian_7.specials.create(
  name:"Dave Chappelle: Equanimity", length:64,
  image_url:"https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_UY268_CR4,0,182,268_AL_.jpg"
)
special_7b = comedian_7.specials.create(
  name:"Deep in the Heart of Texas: Dave Chappelle Live at Austin City Limits", length:66,
  image_url:"https://m.media-amazon.com/images/M/MV5BODA1MDE3ZWYtMTliYi00YTc5LTk3MjQtZjY2YTlhMDQ3Y2Y3XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_UY268_CR4,0,182,268_AL_.jpg")
special_7c = comedian_7.specials.create(
  name:"Dave Chappelle: Killin' Them Softly", length:57,
  image_url:"https://m.media-amazon.com/images/M/MV5BMTcyOGMxN2MtYzUwYy00YzQxLTgwZTItZjAxZTIzYWM1YzEyXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_UX182_CR0,0,182,268_AL_.jpg")

# Create Comedian 8
comedian_8 = Comedian.create(
  name:"Iliza Shlesinger", age:34,
  city: "New York, New York", image_url:"https://uproxx.files.wordpress.com/2018/07/iliza-shlesinger-elder-millennial-comedy-column.jpg?quality=95&w=650")
special_8a = comedian_8.specials.create(
  name:'Iliza: Elder Millennial', length:71,
  image_url:"https://m.media-amazon.com/images/M/MV5BNTE2ZmFmYTctOGQyNy00OGNkLTgxYWMtYTVlYzMyMzAyZGRiXkEyXkFqcGdeQXVyNzE3MDkxODc@._V1_UY268_CR4,0,182,268_AL_.jpg"
)
special_8b = comedian_8.specials.create(
  name:'Iliza Shlesinger: Confirmed Kills', length:77,
  image_url:"https://m.media-amazon.com/images/M/MV5BZGEyYjkwMWItM2EyZS00N2Q1LWIzZmQtZDg5Y2ZmMzdlNTgyXkEyXkFqcGdeQXVyNjgzNzA2NjU@._V1_UX182_CR0,0,182,268_AL_.jpg"
)
special_8c = comedian_8.specials.create(
  name:'Iliza Shlesinger: Freezing Hot', length:71,
  image_url:"https://m.media-amazon.com/images/M/MV5BNDE4ODU1NjY0OF5BMl5BanBnXkFtZTgwNTY1NzA0NDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
)

# Create Comedian 9
comedian_9 = Comedian.create(
  name:"Ali Wong", age:36,
  city: "San Francisco California", image_url:"https://i1.wp.com/www.laurenelltalk.com/wp-content/uploads/2018/05/Ali_Wong.png?resize=700%2C312&ssl=1")
