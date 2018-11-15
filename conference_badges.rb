def badge_maker (name)
  "Hello, my name is #{name}."
end


def batch_badge_creator (attendees)
  badges = []
  attendees.each do |name|
    badges.push(badge_maker(name))
  end
  badges
end


def assign_rooms (attendees)
  rooms = []
  x = 0
  attendees.each do |name|
    x += 1
    rooms.push("Hello, #{name}! You'll be assigned to room #{x}!")
  end
  rooms
end


def printer (attendees)
  x = 0
  while x < 7
    attendees.each do |name|
      puts batch_badge_creator(attendees)[x]
      puts assign_rooms(attendees)[x]
      x += 1
    end
  end
end
