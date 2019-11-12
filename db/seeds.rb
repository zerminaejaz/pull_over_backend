Post.destroy_all
User.destroy_all 

mina = User.create(username: "Mina", password: "mina", picture: "https://zerminaejaz.github.io/images/pic01.jpg", number: "X")
kenny = User.create(username: "Kenny", password: "kenny", picture: "https://miro.medium.com/fit/c/256/256/2*vQvTAcP2P2Leu3UNJ3KkQQ.jpeg", number: "X")

post1 = Post.create(user: mina, price: 50, description: "broken window", case: "car part", status: "open", latitude: "40.700756", longitude: "-73.987770")
post2 = Post.create(user: kenny, price: 7, description: "broken window", case: "car part", status: "open", latitude: "40.702525", longitude: "-73.988752")