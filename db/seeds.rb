# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0

puts"destroying the seeds..."
User.destroy_all
Course.destroy_all
puts"seeds destroyed. Creating new seeds..."

# USERS
viktor_photo = "https://avatars3.githubusercontent.com/u/63431873?s=460&u=1084b312c7083849885fae61cf7f4db400eecf7a&v=4"
file = URI.open(viktor_photo)
filename = File.basename(URI.parse(viktor_photo).path)
viktor_user = User.new(email: "vkaraujo00@gmail.com", password: '123456', username: "Viktor", role: "admin")
viktor_user.photo.attach(io: file, filename: filename)
viktor_user.save

flaviom_photo = "https://avatars1.githubusercontent.com/u/63248684?s=460&u=6249ee3a2d72c615eee37531629411c977c4a6d9&v=4"
file = URI.open(flaviom_photo)
filename = File.basename(URI.parse(flaviom_photo).path)
flaviom_user = User.new(email: "flaviom@gmail.com", password: '123456', username: "Flavio", role: "user")
flaviom_user.photo.attach(io: file, filename: filename)
flaviom_user.save

leo_photo = "https://avatars1.githubusercontent.com/u/63420973?s=460&u=024e91a4f5cd27b40a7505a159a29093c7f5fff0&v=4"
file = URI.open(leo_photo)
filename = File.basename(URI.parse(leo_photo).path)
leo_user = User.new(email: "leo@gmail.com", password: '123456', username: "Leo", role: "admin")
leo_user.photo.attach(io: file, filename: filename)
leo_user.save

flavio_photo = "https://avatars1.githubusercontent.com/u/63248684?s=460&u=6249ee3a2d72c615eee37531629411c977c4a6d9&v=4"
file = URI.open(flavio_photo)
filename = File.basename(URI.parse(flavio_photo).path)
flavio_user = User.new(email: "flavio@gmail.com", password: '123456', username: "Flavio", role: "admin")
flavio_user.photo.attach(io: file, filename: filename)
flavio_user.save

itamar_photo = "https://avatars1.githubusercontent.com/u/63616452?s=460&u=da68d777ce107ed6486fff6200d57aea1122b7f7&v=4"
file = URI.open(itamar_photo)
filename = File.basename(URI.parse(itamar_photo).path)
itamar_user = User.new(email: "itamar@gmail.com", password: '123456', username: "Itamar", role: "admin")
itamar_user.photo.attach(io: file, filename: filename)
itamar_user.save

# User.create!(email: "vkaraujo00@gmail.com", password: '123456', username: "Viktor", role: "admin")
# User.create!(email: "player1@gmail.com", password: 'player1', username: "Player1", role: "user")
# User.create!(email: "leo@gmail.com", password: '123456', username: "Leo", role: "admin")
# User.create!(email: "flavio@gmail.com", password: '123456', username: "Flavio", role: "admin")
# User.create!(email: "itamar@gmail.com", password: '123456', username: "Itamar", role: "admin")

# COURSES
first_photo = "https://d2vlcm61l7u1fs.cloudfront.net/media%2Fedb%2Fedb7c4f5-c73e-4398-a058-aa7a9cb690f6%2Fphpml3tDq.png"
file = URI.open(first_photo)
filename = File.basename(URI.parse(first_photo).path)
first_course = Course.new(name: "Matching parenthesis", video: 'https://www.youtube.com/watch?v=2X_2IdybTV0', description: "Aenean id turpis lectus. Proin fringilla lorem eget lectus vehicula, vel semper erat dapibus. Maecenas suscipit ut nunc malesuada imperdiet. Aliquam vitae venenatis nunc. Sed facilisis nibh eu accumsan euismod. Vestibulum ac sapien sed purus porttitor porttitor. Phasellus cursus nisl ac scelerisque finibus. Sed pretium sem sit amet ullamcorper dapibus. Quisque elit nisl, commodo luctus placerat in, dapibus a nulla. Suspendisse fringilla tempor massa. Morbi tincidunt, purus ac imperdiet accumsan, felis nisi ullamcorper quam, eget condimentum purus nisi eu nibh. Integer eu nisl bibendum, accumsan dui eget, feugiat nulla. Pellentesque tempus nisi ex, sed venenatis odio semper nec. Phasellus semper porta justo, blandit sollicitudin lectus fringilla a. Sed vestibulum tortor vitae ante pretium sagittis. Sed eu ultricies lacus, in hendrerit purus.", category: "Manipulators", difficulty: "Hard", short_description: "Matching parenthesis, also known as brace matching or parentheses matching, is a syntax that highlights matching sets of brackets in languages such as Java and C++ that use them.")
first_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  first_course.images.attach(io: img_file, filename: img_filename)
end
first_course.save

second_photo = "https://images.unsplash.com/photo-1537884944318-390069bb8665?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
file = URI.open(second_photo)
filename = File.basename(URI.parse(second_photo).path)
second_course = Course.new(name: "Array Manipulation", video: 'https://www.youtube.com/watch?v=TZI5cAV0BOo', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elementum non turpis sed convallis. Nullam volutpat pretium suscipit. Aenean id tortor sit amet nulla aliquam ullamcorper. Aliquam posuere tincidunt malesuada. Integer tempor nibh sed arcu tristique, nec mollis nisl fermentum. Maecenas consectetur pharetra gravida. Suspendisse nisi velit, tincidunt a volutpat eu, vehicula non tortor. Vivamus eget mauris non erat condimentum faucibus vel non urna. Duis nec leo a enim gravida mattis. Aenean porttitor urna sem. Duis massa nibh, pellentesque quis mi in, placerat commodo risus.",category: "Manipulators", difficulty: "Easy", short_description: "A way to manipulate data using strings or numbers inside a collection.")
second_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  second_course.images.attach(io: img_file, filename: img_filename)
end
second_course.save

third_photo = "https://www.roberthalf.com/sites/default/files/2018-03/Object%20oriented%20programming.jpg"
file = URI.open(third_photo)
filename = File.basename(URI.parse(third_photo).path)
third_course = Course.new(name: "OOP", video: 'https://www.youtube.com/watch?v=t4382UVl0oc', description: "Aenean id turpis lectus. Proin fringilla lorem eget lectus vehicula, vel semper erat dapibus. Maecenas suscipit ut nunc malesuada imperdiet. Aliquam vitae venenatis nunc. Sed facilisis nibh eu accumsan euismod. Vestibulum ac sapien sed purus porttitor porttitor. Phasellus cursus nisl ac scelerisque finibus. Sed pretium sem sit amet ullamcorper dapibus. Quisque elit nisl, commodo luctus placerat in, dapibus a nulla. Suspendisse fringilla tempor massa. Morbi tincidunt, purus ac imperdiet accumsan, felis nisi ullamcorper quam, eget condimentum purus nisi eu nibh. Integer eu nisl bibendum, accumsan dui eget, feugiat nulla. Pellentesque tempus nisi ex, sed venenatis odio semper nec. Phasellus semper porta justo, blandit sollicitudin lectus fringilla a. Sed vestibulum tortor vitae ante pretium sagittis. Sed eu ultricies lacus, in hendrerit purus.", category: "Objects", difficulty: "Medium", short_description: "Object-oriented programming (OOP) refers to a type of computer programming (software design) in which programmers define the data type of a data structure.")
third_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  third_course.images.attach(io: img_file, filename: img_filename)
end
third_course.save

fourth_photo = "https://process.filestackapi.com/cache=expiry:max/aDzLW2UbT827GjwMv9GH"
file = URI.open(fourth_photo)
filename = File.basename(URI.parse(fourth_photo).path)
fourth_course = Course.new(name: "Path Finding", video: 'https://www.youtube.com/watch?v=UwLtyvGdNbc', description: "Cras interdum gravida feugiat. Nulla quam eros, lacinia consequat varius vel, imperdiet vel neque. Nam et nulla sed erat accumsan ornare in sit amet sapien. Vestibulum accumsan non orci a tristique. In tempor tempor quam, eu lacinia nisi elementum a. Vestibulum nec facilisis lorem, vitae condimentum metus. Vivamus ut eleifend felis. Sed eget imperdiet enim, quis ultrices diam. Vestibulum malesuada nec nisi nec scelerisque. Suspendisse neque neque, laoreet et sem at, ultricies molestie purus. Nulla fermentum lorem at nisl rhoncus, eget posuere ex sollicitudin. Aliquam porta orci tincidunt dolor rutrum aliquam. Nulla facilisi. Aliquam pretium a ipsum nec molestie. Pellentesque non diam a mauris egestas pellentesque quis non diam. In ac quam quis mauris feugiat sagittis non non ante.", category: "Finding", difficulty: "Hard", short_description: "A pathfinding method searches a graph by starting at one vertex and exploring adjacent nodes until the destination node is reached.")
fourth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  fourth_course.images.attach(io: img_file, filename: img_filename)
end
fourth_course.save

fifth_photo = "https://cdn.programiz.com/sites/tutorial2program/files/Selection-sort-0.png"
file = URI.open(fifth_photo)
filename = File.basename(URI.parse(fifth_photo).path)
fifth_course = Course.new(name: "Sort", video: 'https://www.youtube.com/watch?v=DelhLppPSxY', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elementum non turpis sed convallis. Nullam volutpat pretium suscipit. Aenean id tortor sit amet nulla aliquam ullamcorper. Aliquam posuere tincidunt malesuada. Integer tempor nibh sed arcu tristique, nec mollis nisl fermentum. Maecenas consectetur pharetra gravida. Suspendisse nisi velit, tincidunt a volutpat eu, vehicula non tortor. Vivamus eget mauris non erat condimentum faucibus vel non urna. Duis nec leo a enim gravida mattis. Aenean porttitor urna sem. Duis massa nibh, pellentesque quis mi in, placerat commodo risus.", category: "Sorting", difficulty: "Hard", short_description: "Sort is a series of instructions that takes an array as input, performs specified operations on the array, sometimes called a list, and outputs a sorted array.")
fifth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  fifth_course.images.attach(io: img_file, filename: img_filename)
end
fifth_course.save

sixth_photo = "https://www.wikihow.com/images/d/d2/Compare-Two-Strings-in-C-Programming-Step-6-Version-4.jpg"
file = URI.open(sixth_photo)
filename = File.basename(URI.parse(sixth_photo).path)
sixth_course = Course.new(name: "String Manipulation", video: 'https://www.youtube.com/watch?v=o_l4Ab5FRwM', description: "Aenean id turpis lectus. Proin fringilla lorem eget lectus vehicula, vel semper erat dapibus. Maecenas suscipit ut nunc malesuada imperdiet. Aliquam vitae venenatis nunc. Sed facilisis nibh eu accumsan euismod. Vestibulum ac sapien sed purus porttitor porttitor. Phasellus cursus nisl ac scelerisque finibus. Sed pretium sem sit amet ullamcorper dapibus. Quisque elit nisl, commodo luctus placerat in, dapibus a nulla. Suspendisse fringilla tempor massa. Morbi tincidunt, purus ac imperdiet accumsan, felis nisi ullamcorper quam, eget condimentum purus nisi eu nibh. Integer eu nisl bibendum, accumsan dui eget, feugiat nulla. Pellentesque tempus nisi ex, sed venenatis odio semper nec. Phasellus semper porta justo, blandit sollicitudin lectus fringilla a. Sed vestibulum tortor vitae ante pretium sagittis. Sed eu ultricies lacus, in hendrerit purus.", category: "Manipulators", difficulty: "Easy", short_description: "String manipulation (or string handling) is the process of changing, parsing, splicing, pasting, or analyzing strings.")
sixth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  sixth_course.images.attach(io: img_file, filename: img_filename)
end
sixth_course.save

seventh_photo = "https://i.pinimg.com/originals/75/48/c0/7548c065fd8e6c6abccf760e443986ca.jpg"
file = URI.open(seventh_photo)
filename = File.basename(URI.parse(seventh_photo).path)
seventh_course = Course.new(name: "Div Manipulation", video: 'https://www.youtube.com/watch?v=SBjQ9tuuTJQ', description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elementum non turpis sed convallis. Nullam volutpat pretium suscipit. Aenean id tortor sit amet nulla aliquam ullamcorper. Aliquam posuere tincidunt malesuada. Integer tempor nibh sed arcu tristique, nec mollis nisl fermentum. Maecenas consectetur pharetra gravida. Suspendisse nisi velit, tincidunt a volutpat eu, vehicula non tortor. Vivamus eget mauris non erat condimentum faucibus vel non urna. Duis nec leo a enim gravida mattis. Aenean porttitor urna sem. Duis massa nibh, pellentesque quis mi in, placerat commodo risus.", category: "Manipulators", difficulty: "Easy", short_description: "Div Manipulation is a way to interact tables with each other and create a few features for example cards.")
seventh_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  seventh_course.images.attach(io: img_file, filename: img_filename)
end
seventh_course.save

eighth_photo = "https://i.stack.imgur.com/dq0Yb.png"
file = URI.open(eighth_photo)
filename = File.basename(URI.parse(eighth_photo).path)
eighth_course = Course.new(name: "Div Manipulation using CSS", video: 'https://www.youtube.com/watch?v=1ixKdkMWzFA', description: "Cras interdum gravida feugiat. Nulla quam eros, lacinia consequat varius vel, imperdiet vel neque. Nam et nulla sed erat accumsan ornare in sit amet sapien. Vestibulum accumsan non orci a tristique. In tempor tempor quam, eu lacinia nisi elementum a. Vestibulum nec facilisis lorem, vitae condimentum metus. Vivamus ut eleifend felis. Sed eget imperdiet enim, quis ultrices diam. Vestibulum malesuada nec nisi nec scelerisque. Suspendisse neque neque, laoreet et sem at, ultricies molestie purus. Nulla fermentum lorem at nisl rhoncus, eget posuere ex sollicitudin. Aliquam porta orci tincidunt dolor rutrum aliquam. Nulla facilisi. Aliquam pretium a ipsum nec molestie. Pellentesque non diam a mauris egestas pellentesque quis non diam. In ac quam quis mauris feugiat sagittis non non ante.", category: "Manipulators", difficulty: "Medium", short_description: "Div Manipulation using CSS it's a to make a table interact with each other but using CSS and the position tools to help you.")
eighth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  eighth_course.images.attach(io: img_file, filename: img_filename)
end
eighth_course.save

ninth_photo = "https://images.unsplash.com/photo-1569605803663-e9337d901ff9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"
file = URI.open(ninth_photo)
filename = File.basename(URI.parse(ninth_photo).path)
ninth_course = Course.new(name: "Binary Search", video: 'https://www.youtube.com/embed/5s7_WbiR79E', description: "In computer science, binary search, also known as half-interval search, logarithmic search, or binary chop, is a search algorithm that finds the position of a target value within a sorted array. Binary search compares the target value to the middle element of the array.", category: "Binary", difficulty: "Hard", short_description: "Binary search is an efficient algorithm for finding an item from a sorted list of items.")
ninth_course.photo.attach(io: file, filename: filename)
images_array = ["https://images.unsplash.com/photo-1569775309692-fd5e62248d8b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1049&q=80"]
images_array.each do |image|
  img_file = URI.open(image)
  img_filename = File.basename(URI.parse(image).path)
  ninth_course.images.attach(io: img_file, filename: img_filename)
end
ninth_course.save

puts"seeds created! Done!"
