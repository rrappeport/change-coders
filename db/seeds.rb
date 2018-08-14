# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'json'
require 'open-uri'

EMAIL = ["hello@gmail.com", "bossman@company.com", "majorlazer@coachella.com", "magicmike@hello.org", "save@animals.net", "bdbrown@optonline.net", "rupak@yahoo.com", "wiseb@me.com", "dogdude@att.net",       "imightb@yahoo.com", "russotto@aol.com", "violinhi@aol.com", "aegreene@mac.com", "shaffei@yahoo.ca", "ngedmond@me.com"]
EMAIL_CHARITY = ["dcoppit@outlook.com", "aprakash@optonline.n,et", "telbij@outlook.com", "mfleming@comcast.net","mhoffman@outlook.com","jbryan@outlook.com","mcraigw@live.com","chunzi@optonline.net", "garyjb@me.com", "chinthaka@live.com", "heidrich@comcast.net", "dhrakar@outlook.com", "sharon@optonline.net", "yxing@live.com"]
CHARITY_NAME = ["Bali Reptiles", "World Wildlife Foundation", "Red Cross", "Habitat for Humanity", "United Way"]
NAME = ["Paul", "Kate", "Ron", "Mike", "Ellen", "Jess", "Frank", "Jarrod", "Diane"]
LAST_NAME = ["Anderson", "Ashwoon", "Aikin", "Bateman", "Bongard", "Bowers", "Boyd", "Cannon", "Cast", "Deitz", "Dewalt", "Ebner", "Frick", "Hancock", "Haworth", "Hesch", "Hoffman", "Kassing", "Knutson", "Lawless", "Lawicki", "Mccord", "McCormack", "Miller", "Myers", "Nugent", "Ortiz", "Orwig", "Ory", "Paiser", "Pak", "Pettigrew", "Quinn", "Quizoz", "Ramachandran", "Resnick", "Sagar", "Schickowski", "Schiebel", "Sellon", "Severson", "Shaffer", "Solberg", "Soloman", "Sonderling", "Soukup", "Soulis", "Stahl", "Sweeney", "Tandy", "Trebil", "Trusela", "Trussel", "Turco", "Uddin", "Uflan", "Ulrich", "Upson", "Vader", "Vail", "Valente", "Van Zandt", "Vanderpoel", "Ventotla", "Vogal", "Wagle", "Wagner", "Wakefield", "Weinstein", "Weiss", "Woo", "Yang", "Yates", "Yocum", "Zeaser", "Zeller", "Ziegler", "Bauer", "Baxster", "Casal", "Cataldi", "Caswell", "Celedon", "Chambers", "Chapman", "Christensen", "Darnell", "Davidson", "Davis", "DeLorenzo", "Dinkins", "Doran", "Dugelman", "Dugan", "Duffman", "Eastman", "Ferro", "Ferry", "Fletcher", "Fietzer", "Hylan", "Hydinger", "Illingsworth", "Ingram", "Irwin", "Jagtap", "Jenson", "Johnson", "Johnsen", "Jones", "Jurgenson", "Kalleg", "Kaskel", "Keller", "Leisinger", "LePage", "Lewis", "Linde", "Lulloff", "Maki", "Martin", "McGinnis", "Mills", "Moody", "Moore", "Napier", "Nelson", "Norquist", "Nuttle", "Olson", "Ostrander", "Reamer", "Reardon", "Reyes", "Rice", "Ripka", "Roberts", "Rogers", "Root", "Sandstrom", "Sawyer", "Schlicht", "Schmitt", "Schwager", "Schutz", "Schuster", "Tapia", "Thompson", "Tiernan", "Tisler"]
BIRTHDATE = ["01/11/1983", "11/13/1984", "05/16/1972", "12/09/1992"]
USER_DESCRIPTION = ["I am a Freelance Writer and Social Media Manager who helps finance professionals and Fin-tech startups build an audience and get more paying clients online", "I am a senior Front End Engineer at Google", "I work in a factory building iPhones in China", "I like long walks on the beach, fine wine, and puppies"]
USER_EXPERIENCE = ["I have worked with HTML, CSS and Javascript for 5 years", "I have worked with Ruby for 3 months", "I have been doing web design on Sketch and Figma for 3 years"]
GITHUB = ["EliteCoder11", "LeWagonMaster", "frontendboss1011", "BaliBound15"]
ADDRESS = ["Avinguda Diagonal, 530, 08006 Barcelona, Spain", "Av de la Hispanidad, s/n, 28042 Madrid, Spain", "Am Köllnischen Park 5, 10179 Berlin, Germany", "Jl. Monkey Forest, Ubud, Kabupaten Gianyar, Bali 80571",
"30/31 Thomson Plaza, Singapore 574408", "123, Jalan Berhala, Brickfields, 50470 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia", "Brickfields, 50470 Kuala Lumpur, Selangor, Malaysia", "Mönchsberg 34, 5020 Salzburg, Austria", "64000 Sepang, Selangor, Malaysia", "1 Jeff Fuqua Blvd, Orlando, FL 32827, USA", "Reichpietschstraße 51, 04317 Leipzig, Germany"]
WEBSITE = ["https://www.charityworld.com", "https://www.animals.com", "https://www.redcross.com", "http://www.help.com"]
CATEGORY = ["Animals", "Community Development", "Education", "Health", "Environment", "Human Rights", "Poverty"]
PROJECT_NAME = ["Charity New Website", "Charity Add Map", "Redesign My Site", "Ruby Work Needed"]
TYPE = ["New", "Update", "Rebuild"]
PROGRAMMING_LANGUAGE = ["C", "C++", "C#", "Clojure", "CoffeeScript", "CSS", "Go", "Haskell", "Java", "JavaScript", "Lua", "Matlab", "Objective-C", "Peral", "PHP", "Python", "R", "Ruby", "Scala", "Shell", "Swift", "TeX", "Vim script"]

puts "destroying posts"
Post.destroy_all
puts "destroying dev_skills"
DeveloperSkill.destroy_all
puts "destroying project_skills"
ProjectSkill.destroy_all
puts "destroying skills"
Skill.destroy_all
puts "destroying member"
Member.destroy_all
puts "destroying proposal"
Proposal.destroy_all
puts "destroying developer"
Developer.destroy_all
puts "destroying project"
Project.destroy_all
puts "destroying charity"
Charity.destroy_all



  puts "creating new charity"

# https://www.fnpf.org/ rebuild
url =  "https://kitabisa-userupload-01.s3-ap-southeast-1.amazonaws.com/_production/partner/54/34_54_1450245418_309151748_f.jpg"
charity = Charity.new(
    email: "info@fnpf.org",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "Friends of the National Parks Foundation",
    address: "Gianyar Bali Indonesia 80552",
    website: "https://www.fnpf.org/",
    description: "We started our organization in 1997 when we were running the orangutan rehab and rescue center for the Indonesian Government in Tanjung Puting National Park, in Kalimantan on the island of Borneo. So the name sounded right at the time.
We didn’t imagine that we would still be running the organization 14 years later, and that we would have multiple projects, some of which are outside of national parks. So for this reason, and because it more appropriately describes our holistic approach of combining wildlife, habitat and community programs we are also known as “Friends of Nature and its People Foundation“.",
    category: "Animals",
  )
charity.remote_logo_url = url

charity.save

# https://www.eastbalipovertyproject.org/ improve
url = "https://www.eastbalipovertyproject.org/wp-content/themes/EBPP_wp/library/images/logo@2x.png"

charity = Charity.new(
    email: "info@eastbalipovertyproject.org",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: " East Bali Poverty Project",
    address: "East Bali Poverty Project PO BOX 3850 Denpasar Bali – Indonesia",
    website: "https://www.eastbalipovertyproject.org/",
    description: "The East Bali Poverty Project (EBPP) is a non-profit organisation established in 1998 by a British resident of Bali after an appeal for help by an isolated 7,200Ha mountain village, forgotten by time and progress. Participatory community surveys in 1998 with 1,056 of the 3,000 families in the 19 sub-villages revealed thousands of people living in abject poverty without water, sanitation, roads, schools, health facilities and electricity. Illiteracy was approaching 100%. Malnutrition and iodine deficiency disorders (IDD) were endemic – iodine being the essential nutrient for healthy child births, brain and body development.",
    category: "Poverty",
  )
charity.remote_logo_url = url

charity.save

# http://en.mitrabali.com/
url = "https://pbs.twimg.com/profile_images/2533998284/Mitra_Bali_Logo_SQR.jpg"
charity = Charity.new(
    email: "marketing@mitrabali.com",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "Mitra Bali ",
    address: "Jl. Gunung Abang, Br. Lod Sema, Ds. Lod Tunduh, Ubud – 80571, Gianyar, Bali – Indonesia",
    website: "http://en.mitrabali.com/",
    description: "Since 1993, Mitra Bali has been actively participating in Bali’s economic and social development by working to empower a large group of handicraft producers. One of Bali’s great sources of potential are the skilled hands its citizens that new bountiful quantities of crafts and souvenirs for the tourists, who traverse the rich and beautiful soil of this island. World-renowned male and female craft producers alike contribute greatly to the development of Bali’s tourist industry. The presence and contribution of the tourists, who purchase these products, has lead to a growing number of work opportunities for the brothers and sisters, relatives, families and neighbors in the villages of craft producers, who have suffered from the prolonged crisis in Bali.",
    category: "Community Development",
  )
charity.remote_logo_url = url

charity.save


# http://www.spanglefish.com/adgg/
url = "https://img.freepik.com/free-vector/charity-life-abstract-logo_1043-47.jpg?size=338&ext=jpg"
charity = Charity.new(
    email: "info@adg-africa.org",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "Africa in Democracy and Good Governance (ADG)",
    address: "73, Kombo Sillah Drive (Sonko Jileng Building) Churchill's town P.O. Box 2206, Serekunda The Gambia, West Africa",
    website: "http://www.spanglefish.com/adgg/",
    description: "Africa in Democracy and Good Governance (ADG) was founded to contribute to the growing efforts to promote and inculcate democratic values and principles that will ensure good governance, open society and public participation.",
    category: "Community Development",
  )
charity.remote_logo_url = url

charity.save

# http://www.africaorganics.org/
url = "https://img.freepik.com/free-vector/charity-life-abstract-logo_1043-47.jpg?size=338&ext=jpg"
charity = Charity.new(
    email: "  director@africaorganics.org",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "Africa Organics",
    address: "Box 3523 Serekunda Pipeline The Gambia West Africa",
    website: "http://www.africaorganics.org/",
    description: "This charity has been set up to help provide sustainable organic food, farming and employment to rural villages in Africa.",
    category: "Health",
  )
charity.remote_logo_url = url

charity.save

# https://sites.google.com/site/raidgambia/
url =  "https://sites.google.com/site/raidgambia/_/rsrc/1472875916306/config/customLogo.gif?revision=6"
charity = Charity.new(
    email: "raidgambia86@hotmail.com",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "RAID The Gambia",
    address: "KEREWAN TOWN NORHT BANK REGION P.O. Box 716, Banjul Gambia",
    website: "https://sites.google.com/site/raidgambia/",
    description: "“RAID The Gambia” what is it?  RAID The Gambia is a registered national None Governmental Organization (NGO) established in the Gambia in 1993. The acronyms “RAID” is from a French language that reads Réseau Africain d’Iformation –Actions sur Jes Drogues. This when translated into English means: RAID -The Gambia is a sister organizations to similar organizations in Africa that speech French, Portuguese and English. RAID is a member to many regional and global networks/ bodies that fights against illicit drug and substances abuse.",
    category: "Health",
  )
charity.remote_logo_url = url

charity.save
# http://nsagm.weebly.com/avisu.html
url = "http://www.gambia-ec.gm/wp-content/uploads/2017/01/EU-supports-the-work-of-NSAs-in-The-Gambia-650x300.jpg"
charity = Charity.new(
    email: "avisugm@yahoo.com",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "The Agency for Village Support",
    address: "Kaur Wharftown Kaur Central River Region P.O. BOX 3170, Serekunda The Gambia ",
    website: "http://nsagm.weebly.com/avisu.html",
    description: "The Agency for Village Support was established in 2006 after the closure of Village Aid, The Gambia. AVISU is the only local national Non-Governmental Organisation (NGO) based and operating in the Central River Region (CRR). The agency is located in Kaur Wharftown, about 150km from Banjul; the capital. AVISU has a Board of directors and general membership of registered groups. The Agency works in partnership with communities through Village Development Committees, NGO’s such as Concern Universal and other interested parties to eradicate poverty.",
    category: "Poverty",
  )
charity.remote_logo_url = url
charity.save

# http://www.asset-gambia.com/
url =  "https://img.freepik.com/free-vector/charity-life-abstract-logo_1043-47.jpg?size=338&ext=jpg"
charity = Charity.new(
    email: " info@asset-gambia.com",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "The Association of Small Scale Enterprises in Tourism (ASSET) ",
    address: "Off Garba Jahumpa Rd. P.O.Box 4587 Bakau, The Gambia, West Africa ",
    website: "http://www.asset-gambia.com/",
    description: "The Association of Small Scale Enterprises in Tourism (ASSET) was established in April 2000 in order to bring together, advocate for, and promote a large number of small enterprises that were active in the tourism industry in The Gambia.",
    category: "Community Development",
  )
charity.remote_logo_url = url

charity.save

# https://www.asb-gambia.info/



# http://www.alabamapugrescue.org/
url =  "http://www.alabamapugrescue.org/images/PugBanner.gif"
charity = Charity.new(
    email: "pugsrescued@aol.com",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "Alabama Pug Rescue and Adoption, Inc.",
    address: "alabama USA",
    website: "http://www.alabamapugrescue.org/",
    description: "Many of you are aware that APRA closed for intake earlier this year due to the lack of approved foster and adoptive homes. We are committed to those dogs that are currently in our foster homes and will be for the life of the dogs. We will raise funds for their care accordingly and we will do all we can to provide assistance for those pugs and pug pals without rehoming or referral options on different levels as resources allow. ",
    category: "Animal",
  )
charity.remote_logo_url = url

charity.save

# http://www.animalrescuemobile.org/
url =  "https://pbs.twimg.com/profile_images/847960903/ARF-Logo-2x2.jpg"
charity = Charity.new(
    email: "Info@AnimalRescueMobile.org",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "Animal Rescue Foundation",
    address: "6140 Rangeline Rd. Theodore, AL 36582 USA",
    website: "http://www.animalrescuemobile.org/",
    description: "Animal Rescue Foundation is a non-profit organization founded in December 1995 and dedicated to promoting the welfare and humane treatment of animals; through rescue, fostering and placement. Adoptable cats and dogs awaiting a permanent, loving, family are placed in our foster center, hence its name - the ARFanage.",
    category: "Animal",
  )
charity.remote_logo_url = url

charity.save
# https://www.arkinc.org/
url =  "https://static.wixstatic.com/media/ae4c5a_a083093f3e364a389c3a243973c41596~mv2_d_2156_1476_s_2.jpg/v1/crop/x_268,y_0,w_1620,h_1476/fill/w_104,h_93,al_c,q_80,usm_0.66_1.00_0.01/ae4c5a_a083093f3e364a389c3a243973c41596~mv2_d_2156_1476_s_2.webp"
charity = Charity.new(
    email: "Info@AnimalRescueMobile.org",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: " The Ark (A no-kill animal shelter)",
    address: "The Ark Inc. 139 Bo Cole Road Huntsville, AL 35806 USA",
    website: "https://www.arkinc.org/",
    description: "The Ark was incorporated as a non-profit, “no kill” animal shelter on March 6, 1990 by Nina Beal.
The Ark’s mission statement is...
To rescue as many homeless animals as possible.
To provide all veterinary care for each animal to include spaying/neutering before adoption.
To maintain a no kill policy except for reasons of mercy or dangerous temperament.
To promote humane treatment of animals through a humane education program.
The Ark provides all veterinarian preventatives to include: juvenile spay/neuter, shelter,
food and a loving “at home” environment for rescued animals while they wait to be adopted into a new loving home.",
    category: "Animal",
  )
charity.save
puts "creating new developer"
(1..5).to_a.each do |number|
developer = Developer.new(
  first_name: NAME.sample,
  last_name: LAST_NAME.sample,
  email: Faker::Internet.email,
  password: 'topsecret',
  password_confirmation: 'topsecret',
  birth_date: BIRTHDATE.sample,
  description: USER_DESCRIPTION.sample,
  experience: USER_EXPERIENCE.sample,
  github_username: GITHUB.sample,
  address: ADDRESS.sample,
  avatar: "https://avatars3.githubusercontent.com/u/19302598?s=460&v=4"
  )
  developer.save!
  # charity = Charity.new(
  #   email: Faker::Internet.email,
  #   password: 'topsecret',
  #   password_confirmation: 'topsecret',
  #   name: CHARITY_NAME.sample,
  #   address: ADDRESS.sample,
  #   website: WEBSITE.sample,
  #   description: "Helping those in need",
  #   category: CATEGORY.sample,
  #   logo: "https://img.freepik.com/free-vector/charity-life-abstract-logo_1043-47.jpg?size=338&ext=jpg"
  # )
  # charity.save!
  puts "creating new project"
  project = Project.new(
    name: PROJECT_NAME.sample,
    charity: Charity.all.sample,
    github: GITHUB.sample,
    work_type: TYPE.sample,
    status: "In Progress",
    deadline: Date.today+30.day
  )
    project.save!
    puts "creating new members"
    3.times do
    member = Member.new(
      developer: Developer.all.sample,
      project: Project.all.sample,
    )
    member.save!
    end
    puts "creating new proposal"
    proposal = Proposal.new(
      developer: Developer.all.sample,
      project: Project.all.sample,
      state: "pending"
    )
    proposal.save!
end

puts "creating new languages"
PROGRAMMING_LANGUAGE.each do |language|
  skill = Skill.new(name: language)
  skill.save!
end

puts "creating new dev skills"
5.times do
  Developer.all.each do |developer|
    dev_skills = DeveloperSkill.new(
      developer: developer,
      skill: Skill.all.sample
      )
    dev_skills.save!
  end
end

puts "creating new project skills"
5.times do
Project.all.each do |project|
  project_skills = ProjectSkill.new(
    project: project,
    skill: Skill.all.sample
    )
  project_skills.save!
  end
end


puts 'Finished!'







