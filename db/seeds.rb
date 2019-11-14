Post.destroy_all
User.destroy_all 

mina = User.create(username: "Mina", password: "mina", first_name: "Zermina", last_name: "Ejaz", picture: "https://miro.medium.com/fit/c/256/256/2*Fj1Sgq1zWn_XAp4zKlfsQw.jpeg", number: "17776660000")
kenny = User.create(username: "Kenny", password: "kenny", first_name: "Kenny", last_name: "Marks", picture: "https://miro.medium.com/fit/c/256/256/2*vQvTAcP2P2Leu3UNJ3KkQQ.jpeg", number: "19990008888")
kimberly = User.create(username: "Kimberly", password: "kimberly", first_name: "Kimberly", last_name: "Bone", picture: "https://miro.medium.com/fit/c/256/256/2*JEEN7srZQw_yzBrwsRRk7A.jpeg", number: "19999999999")
avi = User.create(username: "Avi", password: "avi", first_name: "Avi", last_name: "Lodh", picture: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/57486196_10218324329450221_2389533006776762368_n.jpg?_nc_cat=102&_nc_oc=AQmnl286_2EH-NSXXiKLXpcI9DB5fUD7yWMu6U3UJ4vzXn7NczwZpenlk47_Y8PsrVA&_nc_ht=scontent-lga3-1.xx&oh=2be7025643f1f1f5643dad9ef3a1393b&oe=5E444154", number: "14345556789")

post1 = Post.create(user: mina, price: 0, description: "police", case: "CAR", status: "OPEN", latitude: "40.700756", longitude: "-73.987770")
post2 = Post.create(user: kenny, price: 10, description: "battery died, need jump start", case: "CAR", status: "OPEN", latitude: "40.702525", longitude: "-73.988752")
post3 = Post.create(user: kimberly, price: 15, description: "speed watch", case: "POLICE", status: "OPEN", latitude: "40.703683", longitude: "-73.990659")
post4 = Post.create(user: avi, price: 0, description: "tree branch fell down", case: "HIGHWAY", status: "OPEN", latitude: "40.70294", longitude: "-73.98297")
