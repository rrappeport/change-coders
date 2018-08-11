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
ADDRESS = ["Avinguda Diagonal, 530, 08006 Barcelona, Spain", "Paseo del General Martínez Campos, 37, 28010 Madrid, Spain", "Am Köllnischen Park 5, 10179 Berlin, Germany", "Am Köllnischen Park 5, 10179 Berlin, Germany", "Am Köllnischen Park 5, 10179 Berlin, Germany", "184 Rue du Château-des-Rentiers, 75013 Paris, France",
"Jalan Simongan No.129, Bongsari, Semarang Barat, Bongsari, Semarang Bar., Kota Semarang, Jawa Tengah 50148", "14 Tai Gin Rd, Singapore 327873", "03, 301 Upper Thomson Rd, 30/31 Thomson Plaza, Singapore 574408", "123, Jalan Berhala, Brickfields, 50470 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia", "Brickfields, 50470 Kuala Lumpur, Selangor, Malaysia", "Mönchsberg 34, 5020 Salzburg, Austria", "Havlíčkovy sady, 120 00 Praha 2, Czechia", "Albert-Schweitzer-Straße 2, 04317 Leipzig, Germany", "Reichpietschstraße 51, 04317 Leipzig, Germany"]
WEBSITE = ["https://www.charityworld.com", "https://www.animals.com", "https://www.redcross.com", "http://www.help.com"]
CATEGORY = ["Animals", "Community Development", "Education", "Health", "Environment", "Human Rights"]
PROJECT_NAME = ["Charity New Website", "Charity Add Map", "Redesign My Site", "Ruby Work Needed"]
TYPE = ["New", "Update", "Rebuild"]
PROGRAMMING_LANGUAGE = ["C", "C++", "C#", "Clojure", "CoffeeScript", "CSS", "Go", "Haskell", "Java", "JavaScript", "Lua", "Matlab", "Objective-C", "Peral", "PHP", "Python", "R", "Ruby", "Scala", "Shell", "Swift", "TeX", "Vim script"]
Developer.destroy_all
Charity.destroy_all
Member.destroy_all
Project.destroy_all
Proposal.destroy_all
DeveloperSkill.destroy_all
ProjectSkill.destroy_all
Skill.destroy_all

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

    charity = Charity.new(
      email: Faker::Internet.email,
      password: 'topsecret',
      password_confirmation: 'topsecret',
      name: CHARITY_NAME.sample,
      address: ADDRESS.sample,
      website: WEBSITE.sample,
      description: "Helping those in need",
      category: CATEGORY.sample,
      logo: "https://img.freepik.com/free-vector/charity-life-abstract-logo_1043-47.jpg?size=338&ext=jpg"
    )
    charity.save!

      project = Project.new(
        name: PROJECT_NAME.sample,
        charity: Charity.all.sample,
        github: GITHUB.sample,
        work_type: TYPE.sample,
        status: "In Progress",
        deadline: Date.today+30.day
      )
        project.save!

        3.times do
        member = Member.new(
          developer: Developer.all.sample,
          project: Project.all.sample,
        )
        member.save!
        end
          proposal = Proposal.new(
            developer: Developer.all.sample,
            project: Project.all.sample,
            state: "pending"
          )
          proposal.save!
end

PROGRAMMING_LANGUAGE.each do |language|
  skill = Skill.new(name: language)
  skill.save!
end

5.times do
  Developer.all.each do |developer|
    dev_skills = DeveloperSkill.new(
      developer: developer,
      skill: Skill.all.sample
      )
    dev_skills.save!
  end
end

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




