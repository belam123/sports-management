puts "Seeding database..."

# Create a user
user1 = User.create!(
  username: "Belam",
  email: "belammuia0@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)

user1.generate_access_token

# Create a team
team1 = Team.create!(
  name: "Harambee stars",
  logo: "https://sportal365images.com/process/smp-images-production/ringier.africa/16112023/bac869b0-70ca-4f25-b7bf-f25c79abb350.jpg?operations=fit(1200:630)",
  home_venue: "Kenya"
)

# Create a player associated with the team
player1 = Player.create!(
  name: "Belam",
  date_of_birth: "1990-04-21",
  nationality: "Kenyan",
  position: "1",
  team_id: team1.id
)

# Create a game
game1 = Game.create!(
  name: "Football",
  description: "A popular sport played worldwide."
)

# Create a tournament associated with the game
tournament1 = Tournament.create!(
  name: "Local World Cup",
  start_date: "2024-04-19",
  end_date: "2024-04-20",
  location: "Kiambu",
  game_id: game1.id
)

# Create a registration for the user in the tournament
registration1 = Registration.create(
  registration_date: "2024-04-05",
  registration_status: "ongoing",
  user_id: user1.id,
  tournament_id: tournament1.id
)

# Create a ticket for the tournament
ticket1 = Ticket.create!(
  ticket_type: "Standard",
  price: "200",
  availability: 10,
  tournament_id: tournament1.id
)

puts "Seeding complete."
