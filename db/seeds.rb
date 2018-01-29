# this file is to add all the posts that i added
# i'm also running this file every 10 mins on Heroku to stop bad people!
Post.delete_all

Post.create([
  { title: "Apple on head", body: "From Monki.com", image: open(Rails.root + "public/testdata/image_1.png") },
  { title: "Good Pin Club", body: "From Monki.com", image: open(Rails.root + "public/testdata/image_2.png") },
  { title: "Nao e Nada Dificil", body: "From Monki.com", image: open(Rails.root + "public/testdata/image_3.jpg") },
  { title: "Tray", body: "From Monki.com", image: open(Rails.root + "public/testdata/image_4.jpg") },
  { title: "Pencil holders", body: "From Monki.com", image: open(Rails.root + "public/testdata/image_5.jpg") },
  { title: "Leaves", body: "From Monki.com", image: open(Rails.root + "public/testdata/image_6.jpg") },
  { title: "Cool keyboard", body: "From Monki.com", image: open(Rails.root + "public/testdata/image_7.jpg") },
  { title: "Fortune cookies", body: "From Monki.com", image: open(Rails.root + "public/testdata/image_8.jpg") },
  { title: "Cut out computer", body: "From Monki.com", image: open(Rails.root + "public/testdata/image_9.jpg") },
  { title: "Ideas", body: "From Monki.com", image: open(Rails.root + "public/testdata/image_10.png") }
])