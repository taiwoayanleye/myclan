# frozen_string_literal: true

if User.all.empty?
  puts 'Seeding 5 users'
  5.times do
    User.create!(
      email: Faker::Internet.email,
      password: 'password',
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
    )
  end
  puts "Seeded #{User.count} users successfully"
  User.all.each do |user|
    puts "They are #{user.first_name}"
  end
end

if Event.all.empty?
  puts 'Seeding events'
  5.times do
    User.all.each do |user|
      e = user.hosted_events.build(
        title: Faker::Music.band,
        location: Faker::Mountain.name,
        description: Faker::Books::Lovecraft.paragraph_by_chars(characters: 256)
      )
      e.save
    end
  end
  puts 'Seeded events'
end

if Invitation.all.empty?
  puts 'Seeding invitations'
  5.times do
    Event.all.each do |event|
      i = event.invitations.build(
        guest_id: ([*User.first.id..User.last.id] - [event.host.id]).sample,
        status: Faker::Boolean.boolean
      )
      i.save
      p i.errors.full_messages
    end
  end
  puts 'Seeded invitations'
end
