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
  byline: "<b>He’s gonna wreck it! Again!</b>",
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
  category: "movies",
  category2: "games",
  name: "booye" )
  
Article.create!( 
  title:  "<i>Philippe Cousteau Discovers Sharks off Islands Formerly Used for Nuclear Testing</i>",
  byline: "<b>When Philippe Cousteau and his wife Ashlan Gorse set off to explore The Marshall Islands,
            they had no idea what they would find!</b>",
  body: "<p><br> An area once used for nuclear testing during 
            the Cold War, Gorse tells PEOPLE: <i>\"We actually detonated over 60 nuclear bombs around 
            these islands, and we completely destroyed the ecosystem, pretty much any living creature 
            in the area.\"</i> <br> Having heard that sharks had returned and were flourishing in the 
            area despite the devastation, the couple set off to investigate for their Discovery Channel 
            Nuclear Sharks show. <br><i>\"It was just a wonderful thing for the two of us because it was 
            our first real expedition, we were leading it together,\"</i> says Cousteau.</p>",
  image_url: "sharkweek.jpg",
  category: "science",
  name: "david" )
  
Article.create!( 
  title:  "<i>How To Find The Story Mode In Street Fighter 5; Patch 1.04 Is Now Live</i>",
  byline: "<b>Unlike other free content, the story mode in Street Fighter 5 is not included
              automatically in update patch 1.04. Here is a few tips for those that are 
              wondering where it is.</b>",
  body: "<p>The SFV Server Twitter page announced: \“You can find the SFV \“General Story\”
            DLC in the \“New Add-On > All\” section of the PSN store. You need the DLC and 
            1.04 patch to play. Thanks\”
            <br>
            Before you find the story mode, you have to install update patch 1.04 which is 
            available now. The update is quite large as the story mode is close to 8GB in size.
            If you have slow internet, it’s best to download it while you are sleeping or 
            at work/school. That way, you can wake up or come back home with everything installed.
            <br>
            Aside from the story mode, the likes of Balrog and Ibuki are now available for 
            purchase on the game’s store. Several other new characters are playable in the Story
            mode, but they won’t be available fully until later this year.
            <br>
            The SFV Server page also tweeted this about costumes: \“[CAUTION] When purchasing 
            Balrog\’s \“Battle Costume\” on PSN it shows an image of his \“Story Costume\” and vice 
            versa. Sorry for the mix up.\” Make note of this if you are going to buy his costumes
            in Street Fighter 5 today.</p>",
  image_url: "street_fighter.jpg",
  category: "games",
  name: "david" )  
  
Article.create!( 
  title:  "<i>Overwatch: Score with a basketball and confetti shoots out of the hoop, thanks to recent patch</i>",
  byline: "<b>Overwatch and basketball... What?!?!?</b>",
  body: "<p>There\’s a moment in the pre-game section of Overwatch on certain maps in certain game types
            that puts players on a ship with access to a few basketballs and a hoop. Since the beta, 
            folks have been punching and shooting these balls randomly, sometimes with the success of 
            actually scoring.
            <br>
            Previously, nothing happened when the ball went through the hoop. Some folks would capture
            the glory, share online and move on. Now? The latest Overwatch patch quietly added confetti 
            and an airhorn to making a basket.
            <br>
            The video at the head of this post comes from a recent stream by AnneMunition, a broadcaster 
            highlighted by Blizzard for her play. Excuse the language.</p>",
  image_url: "overwatch.jpg",
  category: "games",
  name: "booye" )
  
Article.create!( 
  title:  "<i>Great white shark tagged with camera to unveil mysterious winter behavior</i>",
  byline: "<b>Great white shark + camera = awesome!!</b>",
  body: "<p>No one knows what great white sharks do in deep, deserted part of the Pacific Ocean
            during winters. To find out the same, some researchers tagged sharks with camera
            that can record a 10 hour long video.
            <br>
            The great white sharks often found roaming and feeding along the coastline from 
            Central to Baja California go into great depth, about 3000–5000 meters deep into 
            the Pacific Ocean. It takes them 30 to 40 days to reach a point approximately halfway 
            between Mexico and Hawaii. They stay at this point from about April to July. This
            is an area smaller than Panama.
            <br>
            From that point, they start diving up to 200 meters, repeatedly, up to 150 times 
            a day, when males arrive. The sharks are as massive as 22 feet. However, this is 
            not known what exactly they do deep down there. Salvador Jorgensen, a scientist 
            with the Monterey Bay Aquarium, was one of several researchers to first identify 
            this mysterious region in 2009. Since then, he started calling the area 
            \‘white shark café\’ as he assumes that sharks probably travel to this point for
            something to eat.</p>",
  image_url: "greatWhiteShark.jpg",
  category: "science",
  name: "david" )

Article.create!( 
  title:  "<i>Jimmy Buffett vs. Kenny Chesney: Who is the country/island king?</i>",
  byline: "<b>Margaritaville  V. No Shoes, No Shirt, No Problem</b>",
  body: "<p>Jimmy Buffett and Kenny Chesney: One is a wildly successful Southern-born 
            singer who made a fortune dipping his toes in the currents between modern 
            country and island music, and the other is… well, you see where we’re going
            with this. Together, the sun-splashed road warriors are responsible for
            basically every radio-country song that mentions sand, which is now something 
            like 83% of them. To the uninitiated wandering around lawns filled with coolers 
            and people in coconut bras who shouldn’t be in coconut bras (YOU GUYS KNOW WHO YOU ARE),
            it may seem like they’re cut from the same cloth. But there are subtle differences.
            <br>
            Both will make a return to the Klipsch Music Center in the next few weeks, after
            years of Chesney rolling into Lucas Oil Stadium and Buffett taking a rare
            summer off last year. (Sounds like there are more of those to come — Buffett 
            told the Houston Chronicle he’d be dialing back his touring after this year. The 
            man doesn’t exactly scream \“I need retirement,\” but he’ll be 70 on Christmas Day.)
            So in advance of their June 23 and 30 shows this year, a quick island map to their 
            similarities and differences: </p>",
  image_url: "jimmyKenny.jpg",
  category: "music",
  name: "david" )

Article.create!( 
  title:  "<i>\'Dory\' three-peats at No. 1 with $50.2M for four-day weekend</i>",
  byline: "<b>Is PIXAR back on top???</b>",
  body: "<p>Finding Dory continued to make fireworks for the Fourth of July weekend.
         <br> 
         Disney and Pixar\’s buoyant animated sequel paddled to the top of the box 
         office for a third straight week, clinching No. 1 with $50.2 million for the 
         four-day holiday weekend and a whopping $380.5 million to date in the USA, 
         according to studio estimates from tracking firm comScore.
         <br>
         The well-reviewed follow-up, which brings back Ellen DeGeneres as forgetful 
         regal blue tang fish Dory, has now amassed $538.2 million globally. It has 
         already outpaced its predecessor Finding Nemo, which reeled in $191.5 million
         its first three weeks in 2003 on its way to $339.7 million total. Dory is now 
         the second highest-grossing film of the year so far (just behind 
         Captain America: Civil War, which muscled to $405.6 million).</p>",
  image_url: "dory.jpg",
  category: "movies",
  name: "booye" )

User.delete_all
User.create!(
  name:                  "admin_david",
  password:              "macy",
  password_confirmation: "macy" )
  
User.create!(
  name:                  "admin_booye",
  password:              "ico",
  password_confirmation: "ico" )

