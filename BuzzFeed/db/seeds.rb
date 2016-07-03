# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all
Article.create!( 
  title:  "<i>Wreck-It Ralph 2 officially announced at Disney</i>",
  byline: "<p><b>He’s gonna wreck it! Again!</b>",
  body: "<p>
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
  category:  "movies",
  name: "<p>booye" )
  
Article.create!( 
  title:  "<i>Philippe Cousteau Discovers Sharks off Islands Formerly Used for Nuclear Testing</i>",
  byline: "<p><b>When Philippe Cousteau and his wife Ashlan Gorse set off to explore The Marshall Islands,
            they had no idea what they would find!</b>",
  body: "<p><br> An area once used for nuclear testing during 
            the Cold War, Gorse tells PEOPLE: <i>\"We actually detonated over 60 nuclear bombs around 
            these islands, and we completely destroyed the ecosystem, pretty much any living creature 
            in the area.\"</i> <br> Having heard that sharks had returned and were flourishing in the 
            area despite the devastation, the couple set off to investigate for their Discovery Channel 
            Nuclear Sharks show. <br><i>\"It was just a wonderful thing for the two of us because it was 
            our first real expedition, we were leading it together,\"</i> says Cousteau.</p>",
  image_url: "sharkweek.jpg",
  category:  "science",
  name: "<p>david" )