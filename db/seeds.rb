Post.destroy_all
User.destroy_all 

mina = User.create(username: "Mina", password: "mina", first_name: "Zermina", last_name: "Ejaz", picture: "https://miro.medium.com/fit/c/256/256/2*Fj1Sgq1zWn_XAp4zKlfsQw.jpeg", number: "x")
kenny = User.create(username: "Kenny", password: "kenny", first_name: "Kenny", last_name: "Marks", picture: "https://miro.medium.com/fit/c/256/256/2*vQvTAcP2P2Leu3UNJ3KkQQ.jpeg", number: "x")

post1 = Post.create(user: mina, price: 50, description: "broken window", case: "car part", status: "OPEN", latitude: "40.700756", longitude: "-73.987770")
post2 = Post.create(user: kenny, price: 7, description: "broken window", case: "car part", status: "OPEN", latitude: "40.702525", longitude: "-73.988752")