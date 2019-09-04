roles = %w[Teacher, Student, TA]

10.times do
  course = Course.create(
    name: Faker::Kpop.boy_bands
  )

  10.times do
    user = User.create(
      first_name: Faker::FunnyName.name,
      last_name: Faker::Name.last_name
    )

    Enrollment.create(
      role: roles.sample,
      course_id: course.id,
      user_id: user.id
    )
  end
end

puts "Data is seeded"
