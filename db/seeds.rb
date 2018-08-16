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
PROGRAMMING_LANGUAGE = ["angularjs", "backbonejs", "bootstrap", "c", "csharp", "css3", "django", "drupal", "git", "gitlab", "heroku", "html5", "java", "javascript", "jquery", "linux", "meteor", "mongodb", "mysql", "nodejs", "php", "python", "rails", "react", "ruby", "swift", "typescript", "vim", "vuejs", "webpack", "wordpress"]

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

  url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534394628/fnpf.png"
  project = Project.new(
    name: "Adding Animal Pictures To Our Site",
    charity: Charity.last,
    github: "orangutanlover1011",
    work_type: "Update",
    status: "In Progress",
    deadline: Date.today+14.day,
    details: "I want to be able to add a featured image of each of our animals. We recetly got some new orangutans and want to give each of them a good looking profile page. We also want the site to look good on mobile devices and have a nice color scheme."
  )
  project.remote_photo_url = url
  project.save!

  #balireptiles
  url =  "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534395445/bali-reptiles.jpg"
charity = Charity.new(
    email: "admin@balireptiles.com",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "Bali Reptile Rescue",
    address: "Jl. Pura Batu Mejan, Gg. Munduk Catu No. 32, Kerobokan, Kuta Utara, Canggu, Kuta Utara, Kabupaten Badung, Bali 80361, Indonesia",
    website: "http://breptile-rescue.blogspot.com/",
    description: "Bali Reptile Rescue is a small but dedicated group of volunteers who specialise in three main things with reptiles. For far too long reptiles in Indonesia have been seen as only good for either food or fashion articles like shoes and handbags It is only recently that conservation and environmental awareness has forced people to begin to understand the huge role reptiles play in Indonesian ecology.

      Indonesia has been blessed with some of the worlds most magnificent animals and our group wants to help preserve as many of these as we can before they disappear forever. We can come to your home or workplace and safely remove any reptiles that are causing you concern, and treat and rehabilitate injured reptiles.",
    category: "Animals",
  )
charity.remote_logo_url = url

charity.save

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534399647/bali-reptile.png"
  project = Project.new(
    name: "Need To Redesign Our Reptile Rescue Website",
    charity: Charity.last,
    github: "bali_reptiles",
    work_type: "Rebuild",
    status: "In Progress",
    deadline: Date.today+21.day,
    details: "I need help to make my website look better. I love saving Bali Reptiles but unfortuanately I do not know how to build websites. This site needs work on the front end and also on the back end functionality. Please also include nice images of reptiles. I really like reptiles."
  )
  project.remote_photo_url = url
  project.save!

  # http://www.africaorganics.org/
url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400455/organics-logo.png"
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

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400067/organics.png"
  project = Project.new(
    name: "Need A New Website For African Food Project",
    charity: Charity.last,
    github: "africaorganics",
    work_type: "New",
    status: "In Progress",
    deadline: Date.today+32.day,
    details: "I would like someone to help me create a new website. Our orignial website no longer works and we are hoping to change the design. We would also like some special functions like animations and a contact form."
  )
  project.remote_photo_url = url
  project.save!

  # http://www.alabamapugrescue.org/
url =  "http://www.alabamapugrescue.org/images/PugBanner.gif"
charity = Charity.new(
    email: "pugsrescued@aol.com",
    password: 'topsecret',
    password_confirmation: 'topsecret',
    name: "Alabama Pug Rescue and Adoption, Inc.",
    address: "Alabama, United States",
    website: "http://www.alabamapugrescue.org/",
    description: "Many of you are aware that APRA closed for intake earlier this year due to the lack of approved foster and adoptive homes. We are committed to those dogs that are currently in our foster homes and will be for the life of the dogs. We will raise funds for their care accordingly and we will do all we can to provide assistance for those pugs and pug pals without rehoming or referral options on different levels as resources allow. ",
    category: "Animals",
  )
charity.remote_logo_url = url

charity.save

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400067/organics.png"
  project = Project.new(
    name: "Program for Pugs!",
    charity: Charity.last,
    github: "puglover",
    work_type: "Rebuild",
    status: "In Progress",
    deadline: Date.today+34.day,
    details: "Pug lovers needs your help! We love pugs but we don't love web design. We think it's best to do completely rebuild our site, though we want to keep our images and colors. We do need many new pages, including a blog, email subscription, and Pug of the Month calendar!"
  )
  project.remote_photo_url = url
  project.save!


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

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400067/organics.png"
  project = Project.new(
    name: "Add a Map to Poverty Project",
    charity: Charity.last,
    github: "balipoverty",
    work_type: "Update",
    status: "In Progress",
    deadline: Date.today+13.day,
    details: "Please add a map with location pins to my website. We want to highlight the local communities we are supporting and show the locations on a map. The map should also work on mobile phones and tablets."
  )
  project.remote_photo_url = url
  project.save!

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

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400067/organics.png"
  project = Project.new(
    name: "Rebuild Our Shopping Page",
    charity: Charity.last,
    github: "mitrabali",
    work_type: "Rebuild",
    status: "In Progress",
    deadline: Date.today+43.day,
    details: "Our company needs a new shopping page. Customers should be able to browse the items for sale, place an order, and receive an email when the order is shipped. We want to accept all major credit cards and have the money deposited directly into our bank account."
  )
  project.remote_photo_url = url
  project.save!


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

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400067/organics.png"
  project = Project.new(
    name: "Brand New Website for ADG",
    charity: Charity.last,
    github: "adg101",
    work_type: "New",
    status: "Pending",
    deadline: Date.today+19.day,
    details: "We are looking for someone to build a brand new website. Please include a home page, a blog, a contact page, and an about page. We would also like a real time chat program if possible."
  )
  project.remote_photo_url = url
  project.save!

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

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400067/organics.png"
  project = Project.new(
    name: "Update Our Email Form",
    charity: Charity.last,
    github: "raid_gambia",
    work_type: "Update",
    status: "In Progress",
    deadline: Date.today+23.day,
    details: "The email form on our website no longer works. It crashes when a user submits a new message and we never receive it. Please fix the email form and also make it look nice."
  )
  project.remote_photo_url = url
  project.save!

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

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400067/organics.png"
  project = Project.new(
    name: "Add Donation Page",
    charity: Charity.last,
    github: "serekunda",
    work_type: "Update",
    status: "In Progress",
    deadline: Date.today+12.day,
    details: "I would like a donation platform page on our site. Users should be able to donate to our cause using any method they want, including bank wire, credit card, or bitcoin. Definitely bitcoin."
  )
  project.remote_photo_url = url
  project.save!


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

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400067/organics.png"
  project = Project.new(
    name: "New Website For ASSET",
    charity: Charity.last,
    github: "asset_tourism",
    work_type: "New",
    status: "In Progress",
    deadline: Date.today+52.day,
    details: "We need a brand new website for our company. Our current website does not work on mobile phones. Please get in touch for more detail."
  )
  project.remote_photo_url = url
  project.save!

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

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400067/organics.png"
  project = Project.new(
    name: "Rebuild Our Puppy Page",
    charity: Charity.last,
    github: "puppies",
    work_type: "Rebuild",
    status: "In Progress",
    deadline: Date.today+28.day,
    details: "Our website was built with Wordpress for the blog, but it is not working well for our puppy page. The images are stretched so all our puppies look fat. Some people like fat puppies, but fat puppies become fat adult dogs which people don't like as much. Please fix the image stretching on the puppy page"
  )
  project.remote_photo_url = url
  project.save!

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
charity.remote_logo_url = url
charity.save

url = "https://res.cloudinary.com/dlqzyuzhd/image/upload/v1534400067/organics.png"
  project = Project.new(
    name: "Need Social Icons",
    charity: Charity.last,
    github: "arkark",
    work_type: "Update",
    status: "In Progress",
    deadline: Date.today+52.day,
    details: "We have recently added social media for our company but we do not know how to add the links to our website. Specifically, we need social links and icons for Twitter, Instagram, SnapChat, Facebook, YouTube, Friendster, MySpace, and some others. Thank you for your help!"
  )
  project.remote_photo_url = url
  project.save!


url = "https://avatars2.githubusercontent.com/u/23458442?s=460&v=4"
developer = Developer.new(
  first_name: "Rui",
  last_name: "Freitas",
  email: "dinnerpartysaboteur@gmail.com",
  password: 'topsecret',
  password_confirmation: 'topsecret',
  birth_date: "1/12/1988",
  description: "I love creating and building products and I am open to participate in new ideas as a developer and/or business side or join the development team of an ongoing project/product. My professional and academic path has been somewhat unorthodox. I have plenty of sales experience and am a creative and proactive sales expert with a keen business sense and focused on innovation and streamlining processes.",
  experience: "As a web developer, I am both involved in the frontend and backend programming. I've worked and managed multicultural sales teams in various sectors and my leadership style is set on three main pillars: participation/empowerment, coaching/training and motivation/inspiration. I am also an accomplished legal translator and digital photographer, and I'm an avid traveller and adventurer with a passion for technology and entrepreneurship.",
  github_username: "rodloboz",
  linkedin_username: "freitasrui",
  address: "Lisbon, Portugal"
  )
  developer.remote_avatar_url = url
  developer.save!

  url = "https://avatars1.githubusercontent.com/u/28883927?s=460&v=4"
developer = Developer.new(
  first_name: "Dirk",
  last_name: "Schuler",
  email: "dscbdv@gmail.com",
  password: 'topsecret',
  password_confirmation: 'topsecret',
  birth_date: "11/12/1985",
  description: "Founder of Le Wagon Bali",
  experience: "Opening the new HQ of FileHippo in London overseeing sales, marketing and product. Building new sales team and strategy leading to 200% increase of direct partnerships. Introduction of several new revenue streams making the company more profitable and less dependent.",
  github_username: "dirkschuler",
  linkedin_username: "dirkschuler",
  address: "Denpasar, Indonesia"
  )
  developer.remote_avatar_url = url
  developer.save!

url = "https://avatars3.githubusercontent.com/u/33505647?s=460&v=4"
developer = Developer.new(
  first_name: "Guido",
  last_name: "Caldara",
  email: "guidocaldara@gmail.com",
  password: 'topsecret',
  password_confirmation: 'topsecret',
  birth_date: "5/12/1988",
  description: "Teacher at Le Wagon",
  experience: "Attended Le Wagon Bali (Batch # 128). 9-week intensive coding bootcamp learning HTML, CSS, Bootstrap, JavaScript ES2015, SQL, git, GitHub, Heroku and Ruby on Rails. Designed, Implemented and Shipped to production a clone of AirBnB and a Rails prototype of run-db.com.",
  github_username: "GuidoCaldara",
  linkedin_username: "guido-caldara-12a83ab1",
  address: "Albino, Lombardy, Italy"
  )
  developer.remote_avatar_url = url
  developer.save!

url = "https://avatars3.githubusercontent.com/u/6523459?s=460&v=4"
developer = Developer.new(
  first_name: "Luca",
  last_name: "Spagnolo",
  email: "spagnolodesign@gmail.com",
  password: 'topsecret',
  password_confirmation: 'topsecret',
  birth_date: "9/12/1993",
  description: "I am looking for a way to use what I know to make a difference in society. I am a full-stack developer with 5+ years professional experience specialising in Agile Web Development. With a principal focus on the user interface, I work primarily in JavaScript and Ruby with extensive knowledge of various frameworks and libraries including React, Node.js, Rails. Other technical proficiencies include DevOps.",
  experience: "My greatest asset is being able to take products from concept stage to MVP (minimum viable product) via the Agile Web Development. I have both agency and freelancing experience ranging from design and development to prototyping, branding, and project management.",
  github_username: "spagnolodesign",
  linkedin_username: "spagnolodesign",
  address: "Milan, Italy"
  )
  developer.remote_avatar_url = url
  developer.save!

  url = "https://avatars1.githubusercontent.com/u/19226636?s=460&v=4"
developer = Developer.new(
  first_name: "Juliette",
  last_name: "Chevalier",
  email: "juliettech.1393@gmail.com",
  password: 'topsecret',
  password_confirmation: 'topsecret',
  birth_date: "8/13/2002",
  description: "Honest, vivid reader, traveler, and extremely curious. Passionate about making the world a better place and optimistic that we can. Special interests include learning languages (programming & human), fighting the impacts of environmental degradation, and the infinite possibilities of technology in making public services more efficient and transparent. Believer in the immense power of empowering others and in words and technology as indispensable tools for global progress.",
  experience: "Assisting on Introduction to Ruby, Object Oriented Programming, Databases, HTML, CSS, JavaScript, Ruby on Rails, Airbnb-clone week and Project modules in Berlin, Tel Aviv, and Bali.",
  github_username: "juliettech13",
  linkedin_username: "juliette-chevalier",
  address: "Berlin, Germany"
  )
  developer.remote_avatar_url = url
  developer.save!

    url = "https://avatars0.githubusercontent.com/u/16646041?s=460&v=4"
developer = Developer.new(
  first_name: "Matthijs",
  last_name: "Kolkmanr",
  email: "matthijskolkman@gmail.com",
  password: 'topsecret',
  password_confirmation: 'topsecret',
  birth_date: "3/13/1992",
  description: "Working as a TA/Teacher internationally to help Le Wagon Bootcamp students learn Ruby on Rails in under 9 weeks. Course exists of learning hard and soft-skills regarding web development, where you can think of writing programs in Ruby, building web pages with HTML and (S)CSS, but also collaborating with a team using Git.",
  experience: "Worked for various companies, ranging from small to large: ABN Amro, Boothurenamsterdam.com, Growth Tribe, Le Wagon, V@Amsterdam and private businesses",
  github_username: "Matonias",
  linkedin_username: "matthijskolkman",
  address: "Amsterdam, Netherlands"
  )
  developer.remote_avatar_url = url
  developer.save!

  url = "https://media.licdn.com/dms/image/C4E03AQFL8aVPo9DncQ/profile-displayphoto-shrink_800_800/0?e=1539820800&v=beta&t=VWK9FzXg9RpGrE3cJpAwefbSY4RCdtRDEqs5oX8a9q8"
developer = Developer.new(
  first_name: "Sonia",
  last_name: "Montero",
  email: "monterosonia@gmail.com",
  password: 'topsecret',
  password_confirmation: 'topsecret',
  birth_date: "9/22/1994",
  description: "Teaching students how to build awesome products in Bali at Le Wagon intensive full stack developer coding bootcamp.",
  experience: "Stack: Ruby, RubyOnRails, JavaScript (Vanilla, JQuery, Ajax), HTML, CSS, Bootstrap, GitHub & Heroku. Soft skills: Design (Sketch), Software Engineering, Web Project Development",
  github_username: "monterosonia",
  linkedin_username: "monterosonia",
  address: "Paris, France"
  )
  developer.remote_avatar_url = url
  developer.save!

# developer = Developer.new(
#   first_name: NAME.sample,
#   last_name: LAST_NAME.sample,
#   email: Faker::Internet.email,
#   password: 'topsecret',
#   password_confirmation: 'topsecret',
#   birth_date: BIRTHDATE.sample,
#   description: USER_DESCRIPTION.sample,
#   experience: USER_EXPERIENCE.sample,
#   github_username: GITHUB.sample,
#   address: ADDRESS.sample,
#   avatar: "https://avatars3.githubusercontent.com/u/19302598?s=460&v=4"
#   )
#   developer.save!





puts "creating new members"
  2.times do
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
