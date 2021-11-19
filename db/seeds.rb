puts "🌱 Seeding spices..."

Animal.destroy_all
puts "Animals destroyed!"
Caretaker.destroy_all
puts "Caretakers destroyed!"
Appointment.destroy_all
puts "Appointments destroyed!"

car1 = Caretaker.create( image:"https://ca.slack-edge.com/T02MD9XTF-U0249FRF0TW-c9095395a389-512" , name:"Evaristo Gongora" , age:19 , bio: "I just enjoy animals" )
car2 = Caretaker.create( image:"https://ca.slack-edge.com/T02MD9XTF-U01HDB7FV4K-g4a57c08aae2-512" , name: "Anna Wilson" , age:40 , bio:"I love animals especially cats!" )
car3 = Caretaker.create( image:"https://media.discordapp.net/attachments/785498618446348319/887919184313458808/Mimi.jpeg?width=514&height=645" , name:"Jazmeen Caldwell" , age:26 , bio:"I think animals are sweet and just deserve some love" )

puts "Caretaker seeded!"

ani1 = Animal.create( image:"https://media.discordapp.net/attachments/785498618446348319/887920534891941888/Tinky.jpeg?width=490&height=650" , name:"Tinky" , age:"10 months" , breed:"Lion head" , caretaker_id: car1.id )
ani2 = Animal.create( image:"https://media.discordapp.net/attachments/785498618446348319/887920535902752808/Snowball.jpeg?width=417&height=645" , name:"Snowball" , age:"2 years" , breed:"Holland lop" , caretaker_id: car2.id )
ani3 = Animal.create( image:"https://media.discordapp.net/attachments/785498618446348319/887920537446277140/Iggy.jpeg?width=484&height=645" , name:"Iggy" , age:"1 years" , breed:"Ferret" , caretaker_id: car3.id )
 
puts "Animal seeded!"

app1 = Appointment.create( meeting_time: 0, animal_id: ani1.id, caretaker_id: car1.id,)

puts "✅ Done seeding!"
