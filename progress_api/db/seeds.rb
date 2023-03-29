# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding..."
User.create(name: "user", email: "user@email.com", password:"password")
Verse.create(details:"Jacob’s anger burned against Rachel, and he said, “Am I in God’s place, who has withheld from you the fruit of the womb?”\n", verse: "Genesis 30:2");
Photo.create(title: "Photo 1", url: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg")
Photo.create(title: "Photo 2", url: "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014__480.jpg")
Photo.create(title: "Photo 3", url: "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823__480.jpg")
Photo.create(title: "Photo 4", url: "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg")
Photo.create(title: "Photo 5", url: "https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297__480.jpg")
Photo.create(title: "Photo 6", url: "https://cdn.pixabay.com/photo/2014/04/14/20/11/pink-324175__480.jpg")
Photo.create(title: "Photo 7", url: "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228__480.jpg")
Photo.create(title: "Photo 8", url: "https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055__480.jpg")
Photo.create(title: "Photo 9", url: "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__480.jpg")
Photo.create(title: "Photo 10", url: "https://cdn.pixabay.com/photo/2015/11/16/16/28/bird-1045954__480.jpg")
Photo.create(title: "Photo 11", url: "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539__480.jpg")
Photo.create(title: "Photo 12", url: "https://cdn.pixabay.com/photo/2013/08/20/15/47/poppies-174276__480.jpg")
Photo.create(title: "Photo 13", url: "https://cdn.pixabay.com/photo/2015/12/01/20/28/forest-1072828__480.jpg")
Photo.create(title: "Photo 14", url: "https://cdn.pixabay.com/photo/2012/08/06/00/53/bridge-53769__480.jpg")
Photo.create(title: "Photo 15", url: "https://cdn.pixabay.com/photo/2013/07/18/10/56/railroad-163518__480.jpg")
Photo.create(title: "Photo 16", url: "https://cdn.pixabay.com/photo/2016/04/18/22/05/seashells-1337565__480.jpg")
Photo.create(title: "Photo 17", url: "https://cdn.pixabay.com/photo/2016/07/11/15/43/woman-1509956__480.jpg")



puts "seeding stopped successfully..."