# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all
Article.create!( 
  title: "<i>Wreck-It Ralph 2 officially announced at Disney</i>",
  body: "<p><b>He’s gonna wreck it! Again!</b> <br>
         Disney announced Thursday that a sequel to its 2012 film Wreck-It Ralph is officially in
         development over at the studio’s animation arm, slated for release on March 9, 2018.
         The sequel was unofficially announced earlier this spring by star John C. Reilly, who 
         voices the titular not-so-bad bad guy. <br>
         In Wreck-It Ralph 2, Reilly will once more return to voice video game villain Wreck-It 
         Ralph, who in the first film had to reconcile his archetype of arcade boss with his 
         real desire to become a hero. Concept art released during the announcement on
         Facebook Live shows Ralph going digital, standing with sidekick Vanellope over 
         billboards parodying Google and Amazon.</p>",
  image_url: "wreck-it-ralph.jpg",
  id: 1 )