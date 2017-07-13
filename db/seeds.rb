# Team Seeds
Team.create(location: "Buffalo", name: "Bills", color_hex: "#00338D")
Team.create(location: "Miami", name: "Dolphins", color_hex: "#008D97")
Team.create(location: "New England", name: "Patriots", color_hex: "#0C2340")
Team.create(location: "New York", name: "Jets", color_hex: "#0C371D")

Team.create(location: "Baltimore", name: "Ravens", color_hex: "#280353")
Team.create(location: "Cincinnati", name: "Bengals", color_hex: "#FB4F14")
Team.create(location: "Cleveland", name: "Browns", color_hex: "#eb3300")
Team.create(location: "Pittsburgh", name: "Steelers", color_hex: "#FFB81C")

Team.create(location: "Houston", name: "Texans", color_hex: "#02253A")
Team.create(location: "Indianapolis", name: "Colts", color_hex: "#003B7B")
Team.create(location: "Jacksonville", name: "Jaguars", color_hex: "#006778")
Team.create(location: "Tennessee", name: "Titans", color_hex: "#648FCC")

Team.create(location: "Denver", name: "Broncos", color_hex: "#FB4F14")
Team.create(location: "Kansas City", name: "Chiefs", color_hex: "#B20032")
Team.create(location: "Oakland", name: "Raiders", color_hex: "#C4C8CB")
Team.create(location: "Los Angeles", name: "Chargers", color_hex: "#85a3c8")



Team.create(location: "Dallas", name: "Cowboys", color_hex: "#87909B")
Team.create(location: "New York", name: "Giants", color_hex: "#192F6B")
Team.create(location: "Philadelphia", name: "Eagles", color_hex: "#003B48")
Team.create(location: "Washington", name: "Redskins", color_hex: "#773141")

Team.create(location: "Chicago", name: "Bears", color_hex: "#03202F")
Team.create(location: "Detroit", name: "Lions", color_hex: "#006DB0")
Team.create(location: "Green Bay", name: "Packers", color_hex: "#203731")
Team.create(location: "Minnesota", name: "Vikings", color_hex: "#582C81")

Team.create(location: "Atlanta", name: "Falcons", color_hex: "#A6192D")
Team.create(location: "Carolina", name: "Panthers", color_hex: "#0085CA")
Team.create(location: "New Orleans", name: "Saints", color_hex: "#D2B887")
Team.create(location: "Tampa Bay", name: "Buccaneers", color_hex: "#D60A0B")

Team.create(location: "Arizona", name: "Cardinals", color_hex: "#9B2743")
Team.create(location: "Los Angeles", name: "Rams", color_hex: "#13264B")
Team.create(location: "San Francisco", name: "49ers", color_hex: "#AF1E2C")
Team.create(location: "Seattle", name: "Seahawks", color_hex: "#4DFF00")


# User Seeds
User.create(username: "thor", email: "thor@thor.com", password: "1234", favorite_team_id: Team.find_by(name: "Vikings").id)
User.create(username: "beardown", email: "bear@bear.com", password: "1234", favorite_team_id: Team.find_by(name: "Bears").id)
User.create(username: "Broncitus", email: "bronc@bronc.com", password: "1234", favorite_team_id: Team.find_by(name: "Broncos").id)
User.create(username: "cheeseheadTed", email: "cheese@cheese.com", password: "1234", favorite_team_id: Team.find_by(name: "Packers").id)
User.create(username: "Flipper", email: "flip@flip.com", password: "1234", favorite_team_id: Team.find_by(name: "Dolphins").id)

# Post Seeds
Post.create(title: "Skol Vikes!", body: "Skol bros rise! The pack sucks!", author_id: 1)
Post.create(title: "We are Horses.", body: "Our mascot is a horse. Yeah.", author_id: 3)
Post.create(title: "Packers r da best you know.", body: "blah blah... bullshit", author_id: 4)
Post.create(title: "Flippers up for the Dolphins!", body: "** Incomprehensible dolphin squeels... **", author_id: 5)


# Reply Seeds
Reply.create(body: "You're an idiot!", author_id: 3, post_id: 3)
Reply.create(body: "You guys are going to be good this year!", author_id: 5, post_id: 1)
Reply.create(body: "Packers Suck!", author_id: 1, post_id: 3)
Reply.create(body: "Packer fans are the worst!", author_id: 2, post_id: 3)
Reply.create(body: "Boooooo...", author_id: 4, post_id: 1)
Reply.create(body: "You're an idiot!", author_id: 2, post_id: 2)
Reply.create(body: "Aquatic mammals are better than terrestrial!", author_id: 5, post_id: 2)
Reply.create(body: "Hell yeah Dolphin dudes!", author_id: 1, post_id: 4)
