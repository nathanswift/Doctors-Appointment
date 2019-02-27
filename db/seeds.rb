10.times do
  user = user.create(
    name: Faker::TvShows::TheFreshPrinceOfBelAir.character
  )
 
  10.times do 
    doctor = doctor.create(
        title: 'MD'
        name: Faker::TvShows::SiliconValley.character
    )

    Appointment.create(
    date: Faker::Date
    time: Faker::Time  
    user_id: user.id,
    doctor_id: doctor.id
    )
  end
end

puts "Data Seeded."