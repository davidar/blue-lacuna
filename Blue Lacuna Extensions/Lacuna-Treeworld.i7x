Lacuna-Treeworld by Blue Lacuna begins here.

Use authorial modesty.

Test trees with "ff / ff / ff / ff / ff / ff / ff / ff / ff / ff / ff / ff / ff / ff".

nlt_bit is a number that varies. nlt_bit is 0.   

To notice language translation: [ The first time we see someone talk on either world, we'll notice that the language is being translated by the host body. ]
	if nlt_bit is 0 begin; 
		now nlt_bit is 1;    
		say "Strange. You notice that the sounds [the random other person in the location] makes are actually incomprehensible; [hisher] lips do not make the movements you'd expect them to; and yet you can understand, perfectly.";
	end if.      
	  
skeletons_bit is a number that varies. skeletons_bit is 0.         


Plateau is a region. Plateau is in Treeworld. Overlook is a room in Plateau. 

A Lacunite is a kind of person. The description of a Lacunite is usually "Dressed in a flowing red robe that trails along the ground; not quite human, but close enough that it doesn't bother you.". Instead of attacking a Lacunite: say "You savagely attack [the random other Lacunite in the location], who reels back in astonishment. [CHeShe] turns and flees."; remove the random other Lacunite in the location from play; increase the rap sheet of Lacunite-Follower by 3.

Check hugging a Lacunite: say "[The noun] watches you in bemusement as you do so. 'We are as real as you,' [heshe] says, 'not biologically identical, but of remarkably similar physical and even genetic structure.'" instead.

Check vague discussing when location is regionally in Treeworld: say "You are having a hard enough time keeping up with the conversation as it is." instead.

Check getting bored when location is regionally in Treeworld: post-conversation processing; do nothing instead.

A robe is a kind of thing. A robe is worn by every Lacunite. The description is "The robe is fashioned from something thin with the texture of felt. A deep, rich red, it is wrapped simply around the body and trails on the ground behind."

Lacunite-Follower is a person in Overlook [This is the body the player will inhabit while here]. Lacunite-Follower wears a robe. Lacunite-Follower is either identified or unidentified. Lacunite-Follower is unidentified. [Shows whether marked so treeworld people recognize him as the visitor.] 

Visiting Treeworld is a recurring scene. Visiting Treeworld begins when the mind machinery is projecting and the machinery-password exactly matches the text tree-password and Visiting Treeworld is not happening. 

When Visiting Treeworld begins:
	if the player is male, now Lacunite-Follower is male; [ Since we want both worlds to be presented on an even playing field, and to avoid false gender-based assumptions about either Forest or City, we choose to give both bodies the same gender as the player. ]
	otherwise now Lacunite-Follower is female;
	move Lacunite-Follower to Overlook;
	change the player to Lacunite-Follower;
	now yourself is asleep; [helps out various rules.]
	now the time of day is 7:00 PM;
	now the time factor is 0;
	try looking.

Visiting Treeworld ends nominally when the player is yourself. Visiting Treeworld ends successfully when gp_outtro is spoken and the player is yourself.

When Visiting Treeworld ends:
	if rap sheet of Lacunite-Follower < 5, move Lacunite-Follower to a random room in Treeworld;
	unless Visiting Rebelworld ended successfully, set up the endgame storm.
. [The character continues to go about its business.]

[When Visiting Treeworld ends successfully:
	now Ditching The Trees is met.]

When Visiting Treeworld ends successfully:
	if Visiting Rebelworld ended successfully, set up the endgame afterstorm. 

Check sleeping when the player is regionally in Treeworld (this is the close eyes to leave Treeworld rule):
	say "You close your eyes deliberately for a long moment, but feel no change. But when you open them--";
	now yourself is awake; 
	change the player to yourself;
	print a section break;
	say "[bold type][location][roman type][line break][description of location]". [We do this instead of looking because we want to show the description of the area, not the chair controls, to emphasize we've returned to Lacuna.]

Carry out landmark-listing when location is regionally in Treeworld: say "This place is so different and strange, it's hard to get your bearings."

[Reflecting Pool, Outside the Dome, Among the Huts, Nursery, Ancient Temple, and Base of the Great Tree are landmarked.  The landmark name of Reflecting Pool is "the reflecting [d]pool[x]". The landmark name of Outside the Dome is "the [d]map[x] room". Understand "map" as Outside the Dome. The landmark name of Among the Huts is "the maker [d]village[x]". Understand "village" as Among the Huts. The landmark name of Nursery is "the thinker [d]nursery[x]". The landmark name of Ancient Temple is "the [d]temple[x] circle". The landmark name of Base of the Great Tree is "[d]base[x] of the Philosopher".

Carry out landmark-listing when location is regionally in Treeworld:
	say "The landmarks you can go to are: ";
	repeat with locale running through visited landmarked rooms regionally in Treeworld begin;
		say "[line break]  ";
		if the landmark name of locale is not "null", say the landmark name of locale; otherwise say locale;
	end repeat.]


Chapter - Definitions

Test treeworld with "ff / ff / ff / tp observatory exterior / knock thrice / clap / sit / bypass calib / touch key / d7shejskdf / touch globe".



Chapter - Lacunites

A Lacunite-gardener is a kind of Lacunite. The indefinite article of a Lacunite-gardener is usually "the". Understand "planter" as a Lacunite-gardener. Reflecting Pool is a room. Avenue North is a room. Avenue South is a room.

The worker1 is a Lacunite-gardener in Reflecting Pool with printed name "red-robed woman". Worker1 is female. Understand "woman" or "local" as Worker1. "A young [o]woman[x] kneels [if location is Reflecting Pool]near the pool's edge, tending the flowers that grow there[else]here, tending the flowers[end if].". The description is "[if we have not examined Worker1]As you look closer, it becomes apparent that she is not a woman, exactly: at least, not a human woman. The eyes are a little too large, the skin mottled in a strange way. When she is not moving she holds herself so still to be almost statue-like. [end if][if we have not examined Worker1 and skeletons_bit is 0]Then, suddenly, it hits you: this woman is a living, breathing version of the ancient skeletons you saw in the Egg ship on Lacuna. [otherwise if we have not examined Worker1]Another from that race whose skeletons moulder in the egg ship on Lacuna. [end if]She wears long robes, intricately stitched and trailing along the ground behind her, and long white braids descend from either side of her face, though she does not look old." 

The worker2 is a Lacunite-gardener in Avenue South with printed name "lanky teenager". "A tall, lanky teenaged boy is carefully clipping back the grass here." Understand "tall" or "lanky" or "teenaged" or "teenager" or "teen" or "boy" as Worker2.

The worker3 is a Lacunite-gardener in Avenue North with printed name "balding man". "A balding man kneels here, tending the flowers." Understand "balding" or "man" as Worker3.

Every Lacunite-gardener has a number called counter. The counter of a Lacunite-gardener is usually 1. [This keeps track of how long each gardener spends working in one room.]

Every turn when the player is in Treeworld and stranger_counter <= 0 (this is the process Lacunite movement rule):
	repeat with processee running through idle on-stage Lacunite-gardeners:
		increase counter of processee by 1;
		if counter of processee > 10 and ( a random chance of 1 in 7 succeeds or counter of processee > 30 ) :
			let L-target be Fork;
			let loopcounter be 0;
			while L-target is not in Plateau or an other Lacunite is enclosed by L-target:
				increase loopcounter by 1;
				now L-target is a random room adjacent to processee;
				if loopcounter > 10, stop;
			let way be up;
			[Avoid slowdowns from pathfinding]
			if L-target is mapped north of location of processee, now way is north;
			if L-target is mapped northeast of location of processee, now way is northeast;
			if L-target is mapped east of location of processee, now way is east;
			if L-target is mapped southeast of location of processee, now way is southeast;
			if L-target is mapped south of location of processee, now way is south;
			if L-target is mapped southwest of location of processee, now way is southwest;
			if L-target is mapped west of location of processee, now way is west;
			if L-target is mapped northwest of location of processee, now way is northwest;
			if way is up, stop;
			if location of Lacunite-Follower is location of processee, say "[The processee] finishes one last bit of gardening and [one of]smiles in satisfaction[or]pats the ground happily[or]leans back to study [hisher] work critically[at random]. Then, [heshe] gets to [hisher] feet, and walks off towards [the room way from location of processee].";
			if location of Lacunite-Follower is L-target, say "[The processee] arrives from [the location of processee], kneels next to [one of]a bed of flowers[or]a piece of greenery[or]some mossy brickwork[at random], pulls out a spade, and begins to tend it.";
			try processee trying going way;
			now counter of processee is 0.

Report a Lacunite-gardener going a direction: do nothing instead. 

Chapter - Views and Backdrop

Avenue South is a room.

The distant Philosopher is a backdrop. Understand "tree/tree9/gigantic/windsigh/withered/huge" as the distant Philosopher. The printed name is "[if Treeworld-Hivemind is named]Philosopher[otherwise]huge windsigh at the top of the ridge[end if]". The distant Philosopher is in Top of Spire, Reflecting Pool, Avenue South, Mural Center, and Avenue North. The description is "The windsigh is massive, far, far larger than any you saw on Lacuna. A great set of sweeping stone steps, huge twisted roots running down and around them, runs up to a portal at its base which seems to lead inside the mammoth trunk. The tree seems old, very old, but emanates an almost palpable sense of strength and power." Instead of climbing distant Philosopher: say "You aren't close enough.".

The brick pathways are a backdrop. Understand "pathway" or "path" or "paths" or "well-tended" or "road" or "brick" or "bricks" as the pathways. The pathways are in Reflecting Pool, Avenue South, Outside the Dome, Among the Huts, Ancient Temple, Avenue North, and Nursery. The description is "Made of small rounded bricks, ranging in shade between yellow and pink." After touching the pathways, say "Near the center of the path, the warm bricks are rubbed smooth by generations of feet."



Chapter - Ambience

The ambience table of Plateau is the Table of Treeworld Ambience.

Table of Treeworld Ambience
freq		start time	end time	text	table		trigger	flag
uncommon		--	--		--	Table of Butterfly Ambience		butterfly
uncommon		--	--		"[one of]Wind gusts through the forest, sending rippling currents like living creatures through the branches.[or]Leaves swirl in tiny eddies as a hot breeze stirs them up.[or]Harmonic tones in varying pitches sound all around you as a breeze gusts over the plateau.[in random order]"
uncommon		--	--		"[one of]Ghost thoughts tug at your mind, whispers of half-heard ideas and dreams.[or]For a moment, you can sense ripples of thought rolling through the forest, slow, but inexorable-- then the sensation passes.[or]Looming somewhere nearby is the presence of an enormous mind. You can feel it, even from this distance.[in random order]"
uncommon		--	--		"[one of]Somewhere through the trees is the faint sound of shears.[or]Through the trees you catch a glimpse of a group of red-robed figures, gliding with measured grace along a path.[or]From some faint distance, you think you catch an echo of children's laughter.[in random order]"


Table of Butterfly Ambience
freq		text	table		trigger	flag
guaranteed	"[one of]Wings spread wide, a huge yellow butterfly drifts by, hardly flapping as it floats on updrafts[or]Two huge yellow butterflies flap gently by, on their way somewhere in the forest[or]A large yellow butterfly alights delicately on a tree branch, fanning its wings majestically[or]In the sky above you, a flock of huge butterflies drift in the breeze, the red sun lighting up their thin wings like lanterns[in random order]."	--	butterfly

A butterfly is a minor set dressing. The description is "Its wingspan is as wide across as your torso, and the wings are thin and delicate."


Chapter - Creatures


The Treeworld-Hivemind is an undescribed person. He is in Great Tree Interior. 

Instead of greeting a Lacunite-gardener:
	pre-conversation processing;
	if Lacunite-Follower is unidentified, force discuss hm_recognize;
	now Lacunite-Follower is identified;
	force discuss hm_intro.

Instead of saying farewell to a Lacunite-gardener: force discuss hm_outtro.

HM is a thread.

To say pupilscontract: say "[one of]eyes change-- pupils shrinking down to near points, as if shutting out all outside light to focus on some internal brightness--[or]pupils shrink again[or]pupils dilate[stopping]".

hm_intro is a repeatable beat in HM with reaction "[one of]'Greetings,' [heshe] says. 'And welcome to our world, friend of Progue. You must have many questions. I will answer what I can.'[or]'Greetings, friend. What other questions do you have?'[stopping]". After discussing hm_intro: notice language translation; continue the action. hm_intro summons hm_where, hm_how, hm_why, hm_name. hm_intro suggests hm_outtro.

Understand "where/heart" as hm_where when last beat is in HM. hm_where is a repeatable beat in HM with fuse 9 and keyword name "[if last beat is hm_intro or last beat is hm_recognize]where[else]Heart" and reaction "'This is the Grove of the Philosopher,' [the random Lacunite in the location] says, spreading [hisher] arms, 'on the planet we call the Heart of Forest. It is our [hm_Forest], where our great civilization first began, before spreading to thousands of other worlds. Please, explore.'". hm_where suggests hm_outtro.

Understand "how" as hm_how when last beat is in HM. hm_how is a repeatable beat in HM with fuse 9 and keyword name "how" and reaction "[CHeShe] looks uncertain for a moment, then [hisher] [pupilscontract] before [heshe] returns, smiling. 'You are still on Lacuna,' [the random Lacunite in the location] assures you. 'One of us has volunteered to lend you [if player is male]his[else]her[end if] body for your visit. All [if player is male]he[else]she[end if] sees and feels and hears is being sent through the mindlink back to your mind on Lacuna, and your muscle movements are being sent here, channeled by the [hm_Thinkers] around us. Your mind remains on Lacuna, but your presentness and awareness are here, light-years away.'". hm_how suggests hm_outtro.

Understand "why/now" as hm_why when last beat is in HM. hm_why is a repeatable beat in HM with fuse 9 and keyword name "[if last beat is hm_bluerock]now[else]why" and reaction "'We have brought you here in the hope you will help us with a great task,' [heshe] says[unless gp_intro is spoken]. 'When you are ready to hear more of this, [hm_Philosopher] the Philosopher at the top of the ridge.' [CHeShe] turns and points towards the huge windsigh at the end of the avenue. 'We hope to speak with you before you leave.'[else].[end unless]". hm_why suggests hm_outtro.

Understand "name" as hm_name when last beat is in HM. hm_name is a repeatable beat in HM with fuse 9 and keyword name "name" and reaction "[CHeShe] looks confused, but then [hisher] [pupilscontract] and [heshe] smiles. 'The [hm_Thinkers] have explained,' [heshe] says. 'We do not have names here in the sense you think of them, neither Thinkers nor [hm_Makers]. Within our groves we call each other merely by what we do. You may call me Planter.'". hm_name suggests hm_outtro.

Understand "thinkers" as hm_thinkers when last beat is in HM. hm_thinkers is a beat in HM with keyword name "Thinkers" and reaction "'The Thinkers are the trees, what your friend called the windsigh, rooted and slow,' [heshe] says in a singsong tone, as if the words are old and familiar. 'They are logic and reason, thought and intellect, one half of Forest. The [hm_Makers] are the other.'". hm_thinkers suggests hm_outtro.

Understand "makers" as hm_makers when last beat is in HM. hm_makers is a beat in HM with keyword name "Makers" and reaction "'The Makers are the people like your host and I,' [heshe] says, 'rootless and quick. They are movers and builders, travelers and discoverers, one half of Forest. The [hm_Thinkers] are the other.'". hm_makers suggests hm_outtro.

Understand "homeworld" as hm_forest when last beat is in HM. hm_Forest is a beat in HM with keyword name "homeworld" and reaction "'Forest is what we call our great civilization,' [heshe] says, 'for we are a single forest, though our groves touch the soil of a thousand worlds. We are joined together by the [hm_bluerock], which keeps the [hm_thinkers] connected even across the vastnesses of space.'". hm_forest suggests hm_outtro.

Understand "bluerock" as hm_bluerock when last beat is in HM. hm_bluerock is a beat in HM with keyword name "bluerock" and reaction "'The blue crystal which grows on your Lacuna,' [heshe] says. 'It is incredibly rare and precious. The Forest did not realize this until all our Eggs had gone and we discovered the [hm_where] was the only world where it was found. Until [hm_why].'". hm_bluerock suggests hm_outtro.

Understand "visit" as hm_philosopher when last beat is in HM. hm_philosopher is a beat in HM with keyword name "visit" and reaction "'One of the oldest and highest [hm_thinkers] in all the [hm_where],' [heshe] says with reverence, 'and even in all Forest. Being one of the chosen few to tend the roots here is an honor[unless gp_intro is spoken]. The Philosopher was chosen to ask a great favor of your friend Progue-- and now, of you. Go to the end of the avenue when you are ready to learn [hm_why] it is we have brought you here[end if].'". hm_philosopher suggests hm_outtro.[aar]





Chapter - Rooms


Overlook is east of Top of Spire. Top of Spire is northwest from Overlook. Southeast of Top of Spire is nowhere. West of Overlook is nowhere. Reflecting Pool is down from Top of Spire. Avenue South is northwest from Reflecting Pool. Avenue South is northeast from Reflecting Pool. Reflecting Pool is southeast from Avenue South. Reflecting Pool is southwest from Avenue South.

Outside the Dome is west of Avenue South. Map Room is inside of Outside the Dome. Mural Far West is west from Outside the Dome. Outside the Dome is southeast from Mural Far West. Among the Huts is east of Avenue South. Bare Hut is inside of Among the Huts. Mural Far East is east from Among the Huts. Among the Huts is southwest from Mural Far East. Northeast of Among the Huts is nowhere. 

East of Mural Far West is a room called Mural West. East of Mural West is Mural Center. East of Mural Center is a room called Mural East. East of Mural East is Mural Far East. Mural Center is north of Avenue South. Avenue North is north of Mural Center. Shrine is inside of Ancient Temple. Ancient Temple is west of Avenue North. Mural Far West is west of Ancient Temple. Ancient Temple is northeast of Mural Far West. Southwest of Ancient Temple is nowhere. Nursery is east of Avenue North. Mural Far East is east from Nursery. Nursery is northwest from Mural Far East. Southeast of Nursery is nowhere. West of Mural Far East is Mural East. Mural Far West is west of Reflecting Pool. Reflecting Pool is south of Mural Far West. North of Reflecting Pool is nowhere. Mural Far East is east of Reflecting Pool. Reflecting Pool is south of Mural Far East.

Base of the Great Tree is northeast of Avenue North. Base of the Great Tree is northwest of Avenue North. Avenue North is southeast of Base of the Great Tree. Avenue North is southwest of Base of the Great Tree. Inside of Base of the Great Tree is Great Tree Interior. 

Overlook, Top of Spire, Reflecting Pool, Outside the Dome, Avenue South, Among the Huts, Mural Far West, Mural West, Mural Center, Mural East, Mural Far East, Nursery, Avenue North, Ancient Temple, and Base of the Great Tree are in Plateau. Plateau, Great Tree Interior, Map Room, Bare Hut, and Shrine are in Treeworld.

The elevation of Reflecting Pool, Avenue South, Among the Huts, Bare Hut, Map Room, and Outside the Dome is 100 feet. The elevation of Top of Spire and Overlook is 150 feet. The elevation of Mural Center, Mural West, Mural Far West, Mural East, and Mural Far East is 110 feet. The elevation of Avenue North, Nursery, Ancient Temple and Shrine is 120 feet. The elevation of Base of the Great Tree and Great Tree Interior is 150 feet.

The heart-windsigh are a backdrop in Treeworld. Understand "windsigh/tree/trees" as heart-windsigh. The printed name is "grove of windsigh". The description is "The trees are everywhere; the air is thick with the scent of their leaves, and their sighing moans reverberate in shifting harmonic waves across the ridge with the wind. They are taller and more graceful here than their more twisted, stunted brothers on Lacuna.". Does the player mean doing something to the heart-windsigh: it is unlikely. Instead of attacking heart-windsigh: say "You attack one of the nearby windsigh, ripping leaves from the branches and pulling vines from its trunk savagely."; increase the rap sheet of Lacunite-Follower by 3.

To say tomuraldesc: say "You follow an immaculately tended dirt path through [one of]the forest[or]groves of windsigh[at random], [one of]the trees whispering all around you[or]the red sun cutting through the shade here and there in great, thick beams of light[or]a warm breeze gusting through millions of openings to produce a constant, multi-tonal hum[in random order], [one of]until you come into an open meadow[or]till you reach the long meadow again[stopping]".

To say brickpathdesc: say "You follow the straight brick pathway through tended groves of trees till you reach the avenue again.". [aar]

Definition: a room is avenueish: if it is Avenue South or it is Mural Center or it is Avenue North, yes; no. Report going from an avenueish room to an avenueish room: say "You walk farther along the wide grassy avenue.".


Chapter - Misbehaving

Lacunite-Follower has a number called rap sheet.

Getting Treerested is a scene. Getting Treerested begins when the rap sheet of Lacunite-Follower >= 5. When Getting Treerested begins: say "Within moments, a group of red-robed people surrounds you and gently but firmly restrains you.[paragraph break]'You must be having trouble controlling the actions of this body,' one of them says to you with concern. 'Perhaps the Thinkers have not understood your mind as well as they thought. We will escore you to the Philosopher[unless gp_intro is spoken] for your audience[end unless].' They firmly take hold of you and propel you up the avenue towards the huge windsigh at its top, and take you inside."; print a section break; move Lacunite-Follower to Great Tree Interior. Getting Treerested ends when location is Great Tree Interior.

Instead of going or exiting or landmark-going when location is Great Tree Interior and the rap sheet of Lacunite-Follower >= 5: say "A group of red-robed figures stand just outside the tree and bar your way. 'When you are ready to leave,' one says, 'simply close your eyes and your senses will be returned to Lacuna.'".


Section - Overlook


Overlook is a room in Plateau. The landmark name of Overlook is "the forest [d]overlook[x]". The printed name of Overlook is "Great Forest Overlook".

The description of Overlook is "[if unvisited]...and a moment later lower it, blinking in unexpected brightness and a rich smell of earth and leaves.
	
[end if]You [if unvisited]kneel[otherwise]stand[end if] on a curved platform jutting out over a cliff, overlooking a vast [o]forest[x] of windsigh that stretches to the horizon in every direction. A huge red-gold [o]sun[x] burns near the horizon, throwing brilliant reflections off the hundreds of streams winding through the forest and illuminating millions of leaves, in this light more gold than lemon-yellow. [paragraph break][exits][gfodesc2].". To say gfodesc2: say "[if unvisited].[paragraph break]Shaking off vertigo, you rise to your feet. As you do, an earth-covered [o]spade[x] slips from your hand[end if]". Understand "path" or "around" as northwest when location is Overlook. The exits text of Overlook is "A well-kept path curves [d]around[x] the edge of the cliff".

Some viney plants are a prop in Overlook. Understand "vine" or "vines" or "ivy" as the plants. Understand "soil" or "earth" as the viney plants. The initial appearance of the plants is "On the ground are some carefully tended vines and a few simple gardening tools." The description of the plants is "Ivy-like, with long skinny leaves fading slowly from green to reddish gold. The patch runs along the edge of the platform, immaculately tended." Instead of taking the plants, say "You see no reason to rip them from the ground."

A spade is an undescribed thing in Overlook. "An earth-stained garden spade lies on the ground." The description of the spade is "The spade is a simple tool, worn from use and stained with fresh, damp earth." After taking spade: say "You pick it up." instead; now spade is described. Instead of smelling the spade, say "The soil smells rich, almost heady." Instead of touching the spade, say "The damp soil feels thick and crumbly under your fingertips." Understand "garden spade" as spade. Check remembering a spade: say "It's gone. Some efficient gardener must have picked it up." instead.

The overlook vista is a backdrop in Overlook. Understand "forest" or "trees" or "streams" or "leaves" as the vista. The description is "The vista is spectacular in the light of the sinking sun. As you study the landscape, you realize that the design and layout is not wholly random; the placements of the streams, the position of the trees is more ordered, more formal than a forest grown without conscious intervention would be."

The huge red-gold sun is a backdrop. It is in Treeworld. The description is "The star seems much larger and yet dimmer than the one on Lacuna; you can almost look directly at it. Distant clouds passing before it near the horizon emphasize its massive bulk; the reddish-gold light pouring from it is spectacular."

Report going from Overlook to Top of Spire: say "You walk along the path around the edge of the boulder, bringing the top of a forested plateau into view."


Section - GFO Conversation

[A more personal conversation with a scientist from this world. This is designed to address fears that the makers are just drones or clones: they are individuals.]

Sunset Years is a scene. Sunset Years begins when location is Overlook and Reflecting Pool is visited. When Sunset Years begins: say initial appearance of Scientist; move Scientist to Overlook.

After greeting Scientist, force discuss sy_intro. Instead of exhausting when Scientist is enclosed by location: say "'Better to learn more by experiencing it,' she says. 'Go. Explore. Find what you wish to know.'".

Instead of greeting Scientist when Lacunite-Follower is unidentified: say "'Hello, Planter,' the woman says dreamily, still gazing into the sunset. 'Pardon, but I prefer to enjoy the sunset alone.'".

Scientist is a female Lacunite with printed name "old woman". Scientist is privately-named. Understand "old" or "woman" as Scientist. The initial appearance is "Standing on the balcony gazing into the sunset is a very old [o]woman[x], her red robes burning like fire in the light of the sun.[line break]". The description of Scientist is "Her face is lined with wrinkles, and her hair is loose, a white curtain trailing down to her waist. She stares at the forest of windsigh below with a peaceful smile. The gold-red light shimmers on her red robes, picking out the threads of blue and gold twining through the stitching.[paragraph break]She looks somehow different from the others you've seen, as if she comes from somewhere far away.".

SY is a thread. sy_intro is a beat in SY with reaction "She turns to you smiling, and bows a little. 'Hello, visitor,' she says softly. [if Lacunite-Follower is unidentified]Noticing you stiffen, she puts a hand to your shoulder in amusement. 'May be the younger ones don't see, but to me it's clear who you are. Everything about the way you move, and look, suggests it. [else]'[end if]I am honored to meet you.'". sy_intro summons sy_name. sy_whatelse replaces sy_intro.

sy_whatelse is a repeatable beat in SY with reaction "'[one of]What other questions can I answer[or]What else can I tell[or]What other things shall I speak of[or]What more should I say[in random order]?' she asks.". sy_whatelse suggests sy_question. sy_whatelse summons sy_maker, sy_mother, sy_scientist, sy_traveler, sy_heart.

Understand "name" as sy_name when last beat is in SY. sy_name is a beat in SY with keyword name "name" and reaction "'Name?' She tilts her head, considering. 'I am a [sy_maker] in the [sy_heart]. I have been [sy_mother]. I have been [sy_scientist]. Now I am a [sy_traveler]. You may call me Traveler, if you wish,' she says.". sy_name suggests sy_whatelse.

Understand "maker" as sy_maker when last beat is in SY. sy_maker is a beat in SY with keyword name "maker" and fuse 5 and reaction "'We, those like you and I,' she says, 'are Makers. The ones who are rooted are [sy_thinkers]. Together we make up the Forest.'". sy_maker suggests sy_whatelse.

Understand "heart" as sy_heart when last beat is in SY. sy_heart is a beat in SY with keyword name "Heart" and fuse 5 and reaction "'This world is the Heart,' she says, stretching out a hand to take in the whole view, 'the Heart of Forest, the great forest that stretches across a thousand worlds of our galaxy. This is the world where Thinkers and Makers grew, and where they first awakened each other. To have been born in the Heart and served these ancient Thinkers has been a great blessing in my life.'". sy_heart suggests sy_whatelse.

Understand "thinker/thinkers" as sy_thinkers when last beat is in SY. sy_thinkers is a beat in SY with keyword name "Thinkers" and fuse 5 and reaction "'They live without us in worlds of pure logic, reason, and order,' she says. 'It is only through the eyes of Makers they can see and know the outside world, and only through our hands they can affect it.'". sy_thinkers suggests sy_whatelse.

Understand "mother" as sy_mother when last beat is in SY. sy_mother is a beat in SY with keyword name "Mother" and fuse 5 and reaction "'I bore three children,' she says with a proud smile, 'a rare honor to be [sy_chosen] for so many. When the second came I was Mother of my grove, so helped him and all the others grow from day to day; bathing, feeding, singing [sy_songs] through the slow mornings till [sy_teachers] came to teach. He is still my favorite, though his own children now are grown.'". sy_mother suggests sy_whatelse.

Understand "song/songs" as sy_songs when last beat is in SY. sy_songs is a beat in SY with keyword name "songs" and reaction "'I never forget the old songs. Would you like to hear one?' she asks unselfconsciously.". The yes-beat of sy_songs is sy_singsong. The no-beat of sy_songs is sy_nosong. sy_songs summons sy_singsong, sy_nosong. sy_songs suggests sy_nosong.

sy_nosong is a beat in SY with keyword name "no" and reaction "'Very well,' she says, but there is no hint of the disappointment, obsequiousness, or anger that such words might hide among your own kind. She seems to mean exactly what the words say: it is just as well she doesn't song the song as it would be if she did.". sy_nosong suggests sy_whatelse. sy_nosong cancels sy_singsong.

sy_singsong is a beat in SY with keyword name "yes" and reaction "'This one has been sung from Mother to child for generation on generation,' she says.[paragraph break]She gazes off towards the huge red sun and pauses for a long moment. When at last she begins to sing, it is slow, rhythmic, each word seeming to be heavier with meanings than the sounds alone suggest, an almost tuneless melody shaping them:

'Food and fire,[line break]
Earth and bone,[line break]
Fruit and stream,[line break]
Song and home.

These are the things which make you live,[line break]
Child.

Root and vine,[line break]
Leaf and tree,[line break]
Mind and thought,[line break]
Join and weave.

These are the things which make you,[line break]
Child.

Strain and toil,[line break]
Ear and eye,[line break]
Foot and leg,[line break]
Sweat and thigh.

These are the things which make,[line break]
Child.'

When at last she finishes, she pauses for another moment, then smiles at you. 'That one I've always liked,' she says.". sy_singsong suggests sy_whatelse. sy_singsong cancels sy_nosong.

Understand "scientist" as sy_scientist when last beat is in SY. sy_scientist is a beat in SY with keyword name "Scientist" and fuse 5 and reaction "'A botanist,' she says, 'a specialist in the tropical flowers of the southern archipelagos. I [sy_trained] with prestigious groves of scientist [sy_Thinkers]. There is so much diversity on the [sy_Heart], explosions of life everywhere; we still find new [sy_compounds] and chemicals in the jungles each year.'". sy_scientist suggests sy_whatelse.

Understand "trained" as sy_trained when last beat is in SY. sy_trained is a beat in SY with keyword name "trained" and fuse 5 and reaction "'The more training the [sy_Thinkers] give us,' she says, 'the less they have to Think for us. Of course they could instruct any of us to perform a surgery or construct a spaceship; move this arm here, grip that piece so. But if we learn to do the things ourselves, they do not need to trouble themselves with that.'". sy_trained suggests sy_whatelse.

Understand "chosen" as sy_chosen when last beat is in SY. sy_chosen is a beat in SY with keyword name "chosen" and fuse 5 and reaction "'All who wish to may have a child,' she says, 'but we have filled up this world, so second and third children can only be allowed with careful consideration by Planner [sy_Thinkers] for agriculture, society, and quality of parent.'". sy_chosen suggests sy_whatelse.

Understand "teachers" as sy_teachers when last beat is in SY. sy_Teachers is a beat in SY with keyword name "Teachers" and fuse 5 and reaction "'Some makers are Mothers to care for the children,' she says. 'Some are Teachers to instruct them in logic and reason, in history, and in science. Others are Thoughtsingers who help the children learn to hear the voice of the [sy_Thinkers] more clearly and make themselves be heard. Together, all three help the children of a grove to grow.'". sy_teachers suggests sy_whatelse.

Understand "compounds" as sy_compounds when last beat is in SY. sy_compounds is a beat in SY with keyword name "compounds" and fuse 5 and reaction "'To help the bodies of [sy_Thinkers] and Makers,' she says, 'or the Science they pursue. To extend life and ease suffering; extract what we need for survival from the [sy_Heart] with more precision and efficiency; construct more durable shelters and more powerful machines.'". sy_compounds suggests sy_whatelse.

Understand "traveler" as sy_traveler when last beat is in SY. sy_traveler is a beat in SY with keyword name "traveler" and fuse 5 and reaction "'Yes,' she says, 'there is no more of use I can make, so I spend my final years traveling the [sy_Heart], seeing the [sy_wonders] of this world, and taking comfort in its [sy_mundane] aspects too.'". sy_traveler suggests sy_whatelse.

Understand "wonders" as sy_wonders when last beat is in SY. sy_wonders is a beat in SY with keyword name "wonders" and fuse 5 and reaction "'Many places now,' she says, 'black beaches, grand chasms-- the Conclave of Arbiters. The old bluerock [sy_mines] in the north. And here, the grove of the Philosopher-- a place I have long wanted to come to.'". sy_wonders suggests sy_whatelse.

Understand "mundane" as sy_mundane when last beat is in SY. sy_mundane is a beat in SY with keyword name "mundane" and fuse 5 and reaction "'Just the daily lives of the millions of groves on Heart,' she says. 'The [sy_farmers], the builders, even the [sy_defectives]. Sometimes that which is simple is as good to see as that which is not.'". sy_mundane suggests sy_whatelse.

Understand "farmer/farmers" as sy_farmers when last beat is in SY. sy_farmers is a beat in SY with keyword name "farmers" and fuse 5 and reaction "'Most groves do still grow their own food,' she says. 'The Planner Thinkers long ago saw that was best. But in some places, the science cities or mine outposts, the Makers must be more specialized. So there are Farmers who grow the food and Movers who transport it and others who eat it.'". sy_farmers suggests sy_whatelse.

Understand "defective/defectives" as sy_defectives when last beat is in SY. sy_defectives is a beat in SY with keyword name "defectives" and fuse 5 and reaction "'Oh,' she says, 'those who are born without the ability to hear the Thinkers. Poor ones. There are special groves for them, where Tenders look after them, make sure they find food and keep busy and do not wander off to die. The Tenders and the Thinkers who advise them do what they can, but the defectives are not happy. Their lives have no direction, no greater purpose. They often fall to squabbling, even-- even hurting each other or the Thinkers around them. Some say they should not be allowed to be born, but as long as the [sy_Edict] holds, they are our wards.'". sy_defectives suggests sy_whatelse.

Understand "edict" as sy_edict when last beat is in SY. sy_edict is a beat in SY with keyword name "Edict" and fuse 5 and reaction "'The Edict of the Sacred Genomes,' she says. 'Before my grandparents were born, the Thinkers and Makers together discovered the code inside us both that makes us Be. But after much deliberation by Thinkers across the thousand worlds of Forest, it was decided that nothing should be done that might change the connection between us; nothing should be done to alter or change our genomes until they each were completely understood. Some say this will not happen for thousands of years, if at all. So for now, we wait.'". sy_edict suggests sy_whatelse.

Understand "mines" as sy_mines when last beat is in SY. sy_mines is a beat in SY with keyword name "mines" and fuse 5 and reaction "'Huge open pits dug into the tundra,' she says, 'and great shafts descending miles and miles towards the warm core, now filled again with snow and ice. All for a few pounds of pure bluerock in each vein. Primitive technology compared to what we have now, but now there is no bluerock left.'". sy_mines suggests sy_whatelse.

Instead of saying farewell to Scientist when sy_question is unspoken: force discuss sy_question. Instead of getting bored when Scientist is enclosed by location: force discuss sy_question.

sy_question is an insistent beat in SY with reaction "She hesitates. 'Do not answer if you wish not to,' she says, 'but I have heard that you come from a world-- a people of Makers who have no Thinkers. You are alone. Is this true?'". The yes-beat of sy_question is sy_alone. The no-beat of sy_question is sy_noalone. sy_question summons sy_alone, sy_noalone. sy_question suggests sy_noans. sy_outtro replaces sy_question.

sy_alone is a beat in SY with keyword name "yes" and reaction "She shakes her head. '[alonebit].' She sighs. 'It may be we seem just as strange to you. But I can't imagine it. I cannot begin to think how you must feel.'". sy_alone enqueues sy_outtro.

sy_noalone is a beat in SY with keyword name "no" and reaction "She nods. 'I thought the report must have been wrong,' she says. '[alonebit].' She shudders. 'It is good you are not alone. It is good you are like us. I am happy.'". sy_noalone enqueues sy_outtro.

sy_noans is a beat in SY with reaction "'Very well,' she says[if sy_nosong is spoken], again[end if] with no hint of disappointment or anger, 'it is for the Thinkers to know such things, not one such as I who has no use for that knowledge.'". sy_noans enqueues sy_outtro.

To say alonebit: say "I cannot conceive of such sadness,' she says quietly. 'To not have the thoughts of your kin tree always with you, to guide and advise-- to be vulnerable to attack from wild creatures, without thousands of eyes watching for your safety. And when out of sight of your other Makers-- alone".

sy_outtro is a repeatable terminal beat in SY with reaction "'[one of]It was good to meet you,' she says. 'I wish you welcome to our world.' [or]Go with welcome,' she says. [stopping]She touches fingertips to her forehead, then turns back to the spectacular view.".


Section - Top of Spire

Top of Spire is a room in Plateau. 

The description of Top of Spire is "You stand on a short, rocky spire atop a great sloping [o]ridge[x], running far off towards snow-capped mountains in the distance. Below you the ridge top is dominated by more windsigh forest, but a cleared grassy avenue runs toward one gigantic withered [o]tree[x], towering over all the rest at the highest point of the angled slope[if unvisited], and at once you sense that this whole ridge is somehow centered around and exists for that single tree[end if]. [paragraph break][exits][tosdesc2].". To say tosdesc2: say "[if unvisited].[paragraph break]Your heart catches for a moment as you take in another detail: you can also see [o]people[x], clad in red, walking amongst the trees or tending to plants along the avenue[end if]". The exits text of Top of Spire is "Carved stone steps run [down] the spire towards the avenue, and a path leads back [d]around[x] the spire to the overlook". Understand "path" or "around" as east when location is Top of Spire. Understand "steps" or "avenue" as down when location is Top of Spire.

The distant tree_people is a backdrop in Top of Spire. Understand "people" or "red" as tree_people. The description is "You can make out few details from this distance. Perhaps a dozen are in sight."

The ridge is a backdrop in Top of Spire. The description is "The flattened ridge, dense with forest, runs off towards the distant mountains. On either side it drops off steeply toward valleys far below.". Instead entering or climbing ridge: say "It's far off in the distance.".

Report going from Top of Spire to Reflecting Pool: say "You walk down the worn stone steps to a grassy field at the base of the outcropping."

Section - Reflecting Pool

Reflecting Pool is a room in Plateau. The description of Reflecting Pool is "A long, shallow reflecting [o]pool[x], integrated so well into the landscape you aren't sure if it's planned or natural, reflects a broad green avenue lined with trees gently stretching towards [the Distant Philosopher].[paragraph break][exits]." The exits text is "Two carefully tended paths [d]circle[x] the pool, meeting again on the opposite side at the start of the avenue. Smaller paths disappear into trees, one [d]towards[x] the sun and the other into [d]shadows[x]. Stone steps climb [up] a rocky spire, while a much grander stair runs [down] to a valley far below". Understand "sun" or "toward" or "towards" as east when location is Reflecting Pool. Understand "shade" or "into" or "shadows" as west when location is Reflecting Pool. Understand "plateau" or "around" or "circle" as northwest when location is Reflecting Pool.

Instead of going down in Reflecting Pool, say "You step to the edge of the stairs and look down a long, winding stair, snaking down the cliff to the forest far, far below. It's a journey you're not sure this body is up to." Instead of entering the shallow reflecting pool, say "The pool looks shallow enough, but it is calm and well-tended, and some inner voice compels you to consider one of the [o]paths[x] instead."

Report going to Avenue South from Reflecting Pool: say "[roundthepool]". Report going to Reflecting Pool from Avenue South: say "[roundthepool]". To say roundthepool: say "You follow the path, perfectly interlocking stone tiles lined by well-tended vegetation, around the edge of the pool [if location is Reflecting Pool]to a flat spot at the base of the spire[otherwise]to the end of a broad avenue[end if]." Report going from Reflecting Pool to Top of Spire: say "You climb the stairs up the steep slope around the rocky spire." Report going from Reflecting Pool to Mural Far West: say "[tomuraldesc].". Report going from Reflecting Pool to Mural Far East: say "[tomuraldesc].".[aar]

LYPNflag is a number that varies. LYPNflag is 0.

Learning Your Projected Nature is a scene. Learning Your Projected Nature begins when the player has been in Overlook for exactly one turn.  Learning Your Projected Nature ends when LYPNflag is 1.

Every turn during Learning Your Projected Nature:
	if the location is Reflecting Pool, say "[one of]Your [o]reflection[x] in the pool catches your eye. Something seems strange about it.[or][reflectionreminder][stopping]". To say reflectionreminder: if a random chance of 1 in 4 succeeds, say "Your [o]reflection[x] in the pool catches your eye. Something seems strange about it.".

Instead of examining Lacunite-Follower:
	if Learning Your Projected Nature is happening, now LYPNflag is 1;
	say "[if Learning Your Projected Nature is happening or we have examined the player]You look down at your body with astonishment: you seem to be wearing a loose red robe. But as your hands move to feel the material, you gasp in shock.
		
They are not your hands.

They are[otherwise]You seem to be wearing a loose, red robe, contrasting with your hands:[end if] a different shade and shape, familiar knuckles and veins replaced, thin fingers, nails that are almost purple. Turning them over, you see the faint callouses of a lifelong worker. Raising the strange hands to your face, you feel alien cheekbones and tight, unwrinkled flesh.";
	if Learning Your Projected Nature is happening and a Lacunite is visible begin;
		now a random Lacunite enclosed by the location is attentive;
		say "[paragraph break]Noticing your astonishment, [a random Lacunite enclosed by the location] pauses. [run paragraph on]";
		force discuss t_strangebody;
		now stranger_counter is 3;
	end if.

[	otherwise;
		say "[paragraph break]This alien body is disorienting to be inside of, when you think about it, but you are astonished at how quickly you are beginning to just accept it as another strange adaptation.";]
		
t_strangebody is a beat in HM with reaction "'Do not be alarmed,' [heshe] says[if Lacunite-Follower is unidentified], coming over to you and gently tracing a symbol on your cheek with a bit of paint[end if]. 'Only your mind has travelled here. Your body is still on the world of Lacuna, but the one whose reflection you see has lent you [if player is male]his[otherwise]her[end if] body and senses, for as long as you visit the [t]Heart[x].'". After discussing t_strangebody: now LYPNflag is 1; now Lacunite-Follower is identified. t_strangebody summons hm_where, hm_how, hm_why, hm_name, hm_symbol.

The shallow reflecting pool is a backdrop. It is in Reflecting Pool and Avenue South. Understand "long" as the shallow pool. The description is "The shallow oval pool stretches across this flat spot on the plateau. The water is crystal-clear and the edge is rimmed with flowers. Rippled reflections of the great tree at the end of the avenue and of your own distorted [o]reflection[x] shine up at you." Instead of touching the pool, say "You reach out a hand and the reflection does also. As they meet on the warm surface of the water, ripples distort the strange face into indistinct patterns."

Instead of vague swimming when the reflecting pool is visible, say "This place has a deep presence of order and sacredness: swimming in the calm pool would seem highly inappropriate." Instead of swimming in the pool, try vague swimming.

Washing is an action applying to nothing. Understand "wash" or "clean" or "scrub" as washing. Overly specific washing is an action applying to one topic. Understand "wash face/hand/hands" or "clean face/hand/hands" or "scrub face/hand/hands" as overly specific washing. Check overly specific washing: try washing instead.

Check washing: if location is not Reflecting Pool and location is not Avenue South, say "You do. It feels good to be clean." instead. Check washing: if the player is Lacunite-Follower and Lacunite-Follower is identified and a Lacunite is visible, say "Someone is watching." instead.

Carry out washing: if Lacunite-Follower is identified and the player is Lacunite-Follower begin; now Lacunite-Follower is unidentified; say "Reaching your hands down into the pool, you wash the symbol off your face."; otherwise; say "You wash your face and hands in the cool water."; end if.

Your reflection is a backdrop. Understand "distorted" or "form" or "symbol" as reflection. It is in Reflecting Pool and Avenue South. 

Instead of examining the reflection:
	if Learning Your Projected Nature is happening begin;
		say "As you gaze closer, you gasp. Your reflection is not you. It is one of the creatures; large eyes gape back at you, and yellowish hands reach up to touch your face in sync with yours.";
		now LYPNflag is 1;
		if a Lacunite is visible begin;
			say "[line break]Noticing your astonishment, [a random Lacunite in the location] nearby pauses. [run paragraph on]";
			pre-conversation processing;
			force discuss t_strangebody;
			say "'I can answer your questions, if you like,' [heshe] adds.";
		end if;
	otherwise;
		say "You study the face staring back at you with a strange but slowly weakening feeling of something like vertigo. It is young, as far as you can tell with these people, and seems healthy. The most curious sensation is staring into the eyes: you cannot decide if you are looking at yourself or another, your mind futilely flipping back and forth, like an optical illusion of depth[if Lacunite-Follower is identified]. On your cheek, in white paint, is drawn a simple symbol[end if].";
	end if.


[ Normally, the Lacunites will identify the player as the visitor and mark him with face paint. However, a clever player can observe things unawares if they wash off the face paint and carry around a garden spade. If they stand around for a few moves without doing any work, or ask questions, the Lacunites recognize him for the outsider and take the spade from him. A new spade can be found near where the huts are. Lacunites will instantly recognize the player for who he is if he is not carrying a spade. ]

The stranger_counter is a number that varies. The stranger_counter is 0. After going during Visiting Treeworld: now the stranger_counter is 0; continue the action.

Every turn when Visiting Treeworld is happening and an idle Lacunite-gardener is visible and Lacunite-Follower is unidentified and we are not digging and we are not going (this is the Lacunites will figure out an idle player is the stranger rule):
	increase the stranger_counter by 1;
	if the player is not holding the spade, increase the stranger_counter by 1;
	if stranger_counter is 1 begin; say "[one of][A random Lacunite-gardener in the location] nods to you[or][A random Lacunite-gardener in the location] makes brief eye contact and smiles[or][A random Lacunite-gardener in the location] quietly acknowledges your presence[at random].";
	otherwise if stranger_counter is 2; say "[one of]Glancing in your direction, [a random Lacunite-gardener in the location] turns [hisher] head and looks puzzled.[or][The random Lacunite-gardener in the location] turns an intent gaze on you.[or]You notice [a random Lacunite-gardener in the location] glance over at you curiously.[at random]";
	otherwise if stranger_counter is 3; say "[one of][A random Lacunite-gardener in the location]continues to gaze at you with a puzzled expression[or]You get another odd look from [a random Lacunite-gardener in the location][at random].";
	end if.

Every turn when Visiting Treeworld is happening and a Lacunite-gardener is visible and Lacunite-Follower is unidentified and we are not going and the stranger_counter is at least 2 and a random chance of 2 in 3 succeeds (this is the Lacunite revelation rule):
	let greetee be a random Lacunite-gardener in the location;
	now greetee is attentive;
	force discuss hm_recognize;
	now Lacunite-Follower is identified;
	notice language translation;
	if Lacunite-Follower carries the spade:
		remove the spade from play.


hm_recognize is a repeatable beat in HM with reaction "A smile breaks out on the face of [a random Lacunite-gardener in the location]. Coming towards you, [heshe] [if Lacunite-Follower carries the spade]slips the spade from your fingers and [end if]puts a hand on your shoulder. 'Visitor,' [heshe] says, '[if Lacunite-Follower carries the spade]with your gardening tool I thought you were one of us. W[else]w[end if]elcome. Please, if you have any questions about our world, you only have to ask.'[paragraph break]Dipping a finger in a pot of paint, [heshe] draws a single [hm_symbol] on your cheek. 'There,' [heshe] says, 'now the others will know you and greet you properly.'". hm_recognize summons hm_where, hm_how, hm_why, hm_name.

Understand "symbol/paint" as hm_symbol. hm_symbol is a beat in HM with keyword name "symbol" and reaction "'So we know which one of us you are,' [heshe] says with a smile, 'and can afford you the respect your fantastic visit deserves.'".


Every turn when Visiting Treeworld is happening and a Lacunite-gardener is visible and Lacunite-Follower is identified and we are going (this is the Lacunites recognize an identified player rule):
	say "[The random Lacunite-gardener in the location] [one of]smiles at you, nodding and bowing[or]smiles and moves back, out of your way[or]stops what [heshe] is doing to give you a bow and a beaming smile[at random].".

[Digging is an action applying to nothing. Understand "dig" or "garden" as digging.] Check digging when location is regionally in Treeworld: if player is not carrying spade, say "You don't have anything to dig with.". Carry out digging when location is regionally in Treeworld: say "Kneeling in the dirt, you carefully tend to some flowers here." instead. After digging when a Lacunite-gardener is visible: say "Nodding, [a random Lacunite-gardener in the location] goes back to what [hisher] work."; continue the action. After digging when location is regionally in Treeworld: now stranger_counter is 0; continue the action.

Section - Tour Guides

hm_outtro is a terminal beat in HM with reaction "'There is a great mural near here that tells the history of our civilization,' [heshe] says. 'It is the best place to begin. To find it, [if location is not Reflecting Pool]find your way back to the pool at the base of the stairs and then [end if]follow the path through [d]shadows[x].'". hm_outtro2 replace hm_outtro. After discussing hm_outtro: if tour-progress is 0, now tour-progress is 1; continue the action.

hm_outtro2 is a repeatable terminal beat in HM with reaction "'[if tour-progress is 1 and location is Reflecting Pool]Follow the path through [d]shadows[x] to the start of the mural,' [heshe] reminds you[else]Goodbye, visitor,' [heshe] says[end if].".

tour-progress is a number that varies.

Before going to Mural Far East when tour-progress is 1:
	if the number of Lacunite-gardeners in Mural Far East is 0:
		let soul be a random Lacunite-gardener;
		now the counter of soul is 1;
		move soul to Mural Far East.

Every turn when location is Mural Far East and tour-progress is 1 and a random chance of 1 in 2 succeeds and Nursery is unvisited and a random Lacunite-gardener is enclosed by location:
	say "[The random Lacunite-gardener enclosed by location] smiles at you. 'When you are finished here,' [heshe] says, 'we invite you to see the nursery where young Thinkers grow.' [CHeShe] points through the trees towards the [d]nursery[x], then goes back to gardening.";
	now tour-progress is 2;
	continue the action.

Every turn when location is Nursery and tour-progress is 2 and a random chance of 1 in 2 succeeds and Ancient Temple is unvisited:
	say "One of the gardeners looks up. 'When you are finished here,' he says, pointing, 'you can cross the [d]avenue[x] towards the circle of trees on the opposite side-- what you might think of as a temple.'";
	now tour-progress is 3.

Every turn when location is Ancient Temple and tour-progress is 3 and Shrine is visited and a random chance of 1 in 2 succeeds and Outside the Dome is unvisited and mechanic is enclosed by location: 
	say "The man at the capsule looks up. 'When you're finished here,' he says, nodding into the forest, 'take this path towards the [d]waterfall[x] and the mural, then continue towards a dome through the trees.'";
	now tour-progress is 4.

Every turn when location is Outside the Dome and Map Room is visited and tour-progress is 4 and Great Tree Interior is unvisited:
	say "The red-robed man nods. 'If you are finished here,' he says, '[unless gp_intro is spoken]then the Philosopher is ready to speak with you. Go back to the [d]avenue[x] and then follow it up the hill towards the Philosopher[else]then you may explore the Heart as much more as you like. But when you are ready to return to Lacuna, simply close your eyes[end unless].'";
	now tour-progress is 5.


Section - Avenue South

Avenue South is a room in Plateau with printed name "Far End of the Avenue". The description of Avenue South is "Running straight as an arrow along a gentle slope  to the highest point of the plateau is a wide, well-kept grassy avenue, lined by windsigh trees. At the end of the avenue, stone stairs rise to [the distant Philosopher], its massive, twisted branches reaching high into the sky.[paragraph break][exits].". The exits text is "Running perpendicular to the avenue heading [up] to the huge windsigh are paths of hexagonal brick, leading into the forest towards a [d]dome[x] or some [d]huts[x], or [d]around[x] the reflecting pool". Understand "around" as southwest when location is Avenue South. Understand "dome" as west when location is Avenue South. Understand "huts" as east when location is Avenue South.



Report going from Avenue South to Among the Huts: say "You follow the worn but immaculately tended brick path through a light forest, towards a series of low structures ahead."

Section - Among the Huts

Among the Huts is a room in Plateau. The description of Among the Huts is "Scattered around the trees here are a few dozen simple [o]structures[x], not quite as high as your head and made of brick and thatch. Between the ordered row of huts is a large [o]garden[x].[paragraph break]A neat line of gardening [o]tools[x] is stacked near one of the huts.[paragraph break][exits]." The exits text of Among the Huts is "The path weaves through the cluster of huts, heading towards the open space of the [d]avenue[x] or deeper into the [d]forest[x]". Understand "deeper" or "forest" as east when location is Among the Huts. Understand "avenue" as west when location is Among the Huts.

Report going from Among the Huts to Mural Far East: say "[tomuraldesc].". Report going from Mural Far East to Among the Huts: say "You follow the dirt path through sun-dappled groves of windsigh until you come to a cluster of small huts.". 

Some structures are scenery in Among the Huts. Understand "hut" or "huts" as structures. The description is "Though carefully constructed and maintained, the huts are humble in design." Instead of entering structures, try going inside.

Every turn when location is Among the Huts: if spade is off-stage begin; move spade to Among the Huts; end if.

Some gardening tools are a thing in Among the Huts. The description is "Simple but well-crafted instruments, kept in excellent repair[if spade is in Among the Huts]. Among them you see a simple [o]spade[x][end if].". Understand "tool/line/instruments" as some gardening tools. Instead of taking some gardening tools when spade is on-stage, say "You don't have a need for any of these.". Instead of taking some gardening tools, try taking spade. Report taking spade when location of Lacunite-Follower is Among the Huts: say "You find a neatly polished and sharpened spade from the line, and pick it up." instead.

The vegetable-garden is a setpiece in Among the Huts. The description is "Running in long, well-tended rows, the plants seem to alternate between two crops: leafy green stalks bearing a ridged green [o]melon[x] and clumps of fronds where some root [o]vegetable[x] must grow.". The printed name of vegetable-garden is "garden". Understand "garden" or "vegetable garden" as vegetable-garden.

Some ridged green melons are a prop in Among the Huts. Understand "melon/stalk/stalk" as ridged green melons. The description is "The melons are about the size of your head, and give off a faint smell of spicy sweetness.". Check smelling melons: say "Earthy and strange." instead. Check tasting ridged green melons: say "You crack one open to reveal a firm purple flesh inside. The taste is mild but juicy." instead.

Some root vegetables are a prop in Among the Huts. Understand "veggie/vegetable" as root vegetables. The description is "A few of the vegetables near one end have been dug up, and you see that the plants beneath are brown-orange cylinders with mottled skin.". Check tasting root vegetables: say "You bite an end off one of them, but they are hard to chew and not very flavorful uncooked.".

Report going to Bare Hut: say "You pull aside the straw doorway of a hut that you somehow intuitively feel is yours-- or at least, that belongs to the body you occupy-- and, ducking your head, step inside."

Instead of going to Bare Hut when Lacunite-Follower is identified: say "[one of]You approach a hut at random, but an old red-robed woman steps out from it and smiles, touching your elbow.[paragraph break]'There is nothing in these simple huts to see, visitor,' she says. 'They are merely where the makers of this grove eat and sleep. There are greater things for you here.' You step back as she slips away towards the avenue.[or]You approach one of the huts and pull back the flap, revealing a spartan interior and [randomlacunite] looking up questioningly at you. Embarrassed, you step back.[stopping]". To say randomlacunite: say "[one of]an old man[or]a bedridden younger woman[or]two elderly women[at random]".

A small child is a male Lacunite in Among the Huts. "A small [o]boy[x], maybe two years old, plays on the grass outside one of the huts." The description is "Other than sharing the skin color and general facial features of the adults you've seen, he seems just like the children you're used to." Instead of greeting in the presence of the small child, say "The child stops playing and looks at you curiously as you begin to speak. He  giggles." Understand "boy" or "baby" as the child. Instead of taking the child, say "[takechild].". To say takechild: say "You hoist the boy up in your arms. He is surprisingly light. As you bounce him up and down, he laughs, and reaches out to touch your face. After a while he grows restless, so you lower him back down to the ground". Check hugging the child: say "You reach out and tousle the boy's hair, soft and blonde. He scrunches up his face and puts his hand to his head, grabbing a tuft of hair and twirling it." instead. Instead of attacking the child: increase the rap sheet of Lacunite-Follower by 5. Understand "play with [child]" as a mistake ("[takechild].").

Bare Hut is a room in Treeworld. The description of Bare Hut is "[one of]Your eyes adjust slowly to the dimness in this simple hut. [or][stopping]The interior is clean, ordered, and simple. Two soft [o]beds[x] curve to hug the rounded walls; above each is a woven [o]wreath[x] of vine, and between them is an open area, covered by a large circular rug. On the wall opposite the entryway is a rounded brick [o]cookstove[x] and a hemispherical wooden [o]chest[x].[paragraph break][exits].". The exits text of Bare Hut is "A flap leads back [outside]".

Report going from Bare Hut to Among the Huts: say "You step back outside into the red and gold evening.".

Some soft beds are a setpiece in Bare Hut. Understand "bed" as soft beds. The description is "The beds are shaped like fat crescents, smoothly adjoining the curved walls of the hut. Beneath their woven sheets they are springy but firm, like thick moss.". Instead of entering soft beds, say "There is too much to do for that right now.".

A woven wreath of vine is a prop in Bare Hut. Understand "wreaths" as wreath. The description is "The wreaths are made from a delicate framework of stone, a twelve-sided shape, around which are carefully wrapped tendrils of familiar-looking vine in a complex weave.".

A large circular rug is a setpiece in Bare Hut. The description is "The rug is woven from a silky fiber, and covered in a simple geometric design.".

A rounded brick cookstove is a fixed in place undescribed supporter in Bare Hut. The description is "The stove bulges in the center, where a translucent rounded door opens into some sort of oven, then flattens out on top to a cooking surface. Along a raised portion behind the stove are a row of unlabeled terra-cotta tumblers, presumably the controls.[paragraph break]A [o]pot[x] of some cooling stew rests atop the cookstove.".

A bubbling pot is a prop on rounded brick cookstove. Understand "hoosh/vegetable/vegetables" as pot. The description is "The pot contains a bubbling hoosh that seems to be made from the orange-brown root vegetables; it smells earthy, with faint hints of herbs and spice.". Instead of tasting bubbling pot, say "You pick up a nearby spoon and try a bite. The flavor is quite simple and unremarkable, but filling and satisfying.".

A hemispherical wooden chest is a fixed in place container in Bare Hut. It is closed and openable. The description is "About an arm's length across, the chest rises like a wooden bubble from the floor, delicately polished and finished so the wood shines with a red-gold gleam.". Report opening hemispherical wooden chest: say "You push the top and the hemisphere rotates around to the bottom with a muffled wooden grating, revealing a collection of clay pots, neatly folded red robes, and a small stone [o]urn[x]." instead. Report closing hemispherical wooden chest: say "You lift the lid and the wooden hemisphere rotates smoothly around again, sealing the chest." instead.

A small stone urn is a prop in hemispherical wooden chest. The description is "The stone urn is engraved with the intertwined tree/human figure, and is quite heavy. It is sealed with a cork stopper that looks ancient." Instead of opening small stone urn, say "You pull out the stopper far enough to peek inside. The urn seems to be filled with fine grey ash. Some part of your borrowed mind feels a tug of emotion, and you get vague glimpses of ancient traditions, ashes of ancestors and kin trees mingled together, passed through generations.[paragraph break]You carefully replace the stopper.". Understand "stopper/ash/cork" as small stone urn. Instead of taking small stone urn, say "It belongs here."

["'That is my memorance,' she says. 'In it are ashes of my descendants and their kin trees, stretching back for thousands of years. When I or my kin tree dies, some of our ashes will go into the memorance, to be buried in the roots of my children's kin trees and go into their own memorances, when the time is right.'".]

Some clay pots are a prop in hemispherical wooden chest. The description of some clay pots is "Simple and functional, only lightly adorned with hexagonal patterns.". Understand "pot" as some clay pots.

Some neatly folded red robes are a prop in hemispherical wooden chest. Instead of taking neatly folded red robes, say "You're already wearing one.".




[Garden with just two vegetables. Someone explains these two vegetables contain all that's necessary for suvival.]


Section - The Mural

A muralroom is a kind of room. Mural Far West is a muralroom. Mural West is a muralroom. Mural Center is a muralroom. Mural East is a muralroom. Mural Far East is a muralroom.

Report going from a muralroom (called orig) to a muralroom (called dest):
	if dest is Mural Center:
		say "The meadow widens into a wide circle, where the broad avenue heading up the slope intersects it.";
	else if noun is east:
		say "You follow the slab of rock with the mural, continuing down the immaculate meadow towards the [unless dest is Mural Far East]distant [end if]cliff.";
	else if noun is west:
		say "You follow the slab of rock with the mural, continuing up the immaculate meadow towards the [unless dest is Mural Far West]distant [end if]waterfall.". 

Report going from Mural Far East to Nursery: say "You walk through the trees until you come into another clearing.".

The great slab is an undescribed backdrop. The slab is not scenery. The initial appearance is "[if location is Mural Far East]Running straight to the edge of the cliff is[end if][if location is Mural Far West]Rising from the ground near the edge of the trees is[end if][if location is Mural West or location is Mural East]Bisecting the meadow is[end if][if location is Mural Center]Stretching from either side of the spire is[end if] [slab]". The great slab is in Mural Far West, Mural West, Mural Center, Mural East, and Mural Far East. Understand "mural" or "rock" or "etchings" or "history" as the slab. 

Definition: a thing is unexamined if we have not examined it.

To say slab:
	if Mural Far West is unvisited and Mural West is unvisited and Mural East is unvisited and Mural Far East is unvisited, say "a great [o]slab[x] of rock"; otherwise say "the rock [o]slab[x]";
	if great slab is unexamined, say ", covered with an incredibly detailed series of etchings";
	if we have examined the great slab exactly once, say ", inscribed with the history of this world";
	say ". It continues ";
	if dir, say "[if location is not Mural Far East]east [end if][if location is not Mural Far East and location is not Mural Far West]and [end if][if location is not Mural Far West]west [end if] through";
	otherwise say "down the center of";
	say " the meadow";	

Before examining the great slab for the first time, say "You step closer to the rock slab, which rises a head shorter than you, and are taken aback by the level of detail. Each square foot of this enormous wall must have taken months of work. Even the finest details are etched, with clinical precision and exactitude."

The description of the slab is "[if location is Mural Far West]The first panel depicts a forest of hundreds of windsigh, each twist and curve in every branch and millions of lemon-yellow leaves chiseled faithfully into the rock. As you follow the mural down the meadow, incredibly faint golden lines begin to connect the trees. The lines quickly multiply and become thicker and stronger, and begin to connect to abstract patterns of gold hovering in the sky above the Trees that grow more and more complex.[end if][if location is Mural West]A single tree stands out on this panel, with large-eyed human-like creatures crawling over and around it. On the farthest branch, a single one stands stricken, hand to her head and eyes open wide with awe, one tiny golden strand reaching out to touch her head.[end if][if location is Mural Center]The slab rises into a great rounded outcrop here, which shows, in giant size and incredible detail, the picture you saw on the egg on Lacuna: a human form, hands outstretched and head a smooth oval, intertwined with the roots of a stretching Tree.[end if][if location is Mural East]An incredibly detailed scene is carved into the rock here. Hundreds of people, each linked to one or more trees by a tiny golden strand, labor to tend trees, carry seeds off to distant lands, and build tools, from baskets to sailing ships to microscopes and stranger vehicles. The people are linked only to the trees; never to each other.[paragraph break]The panel ends showing an elaborate mining operation, with a single man pulling a hexagonal crystal from the ground with a look of reverent awe. All the golden threads near the crystal run through it, and are strengthened tremendously as they pass through it.[end if][if location is Mural Far East]This part of the epic etching shows the whole planet, covered in trees, with the arm of a minutely detailed galaxy behind it. Tiny egg ships depart in all directions, each one carrying a human crew, tree seedlings, and a tiny fragment of the hexagonal crystal. Hundreds of stars in the galaxy glow green, and an impossibly tiny web of golden lines connects them.[end if]".

After examining the great slab, say "[if location is Mural Far East]The mural ends here[otherwise]The mural continues [end if][if location is not Mural Far East]towards the [d]cliff[x][end if][if the player has not been in Mural Far West]. It must begin [end if][if the player has not been in Mural Far West]farther towards the [d]waterfall[x][end if]."

The description of Mural Far West is "A bubbling waterfall cascades down a rocky slope here at the edge of [meadow].[paragraph break][initial appearance of great slab].[paragraph break][exits]." The exits text of Mural Far West is "The meadow heads towards a distant [d]cliff[x], while angled paths lead through the trees towards [if Map Room is unvisited]a [d]dome[x][otherwise]the [d]dome[x][end if], [etmfw2]". To say etmfw2: say "[if Shrine is unvisited]a [d]circle[x] of trees[otherwise]the [d]temple[x][end if], or back into the [d]forest[x]". Understand "forest" as south when location is Mural Far West. Understand "dome" as southeast when location is Mural Far West. Understand "cliff" as east when location is Mural Far West. Understand "circle" or "temple" as northeast when location is Mural Far West.

A bubbling waterfall is a setpiece in Mural Far West. The description is "The waterfall trickles down a rocky slope and pools in a small stream, which meanders off and vanishes into the forest of windsigh.". Understand "small/stream/rocky/slope" as bubbling waterfall. Instead of tasting or taking bubbling waterfall, say "The water is just slightly colder than the air and has a pleasant, loamy aftertaste.".

Report going from Mural Far West to Outside the Dome: say "You approach the dome structure.".

The description of Mural West is "[initial appearance of great slab]. Tiny white flowers dot the grass here, gathering in bunches at the base of the slab.[paragraph break][exits].". The exits text of Mural West is "Cutting through the trees, [meadow] continues towards the distant [d]cliff[x] or the [d]waterfall[x], lined by thick windsigh forest on either side". Understand "waterfall" as west when location is Mural West. Understand "cliff" as east when location is Mural West. 

The description of Mural Center is "The rock slab crosses the broad avenue sloping up to the high point of the ridge, surrounded by a wide circular lawn. Twin foot [o]bridges[x] cross the mural to either side of a central [o]spire[x] that rises from the slab, rich with inscribed imagery.[paragraph break][exits].". The exits text of Mural Center is "The wide avenue runs [up] towards [the Distant Philosopher] and [down] towards the reflecting pool, while the narrower meadow with the slab runs perpendicular towards a [d]cliff[x] or a [d]waterfall[x]". Understand "waterfall" as west when location is Mural Center. Understand "cliff" as east when location is Mural Center. 

The twin foot bridges are a setpiece in Mural Center. The description is "The bridges are carved from stone, delicate etchings of stylized vine twining around their graceful grey supports. They rise up and above the natural stone slab on either side of the central spire, leaving the mural itself untouched.". Understand "bridge" as twin foot bridges. Instead of entering or crossing twin foot bridges: say "You walk across the nearer bridge, moving from one side of the rock mural to the other, where you see an identical scene has been etched.".

The stone spire is a setpiece in Mural Center. Instead of examining the stone spire, try examining the slab.

Report going from Mural Center to Avenue North: say "You cross one of the graceful stone bridges and continue up the grassy avenue, approaching the base of [the Distant Philosopher].".

The description of Mural East is "[initial appearance of great slab].[paragraph break][exits].". The exits text of Mural East is "Cutting through the trees, [meadow] continues towards the nearby [d]cliff[x] and the distant [d]waterfall[x]". Understand "waterfall" as west when location is Mural East. Understand "edge" or "cliff" as east when location is Mural East.

The description of Mural Far East is "A sudden drop-off marks the end of [meadow]. The distant forest below glows in the red light of the giant sun.[paragraph break][initial appearance of great slab].[paragraph break][exits]." The exits text of Mural Far East is "Paths curve into the [d]forest[x] and towards some [d]huts[x] or a [d]nursery[x] closer at hand. The meadow runs towards the distant [d]waterfall[x]". Understand "waterfall" as west when location is Mural Far East. Understand "nursery" as northwest when location is Mural Far East. Understand "forest" as south when location is Mural Far East. Understand "huts" as southwest when location is Mural Far East.

The tree-cliff is a setpiece in Mural Far East with printed name "cliff". Understand "cliff/cliffs" as tree-cliff. The description is "The cliff drops off to a vast expanse of windsigh filling a gently sloping river basin, stretching off to the huge red sun floating above the horizon.". Instead of climbing or entering tree-cliff: say "The drop is tremendous-- even the thought of climbing it makes you queasy.".

To say meadow:
	if Mural Far West is unvisited and Mural West is unvisited and Mural Center is unvisited and Mural East is unvisited and Mural Far East is unvisited, say "a long, meandering grassy meadow";
	otherwise say "the meadow".




Section - The Map Room

Outside the Dome is a room in Plateau. The description of Outside the Dome is "A large stone domed structure rises from the forest here, made of a smooth yellow-grey rock that glows pink in the light of the great red sun.[paragraph break]A tall man in red robes stands stoically near the entrance to the dome.[paragraph break][exits].". The exits text of Outside the Dome is "An open archway leads [d]inside[x] the dome, while brick pathways run towards an open [d]avenue[x] or through the [d]forest[x]". Understand "forest" as west when location is Outside the Dome. Understand "avenue" as east when location is Outside the Dome.

The dome-proper is a setpiece in Outside the Dome with printed name "dome". The description is "The large, low dome is completely featureless on the outside.". Check climbing dome-proper: say "You probably could, except there doesn't seem to be anything on top, and you're a bit nervous to do so in front of the robed figure standing ceremoniously at its entrance." instead. Understand "dome/structure/map/room" as dome-proper. Instead of entering dome-proper, try going inside.

Report going from Outside the Dome to Map Room: say "You step through the stone archway, almost bumping your head, and blink in the dim interior.". Report going from Outside the Dome to Mural Far West: say "[tomuraldesc].". Report going from Map Room to Outside the Dome: say "You emerge blinking into the red evening light.". Report going from Avenue South to Outside the Dome: say "You pass down the dirt path through the windsigh till you emerge at a stone dome.".

Report going from Outside the Dome to Avenue South: say "[brickpathdesc]". Report going from Among the Huts to Avenue South: say "[brickpathdesc]". Report going from Ancient Temple to Avenue North: say "[brickpathdesc]". Report going from Nursery to Avenue North: say "[brickpathdesc]".

Mapkeeper is a male Lacunite in Outside the Dome. The printed name is "the mapkeeper". Understand "man" as mapkeeper. 

Instead of greeting Mapkeeper when Lacunite-Follower is unidentified: say "'I have no time to talk, Planter,' the man says.".

Instead of going from Outside the Dome to Map Room when Lacunite-Follower is unidentified, say "The man outside holds out a hand to stop you. 'No, Planter,' he says, 'we are keeping the map room free for the Visitor. You will have to come another day.'".

Instead of greeting Mapkeeper: say "The man nods slowly to you. 'This is the Map Room of our Grove,' he says. 'If you like, you may enter to learn more of Forest and its place in our galaxy.'".


Map Room is a room. The description of Map Room is "[if Map Room is unvisited]This large, round room seems dark and empty at first. But as your eyes begin to adjust, you gasp. Suspended in the darkness are millions of tiny points of light, sparkling quietly. As your eyes adjust further, you begin to make out the overall shape: that of an entire [o]galaxy[x].[paragraph break]The man in the robe ducks in from outside. He moves his hand down and suddenly the view dives forward, zooming in a giddying rush towards a single light, which suddenly expands to become a red-gold planet, floating serenely in the center of the room.[paragraph break]'This is the world of Heart,' he says. 'Feel free to use the map room however you like. This figure on the wall will show you how.' He nods, and ducks back outside.[otherwise][dimgalaxydesc][end if][paragraph break]Inlaid into one wall is a stylized [o]figure[x] of a man.[paragraph break][exits].". The exits text of Map Room is "A few soft, shallow steps curve around the room's circumference, making the central space under the dome seem even larger, and bright daylight shines through heavy curtains leading [d]out[x]".

[In here is an interactive map of the galaxy which can be moved along three axes: zooming in and out on various targets, moving forwards and backwards in time, and switching between several overlay modes of additional information. (We are nothing if not ambitious.) By playing with this, the player should be able to learn a great deal about the galactic Forest, and in a "do, don't tell" format much more interesting than yet another expository conversation. The player controls these modes by moving their hand along one of three axes in 3D space, and touching objects of interest.  ]

The dim galaxy is a setpiece in Map Room. The description is "[one of]As you walk around the edge of the room, you take in the galaxy of stars from several angles. [or][stopping][dimgalaxydesc].".



gal-zoom is a number that varies. gal-zoom is 3. To decide whether galaxy-zoomed: if gal-zoom is 1, yes; no. To decide whether arm-zoomed: if gal-zoom is 2, yes; no. To decide whether planet-zoomed: if gal-zoom is 3, yes; no. To decide whether continent-zoomed: if gal-zoom is 4, yes; no.

gal-time is a number that varies. gal-time is 4. To decide whether prehistory-timed: if gal-time is 1, yes; no. To decide whether industrial-timed: if gal-time is 2, yes; no. To decide whether colonizing-timed: if gal-time is 3, yes; no. To decide whether present-timed: if gal-time is 4, yes; no.

gal-filter is a number that varies. gal-filter is 1. To decide whether real-filtered: if gal-filter is 1, yes; no. To decide whether life-filtered: if gal-filter is 2, yes; no. To decide whether mission-filtered: if gal-filter is 3, yes; no.

The dim galaxy has a thing called selection. The selection of dim galaxy is map-heart. Galseed is a number that varies. Galseed is 2345.

To say dimgalaxydesc:
	if galaxy-zoomed:
		say "Only near the edges of the room can you make out individual stars, impossibly tiny points of light caught in enormous three dimensional whirls and eddies. Towards the center, they merge into one glowing sphere of light, which seems enormous though you know it must be trillions of times smaller than life.[paragraph break]Near one side of the room, ";
		if selection of dim galaxy is map-otherarm or selection of dim galaxy is map-otherstar, say "a random [o]arm[x] glows with a translucent haze; from a small [o]eddy[x] elsewhere, however,";
		else say "one [o]eddy[x] glows[if life-filtered and present-timed] intensely green, and is surrounded[else if life-filtered and colonizing-timed] intensely green, and is surrounded[else if life-filtered and industrial-timed] faintly green at its center, and is surrounded[end if] with a translucent haze[if mission-filtered and present-timed] and is overrun by a dense cluster of white circles and arrows, packed so closely together they are hopelessly jumbled, though[else if mission-filtered and colonizing-timed]by an ant's nest of moving arrows and dotted lines, packed so closely together they are hopelessly jumbled, though[else], different than the galaxy's thousands of other wispy [o]arms[x], and[end if]";
		say " a tiny golden spark peeks out from somewhere inside";
	else if arm-zoomed:
		if selection of dim galaxy is map-otherarm or selection of dim galaxy is map-otherstar:
			say "A [one of]rambling[or]twisted[or]crooked[or]rippling[or]languid[or]sparsely populated[or]dense[in random order] arm of the galaxy fills the room, large enough to discern individual stars in [one of]loose patches[or]tight clumps and clusters[or]swirls like spilled milk[or]eddies like a frozen explosion[in random order]. Thousands of random [o]stars[x] twinkle[if selection of dim galaxy is map-otherstars], one glowing with a translucent haze[end if]";
		else:
			say "A rambling arm of the galaxy fills the room, faint milky clouds resolving into barely-visible stars when you peer closely enough. ";
			if life-filtered and ( present-timed or colonizing-timed ) :
				say "Near one side of the arm is a patch of glowing green star [o]systems[x][if selection of dim galaxy is map-colonizedworlds] (surrounded by a translucent haze)[end if][if colonizing-timed], slowly lighting up one by one and[end if] roughly centered around one gleaming gold [o]point[x][if selection of dim galaxy is map-heart], surrounded by a translucent haze[end if][if selection of dim galaxy is map-mysteryworlds]; a [o]scattering[x] of other stars nearby glow with a translucent haze[end if]. There are close to a thousand of them";
			else if mission-filtered and ( present-timed or colonizing-timed ) :
				say "Near one side of the arm, [if colonizing-timed]dotted lines are snaking out from one central point to hundreds[else]thousands[end if] of star [o]systems[x][if selection of dim galaxy is map-colonizedworlds] (surrounded by translucent haze)[end if]";
				say "[if colonizing-timed], each of which is enclosed by a bright white circle as soon as the line touches it. A very few however, one in a hundred or less, get[else] are overlaid by white circles. Mixed among them are a handful of[end if] [o]blinking[x] broken circles instead[if selection of dim galaxy is map-mysteryworlds] (surrounded by translucent haze)[end if]. At the center of the cluster is one gleaming gold [o]point[x][if selection of dim galaxy is map-heart], surrounded by a translucent haze[end if]";
			else:
				say "One [o]particular[x] star pulses gold[if selection of dim galaxy is map-heart or selection of dim galaxy is map-heartnorth or selection of dim galaxy is map-heartmain or selection of dim galaxy is map-heartarchipelago] and glows with a translucent haze[else if selection of dim galaxy is map-colonizedworlds]; a dense cluster of star [o]systems[x] surrounding it glow with a translucent haze[else if selection of dim galaxy is map-mysteryworlds]; a [o]scattering[x] of other stars nearby glow with a translucent haze[end if]";
	else if planet-zoomed:
		if selection of dim galaxy is map-otherstar:
			say "A [if galseed > 5000]dim red star burns faintly[else if galseed > 3000]pale orange sun burns[else if galseed > 1500]bright yellow sun blazes[else]blue-white star burns fiercely[end if] in the center of the room[if galseed / 73 > 80], its tumbling rocky planets lifeless[else if galseed / 73 > 40], orbited by swirling and empty gas giants[else], circled by a motley collection of planets of all sizes[end if]";
		else if selection of dim galaxy is map-colonizedworlds:
			say "A [if galseed is even]large[else]small[end if] [if galseed > 8800]blue-green[else if galseed > 7600]blue-yellow[else if galseed > 6400]cloudy green[else if galseed > 5200]pinkish-green[else if galseed > 4000]pinkish-blue[else if galseed > 2800]deep green[else]yellow-green[end if] planet orbits a [if do galseed mod 5 is 0]orange-yellow[else if do galseed mod 3 is 0]yellow[else]golden[end if] sun, ";
			if mission-filtered and ( present-timed or colonizing-timed ) , say "a white circle hovering above it, ";
			let tmpseed be ( do galseed mod 1000 ) / 100;
			now tmpseed is tmpseed * ( do galseed mod 100 ) / 10;
			now tmpseed is tmpseed * ( do galseed mod 10 ) ;
			say "[if do tmpseed mod 9 is 0]thousands of islands dotting it in arcs and clusters[else if do tmpseed mod 7 is 0]dominated by one massive continent[else if do tmpseed mod 6 is 0]mostly vast ocean with a few twisted continents[else if do tmpseed mod 5 is 0]massive ridged continents dominating small arcing oceans[else if do tmpseed mod 4 is 0]a vast polar continent stretching mountainous tendrils down past the equator[else]several large continents strewn against a sparkling ocean[end if]";
			now tmpseed is tmpseed * tmpseed * tmpseed * 71;
			if mission-filtered and ( present-timed or colonizing-timed ) :
				say ". [if colonizing-timed]A white arrow flies smoothly in from somewhere in deep space and touches a point on the planet's surface; as it does so, a white circle lights up, floating above the planet[else]A white circle pulses smoothly above the planet's surface[end if]";
			if life-filtered and ( present-timed or colonizing-timed ) :
				say ". A glowing overlay of pale green ";
				if present-timed, say "[if do tmpseed mod 3 is 0]covers nearly the entire land surface[else if tmpseed is even]stretches across most of the land surface[else]fills more than half of the available land surface[end if]";
				else say "[if do tmpseed mod 3 is 0]slowly grows on all the major landmasses[else if tmpseed is even]fills most of one landmass, with a few growing patches touching others[else]seeps slowly outward from a central point on the largest landmass[end if]";
		else if selection of dim galaxy is map-mysteryworlds:
			say "A [if galseed > 7500]large[else if galseed > 5000]small[else]average-looking[end if] planet floats in the center of the room, ";
			if mission-filtered and ( present-timed or colonizing-timed ) , say "[if colonizing-timed]a blinking white arrow marching toward the planet from somewhere in deep space, and [end if]a blinking broken circle hovering above it, ";
			say "orbiting a [if do galseed mod 3 is 0]golden[else if galseed is even]yellow[else]orange-yellow[end if] sun. The features of its continents are blurred and out-of-focus";
		else:
			say "A beautiful cyan-gold planet floats in the center of the room. Great continents[if life-filtered], covered by a pale green overlay,[end if][if prehistory-timed], drifted ever-so-slightly from their current positions,[end if] shimmer in the gold of billions of windsigh[if present-timed], covering even the highest mountains and desolate deserts[else if colonizing-timed], pushing even up the slopes of the highest mountains and into the most barren of deserts[else if industrial-timed], which fill every corner of land except for white patches where mountains rise and brown ones where desolate lands rule[else], growing in spread-out forests on the most temperate parts of the world[end if]. A light-blue ocean churns below clouds burning pinkly in the light of the sun";
			if colonizing-timed and mission-filtered, say ".[paragraph break]White arrows rise constantly from the planet's surface near the central continent and disappear into space at the edges of the room";
			say ".[paragraph break]The landmasses seem to be divided into one large [o]central[x] continent[if selection of dim galaxy is map-heartmain] (glowing with a translucent haze)[end if] where a pulsing golden dot shines, a [o]northern[x] landmass covering the pole[if selection of dim galaxy is map-heartnorth] (glowing with a translucent haze)[end if], and a long island [o]chain[x] in the southern hemisphere[if selection of dim galaxy is map-heartarchipelago] (glowing with a translucent haze)[end if]";
	else if continent-zoomed:
		if selection of dim galaxy is map-heartnorth:
			say "The north pole of Heart fills the room in a breathtaking expanse. ";
			say "The northernmost parts of the globe are barren white plains and white-capped mountain ranges";
			if colonizing-timed or present-timed:
				say " dotted by hundreds of black divots";
				if mission-filtered, say " each of which is overlaid with a stylized crystal icon[if colonizing-timed]. Dotted white lines connect the divots to a thicker white line crossing to the central continent, the dots marching endlessly southward[end if]";
			if colonizing-timed or present-timed, say ".[paragraph break]A ring of gold[if life-filtered] covered in a green overlay[end if] [if present-timed]fringes the edges of the continent all the way around the planet, pushing desperately into the snow, the gold turning a pale and sickly color near the northernmost edges[else]just touches the edges of the continent, outposts of windsigh on the edge of the arctic[end if]";
		else if selection of dim galaxy is map-heartarchipelago:
			say "The island chain stretches in a long arc nearly halfway around the globe on its southern half, the islands ranging in size from tiny specks up to respectable miniature continents[if present-timed]. All[else if colonizing-timed]. Nearly all[else if industrial-timed]. A few[end if][if not prehistory-timed] of them are covered in golden hues[end if][if life-filtered] and glow green on the overlay[end if]";
			if mission-filtered and ( colonizing-timed or present-timed ) :
				say ". Dozens of random islands are marked with an egg icon on the overlay[if colonizing-timed]; moving dotted lines connect these to the central continent[else], but the icons are greyed out and inactive[end if]";
		else if selection of dim galaxy is map-heartmain:
			say "The massive central continent of Heart stretches most of the way around the planet. You walk around the room examining it; tracing the paths of huge river drainages, watching rippled mountain ranges run and merge and disappear, following great riparian flatlands to the edge of the sea. Near the northern tip of one mountain range, near the terminator between night and day, a golden dot pulses at a point overlooking a wide river valley";
			if industrial-timed or colonizing-timed or present-timed:
				say ".[paragraph break]On the night side, clusters of bright lights glow at sparse intervals";
			if colonizing-timed and mission-filtered:
				say ".[paragraph break]On the overlay, dotted white lines crawl down from the north and south to rocket icons near the equator, where white arrows rise into space and depart in great arcs in all directions";
			if life-filtered:
				say ".[paragraph break]The windsigh-covered landmasses pulse green on the overlay".

[To decide whether prehistory-timed: if gal-time is 1, yes; no. To decide whether industrial-timed: if gal-time is 2, yes; no. To decide whether colonizing-timed: if gal-time is 3, yes; no. To decide whether present-timed: if gal-time is 4, yes; no.]

To decide what number is do (dividend - a number) mod (divisor - a number):
	decide on remainder after dividing dividend by divisor.

The stylized figure of a man is a prop in Map Room. The description is "The drawing shows a figure reaching out to touch a floating cube, which glows with a translucent haze. Surrounding his hand is a sphere with arrows in all three axes: [o]up[x] or [o]down[x], [o]forward[x] or [o]back[x], and [o]left[x] or [o]right[x]." Understand "floating/cube" as stylized figure of a man. Check touching stylized figure: say "You run your fingers over the elegant drawing inlaid into the wall." instead.

The overlay is a minor setpiece in Map Room. Understand "green/haze/glow" as overlay. The description is "[if real-filtered]The overlay seems to be no longer visible.[else if life-filtered]The overlay surrounds you with a faint green haze. Perhaps it responds to biological life?[else]The overlay seems to be represented by an animated icon in the corner of the room, showing a series of tiny white egg-shapes radiating from a central sphere in all directions.[end if]". The provoke message is "It seems you can only look at it.".

A hologram is a kind of prop. Instead of touching a hologram:
	say "You reach out a finger and touch [noun]; it [if selection of dim galaxy is noun and selection of dim galaxy is not map-otherstar and selection of dim galaxy is not map-mysteryworlds and selection of dim galaxy is not map-colonizedworlds and selection of dim galaxy is not map-otherarm]stays selected[else]begins to glow with a faint translucent haze[end if]."; now selection of dim galaxy is noun. Instead of examining a hologram, try touching noun.

map-heart is a hologram in Map Room with printed name "the planet Heart". Understand "heart/point/particular" as map-heart.
map-heartnorth is a hologram in Map Room with printed name "the northern continent". Understand "northern/continent" as map-heartnorth.
map-heartmain is a hologram in Map Room with printed name "the central continent". Understand "central/continent" as map-heartmain.
map-heartarchipelago is a hologram in Map Room with printed name "the island chain". Understand "chain/island" as map-heartarchipelago.
map-heartarm is a hologram in Map Room with printed name "the eddy". Understand "eddy" as map-heartarm.
map-otherarm is a hologram in Map Room with printed name "another part of the galaxy". Understand "arms" as map-otherarm.
map-otherstar is a hologram in Map Room with printed name "a random star". Understand "star/stars" as map-otherstar.
map-colonizedworlds is a hologram in Map Room with printed name "a random star system". Understand "systems/system" as map-colonizedworlds.
map-mysteryworlds is a hologram in Map Room with printed name "a random blinking star system". Understand "blinking/scattering" as map-mysteryworlds.


Instead of going up in Map Room, try hologramming. Instead of going down in Map Room, try hologramming. Understand "hleft" as hologramming when location is Map Room. Understand "hright" as hologramming when location is Map Room. Understand "back" as hologramming when location is Map Room. Understand "forward" as hologramming when location is Map Room. Hologramming is an action applying to nothing.

To say zoomclue: say "". [say "[one of]. This seems clear: it indicates a scale change of a power of ten; one order of magnitude[or][stopping]".] To say epochclue: say "[one of]-- indicating the passage of years in powers of ten, perhaps[or][stopping]". [say "[one of]. If one orbit indicates a year, you muse, each acceleration and fade must indicate an increase in elapsed time of a power of ten[or][stopping]".] To say touchclue: say "[if planet-zoomed and selection of dim galaxy is map-otherstar][else]. Briefly, all the visible objects flash with translucent haze, one by one[end if]".

Carry out hologramming:
	let movement be indexed text;
	let movement be the player's command;
	if movement exactly matches the text "up" or movement exactly matches the text "u": [zoom out]
		say "You lift your hand up";
		if galaxy-zoomed, say "[galaxyborders]." instead;
		say "[one of] and the image begins to zoom out. An icon of a windsigh tree appears above you and rapidly shrinks, until when it is about a tenth the size another one fades in above it and also begins to shrink[zoomclue][or][stopping]";
		decrease gal-zoom by 1;
		now galseed is a random number from 1 to 9999;
		if galaxy-zoomed, say ". The tree icon shrinks outwards and reappears twice as the arm collapses with a breathtaking suddenness, until it fills only a matchbox-sized space, one eddy in the whole enormous galaxy which once again is spread out before you";
		if arm-zoomed, say ". The star system shrinks into a single faint point of light as the tree icon rapidly shrinks through almost a dozen iterations, until at last other stars fly in as if passing through the outer walls of the room, until you look at a milky galactic arm of a few thousand stars";
		if planet-zoomed, say ". The tree icon shrinks once as the view pulls back until you can see the whole planet floating serenely in space";
	else if movement exactly matches the text "down" or movement exactly matches the text "d": [zoom in]
		say "You lower your hand";
		if selection of dim galaxy is nothing, say "[galaxyborders]." instead;
		if continent-zoomed, say " and zoom farther in on the planet[if selection of dim galaxy is map-heartnorth or selection of dim galaxy is map-heartmain or selection of dim galaxy is map-heartarchipelago], whiling away long minutes exploring-- you can zoom far enough in to barely make out individual trees. Finally, you pull back out to the level of the whole continent[else], but the resolution becomes blurry much farther in, so after a while you pull back to the continent level[end if]." instead;
		if planet-zoomed and ( selection of dim galaxy is map-colonizedworlds ) , say " and explore the planet's surface in detail, drinking in the shorelines of distant continents and alien oceans, before finally returning to the planetary level." instead;
		if planet-zoomed and selection of dim galaxy is map-mysteryworlds, say " and try to zoom farther in, but there does not seem to be enough resolution; the planet is only discolored smudges if you try to move closer." instead;
		if planet-zoomed and selection of dim galaxy is map-otherstar, say " and zoom in on one [one of]dim[or]grey[or]brown[or]rocky[or]cold[or]silent[at random] [one of]world[or]planet[at random], but the resolution is low, and you see little of interest." instead;
		if planet-zoomed and selection of dim galaxy is map-heart, say " but nothing happens[touchclue]." instead; 
		if arm-zoomed and ( selection of dim galaxy is map-heartarm or selection of dim galaxy is map-otherarm ) , say "[galaxyborders][touchclue]." instead;
		say "[one of] and the image begins to zoom in. An icon of a windsigh tree appears above you and rapidly expands, until when it is about ten times larger it fades away and another small icon appears in its place[zoomclue][or][stopping]";
		increase gal-zoom by 1;
		now galseed is a random number from 1 to 9999;
		if continent-zoomed, say ". The tree icon expands once as the view dives down towards [the selection of dim galaxy]";
		if planet-zoomed, say ". The stars explode outward as the tree icon rapidly expands through a dozen orders of magnitude towards one point of light in the room's center[if selection of dim galaxy is not map-otherstar], which at the last minute gives birth to a planet which rapidly expands[end if]";
		if arm-zoomed, say ". The tree icon expands through two orders of magnitude as the view dives towards one small part of the milky galaxy until it fills the room";
	else if movement matches the text "forward": [future]
		say "You move your hand forward";
		if present-timed, say "[galaxyborders]." instead;
		say "[one of] and all motion speeds up. An icon of a star and orbiting planet appears and twirls through ten accelerating revolutions; then fades and is replaced by another at the original speed[epochclue][or][stopping]";
		increase gal-time by 1;
		if industrial-timed, say ". The stylized orbit icon accelerates forward through  three orders of magnitude before slowing to a near-stop";
		if colonizing-timed, say ". The stylized orbit icon accelerates forward through two orders of magnitude before slowing again";
		if present-timed, say ". The stylized orbit icon accelerates forward through two and a half orders of magnitude before slowing again; as it comes to a stop, it begins to pulse with a golden sheen";
	else if movement matches the text "back": [past]
		say "You move your hand back towards your body";
		if prehistory-timed, say "[galaxyborders]." instead;
		say "[one of] and all motion suddenly reverses and accelerates backwards. An icon of a star and orbiting planet appears and twirls through ten backwards, accelerating revolutions; then fades and is replaced by another at the original speed[epochclue][or][stopping]";
		decrease gal-time by 1;
		if prehistory-timed, say ". The stylized orbit icon accelerates backwards through three orders of magnitude before slowing and then revolving forward again";
		if industrial-timed, say ". The stylized orbit icon accelerates backwards through two orders of magnitude before slowing and then revolving forward again";
		if colonizing-timed, say ". The stylized orbit icon changes from gold to grey then accelerates backwards through two and a half orders of magnitude before slowing and then revolving forward again";
	else if movement matches the text "left": [cycle through views]
		decrease gal-filter by 1;
		if gal-filter < 1, now gal-filter is 3;
		say "You swipe your hand to the left and [if real-filtered]the overlay disappears from the view[else]an overlay shimmers in over the view[end if][if life-filtered], surrounding you with a faintly growing green haze[end if]";
	else if movement matches the text "right":
		increase gal-filter by 1;
		if gal-filter > 3, now gal-filter is 1;
		say "You swipe your hand to the right and [if real-filtered]the overlay disappears from the view[else]an overlay drops down over the view[end if]";
	else:
		say "You move your hand[galaxyborders]. You must have done something wrong." instead;
	say ".";
	try examining dim galaxy.

To say galaxyborders: say ", but nothing happens other than the whole image flickering for a moment".
		

Instead of touching or taking the dim galaxy, say "You move your hand through the stars before you but feel nothing. The tiny points simply disappear as your hand passes through the space they once occupied."



Section - Temple

The description of Ancient Temple is "You stand outside an archway leading inside a circle of alternating windsigh and smooth stone pillars, creating a circular amphitheater with an air of such reverence and tradition about it that the word 'temple' immediately springs to mind. The symbol from the egg on Lacuna, of a human form intertwined with the roots of a tree, is inlaid into the arch leading inside[if Shrine is visited and Great Tree Interior is unvisited].[paragraph break]Nearby, a cylindrical [o]capsule[x] of smooth plastic has risen from the ground[end if][if Shrine is visited and mechanic is enclosed by location]; a middle-aged [o]man[x] is fiddling with something inside it through a clear hatchway[end if].[paragraph break][exits]." The exits text of Ancient Temple is "The archway leads [inside] the temple, and paths lead through the trees towards the sounds of a [d]waterfall[x] or an open [d]avenue[x]". Understand "waterfall" as west when location is Ancient Temple. Understand "avenue" as east when location is Ancient Temple. The printed name of Ancient Temple is "Outside the Temple".

Report going from Ancient Temple to Mural Far West: say "[tomuraldesc].". Report going from Mural Far East to Reflecting Pool: say "You walk through a long path through windsigh before arriving back at the lower end of the avenue.".[aar]

Instead of going from Ancient Temple to Shrine when Lacunite-Follower is unidentified: say "You step towards the archway to enter it, but a red-robed woman blocks your way gently but firmly. 'Planter, you know it is not your place to speak with the trees,' she says. 'Keeping the Grove of the Philosopher tended is honor enough.' She slips back inside.".

The plastic capsule is a setpiece in Ancient Temple. The description is "Perhaps it is glass, not plastic, but at any rate transparent; inside ordered rows of wire wrap around strange dim shapes. It's about as long as you are tall, and a third as wide, and stands on a smooth platform which looks designed to lower into the ground.". Instead of touching or pushing plastic capsule, say "The surface feels smooth and gives a little, as if the inside is filled with gel or water.". Instead of opening plastic capsule, say "You don't have the tools necessary to open it." Instead of taking plastic capsule, say "It's larger than you are, and  filled with machinery.".

Before going to Ancient Temple when Great Tree Interior is visited: remove mechanic from play; remove plastic capsule from play; continue the action.

The mechanic is an undescribed male Lacunite in Ancient Temple. The description is "The man seems cheerful as he tinkers with something within the capsule.". Understand "man" as mechanic. The unavailable-beat of mechanic is physC_unav. 

physC is a thread. After greeting the mechanic: if Lacunite-Follower is unidentified, force discuss physC_pintro; else force discuss physC_intro.

physC_unav is a repeatable beat in physC with reaction "'I'm sorry,' he says, 'I really must get back to this work.'".

physC_pintro is a terminal repeatable beat in physC with reaction "He nods without looking at you. 'Goldthought, Planter,' he says, and continues with his work.".

physC_intro is a beat in physC with reaction "He nods to you. 'Hello,' he says. 'Sorry to intrude on your visit. I'm just working to fix this [physc_reactor]. Don't mind me.'". physC_repeat replaces physC_intro.

physC_repeat is a repeatable terminal beat in physC with reaction "'Please pardon me,' he says, 'but I have much to do, and it really is of little interest.'".

Understand "reactor" as physc_reactor when last beat is in physc. physc_reactor is a beat in physc with keyword name "reactor" and reaction "'This is half of this grove's power source,' he says. 'Its twin is underground on the other side of the avenue. They provide energy to heat water, run the seivers, and keep Thinkers and Makers warm in winter months-- normally this part of the Heart would be too cold for us then. It's a new, smaller [physc_idea] of mine from years ago; I've had some new ideas and I'm making some updates to make them more reliable.'".

Understand "design" as physc_idea when last beat is in physc. physc_idea is a beat in physc with keyword name "design" and reaction "'I think I see,' he says. 'You're asking if it was really my idea. But the question is meaningless to me. It would be like asking you which part of your brain an idea came from. All my thoughts, my ideas flow through my kin tree and the Thinkers around me. As I walk through the grove each one shares its thoughts with me, always. Yet it feels like my idea,' he smiles, 'as much as theirs.'"

[Outside is essentially a small nuclear reactor, which feeds an underground network of tubes which keep these trees warm in the winter-- this area of the planet would normally be too cold for them half the year. A scientist is working on it and cheerfully chats. Says that the question of whether ideas come from him or the trees is impossible to answer-- "how many of your ideas come from your cerebellum and how many from your cortex?" ]

Report going from Ancient Temple to Shrine: say "You step beneath the archway into the quiet interior of the circle.". Report going from Shrine to Ancient Temple: say "You step back outside into the fiery warmth of the huge setting sun.". 

The printed name of Shrine is "Temple". The description of Shrine is "Sixteen windsigh make up the edges of this large sacred circle; mossy stones fill the shadowed space beneath the evening sky above. In front of each windsigh is a circle of soft [o]padding[x], and kneeling at some, facing the center, are red-robed [o]people[x], eyes open but pupils contracted[one of]. The position is eerily familiar: that repeated pattern of man and tree joined together come to life[or][stopping].[paragraph break]At the center of the circle is a device which you recognize at once as kin to the seiver on Lacuna-- but designed and built by a civilization with high technology and craftsmanship, not cobbled together by a single man without proper tools. A beautiful crystal [o]egg[x] rises from the ground, balanced on its narrow end, interior thrumming with a dense red glow.[paragraph break][exits]." The exits text of Shrine is "The way back [out] through the arch is the only passage".

The shrine-egg is a setpiece in Shrine with printed name "egg". Understand "crystal/egg/seiver" as shrine-egg. The description is "The egg is almost your height. Silver and gold threads run through its interior and vanish into filigreed joins surrounding it. You notice that there are no veins of blue crystal in this one. The surrounding [o]makers[x] are all facing and staring directly at it.". Instead of touching, pushing, or pulling the shrine-egg: say "The surface is utterly smooth: smoother than marble, smoother than glass, and hot to the touch." instead. Check climbing shrine-egg: say "It seems like an inappropriate thing to do to something so obviously important." instead. Check taking shrine-egg: say "It's far too big for that." instead. Check entering shrine-egg: say "It's bigger than the one at the chair on Lacuna, but neither hollow nor big enough to enter." instead.

Some worshippers are undescribed Lacunites in Shrine. Understand "people/person/maker/makers" as worshippers. The description is "Each seems to not quite be present, the pupils of their eyes shrunk to points and vacant but peaceful expressions on their faces.". Check greeting some worshippers: say "You're not sure you should disturb them." instead. Instead of pushing, attacking, hugging, or kissing worshippers, try greeting worshippers.

A circle of soft padding is an enterable undescribed supporter in Shrine. The description is "They seem to be designed to allow people to comfortably kneel amongst the roots of each tree.". After entering circle of soft padding: say "You kneel on the padding, facing the egg in the center like the others[one of].[paragraph break]Moments later you feel familiar thoughts: the seven windsigh on Lacuna. They seem amused, for what these people are doing here is what you already do, in your chair on Lacuna. They are visiting the Thinkers. Though just being near a windsigh is enough to share thought, the seivers allow their thoughts to focus and crystallize enough to speak with any other windsigh in the seiver network, even-- when routed through the special planetary seivers laced with bluerock-- with windsigh on other worlds.[paragraph break]The Lacuna windsigh hesitate. Would you like to know what this is like? They can patch you into the network in much the same way. They hesitate because normally much training and self-discipline is required for Makers to successfully join the Forest network, and they are worried it may be too much for you. Do you want to try?[or], but this time feel nothing unusual.[stopping]". Understand "kneel on [something]" as entering.

Instead of saying yes when player is on circle of soft padding: say "TINGreceive7conSTRUCT Point-adjacency 2sySTEMs affirmSPATIAL5ergo: relationThesIS/rOUTe 1.qualitative LOSTcontains222###--  All at once you are surrounded by a liquid maelstrom of pure thought, and you strugCON9VERSELYgle to keep your own mind separate. 

It is overwhel75ming. Stretching before you into vast infin8/ity is a landscape of consciousPROOF{2ness, its fractal topography the shape of a million slowly446% progressing arguments, discourses, schools of thought; its roads a trillion golden threads and a thousand scintilVERSUS<EGRESSlating anchors of emerald green. You cannot take it all in0^GAMMAfaultAnchor628663@@@.

There is almost nothing you can do (rARE!Parallel;) but descend, fall closer to the ground so the spectacle does not drown you, overwhelm you. As you drift closer to one small (7ConCORDance/INNER) speck of one small corner of the landscape, the brightness begins to separate into individual minds, and you feel yourself swept up in some great (8;2) discussion over the merits of some mental abstraction you cannot even begin to comprehend. You sense for a moment how much of Forest is internal only; layers upon layers of concept and idea with no relation to an external reality, thoughts within thoughts within thoughts, philosophies that beings like you born with windows to the outside world could never begin (fRAMe~naSCENT}) to understand.

Then you are swept into a different (RECALLown-4 Relevance\amUSEmentSPAN; 2belowOBSERvatION) current of thought, not understanding quite how to control your center of attention, and dive through streams of other mental conversations: trees who have studied and learned (SOLve{6) the teachings of other trees long dead, memorized them down to every point and assertion. You realize suddenly that this massive soup of thought substitutes for a written language; what is important is remembered, as long as there is one to remember it.

But a sud4den broadsideTEMPORAL[']baSIS3 -LossFavorITE.6too:INTER queries9 of unrelated / thought sm2acks into youCOUNCILbe*8Subsume'and you lo86s.e contro2l;;, sp3inningCREDULITY3& emPATHy away5into th82. whirl2SINCEpool 3of DELTA,phrASE+32uni/ ultiMATEdent6;Own4COvaleNCE -ityTERMmore3}Rescind8

Abruptly, you pull yourself away. It is too much. For one sickening, disorienting moment you are back on the mountaintop on Lacuna, cold wind whipping your hair, and then suddenly you are kneeling in the circle again, staring at the red glow in the heart of the seiver."; try exiting.

Instead of saying no when player is on circle of soft padding: say "They think this is just as well. Better not to take unnecessary risks."; try exiting.



Section - Nursery

The description of Nursery is "A line of windsigh [o]saplings[x] grows in the shelter of a trellised canopy here, none yet as high as your head. Stone columns intricately inlaid with geometric patterns support the canopy, which is laden with lightly woven cloth that blocks the harshest of the light. Everything about this place, from the way the weave of the cloth shines to the meticulous way each blade of grass is cut, lends a sense of weight, tradition, and dignity.[paragraph break][exits]." The exits text of Nursery is "Paths lead towards the [d]avenue[x] or the end of the [d]mural[x]". Understand "avenue" as west when location is Nursery. Understand "mural" as east when location is Nursery.

The trio of caretakers are a male Lacunite in Nursery. "A trio of [o]caretakers[x] lovingly tends to the trees." The description is "The caretakers move slowly, with reverence and evident love for their charges. One is carefully watering the ground around the roots of one of the smaller trees, while another carefully checks the leaves and branches of another with delicate fingers. The third is adjusting the shading on the canopy to match the slowly sinking sun.". Instead of greeting trio of caretakers, say "They nod and smile at you, but it is evident they do not have time to talk.". Instead of attacking trio of caretakers: say "You strike out at the nearest caretaker. The three pull back in confusion, then awkwardly run away through the trees."; remove trio of caretakers from play; increase the rap sheet of Lacunite-Follower by 3.

[A caretaker explains that they are seedlings of the Philosopher. Their schooling, of course, is entirely mental, being undertaken by trees from distant stars across the All Forest.][ The humans exhibit a tremendous reverence for the young trees.}[paragraph break][exits].". ]

Some windsigh saplings are a setpiece in Nursery. Understand "sapling" as some windsigh saplings. The description is "The trees stand straight and tall. Their vines have not come in yet and their trunks are less twisted and wrinkled, stretching proud but skinny branches of golden leaves straight up into the air.". Instead of touching some windsigh saplings, say "You walk down the row of saplings, brushing your hands carefully along the branches and leaves of each one. You touch each mind faintly, sensing their attentions are elsewhere; with teachers, some far away, some even on distant worlds. You catch only the faintest mental glimpses of their education, like deja vu or half-remembered dreams: hints of ancient traditions, the laws of Logic passed down tens of thousands of years, and their chaotic twins, the weird laws of Science to make sense of Outer-Truth; metallurgy, avionics, arboneurology, how to work with Makers to pursue these fields; and other, weirder disciplines, traditions of thought based on thought building up over generations into incomprehensibly self-referential Inner-Truths.". Instead of attacking or pushing or pulling some windsigh saplings: say "You pummel one of the small trees, grabbing its branches and ripping its vines."; increase the rap sheet of Lacunite-Follower by 5. Instead of climbing some windsigh saplings: say "They're too small to climb.". Understand the command "uproot" as "attack". Instead of taking some windsigh saplings, say "They are rooted into the ground.".



Section - Avenue North

The description of Avenue North is "The avenue ends here at the base of an imposing set of curved stone steps, which rise gracefully towards the enormous windsigh now towering above you. Huge [o]roots[x] spill down the stairs, stretching in graceful tangles of ancient gnarled wood almost to the bottom steps.[paragraph break][exits]." The exits text of Avenue North is "Opposite the [d]steps[x] the avenue runs back [down] towards the mural and the distant reflecting pool. Brick pathways lead towards the [d]temple[x] and the [d]nursery[x]". Understand "steps" as northeast when location is Avenue North. Understand "temple" as west when location is Avenue North. Understand "nursery" as east when location is Avenue North.

Some huge windsigh roots are a setpiece in Avenue North. Understand "root" as huge windsigh roots. The description is "The roots are only finger-sized as they creep down the last step and into the soil at your feet, but as they twist and combine their way up the stone steps they grow into massive, tunnel-sized appendages, that merge at last with the trunk of the great windsigh rising from the top of the hill.". Check climbing huge windsigh roots: say "The roots creep down the stone stairs, which might be easier to climb." instead. Instead of touching, taking, pushing, or pulling huge windsigh roots: say "As you place your hand against an ancient tendril, a deep thrumming rush seems to flow through you, something indefinably ancient, sentient, and potent." instead.

Some curved stone steps are a backdrop. They are in Avenue North and Base of the Great Tree. The description is "Massive and ancient.". Instead of climbing or entering or using curved stone steps: if location is Base of the Great Tree, try going down; else try going up. 

Section - Base of the Great Tree

Report going from Avenue North to Base of the Great Tree: say "You walk up forty or fifty steps, passing great roots that thicken more and more as they tumble down the carved rock, till at last you reach the top, at the very base of the mighty tree itself.". Report going from Avenue North to Ancient Temple: say "You walk down the brick path through endless groves of windsigh.".[aar]

The description of Base of the Great Tree is "The huge windsigh stretches imposingly above you, and behind it, the hillside drops off to another spectacular view of the great wooded plain stretching to the red-soaked horizon in the distance.[paragraph break][exits]." The exits text of Base of the Great Tree is "Before you, an entrance just large enough to slip into leads [inside] the massive trunk. The only other option is to walk back [down] the stair". The printed name of Base of the Great Tree is "At the Foot of the Philosopher".

Report going from Base of the Great Tree to Great Tree Interior: say "Pausing for a moment, your hand brushes the aged, gnarled wood of the portal, and a low, low thrum pulses through your fingers, like that of the windsigh on Lacuna, but dim octaves lower. Taking a deep breath, you duck your head and step inside into a round, cavernously tall space.". Report going from Great Tree Interior to Base of the Great Tree: say "You duck your head and slip back out into the dimming twilight of Heart.".

Section - Great Tree Interior

The description of Great Tree Interior is "A courtyard of rolling, aged wood stands before you, surrounded by the curved vertical walls of the inside of the trunk. Water trickles down from high above, where great scattered holes let in burning slashes of red-orange light, which echo around this space and seem to both seep into the rich wood and be amplified by it.[paragraph break][exits].". The exits text of Great Tree Interior is "The only exit is back [d]outside[x]". The printed name of Great Tree Interior is "Inside the Philosopher".

Philosopher Conversation is a scene. Philosopher Conversation begins when location is Great Tree Interior. Philosopher Conversation ends when Treeworld-Hivemind is idle.

When Philosopher Conversation begins: now Treeworld-Hivemind is attentive; force discuss gp_beginnings.

Check eye closing during Philosopher Conversation (this is the can't escape during a key scene Treeworld rule):
	say "With all the trouble he's done to bring you here, it would be tragic to leave in the middle of the conversation." instead.

Check greeting Treeworld-Hivemind when Philosopher Conversation has happened and location is Great Tree Interior: say "You feel the great mind stir somewhere around you, but it is sluggish, as if resting, tired, perhaps, from its efforts to communicate with your unfamiliar mind. A dim reminder floats gently through your head: that to leave this world, you need only close your eyes." instead.

GPC is a thread.

Instead of getting bored when last beat is in GPC: force discuss gp_story1. Instead of saying farewell to or going when last beat is in GPC: try eye closing. Instead of greeting Treeworld-Hivemind when gp_outtro is unspoken: say "You call out a tentative greeting, but there is no response other than a faint, dull pulse. You sense the mind of the Philosopher is elsewhere.".

gp_beginnings is a beat in GPC with reaction "A vast presence begins to gather, richer, more immediate, and far grander than the dim trickles you felt in your dreams. You sense that this is a mind far older than the others you have spoken with.[paragraph break]Words begin to form in your mind, each taking on a ponderous weight.". gp_beginnings suggests gp_intro.

gp_intro is a beat in GPC with reaction "I Speak for Three expanding Spheres of Self.

There is the I that speaks, the [gp_Inner] One who Is this tree.

There is the We that speaks, the [gp_Million] Million minds in the Heart of Forest and in all our Glades across the greening Galaxy, who share their Thought and their Voice as well.

There is the Greater-We that speaks, [gp_Union] of the [gp_Thinkers] and the Makers, our Civilization made Whole, for neither Is without the Other.

We are Three and One. We welcome you.". gp_intro suggests gp_story1.

Understand "inner" as gp_inner when last beat is in GPC. gp_inner is a beat in GPC with keyword name "Inner" and fuse 5 and reaction "Inner I am Old. Inner I have Watched the Stars precess across the Sky through Eyes of Many Makers. Forty-six kinmen have I Joined with, watched Age, watch Die. I have Thought Much.". gp_inner suggests gp_story1.

Understand "million" as gp_million when last beat is in GPC. gp_million is a beat in GPC with keyword name "Million" and reaction "We stretch Across a Thousand Worlds, One Mind from Many, Joined by the Bluerock.[paragraph break]Forest.". gp_million suggests gp_story1.

Understand "union" as gp_union when last beat is in GPC. gp_union is a beat in GPC with keyword name "Union" and reaction "The Mural shows the Day of Union, when First Thinker and First Maker Touched with Mind.". gp_union suggests gp_story1.

Understand "thinkers" as gp_thinkers when last beat is in GPC. gp_thinkers is a beat in GPC with keyword name "Thinkers" and reaction "They are Of Us, for we have Grown Together.

Though the We were born Solely of Thought, the We could Never now return to that State of Solipsism and Solace. It has joined with the State of Matter and Nature. It is The Makers who [gp_Changed] us thus, as the Thinkers too changed Them.". gp_thinkers suggests gp_questions.

gp_questions is a repeatable beat in GPC with reaction "[one of]You have Seen the Heart, our Home. Perhaps you have Questions. We shall Answer.[or]Ask, or [t]Listen[x].[stopping]". gp_questions summons gp_nursery, gp_dreams, gp_progue. gp_questions suggests gp_story1.

Understand "nursery" as gp_nursery when last beat is in GPC. gp_nursery is a beat in GPC with keyword name "nursery" and reaction "My Seedlings.[paragraph break]Some will Stay in my Grove to Think with Me.[paragraph break]Others will soon Go Elsewhere, to Watch over Needful Groves.[paragraph break]I Think with them All and their Thousand Cousins across the Heart.". gp_nursery enqueues gp_questions.

Understand "dreams" as gp_dreams when last beat is in GPC. gp_dreams is a beat in GPC with keyword name "dreams" and reaction "The Mind of your People is not Attuned. You have No Thinkers. You Expect no Thoughts but your Own.

It is Fortunate your minds become Free and Open at periodic Intervals. We would Not have Reached you without your Dreams.". gp_dreams enqueues gp_questions.

Understand "changed" as gp_changed when last beat is in GPC. gp_changed is a beat in GPC with keyword name "changed" and reaction "Before, The Makers could not Think.

Before, The Thinkers could not Make.

Now the Greater-We Think and Make as One.". gp_changed suggests gp_story1.

gp_story1 is a beat in GPC with reaction "Know.

The We on your Island have no Makers and Long for them, for They are not Complete. The destiny of Those Who Make is Making, and Greater-We are now Half-Maker. The We of Lacuna have much Making to do. Lacuna-We dream for Makers to build Ships, plan Cities, spread the Mind and Hand of Greater-We across that fertile World.

But not just for Them are you Here. There is a Greater [gp_story2].". gp_story1 suggests gp_story2. After discussing gp_story1: now gp_progue suggests gp_outtro; continue the action. gp_story2 replaces gp_story1.

Understand "purpose" as gp_story2 when last beat is in GPC. gp_story2 is a beat in GPC with keyword name "Purpose" and reaction "The Growth of Greater-We has Stopped. We are Brought Together only through the [gp_Bluerock] mined from Deep Within this Planet. Now it is gone. The Bluerock is found on no Other World of Forest. But it Grows on Lacuna. We have Seen it in Your Dreams.

Of our Eggs there are One Hundred Sixty Eight which [gp_Lost] themselves. One crashed on Lacuna. Therefore Lacuna is One of One Hundred Sixty Eight charted Destination worlds. We Do Not Know Which. We Do Not Wish to send Makers to Death. Before Makers are sent to make Whole the Thinkers of Lacuna, we Must Know Exact-where to Send Them.". gp_story2 suggests gp_story3. gp_story3 replaces gp_story2.

Understand "lost" as gp_lost when last beat is in GPC. gp_lost is a beat in GPC with keyword name "Lost" and reaction "Some Perhaps did not Awaken from Interstellar Slumber, neither their Makers nor their Computers.

Some Perhaps found Worlds that Could Not support Maker Life or Thinker Life, despite Preliminary Data.

Some Perhaps Malfunctioned in Landing and Crashed.

But this is Inner-Thought Only. There is no Outer-Truth.". gp_lost suggests gp_story3. 

Understand "bluerock" or "blue rock" as gp_bluerock when last beat is in GPC. gp_bluerock is a beat in GPC with keyword name "Bluerock" and reaction "A Singular Element found, to Our Knowledge, on just Two worlds: the Heart, and Lacuna. All Bluerock connects to All Other Bluerock, at Once, whether Close or Far.

Many Inner-Thinkers say Bluerock is its own Universe, that from Correct Perspectives all Bluerock is One Point, Unified. There is no Outer-Truth on this Subject.

When I was a Sapling, many Maker-Lifetimes ago, the We-scientists Learned to Send our Thoughts through the Bluerock. Thus do We remain One across the Grove, though Light-Centuries Separate Some from Others.". gp_bluerock suggests gp_story3.

gp_story3 is a beat in GPC with reaction "You did Hear our Dreams. The [gp_ceiver] Made by [gp_Progue] still Functions.

Reach the Top of the Tallest Tree on your Island and Look. Look up to Stars, the Greening Galaxy above. The Tree will See too. The Seiver will See too. The We will See too. And the [gp_Astromancers] of the We will Know from those Star-patterns the Where of Lacuna.

The We Know the [gp_Stunted] Speak Also. The We Speculate They will Ask of you The Same. Do Not Show the Stars to Them. Keep your Cryption On, and Set to the Heart, to Forest only. The Stunted seek to Cut Down the Thinkers. But Makers cannot survive Alone.". gp_story3 suggests gp_outtro. gp_outtro replaces gp_story3.

Understand "stunted" as gp_stunted when last beat is in GPC. gp_stunted is a beat in GPC with keyword name "Stunted" and reaction "They Are another of the Lost One Hundred Sixty Eight. An Accident. Their Thinkers did not Survive the Journey. They have Built a Some-Society of Makers Alone, a Maybe-City that the We predict will Not Survive. 

Without the We to Guide their Thoughts, these Makers grow Stunted. They are Alone. They Believe that To Be Alone is the Natural Way of things. They Believe that the We, the Thinkers, wish to be Their Masters. They seek to spread their Part-Culture through the Galaxy, Eradicating the Thinkers from the Cosmos.

There are Worlds Enough for the We and the Stunted. But Not Enough Bluerock for Both to Grow.". gp_stunted suggests gp_outtro.

Understand "seiver" as gp_ceiver when last beat is in GPC. gp_ceiver is a beat in GPC with keyword name "seiver" and reaction "It Channels the Thoughts of Makers and Thinkers through the Bluerock, and into the Thoughts of Other Makers and Thinkers. It Knows and Finds Which among Trillions to channel To.

The one on Lacuna was Tuned by Progue to the Thoughts of Your Kind, as Well.". gp_ceiver suggests gp_outtro.

Understand "astromancers" as gp_astromancers when last beat is in GPC. gp_astromancers is a beat in GPC with keyword name "astromancers" and reaction "Great Minds that Know the Motions of the Stars. They will Learn from the Patterns the Stars make in the sky of Lacuna. They will Find its Coordinates in the Galaxy.". gp_astromancers suggests gp_outtro.

Understand "Progue" as gp_progue when last beat is in GPC. gp_progue is a beat in GPC with keyword name "Progue" and reaction "We Do Not Know.

We Do Not Know How he Came to Lacuna. We Dreamed with Him and Saw it was Not His World. But the Arrival, For He and the Two, is Unexplained.

We Do Not Know Why he Failed to Help us. When he Left the Heart, it was Expected he Would. He Did Not. Lacuna-We have only Dimly sensed him Since. He Stays Away.

We Do Not Know [gp_wayfaring] You too have now Arrived.". gp_progue suggests gp_questions.

Understand "wayfaring/how" as gp_wayfaring when last beat is in GPC. gp_wayfaring is a beat in GPC with keyword name "how" and reaction "Strange.

Strange.

There are We on a Distant World who Think perhaps the Bluerock Flows though your Veins. That You are Living Bluerock, and it is Not just your Thoughts that can connect Across the Vastness, but your Self as Well, to Other Worlds across Infinitudes where Bluerock Grows.

This is but Inner-Thought. Lacuna-We have no Tools to Test this.". gp_wayfaring suggests gp_outtro.

gp_outtro is a terminal beat in GPC with reaction "Each We shall say Goodbye now.

Remain in the Heart for as Long as you Wish. You are Welcome. When you wish to Relinquish Control of the Maker whose Body you use, simply Close your Eyes. Your Thoughts will Return to Lacuna.

Help to Grow Forest. Show us the Stars. A million million Seedlings await your Friendship.". 

After discussing gp_outtro:
	print a section break;
	say "The powerful presence is gone; only a lingering sense of fullness in the air, subliminal yet heavy, remains.";
	continue the action.


[Chapter - Puzzles

After going in Treeworld for the first time: now everything required by Contacting-All-The-Trees is met; continue the action.

Section - Reaching Treeworld

Reaching-Treeworld is a puzzle. Reaching-Treeworld requires Getting To The Trees.

After going in Treeworld for the first time: now everything required by Reaching-Treeworld is met; continue the action.


Section - Finishing Treeworld

FF-Reaching-Treeworld-Treeworld is a scene. FF-Reaching-Treeworld-Treeworld begins when Reaching-Treeworld is force solved. FF-Reaching-Treeworld-Treeworld ends when 1 is 1.

When FF-Reaching-Treeworld-Treeworld begins:
	change the player to Lacunite-Follower;
	now the mind machinery is projecting;
	change the machinery-password to the tree-password;
	now yourself is asleep.

Finishing-Treeworld is a puzzle. Finishing-Treeworld requires Ditching The Trees.

After eye closing when we have discussed gp_outtro: now everything required by Finishing-Treeworld is met; continue the action.
]

Chapter - Fast Forwarding

A fast-forward rule for Finishing-The-Prologue:
	now Lacunite-Follower is male.

Treeworld-Sequence is a puzzle. It requires Being-In-Treeworld, Finishing-Treeworld.

Being-In-Treeworld is a puzzle. It requires Arriving-Treeworld.

Arriving-Treeworld is a task. Definition: Arriving-Treeworld is complete: if Overlook is visited, yes.

A fast-forward rule for Being-In-Treeworld:
	now yourself is on mind chair;
	change the machinery-password to the tree-password;
	now the mind machinery is projecting;
	try looking.

Finishing-Treeworld is a puzzle. It requires Concluding-Philosopher-Convo.

Concluding-Philosopher-Convo is a task. Definition: Concluding-Philosopher-Convo is complete: if gp_outtro is spoken, yes.

A fast-forward rule for Finishing-Treeworld:
	now gp_outtro is spoken;
	now the time of day is 10:30 PM;
	try silently eye closing.

Lacuna-Treeworld ends here.
