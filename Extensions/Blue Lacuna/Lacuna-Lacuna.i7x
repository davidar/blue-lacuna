Lacuna-Lacuna by Blue Lacuna begins here.

Use authorial modesty.

Volume - Lacuna

Book - General Configuration

Part - Setup & Initialization

Section - Description Helpers

[By sticking [bw of room] before each exit, the player is told which exit they just came from, which helps with geography and navigation.]

To say bw of (rm - a room):
	if former location is rm, say "back ".

To say bwt of (rm - a room):
	if former location is rm, say "back to ".

To decide whether longform:
	if location is unvisited, yes;
	if player-looking is true, yes;
	no.

To say dot: say ".[paragraph break]".

To say room ambience:
	if the ambience table of location is not Table of No ambience:
		fire one off by frequency from the ambience table of location, definitely selecting;
	otherwise:
		let reg be a random region-relevant region;
		if reg is a region:
			fire one off by frequency from the ambience table of reg, definitely selecting;
		otherwise if a random chance of 1 in 2 succeeds:
			fire one off by frequency from Table of Lacuna Weather ambience, definitely selecting;
		otherwise:
			consider time of day ambience;
			if the number of filled rows in Table of Potential Messages > 1:
				fire one off by frequency from Table of Potential Messages, definitely selecting;
			otherwise:
				fire one off by frequency from Table of Lacuna Weather ambience, definitely selecting.

To say time ambience:
	consider time of day ambience;
	if the number of filled rows in Table of Potential Messages > 1:
		fire one off by frequency from Table of Potential Messages, definitely selecting;
	otherwise:
		fire one off by frequency from Table of Lacuna Weather ambience, definitely selecting.
	
Section - Setting up for Story Mode

Activating-Story-Mode is a scene. Activating-Story-Mode begins when story mode and location is regionally in Lacuna. Activating-Story-Mode ends when the time since Activating-Story-Mode began is at least 0 minutes.

When Activating-Story-Mode begins:
	remove turtle button from play;
	remove crab button from play;
	remove seagull button from play;
	remove bee button from play;
	remove spider button from play;
	remove whale button from play;
	remove red wheel from play;
	remove yellow wheel from play;
	remove blue wheel from play;
	move boiler handle to Volcano Floor;
	now boiler handle is part of brick boiler;
	remove etchings from play;
	move alternate-etchings to Observatory Exterior;
	now alternate-etchings is part of pyramid;
	remove sticky wire from play; 
	remove thick cable from play;
	now secret rope bridge is open;
	remove wooden archway from play;
	remove secret-bridge control from play;
	remove mountain scrawl from play; 
	remove bee words from play;
	remove tree words from play.



Part - World Behaviors

First report taking off homemade outfit when location is regionally in Lacuna: say "You slip out of your traveling clothes, enjoying the feel of the warm breeze on your skin." instead. Check dropping homemade outfit: say "Better not. You don't want to lose them." instead. First report wearing homemade outfit when location is regionally in Lacuna: say "You slip back into your clothes." instead.

Check examining by name when location is regionally in Lacuna (this is the default to going towards views in Lacuna rather than examining them rule):
[	if noun is lava flow and location is South Beach, try wordgoing Center Beach instead;
	if noun is lava flow and location is Center Beach, try wordgoing North Beach instead;
	if noun is lava flow and location is North Beach, try wordgoing Rise instead;
	if noun is lava flow and location is Lower Beach, try wordgoing North Beach instead;]
	if noun is nearby beach and location is Lower Beach, try going southeast instead;
	if noun is nearby beach and location is Ocean Waters begin; try going east instead; end if;
	if noun is nearby beach and location is Rise, try going southeast instead;
	if noun is rainforest and location is Crater Pond, try going north instead;
	if noun is rainforest and location is Hive Room, try going east instead;
	if noun is rainforest and location is Viewpoint, try going south instead. 

Section - Landmarks

Carry out landmark-listing when location is regionally in Lacuna:
	say "The landmarks you've discovered are: ";
	repeat with locale running through visited landmarked rooms regionally in Lacuna begin;
		say "[line break]  ";
		if the landmark name of locale is not "null", say the landmark name of locale; otherwise say locale;
		if locale is location, say " (you are here)";
	end repeat;
	say line break.

The landmark name of Center Beach is "the [d]middle[x] of the beach". Understand "middle/cabin" as Center Beach. Check entering lagoon when Center Beach is visited and location is not Center Beach: try landmark-going Center Beach instead. Understand "lagoon" as Center Beach.
The landmark name of Fork is "the [d]clearing[x] where you first arrived". Understand "clearing" as Fork. 
The landmark name of East Marsh is "the [d]marshlands[x]". Understand "marshlands" as East Marsh. 
The landmark name of Chairlift Base is "the ropeway base [d]station[x]". Understand "station" as Chairlift Base. Check entering distant-ropeway when Chairlift Base is visited: try landmark-going Chairlift Base instead. 
The landmark name of Volcano Floor is "the volcano [d]collapse[x] at the boiler". Understand "collapse" as Volcano Floor. Check entering volcano proper when Volcano Floor is visited: try landmark-going Volcano Floor instead.
The landmark name of Hive Room is "the [d]hive[x]".
The landmark name of Egg Room is "the egg [d]ship[x]". Understand "ship" as Egg Room.
The landmark name of Overhang is "the [d]grotto[x] on the secret island". Understand "grotto" as Overhang.
 
Instead of landmark-going when location is regionally in Lacuna: 
	if noun is location, say "You're already here." instead;
	if ready to landmark-go begin;
	now we-are-landmark-going is true;
	unless location is Saddle or location is Atop or location is Top of Cave, now withered vine is closed; [ This prevents going through the ridge, which won't work if the tide is in, but we leave the opposite in so we can get down if we're starting from there. ]
	if noun is not a room, try examining noun instead;
	while location is not noun and we-are-landmark-going is true begin;
[		now wordgoing-flag is true;]
		if location is Ocean Waters, let aim be the best route from the location to noun through visited rooms; 
		otherwise let aim be the best route from the location to noun through landed visited rooms; 
		if aim is a direction, let target be the room aim from location;
		if aim is not a direction or target is not a room begin;
			say "[as the parser]Either you don't know how to get there from here, or something unusual is happening. You'll have to take it one area at a time from here[as normal]."; 
			tidy landmark-go;
			stop; 
		end if; 
		try silently going aim;
		if location is not target or the number of attentive people enclosed by location > 0 begin; 
			clean up landmark-go;
			tidy landmark-go;
			stop;
		otherwise;
			add location to travelogue;
		end if;
		follow the turn sequence rules;
	end while;
	tidy landmark-go;
	clean up landmark-go;
	end if.

To tidy landmark-go: [Lacuna-specific rules after landmark-going.]
	if withered vine is unlocked, now withered vine is open.

Section - Exploring Lacuna

Exploring Lacuna is a recurring scene. Exploring Lacuna begins when the player is regionally in Lacuna and Exploring Lacuna is not happening and Completing-Progue's-Character-Arc is unsolved. When Exploring Lacuna begins: the daemon wakes in one hour from now.    

When Exploring Lacuna begins: now the mind machinery is idling; change time factor to 3; now distant ocean is seen.

 Exploring Lacuna ends when the player is not regionally in Lacuna.

Chapter - General Ambience


Table of Lacuna Weather ambience
freq		text	table		trigger	flag
common	"A gust of wind catches your hair, tousling it this way and that before dying down."
common	"[if day]The sun ducks behind a high, fast moving white cloud for a moment, then returns to its former brilliance[end if][if night and moonup]High clouds cover the face of the moon, but in only moments they have moved on[end if][if night and moondown]Faint patterns of clouds move over the galactic spectacle above, as if the stars are one by one winking out and then returning[end if]."

Table of Lacuna Insect ambience
freq			text	table		trigger	flag
rare		"A small colorful beetle inches its way carefully along the ground near your foot."	--	crimson beetle
rare		"A small dark bug twirls past your head, its wings making a dull, lazy buzz."	--	black bug
rare		"A swarm of tiny winged insects, each no bigger than a pinhead, drifts by with the breeze."	--	swarm-of-midges
superrare		"A tiny spider drifts by on a gust of wind, strands of web catching on a clump of vegetation before it frantically scurries out of sight."	--	tiny spider
rare		"A brown spider with a fat body scuttles through the underbrush."	--	brown spider

An insect is a kind of set dressing. Understand "insect/insects/bug/bugs" as an insect. Check attacking an insect (called buggie):  remove buggie from play; say "[one of]You destroy the tiny [buggie][or]Effortlessly you crush the [buggie][at random]." instead. The description of an insect is usually "Gone already." Check taking an insect: say "You reach out a hand, but the tiny creature evades your grasp and hurries away." instead.

A crimson beetle is an insect. The description is "You bend closer to study it. Tiny gold threads stretch around its carapace, which is otherwise a deep crimson. It halts and quivers anxiously as you make a sudden movement." Check taking the beetle: say "You put your hand in front of it, but it turns and marches in another direction." instead. 

A black bug is an insect. The description is "It is gone almost before you can turn your head to study it more closely."

A swarm-of-midges is an insect. The printed name is "swarm of midges". Understand "swarm/midge/midges" as swarm-of-midges when swarm-of-midges is enclosed by location. The description is "For some reason, these seem to exist on nearly every world." Check taking the swarm-of-midges: say "They are almost as insubstantial as dust." instead.

A tiny spider is an insect.

A brown spider is an insect. The description is "Its legs are covered in tiny hairs, but its fat body is smooth and hairless.". Check attacking a brown spider: remove brown spider from play; say "You squash the brown spider, leaving behind only a leg-strewn smudge." instead. Check taking a brown spider: say "You let the creature crawl over your hands for a minute. Finally the tickling from its hairy legs forces you to put it back down and let it crawl away." instead.





Part - Lacuna Systems

Chapter - Power System

Section - The Pipes

A pipe is a kind of backdrop.  Understand "bamboo" or "pipe" or "piping" or "pipes" or "network" or "paint" as a pipe. A pipe has a number called pressure. Does the player mean turning or adjusting a pipe: it is very unlikely. The description of a pipe is usually "Once coated in now-flaking paint, the pipe, about as wide as your fist, is made from thick pieces of bamboo sealed together with vines coated with sticky tar.". Understand "follow [a pipe]" as a mistake ("[followpipemsg]."). Instead of pushing or pulling a pipe: say "It's firmly anchored in place." Understand "smoke [a pipe]" as a mistake ("It's not that kind of pipe."). Understand "fill [a pipe]" as a mistake ("The pipe is completely sealed; there's no opening."). Check climbing a pipe when location is Chasm Floor or location is Ravine Floor or location is Observatory Exterior: say "The pipe is too [if pressure of noun > 0]hot[else]smooth[end if] to get a grip on." instead.

To say followpipemsg: [These shouldn't have periods appended because ?]
	let item be noun;
	if item is red pipe, say redpipedetailmsg;
	if item is blue pipe, say bluepipedetailmsg;
	if item is yellow pipe, say yellowpipedetailmsg.

Section - The Pressure Gauges

[The pressure gauge at each device shows how much power it needs and how much it is receiving. Since this info is irrelevant in story mode, we omit mentioning it in room descriptions.]

A pressure gauge is a kind of container. Understand "quartz" or "cylinder" or "curious" or "pressure" or "numbered" or "line/lines" or "ring/rings" or "guage" as a pressure gauge. A pressure gauge is usually closed, unopenable, fixed in place and transparent. A pressure gauge has a number called target pressure. A pressure gauge has a pipe called related pipe. The description is "About the height of your hand, this hollow cylinder [connectionbit]. Meticulously carved from a solid piece of quartz, you can see through to the inside, where [if curr_press >= 7 and curr_press <= 30]torrents of steam rush upwards through roiling[otherwise if curr_press >= 1 and curr_press <= 6]steam bubbles up through boiling[otherwise]floats a tiny pool of standing[end if] water.[paragraph break]A series of thirty delicate rings are etched into the quartz; a firm black line marks the point [target pressure of noun in words] ring[s] up from the bottom.[paragraph break][pipe2bit].". To say pipe2bit: say "The [if curr_press >= 7]water dances around[otherwise]water level is currently[end if] [if curr_press is 0]even with the bottom ring[otherwise][curr_press in words] ring[s] up from the bottom[end if]". To say connectionbit: say "connects the [o]pipe[x] to the [if location is Chairlift Base]ropeway [o]mechanism[x][otherwise if location is Observatory Exterior][o]pyramid[x][otherwise][o]mechanism[x][end if]".

The dream-text of a pressure gauge is usually "long hollow tubes of quartz snaking off into the walls". Understand "fill [a pressure gauge]" as a mistake ("The cylinder is completely sealed; to the pipe on the bottom end, and the outflow [o]tube[x] on the other."). Check examining a pressure gauge when night: say "It's too dark to make out any details of the cylinder's appearance." instead. Check attacking a pressure gauge: say "The gauge is carved from solid quartz; without a hammer and chisel, you won't be able to make much of a dent." instead. Check opening a pressure gauge: say "It's a solid piece of transparent quartz, firmly connected on one end to the pipe and on the other to the [if location is Chairlift Base]ropeway mechanism[else if location is Observatory Exterior and pyramid is on-stage]base of the pyramid[else if location is Observatory Exterior]base of the chair[else if location is Chasm Floor or location is Chasm Edge]rock wall[else]boiler[end if]." instead. Check pushing a pressure gauge: say "It's firmly attached to the pipe and the whole thing is solidly anchored." instead.

To say gauge-description: say "[one of]A strange quartz [o]cylinder[x][or]A quartz pressure [o]gauge[x][stopping]".

To decide which number is curr_press: 
	let x be pressure of related pipe of noun;
	if puzzle mode and noun is the ropeway pressure gauge begin;  [ Reduce it by a bit less than half due to leak ]
		if x is 4 begin; now x is 2;
		otherwise if x is 5; now x is 3;
		otherwise if x is 6; now x is 3;
		otherwise if x is 7; now x is 4; 
		otherwise if x is 8; now x is 5;
		otherwise if x is 9; now x is 5;
		otherwise if x is 10; now x is 6;
		otherwise; now x is x / 2; end if;
		if the bucket is not stationary, now x is x - 4; 
	end if;
	decide on x.

An outflow tube is a kind of setpiece. Understand "bamboo" or "tube" or "outflow" or "long" or "vent" as an outflow tube. The description of an outflow tube is usually "The tube [if location is Volcano Floor]emerges from the top of the boiler[otherwise if location is Chasm Edge]pokes up from the ground near the vent[otherwise if location is Chasm Floor]sticks out of the side of the chasm near its top[otherwise if location is Observatory Exterior]pokes up from the ground nearby[otherwise]rises from the top of the mechanism[end if][if location is Volcano Floor][state of current outflow][otherwise][state of pressure of related pipe of noun][end if][otd2].". To say otd2: say "[if puzzle mode and location is Volcano Floor]. [gauge-description] serves as a join between the tube and the [o]boiler[x] itself[otherwise if puzzle mode and location is Observatory Exterior], joined to the pipe by a quartz [o]gauge[x][end if]". An outflow tube has a pipe called related pipe. Check entering an outflow tube: say "The tube is only about as wide as your forearm." instead. The dream-text of an outflow tube is usually "giant tubes of bamboo". Check climbing an outflow tube: say "It's not high or sturdy enough to climb.".


Chapter - The Windsigh Trees

A windsigh tree is a kind of setpiece. Understand "tree" or "curious" or "trunk" or "gnarled" or "root" or "roots" or "windsigh" or "bark" or "tree i painted" or "strange" as a windsigh tree. The printed name of a windsigh tree is usually "[if tree1 is named]a windsigh tree[otherwise if location is Fork]the tree you painted[otherwise][tree_rnd][end if]". Rule for printing the name of a windsigh tree (called subj) while asking which do you mean: say "[if tree1 is named]the windsigh[else]the tree[end if] [if subj is tree1]at the path[else if subj is tree2]with the treehouse[else if subj is tree3]on the ridge[else if subj is tree4]on the cinder cone[else if subj is tree5]in the rain forest[else if subj is tree6]by the Egg[else]at the rockslide[end if]". Understand "tree9" as a windsigh tree.

The description of a windsigh tree is usually "Like the other[if trees found is at most 2] one you saw[otherwise]s you've seen[end if], the tree seems stunted and out of place. [the tree spiel].". To say the tree spiel: say "Spirals of [o]vine[x] sprout from the gnarled trunk and wrap tightly around it before spreading out to knobby branches beginning just above your head. The branches bifurcate until they end in tiny, bare pointed twigs. As the vines spiral around them they sprout hundreds of small lemon-yellow [o]leaves[x]. Even more curious is that dozens of [o]holes[x] seem to have organically grown through the branches, as if they split and reconnected to themselves as the tree was growing; these also continue all the way out to the tiny twigs, shrinking in size as they go". To say tree_rnd: say "tree". Check attacking a windsigh tree: say "[if guessed_trees is true]Some part of you shivers at the thought; so defenseless they are, helpless against anything you could do-- but if you do make such a decision, better to wait until the right moment[otherwise]The trees seem fairly sturdy. Without an axe or something you doubt you could do much damage[end if]." instead. The dream-text of a windsigh tree is usually "[one of]miniature models of twisted, perforated trees[or]buckets of lemon-yellow paint[in random order]".

Check listening when a windsigh tree is enclosed by location: say "As the wind gusts through the dozens of holes in the trunk and branches of the tree, a strange, multi-pitched hum sighs and shivers through the air." instead.

Understand "sleep under [a windsigh tree]" as sleeponing. First check sleeponing: if noun is a windsigh tree, try sleeping instead.

A windsigh tree has a number that varies called order found.

To decide which number is trees found:
	let highest be 0;
	repeat with tmp running through windsigh trees begin;
		if the order found of tmp > highest, now highest is order found of tmp;
	end repeat;
	decide on highest.

To say windsigh phrase of (entity - a thing):
	if the order found of entity is 0 begin; [just now finding it]
		let highest be 0;
		repeat with tmp running through windsigh trees begin;
			if the order found of tmp > highest, now highest is order found of tmp;
		end repeat;
		now order found of entity is highest + 1;
		let ord be order found of entity;
		if tree1 is named, say "[if ord is 2]another tree like the one you painted -- a [o]windsigh[x][otherwise]another [o]windsigh[x] tree[end if]"; 
		otherwise say "[if ord is 1]the [treeword] you painted[otherwise if ord is 2]-- curious -- another [treeword] like the one you painted[otherwise if ord <= 4]another strange, withered [treeword] like the one that brought you here[otherwise if ord is 5]another withered [treeword] -- the fourth? fifth? -- [otherwise]another withered [treeword][end if]";
	otherwise;
		let ord be order found of entity;
		say "the ";
		if entity is tree3, say "huge ";
		if entity is tree6, say "tiny ";
		if entity is tree7, say "hardy ";
		if tree1 is named, say "[o]windsigh[x]";
		otherwise say "withered [o]tree[x]";
	end if;
	
To say treeword: say "[o]tree[x]".

A windsigh tree is either uncontacted or contacted. A windsigh tree is usually uncontacted.

Some lemon-yellow leaves are a backdrop. They are in Fork, Big Tree, Treehouse, Rockslide, Cinder Cone, Forest9, Egg Room, Saddle, and Atop. The printed name of some lemon-yellow leaves is usually "lemon-yellow leaves". Understand "lemon" or "yellow" or "leaf" or "leaves" or "lemon-yellow" or "circular" or "veined" or "flower" or "flowers" or "disc" or "discs" as lemon-yellow leaves. The description of some lemon-yellow leaves is usually "Each flower or leaf is about the size of your thumbnail, perfectly circular, slightly concave, and the color of a deep, almost fluorescent lemon yellow. Subtle veins run through the semi-translucent skin. They sprout from the vines wrapped around the branches, each about a finger width apart[leafhint].". Check touching some lemon-yellow leaves: move yellow-stain to location; say "They are surprisingly firm under your touch, and have the thick, slightly spongy feel of a heavy leaf when you squeeze one. As you pull your finger away, you see it has picked up a slight yellow stain." instead. Check tasting some lemon-yellow leaves: say "You pull one of the small leaves off the vine-- it is surprisingly difficult-- bite it in half and chew. The texture is crunchy, almost like a carrot slice, but the taste bland and indefinable. Some juice trickles down your chin; when you wipe it off, your finger picks up a bright yellow pigment." instead. Instead of pulling or cutting or attacking some lemon-yellow leaves, say "[takeleafbit]". To say takeleafbit: say "You pull one of the small leaves off the vine-- it is surprisingly difficult-- and rub it between your fingers. It has the thick, somewhat spongy feel of a heavy leaf. As you let it drop to the ground, you see that your finger has picked up a slight yellow stain."; move yellow-stain to location. First Check taking lemon-yellow leaves: say "[takeleafbit]" instead.

To say leafhint: if ( time for excitement or story mode ) and Back Room is visited and Jumble is unvisited, say ".[paragraph break]You notice that the leaves are the exact shade of the yellow band painted on the back room door of the cabin on the beach".

A yellow-stain is a set dressing. Understand "stain/finger" as yellow-stain. The printed name is "yellow stain". The description is "The lemon-yellow pigment inside these leaves is strong and vibrant.". Check tasting yellow-stain: say "There is no taste to it." instead. Check touching yellow-stain: say "It rubs off fairly easily." instead. Check taking yellow-stain: say "It's just a slight smudge on your finger.".

Some treevines are a kind of prop. Some treevines are part of every windsigh tree. Some treevines are portable [well, not really, but allows us to print better taking message]. Understand "vine" or "vines" or "tight" or "spirals" or "of" as some treevines. The printed name of treevines is "vines". The description of treevines is "The vines sprout from orifices about the size of your wrist spread out all over the trunk of the tree, and wrap tightly around it in a helix spiraling up, splitting and shrinking in diameter, until each one leaves the trunk to twine out around a branch, sprouting hundreds of small lemon-yellow [o]leaves[x]." Instead of pulling or taking treevines, say "The vines spring from the trunk and are tightly wrapped around it and the branches. They seem to be attached to the tree by thousands of tiny hook-like hairs.". Check climbing a treevines: try climbing a random windsigh tree enclosed by the location instead. Check attacking a treevines: try attacking a random windsigh tree enclosed by the location instead.

Some sinuous branches are a kind of setpiece. Some sinuous branches are part of every windsigh tree. Understand "branch/branches" or "sinuous" or "dozens" as sinuous branches. The description of sinuous branches is usually "The branches spread out in all directions, beginning at about eye level, angled only slightly to the horizontal as they leave the trunk but then curving upwards to eventually become vertical. Every branch is wrapped in vines sprouting the yellow leaves or [o]flowers[x]. The vines even curve around the strange [o]holes[x] that appear at random along the length of each branch.". Check attacking a sinuous branches: try attacking a random windsigh tree enclosed by the location instead. Check climbing a sinuous branches: try climbing a random windsigh tree enclosed by the location instead.

Some tree-holes are a kind of setpiece. Some tree-holes are part of every windsigh tree. Understand "hole/holes" as some tree-holes. The description of tree-holes is usually "They range in size from knobby round gaps nearly as big as your head, in crooks and splits near the trunk, to tiny pinholes trailing along the ends of the smallest branches, and run all the way through the wood, letting you see through to the other side.". Understand "blow on/in/through [tree-holes]" or "blow [tree-holes]" as a mistake ("You blow through a tiny hole along a low hanging branch, and produce a momentary crystal-clear hum."). The printed name of tree-holes is "holes in the tree". Understand "hole/holes" as tree-holes.

Instead of touching sinuous branches, tree-touch. Instead of touching treevines, tree-touch. To tree-touch: if location is Treehouse begin; let bub be Tree2; otherwise if location is Saddle; let bub be Tree3; otherwise; let bub be a random windsigh tree enclosed by the location; end if; try touching bub.

Instead of touching or pushing a windsigh tree:
	if Endgame is happening begin;
		say "You feel the warm thrum of consciousness flow through the tree, but there is no time for dream games now.";
	otherwise if the number of uncontacted windsigh trees is 0;
		say "You place your hand against the side of the tree and at once the familiar thrum runs through you. You slip into dreamspace....";
		now pseudo-dream is 1;
		now old time factor is time factor;
		now time factor is 0;
		now the player is asleep;
	otherwise if mind machinery is calibrated;
		if noun is contacted begin; say "You feel the warm thrum of consciousness flow through the tree, and a teasing touch of familiarity. This one has shared its message with you already. You must find the others to learn more.";
		otherwise;
			say "Finding a spot of bare grayish bark between the spiraling vines, you touch the tree. [one of]A gust of wind kicks a pile of leaves into the air. [or][stopping]The trunk seems warm to the touch, and your fingers feel something else: a miniscule vibration? The faint buzz of an electric current? Suddenly the sensation magnifies, as if caught in some feedback loop, and before you can pull away it completely overwhelms you....";
			[We want to fudge a bit here in case the player has gotten this far without seeing the Tsunami. We need to advance Progue to at least uncertainty (the post-Tsunami psyche) for his dramatic resolution to make sense, and this ensures that we'll get the Tsunami even if we're no longer sleeping.]
			if Tsunami Sequence has happened begin;
				now pseudo-dream is 1;  [normal behavior; pass no time while dreaming]
			else if The Conch Portends is completed;
				change the time of day to 10:30 PM; [to trigger Earthquake]
			else;
				change the time of day to 5:55 PM; [to trigger Tsunami Sequence / The Conch Portends]
			end if;
			now old time factor is time factor;
			now time factor is 0; 
			now the player is asleep;
		end if;
	otherwise;
		say "Finding a spot of bare grayish bark between the spiraling vines, you touch the tree. The trunk seems warm to the touch, and your fingers feel something else: a miniscule vibration? The faint buzz of an electric current? You draw your hand back and rub it curiously.";
	end if. 

Check climbing a windsigh tree (called the climbee) when mind machinery is calibrated and the number of uncontacted windsigh trees > 0: try touching the climbee instead.

Check climbing a windsigh tree when location is not Big Tree and location is not Saddle and location is not Egg and location is not Treehouse:
	if we have not touched noun, try touching the noun; 
	pass 10 minutes of time;
	say "The vines and gnarled branches [if player is wounded]would make for an easy climb if your leg wasn't still tender[else]make it an easy climb[end if][if raining or rained], though they are slippery in the rain[end if]. The tree is not too high, and before long you are standing at a crook in the trunk where it finally splits. Yellow flowers surround you. [if location is Fork or location is Big Tree]You can see that the tree stands on a great forested slope, stretching up to the summit of a volcano and down to a white sand crescent beach[otherwise if location is Cinder Cone]The whole volcano floor stretches out before you: the multitude of steam vents, the great rent in the side of the caldera leading off towards the beach, and the jumble of lava rocks all around[otherwise if location is Forest9]Though you're still below most of the treetops, you can see that you're near the eastern edge of the forest, as the land suddenly drops off not far in that direction[otherwise if location is Rockslide]You can see clearly how the treacherous lava flow neatly bisects the island, forming the cliffs against the beach on its west half and marking the edge of the rain forest on its east half. In the north, the flow merges with a steep arm of the mountain[end if]. [paragraph break]After enjoying the view for a while, you climb back down to solid ground again." instead.

Check climbing tree2: try going up instead. Check climbing tree3: try going up instead.

A nook is a kind of supporter. A nook is usually undescribed and enterable. Understand "nook" as a nook. Check taking a nook: say "It's just a hollow in the ground." instead. The dream-text of a nook is usually "[one of]worn blankets[or]deadwood[in random order]". Check putting something on a nook: say "Better hang on to it; you don't want to lose it." instead.


Chapter - Generic Island Scenery

[To save time iterating through objects in a room, we combine all the default scenery into one object, then use parsing to see which object the player meant. ]

Some background-scenery is a backdrop. It is in Outdoors.

[1]Understand "dense/vegetation/plants/leafy/green/greenery/profusion/ferns/fern" as background-scenery.
[2]Understand "moss/mosses/mossy" as background-scenery.
[3]Understand "earth/ground/carpet/soil/rock/rocks/land/floor" as background-scenery.
[4]Understand "grass/green/tuft/tufts/grasses/grassy" as background-scenery.
[5]Understand "lighting/glow/shadow/shadows/haze/sunlight" as background-scenery.


Does the player mean doing something to background-scenery: it is very unlikely.

[An inelegant but computationally quick way to solve this problem; otherwise we might have to compare dozens of text strings before finding the one we want.]

To decide what number is scenery-referred-to:
	let cmd be indexed text;
	now cmd is the player's command;
	replace the regular expression "\b(the|a|some|my)\b " in cmd with "";
	replace the regular expression "\b(take|x|examine|get|touch|attack|hit|pull|push|enter|go in|climb)\b " in cmd with "";
	if character number 1 in cmd is "c":
		decide on 3; [carpet] 
	else if character number 1 in cmd is "d":
		decide on 1;
	else if character number 1 in cmd is "e":
		decide on 3;
	else if character number 1 in cmd is "f":
		if cmd matches the text "fern", decide on 1;
		decide on 3; [floor]
	else if character number 1 in cmd is "g":
		if cmd matches the text "green", decide on 1;
		if cmd matches the text "ground", decide on 3;
		if cmd matches the text "grass", decide on 4;
		decide on 5; [glow] 
	else if character number 1 in cmd is "h":
		decide on 5; [haze]
	else if character number 1 in cmd is "l":
		if cmd matches the text "leafy", decide on 1;
		if cmd matches the text "land", decide on 3;
		decide on 5; [lighting] 
	else if character number 1 in cmd is "m":
		decide on 2; [moss] 
	else if character number 1 in cmd is "p":
		decide on 1; [plant/plants/profusion] 
	else if character number 1 in cmd is "r":
		decide on 3;  [rock] 
	else if character number 1 in cmd is "s":
		if cmd matches the text "soil", decide on 3;
		decide on 5; [shadow] 
	else if character number 1 in cmd is "t":
		if cmd matches the text "trees", decide on 1;
		decide on 4; [tuft] 
	else if character number 1 in cmd is "v":
		decide on 1; [vegetation] 
	else:
		decide on 1.

To decide which number is first noun word: (- MyNounWord(); -).

Include (-

[ MyNounWord myword nw;
	wn = 1;
	myword = 0;
	nw = -1;
	while (myword ~= -1) {
		myword = NextWordStopped();
		if (NounWord() >= 128) return wn-1;
	}
	return -1;	
];

-).

The printed name of background-scenery is "[bgscnpn]". To say bgscnpn:
	if scenery-referred-to is:
		-- 1: say "vegetation";
		-- 2: say "moss";
		-- 3: say "ground";
		-- 4: say "grass";
		-- 5: say "lighting";
		-- otherwise: say "background scenery".

Instead of touching or taking or pushing or pulling background-scenery:
	if scenery-referred-to is:
		-- 1: say "It feels moist, vibrant, and alive.";
		-- 2: say "It's soft and springy, but also gripping quite tightly to its base.";
		-- 3: say "You feel just [surface-material] beneath your feet.";
		-- 4: say "[if we are taking]You pluck a long pale-green blade and twirl it between your fingers for a reflective moment, before letting it fall back and vanish into the green at your feet.[else]The blades are warm and moist as you run your hand through them.";
		-- 5: say "Would that you could.";
		-- otherwise: continue the action.

Instead of attacking background-scenery:
	if scenery-referred-to is:
		-- 1: say "You couldn't even begin to make a dent in the thick vegetation.";
		-- otherwise: continue the action.

Instead of entering background-scenery:
	if scenery-referred-to is:
		-- 1: say "The vegetation is too dense to make much progress through without a machete.";
		-- 3: say "You sit down on the [surface-material] and rest for a moment, reflecting, but eventually grow restless and rise to your feet again.";
		-- 4: say "You sit down on the grass and rest for a moment, reflecting, but eventually grow restless and rise to your feet again.";
		-- otherwise: continue the action.

The basic-walls are a backdrop. Understand "wall/walls/roof/ceiling" as basic-walls. They are in Hut, Back Room, Studio, Center Beach, Chairlift Base, Jumble, Chasm Edge, Chasm Floor, Volcano Floor, Steam Vents, Cinder Cone, Secret Cave, Egg Interior, Prison, Overhang, Mossy Ledge, Echo Chamber. The printed name is "walls[if location is indoorsy] and roof[end if]". Instead of climbing basic-walls, say "[if location is Steam Vents]The scree here is far too unstable; it looks like it would collapse into a rockslide if you put any weight on it[otherwise if location is regionally in Frozen Hell]The sides of the volcano are alternatively smooth and razor-sharp, and in neither case are they suitable for climbing[otherwise]There's not really a good spot to climb here[end if].". Does the player mean doing anything to basic-walls: it is very unlikely.




Part - Distant Views


Section - The Mountain

The mountain-view is a seen view with base room North Marsh. Understand "mountain/peak/summit" as mountain-view. The printed name is "mountain". It is in East Marsh, North Marsh, Ravine Floor, Top of Ravine, Ledge, Cliffside, Lawn, Observatory Exterior, Chair-lift2, Chair-lift3, Edge of Ravine, Viewpoint, West-Marsh, Stumps, Rise, Chairlift Base, Hive Room, Chair-lift1, Lower Beach, Ocean Waters, South Beach, Among the Boulders, Tidepools, Rim of Volcano. The mountain-view is very near East Marsh and North Marsh and Ravine Floor and Top of Ravine and Ledge and Cliffside and Lawn and Observatory Exterior and Chair-lift2 and Chair-lift3 [anywhere we can't see the whole thing]. The mountain-view is near Edge of Ravine and Viewpoint and West-Marsh and Stumps and Rise and Chairlift Base and Hive Room and Chair-lift1. The mountain-view is far from Lower Beach and Ocean Waters and South Beach. The mountain-view is very far from Among the Boulders and Tidepools and Rim of Volcano. Understand "summit" or "cliff" as the mountain-view when location is not Lawn and location is not Observatory Exterior.

Check examining the mountain-view: 
	if location is Lawn or location is Observatory Exterior begin; say "The summit of the mountain is only a short scramble above you from here";
	otherwise if location is North Marsh; say "The cliff rises straight up out of the marsh in a vertiginous climb to the summit, as if in some past geologic epoch half the mountain split and sunk into the sea. Indeed, a deep [o]crack[x] runs nearly straight up from here, harbinger perhaps of further destruction";
	otherwise;
		say "The mountain is [distance of mountain-view]. It dominates [if dir]the northeastern[otherwise]one[end if] corner of the island, one side a sheer cliff face, the other tumbling treacherously into the sea. The rocky sides [if mountain-view is very near location or mountain-view is near location]seem to be composed of weathered volcanic rock[otherwise]are black and smooth[end if]";
		if the mountain-view is not very far from location, say ".[paragraph break]Perched near the summit is [if night and pyramid has power]a small [o]structure[x], shining with a deep red glow that illuminates the whole summit of the mountaintop[otherwise if night and pressure of the related pipe of the pyramid pressure gauge > 0]a small pyramid structure. A faint red glow pulses from somewhere inside it, disappearing and then reappearing in a slow and steady cycle[otherwise if Lawn is unvisited]some sort of man-made [o]structure[x][else]the [o]pyramid[x][end if]"; 
	end if;
	say "." instead.

First instead of climbing the mountain-view when location is North Marsh: try going up instead. First instead of climbing the mountain-view when location is Lawn: try going down instead. First instead of climbing the mountain-view when location is Observatory Exterior: say "The mountainside drops off a dizzying distance into the sea-swept gorge far below; there is no visible route down from here." instead. First instead of climbing the mountain-view when location is East Marsh: say "The cliff face is smooth and softened with slick moss here, and you cannot get a good enough grip to climb." instead.

To say a sentence about the mountain:
	if we have not examined the mountain-view, say "A large, craggy [o]mountain[x] looms up into the clouds, [distance of mountain-view]";
	otherwise say "The [o]mountain[x], [distance of mountain-view], glowers [if evening or sunset]in the fiery glow of the fading sun[end if][if sunrise]in shadows as the sun rises behind it[end if][if moonup]in a pillowy glow of moonlight[end if]".
	
To say a phrase about the mountain:
	if raining begin;
		say "but mist shrouds the rest of the island";
	otherwise if night; say "and [if we have examined the mountain-view]the great dark shape of the [o]mountain[x][otherwise]a great dark shape[end if]looms over the island"; 
	otherwise; say "[one of]while the [o]mountain[x] rises dramatically over the landscape[or]and, like a titan, the [o]mountain[x] looms over the island[in random order]"; say "[if rained], head shrouded in clouds[end if][if sunrise or morning], its peak catching the morning light[end if][if sunset or twilight], the top of its peak glowing a dull red[end if]";
	end if.

Table of Mountain ambience
freq		text	table	trigger	flag
common	"[if raining]Lightning, then a sudden crash of thunder, roll in jagged echoes off the mountain peak, [distance of mountain-view][otherwise if sunup]Ragged shadows crawl down the sharp slope of the mountain, [distance of mountain-view], as fast-moving clouds cover and hide the sun[otherwise]The mountain, [distance of mountain-view], looms darkly in the night[end if]. "
common	"[if sunrise or morning]Early morning light paints the mountaintop in bright colors, pink and black silhouettes touching the edges of the distant peak[otherwise if midday or afternoon and not raining]The hot sun beats down on the mountain, [distance of mountain-view] and stoically bearing the onslaught[otherwise if evening or sunset]The face of the mountain, [distance of mountain-view], bakes in the light of the setting sun[otherwise if night or dawn or twilight]The mountain looms into the colorless sky, negative space more sensed than seen[otherwise if raining]Clouds, [distance of mountain-view], wreathe the top of the mountain in a grey halo[end if]. " 

Section - The Volcano

The volcano proper is a seen view. The base room is Rim of Volcano. The printed name is "volcano". The volcano proper is in Volcanic Uplands, Beachfront, Tidepools, Lower Beach, Ocean Waters, North Island, High Altitude, Saddle, Atop, Chasm Edge, and Crater Pond. The volcano proper is very near Volcano Slopes and Sloping Meadow and Chasm Edge and Rockslide and Crater Pond. The volcano proper is near Among the Boulders and Center Beach and Lower Beach. The volcano proper is far from North Beach and Tidepools and Rise and Ocean Waters.  The volcano proper is very far from Chairlift Base and Ledge and Cliffside and Lawn and Observatory Exterior and Saddle and Atop.

Understand "slope/slopes" as volcano proper.

Check examining the volcano proper:
	let volcano_pronoun be "[if we have examined the volcano]the[otherwise]a[end if]";
	if volcano is very near location begin; say "The volcano looms above you, wisps of steam rising from above its lip, all the more dramatic as this entire side has crumbled away, blasted out in some epic past eruption, leaving a chasm running across the island towards the far end of the lagoon";
	otherwise if volcano is near location; say "The top of [volcano_pronoun] reddish-brown volcano pokes up over the forested land [if location is in Beachfront and dir]to the southeast[otherwise if dir]to the south[otherwise]at its base[end if]";
	otherwise if volcano is far from location; say "Rising gracefully over [if dir]the south[otherwise if location is not Rise]the far[otherwise]this[end if] end of the island, the reddish-brown slopes of [volcano_pronoun] volcano [if midday]bake hotly in the midday sun[otherwise if sunrise or morning]catch the rays of the morning sunlight[otherwise if sunset or evening]are painted by the dying sunlight[otherwise if night]blot out the stars[otherwise]shimmer in the distant heat haze[end if]. Faint wisps of steam rise from its hidden caldera. One whole side of the volcano seems to have crumbled in some past eruption, spewing forth the long black lava [o]flow[x] that bisects the island and forms the back wall of the lagoon";
	otherwise; say "The distant volcano lords over the south end of the island, the black floor of the inner caldera visible through the crumbled gash in its side";
	end if;
	say "." instead.

First instead of climbing the volcano proper:
	if location is Volcano Slopes:
		try going southeast instead;
	otherwise if location is Rim of Volcano:
		say "The slope down the inside of the volcano is sheer and covered in loose rock; there's no way to climb down it." instead;
	otherwise:
		try following volcano proper instead.

Section - The Lava Flow

The lava flow is a seen view with base room Rise. Understand "ridge" as lava flow. It is in Chasm Floor, Chasm Edge, Jumble, Volcano Floor, Steam Vents, Cinder Cone, Volcano Cave, Rise, Center Beach, North Beach, Stumps, Chairlift Base, Rockslide, Hive Room, Saddle, Edge of Ravine, Rim of Volcano, Among the Boulders, Tidepools, South Beach, Lower Beach, Ocean Waters, Atop, Ledge, CLiffside, Lawn, Observatory Exterior. The lava flow is very near Chasm Floor, Chasm Edge, Jumble, Volcano Floor, Steam Vents, Cinder Cone, Volcano Cave, and Rise. [we're on it.] The lava flow is very near Center Beach, North Beach, South Beach. The lava flow is near Stumps, Chairlift Base, Rockslide, Hive Room, Saddle, and Edge of Ravine. The lava flow is far from Rim of Volcano, Among the Boulders, Tidepools, Lower Beach, Ocean Waters, and Atop. The lava flow is very far from Ledge, Cliffside, Lawn, Observatory Exterior. 

Check examining the lava flow:
	if lava flow is very near location begin; say "The black rock, frozen in mid-tumble, hosts a few tentative green shoots and flowers in its maze of nooks and crannies, but the vegetation has only begun to reclaim it";
	otherwise if lava flow is near location; say "The lava flow [if location is Saddle]runs below[otherwise]rises above[end if] you, black chaos tumbling up towards the volcano in one direction and disappearing into the sea at the north end of the lagoon";
	otherwise if lava flow is far from location; say "Now black and hardened, this lava flow sliced across the island decades or centuries ago, descending from the ruined cone of the volcano to the ocean near the rise";
	otherwise; say "You can clearly see the swath of the lava flow slicing diagonally across the island, from the ruined cone of the volcano to the rise near the ocean";
	end if;
	say "." instead.

First instead of climbing lava flow:
	if location is North Beach or location is Stumps, try going up instead;
	if location is Chasm Edge, try going down instead;
	if lava flow is very near location, say "The flow here is too steep and sharp to climb." instead;
	continue the action.

Section - The Ocean

The distant ocean is a view with base room Ocean Waters. It is in Progue's Domain and West Forest and North Island and Marshlands. It is near Hut and Rise and Stumps and Chairlift Base. It is far from Fork and West-Marsh and North Marsh and East Marsh. It is very far from Rim of Volcano. Understand "wave" or "waves" or "water" or "sea" or "ocean" or "tide" as the distant ocean. The description is "The blue ocean [if night]sparkles with starlight, reflected and broken into millions of shimmering jewels[otherwise if dawn or twilight]beats restlessly in the gray light[otherwise]sparkles brilliantly in the sun[end if].".


Section - The Lagoon

The lagoon is a seen view with base room Center Beach. It is in South Beach, Center Beach, North Beach, Hut, Lower Beach, Ocean Waters, Tidepools, Among the Boulders, Rise, Rim of Volcano, Ledge, Cliffside, Lawn, and Observatory Exterior. Understand "bay/crescent" as lagoon. The lagoon is very near South Beach and Center Beach and North Beach and Hut and Lower Beach and Ocean Waters and Tidepools and Among the Boulders and Rise. The lagoon is very far from Rim of Volcano and Ledge and Cliffside and Lawn and Observatory Exterior. 

Check entering the lagoon when location is Center Beach: try going west instead. Check entering the lagoon when location is South Beach: try going northwest instead. Check entering the lagoon when location is North Beach: try going southwest instead.

The description of lagoon is "[lagoondesc].". To say lagoondesc:
	if lagoon is very near location begin; say "The lagoon undeniably captivates the eye, aesthetically perfect in some indescribable way. Electric blue water far out to sea fades to a creamy neon turquoise as it enters the shallows of the bay, before crashing in long foamy runners of [o]surf[x] on the white sand beach which rims it. At [if location is South Beach or location is Among the Boulders or location is Tidepools]the far[otherwise if location is Rise or location is North Beach]the nearer[otherwise]one[end if] end of the bay, a rocky rise of black lava tumbles across the sand and into the water, forming a sharp boundary and a shocking contrast of color, while the ";
		say "[if location is South Beach]nearer[otherwise if location is North Beach]far[otherwise]other[end if] side is bounded by a lower point filled with tidepools and rounded boulders";
	otherwise; say "The lagoon [if evening or sunset or afternoon]sparkles in the distance as the sun reflects off its cerulean waters[otherwise if midday or midmorning or morning or sunrise]arcs gently in the distance, a jewel of blue and cream[otherwise if twilight or dawn]shimmers subtly in the distance, like a dark blue bruise in the shadowless light[otherwise]in the distance is marked by faintly seen blobs of pale moving light[end if]";
	end if.

To say a sentence about the lagoon:
	if night begin;
		if we have examined the rayfish and the distant-rayfish are on-stage begin; say "The faint pale glows of [the rayfish] dance slowly out in the lagoon";
		otherwise if distant-rayfish are on-stage; say "Pale [o]lights[x] weave and bob through the waters of the lagoon";
		otherwise; say "The lagoon is black and silent in the strange night air";
		end if;
		stop;	end if; 
	if afternoon or midday or midmorning begin;
		say "The ocean [if tidein]stretches to[otherwise]pounds faintly beneath[end if] the western horizon, [if rain clouds are in location]under a grey sky streaked with fast moving [o]clouds[x][end if][if raining] dumping buckets of rain[end if]";
		if rain clouds are not in location, say "[one of]where it meets a vast, unclouded sky, so deep a blue your eyes hurt[or]the [o]lagoon[x] practically glowing as it warms in the sparkling sunlight[in random order]";
	stop;	end if;
	if evening begin;
		if rained begin;
			say "Thunderheads receding westward are lit up like giant floating barges by the sinking sun's rays, which are reflected by the [o]water[x] and the wet, sparkling [o]sand[x]";
		otherwise;
			 say "Reflected sunlight shimmers off the [if tideout]distant [end if][o]tide[x], pointing a straight line towards the sinking sun";
		end if;
		stop;	end if; 
	if sunset begin;
		say "A fantastic tropical sunset dominates the sky, the [if tideout]distant [end if][o]waves[x] westward shimmering magically under deep purples, oranges, and the brilliant yellow gleam of the setting sun";
		stop;	end if;
	if twilight begin;
		say "The sky and the colors of the lagoon are slowly fading in the dimming light";
		stop; end if;
	if dawn or sunrise or morning begin;
		say "[one of]Distant clouds glow yellow-pink over the ocean to the west as the rising sun's rays intersect them, but [if dawn]the land[otherwise]most of the beach[end if] is still in shadow[or]The [o]lagoon[x] stretches before you, blue and beautiful, slowly richening in color as the sky brightens above[in random order]";
		stop;	end if.

Section - The Ropeway

The distant-ropeway is a seen view with base room Chairlift Base. It is in Chairlift Base, Lawn, Stumps, West-Marsh, East Marsh, Rise, North Marsh, Ledge, Cliffside, Saddle, Atop, Rim of Volcano, Viewpoint, South Beach, Among the Boulders, Tidepools. It is very near Chairlift Base and Lawn. It is near Stumps and West-Marsh and East Marsh. It is far from Rise and North Marsh and Ledge and Cliffside. It is very far from Saddle and Atop and Rim of Volcano and Viewpoint and South Beach and Among the Boulders and Tidepools. Understand "ropeway" or "rope" or "ropes" or "cable" or "cables" or "pole" as distant-ropeway. The printed name of distant-ropeway is "ropeway". Instead of entering or climbing distant-ropeway, say "The distance is far too great for you to successfully climb the cables hand-over-hand.". Instead of touching or taking or pushing or pulling distant-ropeway when distant-ropeway is very near location: say "The ropes are solidly attached to the ropeway system.".

Check examining distant-ropeway:
	if distant-ropeway is near location or distant-ropeway is very near location begin; say "The ropes rise from the base station in a double arc, first to a pole rising from a tall boulder in the marsh, then in a dizzying climb to the summit of the mountain[unless location is Lawn or location is Observatory Exterior] high above[end if]";
	otherwise if distant-ropeway is far from location; say "The ropes rise from the base station on one corner of the island to near the top of the mountain across the marsh";
	otherwise; say "The arc of the ropeway line is faintly visible descending from the top of the mountain";
	end if;
	say "." instead.

Section - The Distant Pyramid

The distant-pyramid is a view with base room Observatory Exterior. It is in Lawn, Viewpoint, Saddle, Atop, Stumps, Chairlift Base, Rise, North Beach, Center Beach, South Beach, East Marsh, West-Marsh, and Volcano Floor. It is very near Lawn. It is near Viewpoint, Saddle, and Atop. It is far from Stumps and Chairlift Base and Rise and East Marsh and West-Marsh. It is very far from Volcano Floor. Understand "pyramid" or "torus" or "structure" as distant-pyramid. The printed name is "[if pyramid-seen is true]pyramid[else]structure".

pyramid-seen is a truth state that varies.

Instead of examining distant-pyramid:
	if pyramid is on-stage begin;
		if pyramid-seen is true, manually reference distant-pyramid;
		if noun is very near location begin; say "The pyramid is just a short walk away, tucked in a small mountain cirque.";
		otherwise if Observatory Exterior is visited or pyramid-seen is true; say "The pyramid sits inscrutably atop the mountain[distantpyramiddesc].";
		otherwise if noun is near location and pyramid-seen is true; say "From this vantage point, you have a much better view of the pyramid atop the mountain. Definitely manmade, it seems to be constructed of wood, and surrounded by a strange halo[if sunup] that gleams metallically in the light of the sun[end if][distantpyramiddesc]. It looks from here to be easily reachable from the area near the top of the ropeway. Scale is hard to judge, but you'd guess it is about as tall as you are[if night]. A faint red beam points straight up from the pyramid's apex into the night sky[end if].";
		otherwise; say "[if night]The red glow casts the shape into sharp relief against the blackness behind it: a pyramid, but small, maybe only about as tall as you are. A faint red beam points straight up from its apex into the night sky[else]You can't make out any details from this distance, but it definitely seems like a man-made structure[distantpyramiddesc]. A strange metallic torus surrounds it[end if]."; if night, now pyramid-seen is true;
		end if;
	otherwise;
		manually reference distant-pyramid;
		if noun is very near location begin; say "The machinery is just a short walk away, tucked in a small mountain cirque.";
		otherwise if Observatory Exterior is visited; say "The machinery sits inscrutably atop the mountain[distantpyramiddesc].";
		end if;
	end if.

[Check examining by name the distant-pyramid: if dc_pyramid is available, try discussing dc_pyramid instead.]

To say distantpyramiddesc: say "[if pyramid has power and night]. The whole summit of the mountaintop is lit by the deep ruby glow streaming brightly from [edgeoregg], and a faint crimson beam of luminescence rises into the sky[otherwise if pyramid has power]. A deep ruby glow beams from [edgeoregg][otherwise if pressure of the related pipe of the pyramid pressure gauge > 0 and night]. A faint crimson light cycles slowly on and off[otherwise if pressure of the related pipe of the pyramid pressure gauge > 0]. The mountaintop is weirdly illuminated by a faint crimson glow streaming through [edgeoregg], cycling slowly from light to dark[end if][if pyramid has power], and you can hear even from here a deep, rhythmic thrumming which seems to come from somewhere inside[end if]". To say edgeoregg: if pyramid is on-stage, say "its edges"; otherwise say "the machinery".

Section - The Rain Forest

The rainforest is a seen view with base room Forest1. It is in East Island. It is near Rockslide. It is very near Hive Room, Crater Pond, Edge of Ravine, Egg Room, Backside. Understand "forest" or "rain forest" as the rainforest. The printed name is "rain forest". Check entering the rainforest when location is Hive Room: try going east instead. Check entering the rainforest when location is Crater Pond: try going north instead. Check entering the rainforest: say "The forest is so thick and dense here, you can't see a way to get inside." instead.

Check examining the rainforest:
	if noun is very near location, say "The edges of the forest are only a few steps away." instead;
	otherwise say "The forest looks nearly impenetrable, and fills this whole side of the island." instead.



Book - Lacuna Room Definitions

Part - The Beachfront

The ambience table of Beachfront is Table of Beachfront ambience.

The sleep message of a room in Beachfront is usually "You stretch out on the [surface-material] and drift into an uneasy sleep.".

Check listening when in Beachfront: say "You hear [if night]only [end if]the [if tideout]far-off [end if][if high tide]crashing [end if]sounds of the surf[if day] and the cawing of seagulls[end if]." instead.

Chapter - Beachfront Scenery

The nearby beach is a view with base room Center Beach. It is in Tidepools, Among the Boulders, South Beach, Center Beach, North Beach, Rise, Lower Beach, and Ocean Waters. It is very near Tidepools, Among the Boulders, South Beach, Center Beach, North Beach, Rise, Lower Beach, and Ocean Waters.

Understand "sand/sands" as nearby beach. The description is "[if night or dawn or twilight]Almost glowing in the faint light[otherwise]Startlingly bright[end if], the beach [if location is Among the Boulders]is interrupted here by the patch of boulders[else if location is not North Beach and location is not South Beach and location is not Center Beach and location is not Lower Beach]is interrupted by pebbles and rubbed-smooth stones[else if cleanliness of location is spotless]is smooth and featureless, white curves unblemished by imperfections[otherwise if cleanliness of location is flecked]is dotted with tiny specks of seaweed and shell fragments[otherwise if cleanliness of location is marred]is strewn with clumps of slimy seaweed and other debris from the ocean[otherwise]is a mess of smelly patches of seaweed, fish carcasses, gull feathers, and pieces of bony driftwood[end if].".

Instead of taking or touching nearby beach:
	if rained or raining, say "You scoop up a handful of the wet, almost muddy sand, feeling it ooze in gritty trickles through your fingers."; otherwise say "You let a handful of the [if night or dawn or sunrise or morning]cool[end if][if midmorning or midday or twilight]warm[end if][if afternoon or evening or sunset]scorching hot[end if] sand run through your fingers. So fine they feel almost soft, the grains [if midday or afternoon or evening or sunset]sparkle in the bright sun as they [end if]fall in a thin line back to the beach."

To say a sentence about the nearby beach: 
	if night begin; say "[one of][nearbybeach1][or][nearbybeach2][in random order]"; stop; end if;
	if twilight or dawn begin; say "The stillness of the great crescent [o]beach[x] is magical in the half-light; the whole expanse curving out before you quietly breathtaking"; stop; end if;
	if cleanliness of location is spotless begin; say "[one of]Spotless[or]Pristine[or]Gleaming[at random] white [o]sand[x]";
	otherwise if cleanliness of location is flecked; say "White [o]sand[x] [one of]flecked with bits of seaweed and debris[or]spotted here and there with flecks of weed or fish bones[or]dotted with small bits of refuse and flotsam[at random]";
	otherwise if cleanliness of location is marred; say "[o]Sand[x] [one of]strewn with[or]littered with[or]marred by[at random] [one of]strings of seaweed, stones, and pieces of driftwood[or]jagged broken shells and decomposing seaweed[at random]";
	otherwise; say "[one of]Grimy[or]Dirty[or]Yellowing[at random] [o]sand[x] [one of]covered in[or]smeared with[at random] [one of]stinking seaweed, splintered driftwood, broken shells and gull feathers[or]seagull droppings, rotting seaweed, and splinters of driftwood[at random]";
	end if;
	say " [if midday and cleanliness of location is spotless]almost blinds you as it [end if][one of]curves around the[or]stretches in a great arc around the[in random order] lagoon".
	
To say nearbybeach1: say "The undulating white sand [o]beach[x] [if moonup]silvers in the moonlight, which sparkles faintly on the [otherwise]is dim and indistinct under the stars, the border between ground and sky defined by the sound of the [end if][if tideout]distant waves[end if][if rising uptide or falling uptide]waves, a stone's throw away[end if][if high tide]runners of foamy surf reaching almost to your feet[end if]". To say nearbybeach2: say "[if falling uptide or falling downtide]Damp sand glistens[end if][if high tide]Foamy breakers lap the shore[end if][if low tide or rising downtide or rising uptide]Smooth stretches of sand spread out[end if] [if moonup]ghostly white [end if]before you, [if location is South Beach]dotted with myriad tiny shells and pieces of wood[otherwise]unbroken save for your own footsteps[end if]".

The surf is a backdrop. It is in Lower Beach and Ocean Waters and Tidepools and Among the Boulders and South Beach and Center Beach and North Beach and Edge of Ravine and Ravine Floor. Understand "wave" or "waves" or "water" or "sea" or "ocean" or "tide" as the surf. The description is "[if location is Ocean Waters]The tide swells around you.[otherwise if high tide]The waves are high, perhaps near the high tide mark.[otherwise if falling uptide]The tide seems to be ebbing out, but the waves are still relatively close.[otherwise if falling downtide]The tide is a good distance away, and seems to be ebbing even farther out.[otherwise if low tide]The waves are a long way down, breaking languidly against the wet beach.[otherwise if rising downtide]The waves are a good distance away, but the tide seems to be flowing back in.[otherwise if rising uptide]The surf is relatively close, each wave seeming to crash a little closer.[end if]". Check tasting the surf: say "Salty." instead.

Check swimming in the surf: if location is in Beachfront, try going down instead; otherwise try vague swimming instead. Check vague swimming when location is in Beachfront and player_imperiled is false: try swimming in the surf instead.

Check touching the surf: say "The warm water feels fresh and alive as it swirls over your hand." instead.
  
Some beach debris is a backdrop. They are in South Beach, Center Beach, North beach, Lower Beach. Understand "shell" or "seashell" or "seashells" or "pieces of wood" or "wood" or "tiny" or "shells" or "detritus" or "flecks" or "seaweed" or "stones" as the debris. Instead of doing anything to the debris, say "None of it appears particularly valuable." Does the player mean doing something to beach debris: it is unlikely.

Section - The Konokuk Trees

[The konokuk trees. When play begins, there are no fruits on the ground. During a rainstorm, there is a chance that some will drop. (We have a "tree coconut" and a "ground-coconut" backdrop item that have some of the same qualities.) The player can also climb a tree (if uninjured) to get a coconut, which he then returns to ground to examine; or shake a tree to (at random) make one fall. Progue has a tree-climbing/coconut-eating activity in Supression. The player is not allowed to "take" a coconut. Ground-coconuts randomly have a chance to disappear each night (creatures or Progue eats them.)

None of this really serves any purpose, other than to make the environment more interactive and welcoming.]

Some konokuk trees are a backdrop. They are in North Beach and Rise. Understand "tree9/tree/trunk/trunks" as konokuk trees. The description is "The knobby brown trunks of the [if konokuk trees are named]konokuk [end if]trees curve gently up to a cluster of leafy fronds and hairy brown [o]fruits[x] well above your head.". Check climbing konokuk trees when player is wounded: say "You can't climb anything with your leg in this shape." instead. Check climbing konokuk trees: add some konokuk; say "You grip the leathered trunk of the tree firmly and start shimmying up. It's hard work. Sweat ripples your face and your hands become tender and slippery. But finally you reach the top of the tree, within touching distance of the hairy brown [o]fruits[x]. You manage to knock a few loose, before returning to the ground and picking bits of bark from your roughened hands tenderly." instead. Does the player mean climbing or pushing or shaking some konokuk trees: it is very likely. Check pushing konokuk trees: add some konokuk; say "You grip a trunk and vigorously shake the tree back and forth. After a moment a few of the fruits fall; you hastily step aside as they cannonball into the sand near your feet with loud thunks." instead.

To add some konokuk: if ground-konokuk are not-appearing begin; if location is Rise, now ground-konokuk are R-appearing; otherwise now ground-konokuk are NB-appearing; otherwise; now ground-konokuk are both-appearing; end if; update-konokuk.

To say a sentence about the konokuk trees: say "Tall, swaying [if konokuk trees are named][one of][o]trees[x] -- what [the Progue] called 'konokuk' trees, you remember -- [or][o]konokuk[x] trees[stopping][otherwise][o]trees[x][end if]"; say " rise above you[if midmorning or midday], providing some welcome shade against the tropical sun[otherwise if night], more heard than seen[end if][if not night and ground-konokuk is enclosed by location], their bases strewn with round, brown [o]fruits[x][end if]". Does the player mean doing anything other than climbing to konokuk trees: it is unlikely. 

Some tree-konokuk are a backdrop. They are in North Beach and Rise. Understand "fruit/fruits" or "konokuk" or "coconut" as tree-konokuk. The printed name is "[if konokuk trees are named]konokuk[otherwise]brown fruits[end if] in the tree". The description is "High near the top of the trees, you can see clusters of round brown fruits.". Instead of taking or attacking or pushing or touching or tasting tree-konokuk, say "They're well above your reach.". 

Some ground-konokuk are a setpiece. ground-konokuks can be not-appearing, NB-appearing, R-appearing, or both-appearing. ground-konokuks are not-appearing. Understand "fruit" or "konokuk" or "coconut/sphere/spheres/fruits/hairy/pink/pulp/gooey/liquid/coconuts/konokuks" as ground-konokuk. The printed name is "[if konokuk trees are named]konokuk[otherwise]brown fruits". Does the player mean doing anything to ground-konokuk: it is very likely. The description is "These round hairy spheres[if konokuk trees are named], the fruit of the konokuk tree,[end if] are about the size of your head." The dream-text of ground-konokuk is "[if konokuk trees are named]konokuk[otherwise]coconuts". Check attacking ground-konokuk: say "You crack one of the fruits open with little effort, revealing a firm pink-white pulp and some gooey clear liquid inside.[if Progue is enclosed by location][one of][paragraph break]'That's the way!' [the Progue] says, looking up and nodding approvingly. 'Delicious delicious.'[or][stopping][end if]" instead. Check taking ground-konokuk: say "You heft one of the head-sized fruits in your hands, but decide you can probably do whatever you need to do with it here, rather than carrying it around." instead. Check tasting ground-konokuk: try attacking ground-konokuk; say "The pulp is delicious, with a flavor redolent of peppermint and sea salt, and the liquid is warm and nutty." instead. Check touching a ground-konokuk: say "Covered in coarse, ropy fibers." instead. Some coarse fibers are part of ground-konokuk. Understand "fiber" as fibers. Instead of doing something to coarse fibers, say "You strip a few of the fibers from the husk of one of the fruits. They seem strong and resilient, but it would take days to make anything useful from them, so you let them fall back to the ground.". Check opening ground-konokuk: try attacking ground-konokuk instead.

After going to North Beach: update-konokuk; continue the action. After going to Rise: update-konokuk; continue the action. To update-konokuk: if location is North Beach and ( ground-konokuk are NB-appearing or ground-konokuk are both-appearing ) begin; move ground-konokuk to location; otherwise if location is Rise and ( ground-konokuk are R-appearing or ground-konokuk are both-appearing ) ; move ground-konokuk to location; otherwise; remove ground-konokuk from play; end if.

Every turn when raining and a random chance of 1 in 40 succeeds (this is the rain loosens konokuk rule):
	if ground-konokuk are NB-appearing or ground-konokuk are R-appearing begin; now ground-konokuk are both-appearing;
	otherwise if ground-konokuk are not-appearing; if a random chance of 1 in 2 succeeds, now ground-konokuk are NB-appearing; otherwise now ground-konokuk are R-appearing;
	end if.

Every turn when location was regionally in Dreamlands and a random chance of 1 in 2 succeeds (this is the konokuks fade rule):
	if ground-konokuk are both-appearing begin; if a random chance of 1 in 2 succeeds, now ground-konokuk are R-appearing; otherwise now ground-konokuk are NB-appearing;
	otherwise; now ground-konokuk are not-appearing;
	end if.




Chapter - Beachfront Ambience

Table of Beachfront ambience
freq		start time	end time	text	table		trigger	flag
frequent	high tide	--	--	Table of High Tide ambience	a thing	a number
common	rising uptide	--	--	Table of Tide ambience
common	falling uptide	--	--	Table of Tide ambience
uncommon		--	--	"[one of]A gust of wind blows sand in whirls and eddies along the beach[or]A sudden breeze springs up, sending sand spiraling along the beach[if the location contains a setpiece] and drifting against [the random setpiece in the location][end if][at random]."
common	dawn		twilight	--	Table of Seagull ambience
uncommon		dawn		midmorning	--	Table of Crab ambience
common	evening	twilight	--	Table of Crab ambience
uberrare	dawn		midmorning	"Far out in the lagoon, a great blue-gray mass heaves above the surface-- a whale! With a spurt of air and mist, the creature glides gracefully back beneath the surface."	--	real-whale
common	night		dawn	"[if distant-rayfish are on-stage][rayfishambience][otherwise]The lagoon is black and silent.[end if]"
rare	--	--	"A steady wind blows the smell of the ocean across the beach."

The real-whale is set dressing. Understand "whale" as real-whale. The printed name is "whale". The description is "He's already vanished below the surface, leaving only a distant patch of churning bubbles behind.".

To say rayfishambience:
	if a random chance of 1 in 2 succeeds, say "Out in the lagoon, [if we have examined the rayfish]the glowing blue [rayfish][otherwise]strange pale [o]lights[x][end if] bob and weave under the water.";
	otherwise say "[if we have examined the rayfish]The glowing blue glows of the [rayfish][otherwise]Dozens of ghostly blue [o]lights[x][end if] circle slowly under the waters of the lagoon.".

Table of High Tide ambience
freq		text	table		trigger	flag
common	"A wave slowly breaks up the shallow lagoon, sending an undulating line of foamy water almost to your feet."
common	"Another wave breaks on the beach."
rare	"The loud sound of rushing surf gives you just enough time to dance away as a larger than usual wave surges up the beach."
rare	"[if night]Some seaweed, black and shapeless in the dark,[otherwise]A large clump of seaweed[end if] gyrates at the edge of the tide."
uncommon		"Two waves roll up in quick succession, as if the second is overtaking the first."
uncommon		"The sound of the surf surges around you as another wave breaks."

Table of Tide ambience
freq		text	table		trigger	flag
uncommon		"[one of]Some distance away[or]Farther down the beach[or]At the water's edge a stone's throw away[at random], [one of]a wave rolls in and breaks against the shore.[or]surf crashes against the sand.[or]the steady surge and ebb of surf continues.[or]a wave rolls gently in. You watch the breakpoint as it travels around the lagoon.[or]the surf beats against the sandy shore.[at random]"
rare		"[one of]A large wave rolls in across the lagoon and crashes spectacularly against the beach, the breakers surging to near where you're standing[or]A big wave crashes to shore down at the edge of the beach[at random]."

A small crustacean carapace is set dressing. 

The seaweed is a backdrop in Beachfront. Understand "sea weed" as seaweed. The description is "It's a long clump of seaweed. Green nodules full of air are spaced along its length, along with graceful filaments and tendrils of leaves.". Check taking seaweed: say "You'd rather not carry that around." instead.


A crab is an undescribed animal. The description is "About the size of your hand, this curious creature scuttles sideways along the sand quite nimbly, holding pincers above him and darting eyes on long stalks every way it can." Instead of taking or touching a crab: say "[one of]You reach out your hand for one of the creatures, but it dashes away in a panic before you can grab it, tiny legs pumping furiously[or]You reach down to grab it, but in a snap it nips you with a pincer and darts away. Ouch! You rub your finger gingerly[or]You sidle cautiously towards the crab, then reach down in a flash. You got him! He snaps pincers and waves his legs fiercely as you study his fine carapace and detailed underbelly. Finally, you set him back down. He snaps once more, indignantly, before beating a hasty retreat down the beach[at random]."; remove the crab from play. Check attacking a crab: remove the crab from play; say "You aim a kick at one of the little creatures, but it scuttles out of the way with better reflexes than you gave it credit for, and quickly hurries out of sight." instead. Check tasting a crab: say "You don't really have the right culinary equipment for that." instead. Understand "crabs" as crab.

Every turn when night and distant-rayfish are not enclosed by location and player is awake and Tsunami Sequence is not happening and ( location is in Beachfront or location is Lower Beach or location is Ocean Waters or location is Tidepools or location is Among the Boulders or location is Rise ) : move distant-rayfish to location; move rayfish to Ocean Waters. Every turn when distant-rayfish are on-stage and not night: remove distant-rayfish from play; remove rayfish from play.

Sighting-The-Rayfish is a scene. Sighting-The-Rayfish begins when distant-rayfish are in location. When Sighting-The-Rayfish begins: if we-are-landmark-going is true begin; tidy landmark-go; clean up landmark-go; end if; say "Far out in the lagoon, bobbing and weaving slowly just under the surface of the water, are dozens of pale [o]lights[x], glowing eerily in the [if moonup]moonlight[otherwise]darkness[end if].". Sighting-The-Rayfish ends when Sighting-The-Rayfish begins.

The distant-rayfish are a minor setpiece.  Understand "pale" or "light" or "lights" or "rayfish" or "manta" or "ray" or "rays" or "mantas" as distant-rayfish. The printed name are "distant [if rayfish are named and we have examined rayfish]rayfish[otherwise if we have examined rayfish]manta creatures[otherwise]lights[end if]". The description is "[if we have not examined distant-rayfish and we have not examined rayfish]Spread out all across the lagoon, under the surface of the water, are dozens of faint, pale glows, bobbing and weaving slowly across the bay. From here on the land, you're too far away to tell what they are[otherwise if we have not examined rayfish]The pale lights continue to slowly weave through the waters of the bay, mysterious and silent[otherwise][The rayfish] are only pale glows from here on the beach[end if].". The provoke message of distant-rayfish is "They're too far away, out in the ocean. Maybe if you got closer.". Does the player mean doing anything to the distant-rayfish: it is unlikely. [prefer the real ones.]

The rayfish is an undescribed animal. Understand "pale" or "light" or "lights" or "rayfish" or "manta" or "ray" or "rays" or "mantas" or "glow" or "backs" or "wingtip" or "wingtips" as rayfish. The printed name is "[if named][o]rayfish[x][otherwise][o]manta[x] rays[end if]". After going to Ocean Waters: if night, move the rayfish to the location; continue the action. After going in Ocean Waters: remove the rayfish from play; continue the action. The description is "[if we have not examined rayfish]Your breath catches in your throat as you realize what the lights are: huge, glowing [rayfish] gliding gracefully above the submerged sand at your feet. Their great broad backs give off a faint but steady phosphorescent glow, stronger at their wingtips[otherwise]The ghostly [rayfish] glide silently through the waters of the lagoon, each longer than you are tall[end if]." Instead of touching rayfish: say "Carefully, you reach down into the water as one of the great glowing creatures swims past. Velvet-smooth skin glides across your hand for a moment; then the creature suddenly darts away, leaving behind a cloud of jet-black [o]ink[x]."; move manta ink to the location; rule succeeds. Instead of attacking rayfish: say "You move to strike at one of the great glowing creatures, but instantly it jerks away and accelerates out of range, phosphorescence fading, and leaves behind a cloud of jet-black ink in its wake."; move manta ink to the location; rule succeeds. Understand the command "pet" as "touch".

Some jet-black manta ink is set dressing. Understand "jet" or "black" or "dense" or "cloud" or "pitch" as ink. The description is "The cloud of ink, though rapidly dispersing into the waters of the bay, is dense and seems pitch black[inkhint]." Instead of taking or touching ink, say "You move your hand through the cloud and lift it above the water; some of the black residue clings to your fingers." Check tasting ink: say "It's salty and fishy and warm, and not that tasty." instead. To say inkhint: if ( time for excitement or story mode ) and Back Room is visited and Jumble is unvisited, say ".[paragraph break]You notice that the ink is the precise shade of the black band painted on the back room door of the cabin on the beach".

A giant sea turtle is set dressing. The description of the turtle is "[if location is regionally in Beachfront]Its great rounded shell is mottled brownish-black, and it pulls itself along with powerful front flippers. Shrewd eyes gaze out at the world from a leathery face[otherwise]The turtle manages to seem both graceful and ridiculous as it paddles through the water, just under the surface[end if].". The initial appearance is "A giant sea turtle lumbers around the rounded edge of a boulder and swishes through the sand, taking no notice of you at all." Check taking giant sea turtle: say "He probably weighs a ton!" instead. Instead of touching or hugging giant sea turtle, say "You approach him cautiously and run your hands over his great, mottled shell, still wet with the surf. The turtle pulls his head cautiously back into his shell, but then slowly pokes it out again after a few moments to look at you skeptically.". Instead of attacking or pushing or climbing or entering giant sea turtle: say "You move towards the creature, but it flees with a speed you wouldn't have thought possible on its stubby legs, diving into the ocean and swimming to safety before you can reach it."; remove giant sea turtle from play. Check going when giant sea turtle is enclosed by location: remove giant sea turtle from play.

A seagull is an undescribed minor animal with provoke message "The [one of]bird[or]gull[or]seagull[in random order] [one of]squawks angrily[or]leaps into the air with a raucous call[or]dodges away and flaps its wings angrily[in random order], flapping up in a broad spiral to join its fellows[removeseagullfromplay].". Understand "seagulls" or "gull" or "gulls" or "bird/indigo/beak/beaks" as seagull. The description is "These seem larger and more streamlined than most you've seen, and their long yellow beaks are tipped with a vivid indigo rather than red. But their cries sound just as you'd expect.". To say removeseagullfromplay: remove seagull from play.

Some distant gulls are a minor set dressing. Understand "gull" or "seagull/seagulls" or "bird/birds" as distant gulls. The description is "They flap through the air, more sleek and graceful than most birds of their type, weaving complex patterns as the flock constantly swells and shrinks." The provoke message of distant gulls is "They're too far away."

The cluster of gulls is a backdrop in Beachfront. The description is "Flocks of seagulls and other birds make wide circles around the lagoon, occasionally diving down to snatch something from the warm blue water." Understand "seagulls" as the cluster of gulls.
	
Table of Crab ambience
freq		text	table	trigger	flag
uncommon		"A small orange [o]crab[x] picks its way carefully through the sand."	--	crab
uncommon		"[if tidein]A small crustacean carapace washes up to the beach[otherwise]A small [o]crab[x] picks at an abandoned carapace filling with sand, before losing interest and continuing along his way[end if]."	--	crab
uncommon		"A tiny orange [o]crab[x] freezes motionless as you approach."	--	crab
uncommon		"[if tidein]A wave tumbles a small orange [o]crab[x] end over end. It lies struggling upside down for a moment before righting itself and hurrying up the beach indignantly[otherwise]A little reddish-black [o]crab[x] digs at something in the sand with its front pincers[end if]."	--	crab


Table of Seagull ambience
freq		text	table	trigger	flag
uncommon		"A gull picks at its feathers with its beak before letting out a loud call."	--	seagull
uncommon		"A gull walks carefully along the [surface-material], occasionally poking at something with its indigo-tipped beak."	--	seagull
rare	"Two gulls flap wings and caw fiercely at each other for a moment over a piece of rotting fish, before one snatches it and takes to the air."	--	seagull
		
Table of Seagull Air ambience
freq		text	table	trigger	flag
common	"Gulls cry as they circle overhead, before heading back out to sea."	--	distant gulls
common	"A distant flock of gulls cry raucously as they wing their way along the edge of the coast."	--	distant gulls
rare		"A gull swoops by your head, momentarily startling you out of your wits."	--	distant gulls




Chapter - South Beach


The prose name of South Beach is "the beach near the boulders". Understand "beach" as northwest when location is Fork. South Beach is a room in Beachfront. The printed name of South Beach is "[if dir]South Beach[otherwise]Beach, Near the Path[end if]". The description of South Beach is "[southbeachdesc].". To say southbeachdesc:
	say "[if longform]Stretching out before you is a breathtaking white sand [o]lagoon[x] framed by a cliff of jet-black lava, the glimmering beach forming a languid half-moon curve around a shallow bay of deep, rich blue. The smell of the sea breeze on your face makes you [one of]pause for a moment; it's been a long time since you've seen ocean[or]smile[stopping].[otherwise][A sentence about the nearby beach]. [A sentence about the lagoon].[end if][line break][exits]".

The exits text of South Beach is "[sbex1][approach ocean bit][sbex3]". To say sbex1: say "The beach curves gently [bw of Center Beach][if dir][north] [end if]around the lagoon, [if night]vanishing into [dr]darkness[x][otherwise]stretching towards the distant rocky [dr]rise[x][end if], while disappearing closer at hand [bw of Among the Boulders]into "; say "[if Among the Boulders is visited]the stand of[otherwise]a stand of rounded[end if] [dr]boulders[x][if dir] to the [southwest][end if]. You could also ". To say sbex3: say ", or follow a faint path [bw of Fork][if dir][southeast][otherwise][up][end if] into [if day]dense[otherwise]shadowy[end if] vegetation". Understand "rise" or "darkness" as north when location is South Beach. 

To say approach ocean bit: if tidein and dir begin; say "head [bw of Ocean Waters][waytotide] into the waters of the lagoon"; otherwise if tidein and not dir; say "wade [bw of Ocean Waters][down] into the lagoon"; otherwise if tideout and dir; say "head [bw of Lower Beach][waytotide] down to where the waves are breaking"; otherwise; say "head [bw of Lower Beach][down] to where the waves are breaking"; end if. To say waytotide: say "[if location is South Beach][northwest][otherwise if location is Center Beach][west][otherwise if location is North Beach][southwest][end if]".

Some grassy mounds are a perchable setpiece in South Beach. Understand "grass" or "mound" as some grassy mounds. The description is "The tufts of grass, tentative toes of the forest, fringe its dark interior as they run in irregular clumps along the edge of the sand.". First report touching mounds: say "The blades of grass are pointy on top, but feel soft and springy as you run your hand through them." instead.

Report going from South Beach to Among the Boulders: say "You amble across the sand into rockier terrain[if a random chance of 1 in 3 succeeds][time-of-day-bit][end if].". Report going from South Beach to Center Beach: say "You follow the sweeping curve of the beach about halfway around its edge[if a random chance of 1 in 3 succeeds][time-of-day-bit][end if]." Report going from South Beach to Fork: say "You walk back up the path and return to the [if night]black interior[otherwise if dawn or morning or twilight or sunset]deep shadow[otherwise]shade[end if] of the forest[if Tsunami Sequence has ended], clambering over the soggy remnants of a mossy tree felled by the earthquake[end if]."

Chapter - Center Beach
	
The prose name of Center Beach is "the middle of the beach". Center Beach is a room in Beachfront. Understand "center" as south when location is North Beach. The printed name of Center Beach is "Beach, Near the [if Hut is visited]Abandoned[otherwise]Log[end if] Cabin". The description of Center Beach is "[centerbeachdesc].". To say centerbeachdesc:
	if longform begin; say "The beach widens here in the middle of its sweeping curve around the lagoon, rising in graceful white dunes to the sudden black slope of the old lava [o]flow[x]. Up against the flow is built a log [o]cabin[x], looking long-neglected but still intact";
	otherwise if night; say "The log [o]cabin[x] is barely distinct in the darkness, almost swallowed up by the looming lava [o]flow[x] behind it";
	otherwise if morning or sunrise; say "The long shadow of the lava [o]flow[x] stretches all the way to the water, leaving the ripples of the beach and the [o]cabin[x] in shadowless morning";
	otherwise if midmorning; say "Morning sunlight beams over the top of the lava [o]flow[x], warming the sand and the roof of the [o]cabin[x] in patches";
	otherwise if midday or dawn or twilight; say "[A sentence about the lagoon]";
	otherwise if raining; say "[A sentence about the lagoon]";
	otherwise if afternoon; say "The sand burns hot under your feet in the afternoon light, [if tidein]forcing you closer to the cool damp sand near the waves[otherwise]the tide too far off to cool it[end if], and the black cliff of the lava [o]flow[x] silently absorbs the heat";
	otherwise if evening or sunset; say "The sun sinks slowly towards the waves, which sparkle in brilliant reflections of gold and silver, sending dancing patterns of light over the black lava flow behind the [o]cabin[x]";
	end if;
	say ". [A sentence about the nearby beach][dot][exits]".

The exits text of Center Beach is "The beach stretches away [if dir][bw of North Beach]to the [north] and [bw of South Beach][south][otherwise][bw of South Beach]towards the cluster of [d]boulders[x] or [bwt of North Beach]the rocky [d]rise[x][end if], or you could [extcb]". To say extcb: say "also [approach ocean bit]. The cabin lies [bw of Hut][dr]up[x] the beach[if dir] to the [east][end if]". Understand "boulders/boulder" as south when location is Center Beach. Understand "rise" as north when location is Center Beach. [Understand "cabin" as east when location is Center Beach. ]

The log cabin is a setpiece in Center Beach. Understand "house" or "shack" as cabin. The description is "The small cabin lies well [up] above the high water mark, but stains and crusted salt near its base indicate spring tides have reached it in the past, and give the small building the feel of a place abandoned. The cabin rests flush against the black lava [o]flow[x] behind it.". Check entering the log cabin: try going inside instead. Check attacking the log cabin: say "Despite its ramshackle appearance, upon closer examination the construction is solid and the cabin seems undamaged." instead. The dream-text of log cabin is "felled trees notched for cabin construction".

The cb-rise is a setpiece in Center Beach with printed name "rise".  Understand "flow" as cb-rise. The description is "Now black and hardened, rising to some five or six times your height in steep, sharp angles, this lava flow sliced across the island decades or centuries ago, descending from the ruined cone of the volcano to the ocean near the rise.".

Report going from Center Beach to North Beach: say "You amble along the soft white sand of the beach, working your way [if dir]north [end if]around the edge of the bay." Report going from Center Beach to Hut: say "You clamber up the slipping sand past seaweed and shells at the high-water mark, then onto sturdier ground, before finally arriving at the building[if Hut is unvisited]. First peering cautiously through the doorway, you step inside[otherwise] and stepping inside[end if][if raining], grateful to be out of the rain[end if][if night] the black interior[end if]." Report going from Center Beach to South Beach: say "You walk around the edge of the beach towards some rockier terrain[if dir] near its southern end[end if][if a random chance of 1 in 2 succeeds][time-of-day-bit][end if]."


Chapter - North Beach

The prose name of North Beach is "the beach near the rise". North Beach is a room in Beachfront. The printed name of North Beach is "[if dir]North Beach[otherwise]Beach, Near the Rise[end if]". The description of North Beach is "[nbeachdesc].". To say nbeachdesc:
	if longform begin; say "A huge piece of moss-covered driftwood seems to guard [if tidein]this narrow strip of sand at the end of the beach, between the waves and[otherwise]the end of the beach, dominated by[end if] a rocky rise of hardened black lava that thrusts out into the sea. [one of][A sentence about the lagoon], framed by the rustling of tropical [o]trees[x], their green fronds casting welcome shadows across the sand[or][A sentence about the konokuk trees][at random]";
	otherwise if raining; say "Rain patters noisily on the old piece of driftwood, and runs in dribbles and curtains down the jagged side of the lava flow"; 
	otherwise if afternoon and rained; say "The huge piece of driftwood is dark and dripping with moisture in the aftermath of the storm";
	otherwise if night; say "The weird outlines of the driftwood, grown huge and monstrous in the tropical darkness, tell you you've reached [if former location is Rise]the beach[otherwise]the end of the beach[end if]";
	otherwise if dawn or sunrise or morning; say "The curves and whorls of the driftwood are smoothed into painterly abstraction by the shadowless morning light";
	otherwise; say "[one of][A sentence about the lagoon], while [if konokuk trees are named]the konokuk trees[otherwise]tropical trees[end if] rustle above your head[or][A sentence about the konokuk trees][at random]";
	end if;
	say ". [A sentence about the nearby beach].[paragraph break][exits]".

tsunami-pushed-vine is a truth state that varies.

The exits text of North Beach is "[if dir]To the east and north[otherwise]Opposite the lagoon[end if], [etnb2]". To say etnb2: if night, say "the sky is blotted out by rocky cliffs"; otherwise say "the beach is pinched off by black cliffs"; say ", but near [if tidein]the tide[otherwise]the high water mark[end if] [if Rise is unvisited]you can see a possible[otherwise]is the[end if] [etnb3]". To say etnb3: say "route [bw of Rise][if dir][northwest] [end if]to the top of the [dr]rise[x]. Sand stretches [bw of Center Beach][if dir][south][otherwise]back[end if] "; say "towards the [dr]center[x] of the beach, and you could also [approach ocean bit][etnb4]". To say etnb4: if withered vine is open, say ".[paragraph break]A loose vine hugs the steep slope up to the [dr]saddle[x][if dir] to the [east][end if], stretching up to the big [if tree1 is named]windsigh[otherwise]tree[end if] high above[if tsunami-pushed-vine is true][one of]. It must have been shaken loose from somewhere up above in the quake[or][stopping][end if]". Understand "saddle" as east when location is North Beach and withered vine is open.

Check going east in North Beach when withered vine is closed: say "The cliffs in that direction are impassable." instead.

A huge piece of moss covered driftwood is a perchable setpiece in North Beach. Understand "wood" or "drift wood" or "massive/piece/patch/patches" as driftwood. The description is "The massive piece of wood has been bleached clean and rubbed smooth by countless years in the sea, a giant, misshapen bone thrusting out of the sand. Patches of pale green moss cling to its underside.". First report touching driftwood: say "The wood is smoother than you expected, the bark long since rotted away leaving only hard white curves, bumps and imperfections only rounded echoes now." instead. Instead of pushing or taking driftwood, say "You heave against the edge of the driftwood, but it is firmly buried in the sand, and probably has been for years.". The dream-text of driftwood is "polished pieces of driftwood". Does the player mean entering the driftwood: it is likely. Check entering driftwood: say "You clamber atop the ancient driftwood and rest for a few moments[time-of-day-bit]. The sea-smoothed wood is like [if sunup]warm[otherwise]cool[end if] glass under your hands.[paragraph break]Finally, you climb back down to the beach." instead. Instead of entering withered vine when location is North Beach and withered vine is closed: try entering driftwood instead.

Some black lava cliffs are a setpiece in North Beach. Instead of entering or climbing black lava cliffs, try going east.

Report going from North Beach to Rise: say "You clamber easily over the ancient lava rock, worn smooth by pounding surf, till you stand on top." Report going from North Beach to Center Beach: say "You follow the gentle curve of the white sand beach back around till you near its center[if a random chance of 1 in 2 succeeds][time-of-day-bit][end if]."




Chapter - Among the Boulders

Among the Boulders is a room in Beachfront. The prose name of Among the Boulders is "the stand of rounded boulders".  The description of Among the Boulders is "[atbouldersdesc].". Understand "boulder/boulders" as southwest when location is South Beach. Understand "boulder/boulders" as northeast when location is Tidepools.

To say atbouldersdesc: 
	if longform begin; say "Large mottled boulders rise from the sand here at the end of the beach, rubbed smooth by eons of tides and wind, green lichens clutching their sides. Across the bay, a rocky volcanic rise sticks out into the ocean, forming the lagoon's far boundary; this end is framed by a rocky point beyond the boulders[dot]";
	else if raining; say "Rain smoothly patterns on the great grey boulders, slipping smoothly off their egg-shaped tops[dot]";
	otherwise if rained and ( afternoon or evening ) ; say "The rounded boulders rise warm and wet in the sinking sun, smelling of sea-kissed stone[dot]";
	otherwise if afternoon; say "The rounded edges of the boulders glow warmly in the light of the afternoon sun[dot]";
	otherwise if dawn or twilight; say "The boulders keep a silent vigil in the eerie [if dawn]dawn light[otherwise]twilight[end if], like strange monuments[dot]";
	otherwise if sunrise or morning; say "Pink morning light kisses the tops of the great mottled boulders, casting a jumble of confused shadows over the sandy paths wandering towards the point[dot]";
	otherwise if night; say "The boulders rise from the sand in a confusion of curved shapes, great black eggs blotting out the stars on all sides[dot]";
	otherwise; say "[one of][room ambience][or][if tidein]Waves lap gently against the sides of the rounded boulders, in tune with the calls of the seagulls[else]The boulders stand stoically in the sunlight, their rounded tops faintly reflecting the blue of the sky[end if][dot][at random]";
	end if;
	say "Small green [o]mussels[x] cling to the lower edges of the boulders, [if tidein]wetted by the spray of the surf[otherwise if sunup]baking in the sunlight[otherwise]nearly invisible in the [light-source][end if].[paragraph break][exits]".

To say atb_tide: say "[if tidein]The tide crashes against a bank of low smooth stones running [bw of Ocean Waters]into the ocean[otherwise]A bank of slippery stones stretches [bw of Lower Beach][dr]towards[x] the wet sand[end if][if dir] to the [north][end if]". Understand "towards" as north when location is Among the Boulders and tideout. 

The exits text of Among the Boulders is "Sandy paths wander [bw of Tidepools][if dir][southwest] [end if]towards the rocky [dr]point[x], while the beach opens up [bw of South Beach][if dir]to the [northeast][otherwise]towards the edge of the [d]forest[x][end if]. [atb_tide]". Understand "into" as north when location is Among the Boulders. Understand "point" as southwest when location is Among the Boulders. Understand "forest" as northeast when location is Among the Boulders. Understand "towards" as north when location is Among the Boulders and tidein.

Boulders-stuff is stuff in Among the Boulders. Understand "path/paths/bank" as Boulders-stuff when location is Among the Boulders.

Some small green mussels are a backdrop. They are in Among the Boulders, Tidepools, and Top of Ravine. Understand "mussel/fragment/fragments/shell/shells/whorl/whorls" as mussels. The description is "A bit longer and wider than a fat thumb, they are a deep forest green cut through with striated arcs of lighter shades. Fragments of the shells of their ancestors tumble in the surf, diminishing to gritty green whorls[musselhint].". Check taking mussels: say "The living mussels are gripped tightly to the rocks, but you pick up a green shell fragment tumbling in the surf and turn it in your hands for a moment, admiring the rich coloration, before tossing it back into the foam." instead. Instead of pulling or opening mussels, say "Tiny barnacles clinging to their shells and the slippery sea water prevent you from getting a good grip.". Check tasting mussels: say "You manage to pry one of the mussels off the rock and awkwardly scrape some of the rubbery flesh off the shell. The taste is refreshing but fairly bland; perhaps cooked or with some seasonings they would taste better." instead. Check attacking mussels: say "You take one abandoned mussel shell and smash it against the rock. It shatters into dozens of virescent fragments and wisps of green powder." instead.

To say musselhint: if ( time for excitement or story mode ) and Back Room is visited and Jumble is unvisited, say ".[paragraph break]You notice that the color of the mussel shells is the same shade as the green band of color painted on the door of the cabin on the beach".

The ambience table of Among the Boulders is the Table of Among the Boulders ambience.

Table of Among the Boulders ambience
freq		start time	end time	text	table		trigger	flag
rare	dawn		sunset	--	--	giant sea turtle
uncommon		dawn		twilight	"A [o]crab[x] wends its way between the boulders, either lost or unusually adventurous."	--	crab
rare	dawn		twilight	"A [o]gull[x] flutters in from sea and perches on the exact top of a large, rounded boulder looming above you."	--	seagull

Some great round boulders are a perchable setpiece in Among the Boulders. Understand "mottled" or "boulder" as boulders when location is Among the Boulders. The description is "Rounded monoliths." Instead of climbing or entering great round boulders, say "You give it a good try, but the sides are too wet and slippery. You have no idea how [the Progue] got up there.". Check touching great round boulders: say "The sides are surprisingly smooth, mottled with strange moss and lichens." instead. The dream-text of great round boulders is "crates of egg-shaped rocks". Check taking great round boulders: say "They are huge, and must have been bured in the sand here for eons." instead.

Report going from Among the Boulders to Tidepools: say "You weave through the boulder stand, clambering over a few shorter rocks here and there, and eventually break out onto a wet, rocky point." [Report going from Among the Boulders to South Low Tide:  say "[if tidein]You wade out into the warm water, stepping carefully until the rocky ground gives way to smooth, fine sand[otherwise]You clamber carefully across rocks slick with water and seaweed before reaching the warm fringe of the tide[end if]."] Report going from Among the Boulders to South Beach: say "You leave the boulders behind and walk back to the smooth white sand of the beach."




Chapter - Tidepools

Tidepools is a room. The prose name of Tidepools is "the tidepools".

The description of Tidepools is "[tidepoolsdesc].". To say tidepoolsdesc:
	do the room description dance with Table of Tidepools Structure and Table of Tidepools Description.

Table of Tidepools Structure
time			s1	s2	s3	s4	s5	s6	s7	s8	s9	s10
dawn		3	4	2	99	5	6	99	7	a number	a number
sunrise		3	4	2	99	5	6	99	7
morning		1	4	2	99	5	6	99	7
midmorning	1	4	2	99	5	8	99	7
midday		1	4	2	99	5	8	99	7
afternoon		1	4	2	99	5	8	99	7
evening		9	4	2	99	5	8	99	7
sunset		9	4	2	99	5	6	99	7
twilight		10	4	2	99	5	6	99	7
night			1	4	2	99	7

Table of Tidepools Description
row	text
1	"A rocky point ends here with a cluster of small"
2	"[if tidein]battered and churned by the relentless breaking of waves[end if][if tidein and raining] and rain[end if][if tideout and raining]broken into dancing mirrors by the rain[end if][if tideout and not raining]smooth mirrors of the [light-source] above[end if]"
3	"Morning sunlight just touches this rocky point, strewn with tiny"
4	" [o]pools[x], "
5	"From here the whole lagoon stretches out before you, "
6	"[a phrase about the mountain]"
7	"[paragraph break][exits]"
8	"from [distantcabin] in the center of the beach to the [o]mountain[x] and [o]volcano[x], looming over either end"
9	"The sinking sun sets over this cluster of little"
10	"Under the fading light are a handful of small"

To say distantcabin: if Center Beach is visited or Tidepools is visited, say "the [o]cabin[x]"; otherwise say "a small log [o]cabin[x]". The tp-cabin is a view with base room Hut. It is in Tidepools. It is far from Tidepools, Lower Beach, Ocean Waters, South Beach, North Beach, and Rise. Understand "log/cabin" as tp-cabin when location is Tidepools. The printed name is "distant cabin". The description is "About halfway around the curve of the bay, the cabin is built up flush against the old lava flow which forms the beach's natural back wall.". 

The exits text of Tidepools is "Dry land snakes [if dir][northeast] [end if]back towards the cluster of [dr]boulders[x]. There is no safe place to enter the ocean from here". 

Tp-stuff is stuff in TIdepools. Understand "point/hollow/bowl/foam" as Tp-stuff when location is TIdepools. 

Check sleeping in Tidepools: say "It's too wet and rocky here.[sleepsuggest]" instead.
				
Some tide-pools are a setpiece in Tidepools with printed name "tidepools". Understand "tidepool" or "tidepools" or "tide pool" or "tide pools" or "pool" or "pools" or "series" or "mirror/mirrors" as some tide-pools. The description is "Clinging precariously to every hollow and bowl in the jumbled rock, the pools [if high tide]are churned into constant motion by the tide, their surfaces a mass of blue-white foam[otherwise if tidein]are rimmed with clumps of drying foam, their surfaces disturbed every few minutes by rogue waves[otherwise]are placid windows into a world of tiny darting [o]creatures[x] and surprising shades of color[end if].". The dream-text of tide-pools is "miniature snow-globes filled with tiny anemones and starfish". Instead of entering or swimming in tide-pools, say "The pools are so filled with strange creatures that you're half-afraid and half-reluctant to disturb their miniature world.".

Some tiny creatures are an undescribed animal in Tidepools. Understand "starfish" or "minnow" or "minnows" or "fingers" or "anemone" or "anemones" or "creature" as tiny creatures. The description is "[if night]In this darkness, you can't make out any detail[otherwise]Bright orange starfish, tiny pastel minnows, and bulbous fingers of purple and maroon sea anemones: each tidepool is like a tiny aquarium." Check taking tiny creatures: say "You pick up one of the orange starfish, and watch its thousands of tiny legs wiggle in peristaltic waves and contractions before carefully replacing him." instead.

The ambience table of Tidepools is the Table of Tidepools ambience.

Table of Tidepools ambience
freq		start time	end time	text	table		trigger	flag
frequent	high tide	--		"[one of]With a crash, a wave breaks against the jagged rocks of the point, spraying you with surf and sending foam swirling around your ankles[or]A wave breaks against the rocks, sending a surge of seawater past your feet[or]A wave smashes against the rocky point, sending a wall of spray airborne and half drenching you[or]A wall of water crashes into the rocky point, sending foamy waves surging through the tidepools[at random]."
common	--	--	--	Table of Tide ambience
common	morning		evening	--	Table of Seagull ambience

Report going northeast from Tidepools: say "You step carefully[if tidein] through the crashing surf[end if] back towards the beach[if a random chance of 1 in 2 succeeds][time-of-day-bit],[end if] until you find yourself among the boulders again.". Check vague swimming when location is Tidepools: say "It's too rocky to safely enter the water from this point." instead.



Chapter - Lower Beach

The prose name of Lower Beach is "the shore". The printed name of Lower Beach is "[if tidein]Wading In the Lagoon[else]Lower Beach".

The description of Lower Beach is "[if tideout][lowerbeachdesc].[else][description of Ocean Waters]". To say lowerbeachdesc:
	if raining, say "The soft drumming of rain on wet sand fills your ears with a basso thrum. Curtains of rainwater wash down the saturated beach, the line between sea and land turned into one between salt water and fresh";
	otherwise say "The tide breaks at your feet, sending warm runners of foam [if low tide]to kiss the wet sand by your feet[otherwise]splashing around your ankles[end if]";
	say ". The sand is smooth and damp, sprinkled with a profusion of shells, small stones, and clumps of seaweed. [paragraph break]A huge and beautiful [o]sculpture[x] of a manta ray, carved from some clear crystal, sits on a track running into the waves.[paragraph break][exits]".

LowerBeach-stuff is stuff in Lower Beach. Understand "curtain/curtains/runner/runners/foam" as LowerBeach-stuff when location is Lower Beach.

The exits text of Lower Beach is "You can [if tideout]hike back up[else]wade towards[end if] the beach in one of several directions: [if dir][northeast] [end if]towards the rocky [dr]rise[x], [if dir][east] [end if]towards the log [dr]cabin[x], or [etlb2]". To say etlb2: say "[if dir][southeast] [end if]towards the [dr]beach[x] near the path. You could also wade [if tidein]farther [end if]out into the ocean [dr]waters[x][if dir] to the [west]". Understand "rise" as northeast when location is Lower Beach. Understand "cabin" as east when location is Lower Beach. Understand "beach" as southeast when location is Lower Beach. Understand "waters" as west when location is Lower Beach.

The manta sculpture is a setpiece in Lower Beach. The description is "The sculpture is stunningly beautiful, capturing every curve of the graceful manta creature's flattened form. The clear crystal shimmers in the [light-source], and peering closer you can see that the sculpture is actually hollow. A [o]hatchway[x] on the top provides access to the interior.". Instead of opening or entering the manta sculpture, try going inside. Understand "crystal" as manta sculpture.

Instead of doing anything to the manta sculpture when tidein: say "It's submerged by water right now; you can't access it.".

The hatchway is part of the manta sculpture. The description is "A round wheel on top opens the hatchway, which looks airtight.". Understand "wheel" as hatchway. Instead of opening or turning or entering the hatchway, try going inside.

Report going from Lower Beach to Beachfront: say "You [if tidein]emerge from the shallow water and [end if]hike up the drying beach[if a random chance of 1 in 3 succeeds][time-of-day-bit],[end if] leaving the soft crash of the surf far behind." Report going from Beachfront to Lower Beach: say "You walk down towards the breakers on dampening sand[if a random chance of 1 in 2 succeeds][time-of-day-bit][end if].". 

Report going from Lower Beach to Inside-Manta: say "You turn a wooden wheel on the hatchway, pull it open with a wet sucking noise, and clamber inside. The interior is just tall enough that you can sit up without bumping your head. As you sit, however, the hatchway clangs shut behind you, releasing a hidden catch; and the manta sculpture glides forward down the track, cuts through the breaking waves effortlessly, and descends into a beautiful undersea paradise.".

Check going north in Lower Beach: say "The rocks in that direction are too sharp to clamber ashore." instead. Check sleeping in Lower Beach: say "Not here. When the tide comes back in, you'd be washed away.[sleepsuggest]" instead.

Chapter - Inside-Manta

After going to Inside-Manta: if night, move im-rayfish to Inside-Manta; else remove im-rayfish from play; continue the action. Some im-rayfish are a minor setpiece in Inside-Manta with printed name "rayfish". Understand "rayfish/manta/mantas/ray/rays" as im-rayfish. First check examining im-rayfish: say "The ghostly [rayfish] glide silently through the waters of the lagoon around you, each longer than you are tall. From within the sculpture, you have a strange sense of spatial vertigo, as if you float in deep space while luminous star creatures ripple through infinite black void." instead [this is the avoid the "most things indoors can't be examined at night" rule.]. The provoke message of im-rayfish is "They're in the water on the other side of the crystal.". 

The prose name of Inside-Manta is "inside the manta sculpture". The printed name of Inside-Manta is "Inside the Manta, Under the Waves". The description of Inside-Manta is "[insidemanta-desc]". Inside-Manta is indoorsy. Check sleeping in Inside-Manta: say "That may not be the best idea. You're not really sure how much air there is in here.[sleepsuggest]" instead.

To say insidemanta-desc:
	if night:
		say "Phosphorescent glows drift through the black lagoon around you as the [o]rayfish[x] glide effortlessly through the lagoon[dot]";
	otherwise:
		say "Surrounding you on all sides is a fantastic underwater vista. Brightly colored [o]fish[x] twirl and dart among coral reefs and gently waving plants of red and green. [if sunup]Sunlight[else if moonup]Moonlight[else]Starlight[end if] filters heavily through the waves and the transparent crystal of the sculpture; the facets are so expertly carved you hardly notice it's there[dot]";
	say "The hatchway above leads [outside], though you probably don't want to use it while you're underwater. A large wooden [o]wheel[x] on the floor seems to interface with the track on the ocean floor, which ends beneath you[dot]";
	if Progue is fulfilling and the animus of Progue is swimming:
		say "Above you through the crystal, you can see [the Progue], floating languidly on the surface of the water.";
		move distant-Progue to location;
	else:
		fire one off by frequency from Table of Inside-Manta Ambience, definitely selecting, no extra spacing.

InsideManta-Stuff is stuff in Inside-Manta. Understand "vista/underwater/sides/coral/reef/reefs/plant/plants/waves/crystal/sculpture/facet/facets" as InsideManta-Stuff when location is Inside-Manta.

The manta-apparatus is a minor setpiece in Inside-Manta with printed name "apparatus" and provoke message "The mechanism seems designed to allow one to move the sculpture back up the track to dry land again under one's own power.". Understand "interface/apparatus/track/gear/gears" as manta-apparatus when location is Inside-Manta.

A manta-wheel is a prop in Inside-Manta. Understand "wheel/handle" as manta-wheel. The printed name is "large wooden wheel". The description is "The wheel lies flat against the crystal floor of the manta, through which you can dimly see some gears and the track below. It looks like by gripping the handle you could make a wide stirring motion to turn the wheel.". Check turning manta-wheel: try going outside instead.

Report going from Inside-Manta to Lower Beach: say "Gripping the handle, you begin turning the wheel. The gears below you spin, and you feel the manta slowly pulling back up the track.[paragraph break]It takes a few minutes, but you slowly emerge from the waves until you're resting on the lower beach again, and climb out of the sculpture."

Some fish are a minor backdrop in Inside-Manta. Understand "school/minnow/minnows/eels/goldfish/turtle" as some fish. The description is "[fishdesc]". To say fishdesc: fire one off by frequency from Table of Inside-Manta ambience, definitely selecting, no extra spacing. The provoke message of some fish is "You're completely sealed in here; you can't reach them."
	
The ambience table of Inside-Manta is the Table of Inside-Manta ambience.

Table of Inside-Manta ambience
freq		start time	end time	text	table		trigger	flag
frequent		dawn		twilight	"[one of]Tens of dozens of[or]A few dozen[or]Hundreds of[or]A few[or]A handful of[in random order] [one of]skinny silvery fish[or]tiny crimson minnows[or]lacy black fish[or]goldfish with stripes of cerulean blue[or]bright yellow fish the size of your hand[or]tall and skinny aqua fish like pancakes on end[in random order] [one of]float by[or]slip through the blue[or]swim near you[in random order], [fishfun1]." [plural]
frequent		dawn		twilight		"[one of]A school of[or]A[or]A cluster of[or]A dense grouping of[in random order] [one of]stout, ugly fish with scales like rock[or]bright orange fish covered in spines[or]long silver fish the size of your leg[or]beautiful red fish with long, graceful fins like bridal veils[in random order] [one of]swims past you[or]floats nearby[or]glides past[in random order] [fishadverb1]." [singular]
frequent		dawn		twilight	"A [one of]larger wave[or]wave[or]energetic swell[in random order] [one of]surges by above your head[or]swirls chaotically past the surface above you[at random], [one of]tugging at the green and red fronds on the floor and causing them to bob and sway hypnotically[or]pulling all the fish along in its momentary disruption of the current[or]sending whorls of surf bubbles spiraling down towards you[in random order]."
frequent		dawn		twilight	"A[one of] silver-red fish the size of your arm[or] huge deep blue fish dotted with brown and orange spots[or]n electric green fish with fins four times longer than its body[or] wriggling black eel with midnight blue stripes[in random order] [one of]darts up to the surface, about a body's length above you, to snatch some morsel floating on the swell[or]snatches a smaller fish in its jaws and darts away[or]pokes languidly at a crevice in the coral reef with its mouth[or]snatches some floating morsel out of the water nearby[in random order]."
common	dawn		twilight	"A [one of]fat[or]slender[or]rounded[at random] [one of]purple-black[or]pink[or]white[or]indigo[at random] fish momentarily fights with a [one of]larger[or]smaller[at random] [one of]silver[or]turquoise[or]blue-grey[or]bronze[at random] one over some [one of]disintegrating morsel[or]bit of food[or]edible flotsam[at random] before beating a hasty retreat."
uncommon		dawn		twilight	"A translucent jellyfish swims delicately by, its body glimmering prismatically in the light of the [light-source] slanting through the waves."
uncommon		dawn		twilight	"[one of]A sea turtle swims[or]Two sea turtles swim[at random] above the reef in the distance, kicking stubby legs but somehow managing to seem graceful."
guaranteed		twilight	night	"[one of]Glowing[or]Spectral[or]Luminescent[at random] rayfish [one of]glide effortlessly[or]swim in graceful ripples[or]float serenely[at random] through [one of]the black lagoon[or]the dark waters[or]the darkness outside[at random][if a random chance of 1 in 3 succeeds]. One spooks, ejecting a cloud of jet-black ink before speeding away into the dimness[end if]."

To say fishfun1: say "[one of]dodging first this way, then that[or]drifting lazily in the swells[or]feeding on tiny specks suspended in the water[or]staying close together[or]weaving through sinuous stands of seaweed[or]skimming the surface of the coral reef[or]darting in and out of hiding places in the coral reef[in random order]".

To say fishadverb1: say "[one of]grumpily[or]appraisingly[or]cautiously[or]confidently[or]languidly[or]hungrily[in random order]".

Chapter - Ocean Waters

	
The prose name of Ocean Waters is "the lagoon". The description of Ocean Waters is "[oceanwdesc].". To say oceanwdesc:
	say "[A sentence about the ocean swells]. [A sentence about the lagoon]. [paragraph break][exits]".

The exits text of Ocean Waters is "Short of swimming out to the ocean, the only real places to go are back [if dir][east] [end if]to the [dr]beach[x], or scrambling up towards the rounded [dr]boulders[x][if dir] [south][end if]". Understand "beach" as east when location is Ocean Waters. Understand "boulder/boulders" as south when location is Ocean Waters.

OceanWaters-stuff is stuff in Ocean Waters. Understand "water/ocean/sea/seawater/swell/swells" as OceanWaters-stuff when location is Ocean Waters.

Check sleeping in Ocean Waters: say "With water up to your [waistankles], you'll probably find that rather difficult.[sleepsuggest]" instead.

To say a sentence about the ocean swells:
	if raining begin; say "Rain falls, waves surge around your [waistankles], and thousands of tiny raindrop splashes surround you, ensuring a thorough soaking. At least it's warm water";
	otherwise if night; say "The warm water of the lagoon laps quietly at your [waistankles], [if moonup]reflecting broken sparkles of shimmering silver-pink moonlight up at you[otherwise]faint twinkles of the stars and galaxy above mingling with hints of foam[end if]. Caught between rolling black velvet and the arching black sky, you feel strange and unreal";
	otherwise; say "Warm seawater [if evening or sunset]sparkles brilliantly and [end if][if twilight]still glows under the failing light and [end if]surges about your [waistankles] as you wade through the [if night]blackened [end if]lagoon, the sand like wet velvet under your feet";
	end if.

To say waistankles: say "[if location is Ocean Waters]waist[else]ankles".

Check vague swimming when location is in Tiderooms or location is Lower Beach or location is Beachfront:
		pass 15 minutes of time;
		say "You[if location is in Tiderooms] [otherwise] wade out into the surf and [end if]dive forward[if raining], feeling the liquid contrast between the warmer waters of the lagoon and the cool rain[end if]. ";
		if night, say "The glowing mantas beneath you and the great galaxy [if galaxy is named]Capalla [end if]above make this seem like a dream, but it feels real when your muscles begin to complain.[paragraph break]At one point, you accidentally brush against one of the majestic creatures. It tenses, then squirts a cloud of jet-black [o]ink[x] at you before darting away";
		otherwise say "[one of]Paralleling the shore, you do a few strokes under the [light-source][or]Eagerly, you swim out a bit and then back in, enjoying the scenery[in random order]. [if wounded]You have to swim carefully because of your injured leg, but it still feels good to stretch your muscles[else if not raining]It feels good to stretch your muscles a bit, and the water is warm and refreshing[otherwise]The exercise does you some good, though you are beginning to feel rather waterlogged[end if]";
		if night, move manta ink to the location;
		say ".[paragraph break]After a few laps you [if location is in Tiderooms]stand back up[otherwise]wade back onto shore[end if][if sunup and not raining], the tropical heat quickly baking you dry[end if]." instead.

The ambience table of Tiderooms is the Table of Tiderooms ambience.

Table of Tiderooms ambience
freq		start time	end time	text	table		trigger	flag
common		rising uptide	falling uptide	"A clump of seaweed drifts by, bobbing gently in the surf."
frequent		night		dawn		--	Table of Manta Ray ambience
frequent		dawn		twilight	--	Table of Fish ambience
uncommon		--		--	"A big swell surges past, momentarily wetting you to your chest."
rare		--	--	--	Table of Jellyfish ambience
rare		dawn	twilight	--	Table of Sea Turtle ambience

Table of Fish ambience
freq		text	table		trigger	flag
frequent		"A school of reddish-silver [o]fish[x] dart past your knees."	--	generic-fish
frequent		"A silvery [o]fish[x] shoots by at high speed like some undersea arrow."	--	generic-fish
common	"A corn-yellow [o]puffer[x] fish drifts by, tiny fins straining against its bulky mass and the swirling waters of the lagoon."	--	puffer-fish
common	"A large crimson [o]fish[x] darts in from nowhere to snap up a tiny silver one, as the others in its school scatter in all directions."	--	generic-fish
common	"A long skinny [o]fish[x], its scales a fluorescent green sheen in the [light-source], circles playfully around you a few times before darting off."	--	generic-fish

Table of Jellyfish ambience
freq		text	table	trigger	flag
frequent		"Moving gracefully, a silver-white [o]jellyfish[x] with hundreds of delicate arms trailing behind it jets slowly past you."	--	jellyfish
uncommon		"A large crimson fish darts for a silver-white [o]jellyfish[x], but the jellyfish snares the attacker in its tendrils; after a frantic moment, the fish squirms free and races away."	--	jellyfish

A jellyfish is set dressing. The description is "The translucent creature is almost invisible against the backdrop of the water.". Instead of attacking or taking or tasting or touching jellyfish, say "It jets away when you move too close to it.".

A generic-fish is set dressing. Understand "school/fish/silver/silvery/large/red/skinny/green/fluorescent" as generic-fish. The printed name is "fish". The description is "The fish dart so quickly through the water that you can only catch glimpses.". Instead of attacking or taking or tasting generic-fish, say "You'd be hard pressed to catch any of these creatures with your bare hands.". Check touching generic-fish: say "You hold out a hand, but the fish skitter away." instead.

A puffer-fish is set dressing. Understand "puffer fish" or "puffer" as puffer-fish. The printed name is "puffer fish". The description is "This fat fish has an almost human expression as he struggles to keep up with a school of small silver fish who continually dart away from him.". Instead of attacking or taking or tasting or touching puffer-fish, say "The puffer fish suddenly swells to the size of a balloon, then, when this doesn't scare you off, splashes speedily away.".

Table of Sea Turtle ambience
freq		text	table		trigger	flag
frequent		"A sea [o]turtle[x] swims past you, surprisingly graceful, its scaled legs kicking and shell bobbing along, just touching the surface."

Table of Manta Ray ambience
freq		text	table		trigger	flag
frequent		"A huge glowing [rayfish] swims past you, a great dark ghost."
frequent		"The [rayfish] shimmer and as they glide with grace through the water around you."
common	"A glowing [rayfish] whispers past your feet, momentarily brushing them with silken-smooth wings."

Report going from Ocean Waters: say "You slosh your way towards the shore, push past the breakpoint where the gentle swells tumble over themselves into knee-high waves, and finally step back onto the sand.".

Report going to Ocean Waters: say "You wade out into the surf. The lagoon is shallow enough that you walk quite far before the water climbs past your knees.".

Check going west in Tiderooms: try vague swimming instead.


Part - Progue's Domain

Chapter - Hut

Hut is inside from Center Beach.
	
Check sleeping in Progue's Domain: say "You're not going to sleep very well on these old warped boards.[sleepsuggest]" instead.

The prose name of Hut is "the log cabin". The printed name of Hut is "Abandoned Cabin". The description of Hut is "[hutdesc].". To say hutdesc:
	if longform begin; say "Sand drifts around the open doorway, spilling out in tiny dunes across the wooden floorboards[if Back Room is visited or Studio is visited] disturbed only by your footsteps[otherwise], undisturbed[end if]. Bare, water-stained walls frame a small room, empty and abandoned save for a manta ray [o]skeleton[x] hanging from one wall; some frayed ropes tied to one beam are the only other hint of past furnishings";
	otherwise if raining or dawn or twilight; say "The cabin's front room is gloomy and indistinct in the dim light that filters from outside, [if raining]though the roof provides welcome protection from the storm[otherwise]still as a tomb[end if]";
	otherwise if sunset or evening; say "Evening light floods the room as the setting sun shines through the open doorway";
	otherwise if night; say "[if moonup]Pale pink moonlight angles through the open door of the cabin, but illuminates little beyond the sharp edges of shadow it casts on the weather-beaten floorboards[otherwise]The cabin is black in the moonless night, only the dimmest traces of starlight spilling in through the open doorway";
	otherwise if sunrise or morning; say "Reflected light from the morn-kissed lagoon bounces into the cabin, bringing hints of color to the water-stained floorboards";
	otherwise; say "The white glow of the beach through the open door is brilliant; your eyes struggle to adjust to the dim interior of the cabin instead";
	end if;
	say ".[paragraph break]";
	if Tsunami Sequence has ended begin;
		say "The cube must have been smashed against a wall in the earthquake or tsunami; only fractured remnants remain now. The [o]sketchbook[x], waterlogged and awry, seems nevertheless intact";
	otherwise if cube is Progue-disturbed;
		say "The wooden [o]cube[x] lies upended in the middle of the floor[if cube is closed]. The violence has popped it open, and a worn [o]sketchbook[x] lies half-in, half-out, pages flapping faintly on the floor[otherwise], the [o]sketchbook[x] half-in, half-out, flipped to the page with the tree[end if]";
		now wooden cube is open;
	otherwise;
		say "The room's sole other feature is [if we have examined the wooden cube]the[otherwise]a[end if] [if wooden cube is open]open [end if]wooden [o]box[x][if wooden cube is open and the sketchbook is in cube] (containing [the sketchbook])[otherwise if Hut is unvisited] discarded in a corner[otherwise] lying askew on the floor[end if]";
	end if;
	say ".[paragraph break][exits]".

Hut-stuff is stuff in Hut. Understand "steps/footsteps" as Hut-stuff when location is Hut.

The manta ray skeleton is a setpiece in Hut. The description is "The skeleton, mounted on the wall, makes a large diamond, and must have once belonged to some flat, manta ray creature with rare elegance. Now, bleached and dusty, it only seems to add to the loneliness and neglect of the cabin.". Check touching manta ray skeleton: say "The bone is cold and hard." instead. Check taking manta ray skeleton: say "It's mounted on the wall." instead.

The exits text of Hut is "Two smaller interior doorways lead [ethut_extended]. You can also step back [d]outside[x]". Understand "porch/studio" as north when location is Hut. Understand "storage" or "interior" as east when location is Hut.

To say ethut_extended:
	say "[if dir][north] [end if]to ";
	if Studio is visited, say "the [if sunup]brightly-lit[otherwise if dawn or twilight]dim interior of the[otherwise]dark[end if] [dr]studio[x]";
	otherwise say "a [if sunup]bright[otherwise if dawn or twilight]dim[otherwise]dark[end if] [dr]porch[x]";
	say " or [if dir][east] [end if]to ";
	if Back Room is visited, say "the tiny [dr]storage[x] room";
	otherwise say "a[if sunup] darker[otherwise if dawn or twilight]n indistinct[otherwise] black[end if] [dr]interior[x]".

The hutsand is a prop in Hut. The printed name is "sand". Understand "sand" or "drifts" or "tiny" or "dunes" as hutsand. The description is "Piled to your ankles near the door, the miniature dunes shrink down to the thickness of grains by the far walls[if Back Room is unvisited], utterly smooth and undisturbed-- though perhaps the beach winds would smooth out footsteps in days[otherwise if Jumble is unvisited], disturbed only by your footprints[end if]." The dream-text of hutsand is "buckets of sand".

The hammock remnants are a minor prop in Hut. Understand "strands" or "rope/ropes/hammock" or "rotten/frayed" as remnants. The description is "It looks as if something like a hammock once hung here, but in some past year of flooding the ropes must have weakened and rotted away. The few remaining strands are useless." The provoke message is "Too rotted and weak to be useful for anything.".

Report going from Hut to Center Beach: say "You step back outside into [if raining]the rain[otherwise if sunup]the sunlight[otherwise]the night[end if], walking down the beach in the direction of the surf." Report going from Hut to Studio: say "You duck through the small doorway into a windowed porch." Report going from Hut to Back Room: say "You step through the doorway into a smaller room at the rear of the cabin."

Section - The Cube and the Sketchbook

A wooden cube is an undescribed openable container in Hut. It is closed and fixed in place. The wooden cube is either Progue-disturbed or nonProgue-disturbed. It is nonProgue-disturbed. Understand "box" as wooden cube. The description is "[one of]You blow sand and dust off as you kneel to examine it, brushing years of neglect from its detailed surface. [or][stopping]The box is a perfect cube, each side about the length of your forearm, carved from interlocking pieces of wood which fit together seamlessly without nails or mismatched joins. Intricate [o]carvings[x] cover every surface. Salt crusts the lower third, where the wood is swollen and discolored[if cube is open].[paragraph break]The top of the cube has swung open, revealing a delicate [o]sketchbook[x], seemingly undamaged[end if].". After doing something to wooden cube: now wooden cube is nonProgue-disturbed; continue the action. The dream-text of wooden cube is "wooden cubes, each intricately carved with a scene from your life". Check touching wooden cube: try touching intricate carvings instead.

Check taking the wooden cube: say "The wooden cube is too heavy and bulky to carry around[if sketchbook is in cube], but as you lift it experimentally, you hear something shifting inside[end if]." instead. Check knocking the cube: say "You rap experimentally on the side of the cube, and hear a hollow thunk in response." instead. Instead of pushing or pulling the wooden cube, say "You rock the cube back and forth. It seems lighter than it should be[if sketchbook is in cube], and you can hear something shifting around inside[end if]." Check attacking the wooden cube: say "You throw the cube at one of the walls. It makes a hollow clunk as it impacts but the wood does not give way[if sketchbook is in cube], although you can hear something flopping around inside[end if]." instead. Check opening an open wooden cube: say "The top has already been swung open." instead.

The intricate carvings are part of the wooden cube. The description is "The carvings, impossibly tiny, make up one immense, tropical scene. Splashing dolphins segue seamlessly into beaches littered with shells, tall, graceful palm trees, laughing children, and fanciful animals. You could study these carvings for hours without taking in all the detail.[paragraph break]Along the top of the cube, worked into the design, are five oval [o]indentations[x]." Check touching the carvings: say "The relief is only as deep as a fingernail, but seems to lend the carvings a remarkable sense of depth and dimension. You run your finger along the aging wood, feeling the texture of the grain and the artist's tool." instead.

The cube is either primed or unprimed. The cube is unprimed.

Some oval indentations are part of the wooden cube. Understand "ovals/indentation/five/fifth" as oval indentations. The description is "Four are clustered together in an arc, the fifth farther apart.". Touching or pushing oval indentations is clever-cube-opening. Instead of clever-cube-opening: now cube is primed; try opening the cube. Understand "put hand/finger/fingers in/on [something]" or "place hand/finger/fingers in/on [something]" or "touch hand/finger/fingers to [something]" as touching when location is Hut. 

First check opening the cube when the cube is unprimed: say "You can't see any signs of hinge or latch." instead.

First report opening the cube: say "You slip your fingers into the indentations along the top and push with your other hand. The top rotates open easily, revealing a delicate [o]sketchbook[x]." instead. First report closing the cube: say "You rotate the top back into place, and it catches with a gentle 'snick' sound, forming an almost seamless join." instead. 

The sketchbook is an undescribed book in the wooden cube. The description is "You examine the sketchbook carefully, a beautiful handmade thing, thick paper pressed from some creamy-tan wood, the spiral binding a thin coil of copper-colored metal. On the cover is a handwritten [o]inscription[x]." After examining the sketchbook: try reading the sketchbook. Understand "page" or "notebook" or "drawing" or "book" or "sketch" as the sketchbook. The contents of the sketchbook is the Table of the sketchbook. [Check dropping the sketchbook when location is not Hut: say "You shouldn't leave this just lying around anywhere." instead.] [After dropping the sketchbook: now cube is nonProgue-disturbed; if cube is on-stage begin; move sketchbook to cube; say "You place the sketchbook back inside the wooden cube for safekeeping."; end if.] Instead of taking the sketchbook: say "Better not. Whoever locked it up here must have wanted it safe.". The initial appearance of the sketchbook is "[if location is not Hut]the sketchbook lies crumpled on the ground.[otherwise]A beautiful handmade sketchbook is here.[end if]". The dream-text of sketchbook is "blank sketchbooks". After reading the sketchbook: now cube is nonProgue-disturbed; continue the action.

[First Before going or exiting when player holds sketchbook: try dropping sketchbook.] [First check wordgoing when player holds sketchbook: if cube is on-stage begin; move sketchbook to cube; say "You place the sketchbook back inside the wooden cube for safekeeping."; end if.] [This is necessary because wordgoing is an action out of world.]

The handwritten inscription is a story-based scrawl. It is part of the sketchbook. The standard message is "[']And the maker of life must turn from art, and the maker of art must turn from life.[']". The secret message is " dancers, dancers...".

The notes-and-diagrams are part of the sketchbook. Understand "schematics/notes/calculations/diagrams/diagram" as notes-and-diagrams. The description is "Completely incomprehensible.".

Table of the sketchbook
desc
"The first drawing shows a stunning portrait study of two girls, maybe ten or eleven. Long black hair frames unsmiling but beautiful faces, trapped between the carefree whimsy of childhood and some premature pain that strips it away. At first you take them for twins, though subtle differences of appearance suggest otherwise, because of their nearly identical expressions. Though they look out at you and not each other, some bond strong even for sisters connects them, forged perhaps in loss and strengthened by necessity of reliance, each upon the other."
"A landscape fills the next page, showing the beach outside and the half-constructed cabin against the lava flow. The two girls play in the sand, one building a sand castle while a skittering crab watches, the other brushing her hair with a comb carved to look like two leaping dolphins. Behind them a tall figure chops branches from a felled tree trunk. While the beach and the girls are sharp and finely detailed, the figure is fuzzy and dark, indistinct, drawn with heavy, crude lines. Though just a small part of the scene, his presence throws the rest of the sketch into some sadder, unsettling mood."
"This page shows a rough map of the island. The half-circle of the lagoon on the west side, its north end bounded by the rocky lava flow that swoops up to the volcano in the south, are easily recognizable. The chasm running from the break in the volcano's side to the north end of the beach is marked with a danger sign and six tiny colored lines. A plateau filled with dense rain forest fills the island's east side, interrupted by a ravine that divides it from the looming mountain in the northeast.[paragraph break]A furious scribbled star marks a point deep within the eastern rain forest, with a crude drawing of a bee alongside it."
"Angry scribbles nearly obliterate the next sketch, which shows, in incredible detail, one of the [if tree1 is named]windsigh trees[otherwise]strange twisted trees[end if], every twist of encircling vines and gap in its sinuous branches carefully rendered. The dark and crudely drawn figure from the earlier sketch lies curled up asleep in its roots, and from his head spring dozens of images rising in curves and whorls, a panoply of dreams and ideas hovering above him, twisting through the branches of the tree."
"The next pages are filled with inscrutably dense schematics, notes, and calculations, growing smaller and more obtuse by the page until they devolve into meaningless scribbles. One cluster of diagrams centers around blueprints of a three-sided pyramid structure, connected to some elaborate network of underground machinery."
"You flip past several blank pages before reaching one last sketch on the notebook's final page, which seems to have been done much later than the others. It shows a man sitting watching the sun set over the ocean, his back turned and face invisible, holding the comb with the two leaping dolphins. The sketch is sloppy, almost careless, but still exudes a palpable sense of sadness and regret."



Chapter - Studio

Studio is north of Hut. "[studiodesc].". The printed name of Studio is "Cabin, The Studio". The prose name of Studio is "the studio". To say studiodesc:
	say "High, narrow [o]windows[x] ";
	if night, say "let dim trickles of starlight";
	otherwise say "admit [if twilight or dawn]faint ghost-light[otherwise if sunrise or morning or midmorning]refracted light from the beach[otherwise if raining]moist grey air[otherwise if midday or afternoon]steep slants of daylight[otherwise]angling shafts of gold evening light[end if]";
	say " into [if Studio is unvisited]this small porch, the purpose of which seems instinctively clear to you the moment you enter: it is an artist's[otherwise]the[end if] studio";
	if night:
		say ", its accoutrements vanishing into the darkness.[paragraph break][exits]";
	otherwise:
		say ". The floor is [if wall to wall workbench is dirty]stained with paint and clay, and artisan [o]tools[x] litter the surface of a wall-to-wall workbench, though everything seems to be under a layer of thick dust, as if undisturbed for years[otherwise]swept clean, though ghosts of paint stains still linger, and the wall-to-wall workbench has been scrubbed and unburdened of its old clutter, ready for use again[hutpaints][end if].[paragraph break]On the rough plank walls [if dir]to the east and west[otherwise]on your left and right[end if], exactly opposite each other, hang two spectacular ";
		say "[o]paintings[x].[paragraph break][if Epilogue-Ending-A is happening]And between them, in the center of the room, stands a [o]canvas[x], blank, waiting[else][exits]".

To say hutpaints: 
	if the number of paintpots enclosed by wall to wall workbench > 0, say ". On the bench [is-are] [the list of paintpots enclosed by location]".

A paintpot is a kind of thing. A paintpot is usually undescribed. The description of a paintpot is usually "A simple clay pot with a snug lid, filled with paint.".

A pot of red paint is a paintpot. A pot of yellow paint is a paintpot. A pot of white paint is a paintpot. A pot of black paint is a paintpot. A pot of green paint is a paintpot. A pot of blue paint is a paintpot. 

The exits text of Studio is "The only exit is [dr]back[x] [if dir][south] [end if]to the front room of the cabin".

Studio-stuff is stuff in Studio. Understand "trickles/slants/porch/accoutrements/stain/stains/paint/clay/dust/plank/studio" as Studio-stuff when location is Studio.

Report going from Studio to Hut: say "You return to the larger front room of the cabin."

Check wayfaring when location is Studio: try painting instead.

High narrow windows are a setpiece in Studio. Understand "window/interior" as windows. The description of the high narrow windows is "The roof of the shack extends out beyond the unpaned windows, [if raining]effectively keeping out rain but letting[otherwise]presumably to keep out rain but let[end if] in light. Through the windows you see [if night]only darkness[otherwise if raining]curtains of rain[otherwise if dawn or twilight]only a grey light[otherwise]the beach, and the black lava flow angling away into the distance[end if]." Check entering high narrow windows: say "They are too narrow to squeeze yourself through." instead. Instead of opening or closing high narrow windows: say "There is no glass or shutters on the windows, or at least there aren't any more; they are just rectangular holes in the wall of the cabin.".

A wall to wall workbench is a setpiece in Studio. Understand "bench" or "work bench" as wall to wall workbench. The description is "Just a heavy block of wood, the top planed smooth." The wall to wall workbench is either dirty or clean. The wall to wall workbench is dirty. Understand "clean [wall to wall workbench]" or "clean off [wall to wall workbench]" as a mistake ("[if wall to wall workbench is clean]It's already been cleaned off for you[otherwise]It looks like a long and dirty job that can probably wait till later[end if].") when location is Studio.

Some artisan tools are a minor prop in Studio. Understand "tool" or "clay" or "pot" or "pots" or "paint" or "paints" or "hide" or "hides" or "canvas" or "canvases" or "handmade" or "brush" or "brushes" as the artisan tools. The description is "[if we have not examined the tools]Your heart skips a beat as you realize these are mostly the tools of a painter. Clay pots seem to hold paints of varying shades and consistencies (though long since dried, useless now) and hides scraped smooth to make canvases are strewn around the workbench, along with rotting handmade brushes. It will take some time to put everything in order, but it looks like most of the tools you'll need to move on, when the time comes for that, are here[otherwise]You can take a full inventory later. At the moment you simply take comfort in the knowledge that you will not be stranded here[end if]. ". The dream-text of artisan tools is "clay pots, paintbrushes, mortars and pestle". Check taking artisan tools: say "[if wall to wall workbench is dirty]These tools are a suggestion right now more than a possibility. The paints are dried and useless; the brushes rotting and stale, and you see no blank canvas. But their presence indicates that when the time comes, everything necessary must be here on this island... somewhere[otherwise]Progue has prepped this room for your use, but you still lack a complete set of paints, a brush, and, of course, a canvas[end if]." instead.

Check vague painting when location is Studio: if artisan tools are enclosed by location, try taking artisan tools instead; else say "You'll need a canvas, brush, and paints before you can think about doing that." instead.

The thick dust is a prop in Studio. The description is "It looks as if this room has remained undisturbed for many years. There is a strange, expectant feeling in this place, as if, no matter how briefly, something great once touched it and left a mark for all eternity." Instead of taking or touching the dust, say "The grime and dirt leaves smudges on your fingertips."

Section - The Girls' Paintings

An artwork is a kind of prop. Understand "painting" as an artwork. Instead of doing anything to an artwork when location is Studio and ( night or dawn or twilight ) , say "It's too dark in here now to see the paintings in any detail." Check entering an artwork: try wayfaring instead. First check wayfaring when location is Studio: say "You only wayfare through your own paintings, and then only at the moment you finish creating them. These paintings have no power." instead. Check attacking an artwork: say "They're too beautiful for that." instead. The dream-text of an artwork is usually "carelessly piled paintings, so dusty and faded they are almost indistinguishable from each other".

Definition: an artwork is opposing if it is not the noun.

To say painting_intro:
	if we have not examined Lethe-canvas and we have not examined Phoebe-canvas begin;
		say "You step up to the painting and study it carefully. Immediately, you recognize the work of a Wayfarer. The lines and colors are too exact, too perfect, too beautiful to be anything but";
	otherwise if we have examined noun;
		say "You step up and study the incredible artistry again";
	otherwise;
		say "This painting is obviously the work of a Wayfarer as well. At first you think the same artist crafted this one, but subtle differences in style instill in you a growing belief otherwise"; 
	end if.
	
To say painting_close:
	if we have not examined Lethe-canvas and we have not examined Phoebe-canvas begin;
		say "A rough-hewn wood frame surrounds the painting, in harsh contrast with its elegant beauty. Roughly carved in the lower right is ";
	otherwise if we have examined noun;
		say "Carved into the rough-hewn frame is ";
	otherwise;
		say "This painting, too, is roughly inscribed with ";
	end if;
	say "[paintingnamemsg]".

The painting-word is a minor setpiece in Studio with printed name "word on the painting". Understand "single/word/language" as painting-word. The description is "Carved into the rough-hewn frame is [paintingnamemsg].". The provoke message of painting-word is "Carved into the rough-hewn frame is [paintingnamemsg].".

To say paintingnamemsg: 
	if the reading level of the player is language-knowing begin; say "a name: '[if noun is Lethe-canvas]Lethe[learn-lethe-name][otherwise]Phoebe[learn-phoebe-name][end if]'";
	otherwise if the reading level of the player is vowel-knowing; say "a word in an unfamiliar language, though you recognize [if noun is Phoebe-canvas]some of [end if]the symbols from the clockwork head in the treehouse"; if screen reader mode is false and noun is not painting-word, say ": '[if noun is Lethe-canvas]e--el[otherwise]e-eo--[end if]'";
	otherwise; say "a single word in a language you do not recognize";
	end if.

Lethe is an abstraction. Phoebe is an abstraction. To say learn-lethe-name: now Lethe is named. To say learn-phoebe-name: now Phoebe is named.

Check touching an artwork: say "You close your eyes and run your hand delicately across the hardened paint, feeling through the lacquered bumps and textures the power of the artist. You wonder what world this one wanders in now." instead. Understand "painting" or "paintings" or "wall" or "on the" or "frame" as an artwork.

Lethe-canvas is an artwork in Studio. The printed name is "[if Lethe is named]Lethe's[otherwise]the[end if] storybook [o]village[x] painting". Understand "lethe" or "lethes" or "storybook" or "village" as Lethe-canvas. The description is "[painting_intro]. [paragraph break]A gently rolling hilltop of lemon-yellow and milky-white wildflowers, fantastically profuse, explodes from the surface of this painting. A large gathering of smiling people in simple clothes of brown and crimson pick the flowers, laughing and smiling: children, parents, aunts, grandmothers, all so richly detailed that you can almost hear them laughing and calling out to each other. The smell of dusty dry pigment somehow suggests the first day of spring, and fresh mountain breezes in a sea-blue sky. Beyond the hilltop a storybook village basks in late morning haze, thatched roofs and cobbles ringed by balding mountaintops, rounded and emerald green.[paragraph break][painting_close].". l-painting-details is part of lethe-canvas. Understand "hill/hilltop/flowers/wildflowers/family/people/clothes/children/parents/aunts/grandmothers/roofs/cobbles/mountaintops/haze" as l-painting-details when location is Studio. Instead of doing anything to l-painting-details, say "The detail in the painting is extraordinary, so rich and alive it's as if it bleeds into your other senses.".

Phoebe-canvas is an artwork in Studio. The printed name is "[if Phoebe is named]Phoebe's[otherwise]the[end if] [o]space[x] painting". Understand "phoebe" or "phoebes" or "space" as Phoebe-canvas. The description is "[painting_intro]. [paragraph break]A huge translucent sphere hovers in the center of this painting, miles wide, reflecting in bulbous crescent the golden light of a warm gold and lemon yellow sun. Inside the sphere is a profusion of life: huge, gnarled trees growing in all directions without gravity to guide them; thick, mossy vines wrapped everywhere and stretching like tiny green threads of emerald through moist air; and people dressed in flowing silver-crimson gowns and wide sea-blue wings, gliding between gilded wooden villages high in the branches of the massive trunks. In the distance, more spheres can be seen, floating serenely amidst the jet black backdrop shining with a million milky stars.[paragraph break][painting_close].". p-painting-details is part of phoebe-canvas. Understand "sphere/space/light/sun/profusion/life/trees/vines/threads/gowns/wings/branches/trunks/spheres/stars" as p-painting-details when location is Studio. Instead of doing anything to p-painting-details, say "The detail in the painting is extraordinary, so rich and alive it's as if it bleeds into your other senses.".



Chapter - Back Room

The printed name of Back Room is "Cabin, Back Room". The description of Back Room is "[shackdesc].". The prose name of Back Room is "the back room of the cabin". To say shackdesc:
	if night or dawn or twilight or raining, say "Hardly any light filters into this windowless back room. Shapes are jumbled and indistinct[dot]";
	otherwise say "Only a dim light filters into this windowless back room. [if Back Room is unvisited]The back [o]wall[x] seems unnaturally dark, and as your eyes adjust, you realize it is not wood but the smoothed face of the lava flow[otherwise]The smoothed face of the lava flow forms the back [o]wall[x] of the room[end if]. ";
	say "A wide crack in the smoothed wall [if lava tunnel door is closed]is filled in by cobblestones near the ceiling, and a thick wooden [o]door[x] below[otherwise]leads through the open doorway into darkness[end if].[paragraph break]";
	say "Other than the [if lava tunnel door is open]open [end if][if not dir and lava tunnel door is open][d]door[x][otherwise]door[end if] [if dir and lava tunnel door is open][east] [end if]and a pile of smashed wood [if player holds compass]splinters[else][o]splinters[x][end if]"; say " in a corner, the only notable feature is the [dr]exit[x][if dir] [west][end if] back to the front room"

Does the player mean examining the lava wall: it is likely. [So "lava" means wall.] Understand "jumble/chasm" as east when location is Back Room and lava tunnel door is open. Instead of examining by name lava tunnel door when lava tunnel door is open: if location is Back Room, try going east; else try going west.

The exits text of Back Room is "The [d]exit[x] back [if dir][west] [end if]to the front room and the [if lava tunnel door is closed]imposing closed[otherwise]heavy open[end if] [dr]door[x] [if dir][east] [end if]are the only two exits".

Report going from Back Room to Hut: say "You step back into the cabin's larger front room.".

Section - The compass

Some smashed wood splinters is a prop in Back Room. Understand "pile" or "pile of" as some splinters. The description is "The wood looks like it might once have been a cabinet, smashed in some long-past fury[if compass is not worn by player]. [one of]Amidst the wreckage, however, rests an ornate [o]compass[x] in a brass base, apparently intact[or]An ornate [o]compass[x] lies amidst the wreckage[stopping][end if].". 

Compass directions is a number that varies. Compass directions is 0. The compass is a thing.

After opening the compass: now compass directions is 1; say "You undo the tiny clasp and open the brass lid, revealing the needle under glass.[one of][line break][as the parser]Tutorial: While the compass is open, exits will be described using cardinal directions. You may navigate by typing (for example) GO NORTH, NORTH, or just N.[as normal][or][stopping]".  

After closing the compass: now compass directions is 0; say "You shut the compass carefully, letting the small clasp catch again.[one of][line break][as the parser]Tutorial: Exits will now be described using direction keywords and the [d]landmark[x] system, as before.[as normal][or][stopping]".  

To decide whether dir: if compass directions is 1, decide yes; decide no. To decide whether not dir: if dir, decide no; decide yes.         
 
The compass is a wearable closed undescribed openable container in Back Room. The carrying capacity is 0. The compass is either unmolested, revealed, or extruded. The compass is unmolested. The description is "[if compass is open]Beautifully made, the compass has a long thin needle under glass, the round enclosure set into a brass base delicately inscribed with directions in eight points sweeping around from north to northwest. A matching chain allows the compass to be worn around the neck[otherwise]The compass is closed, its thin brass cover concealing the needle[end if][if compass is revealed or compass is extruded].[paragraph break]A secret compartment has been swung open on the back to reveal a seven-pointed star[end if][if compass is extruded] sticking about a thumb's width out from the surface[end if].". Check opening a closed compass when the compass is not worn: say "(first taking the compass)[command clarification break]"; try taking the compass. After taking the compass: now the player is wearing the compass; say "You retrieve the compass from the wreckage and slip the delicate brass chain around your neck. It is closed, a brass cover hiding the needle itself."; now compass references dc_compass. Instead of dropping or taking off the compass, say "You wouldn't want to just leave this delicate instrument lying around." Does the player mean doing something other than examining, opening, closing, or squeezing the compass: it is unlikely. Check pushing the compass when location is Observatory Exterior: try squeezing the compass instead. The initial appearance of compass is "".

Check squeezing the compass when the compass is unmolested and location is not Observatory Exterior: say "Nothing happens." instead. Instead of squeezing the compass when the compass is revealed or the compass is unmolested: say "You push down on either side of the compass with your thumb and fingers.[paragraph break]With a sharp 'snick,' [if compass is unmolested]a secret compartment on the back swings open, and a [else]the[end if] seven-pointed star on the back pops out, extruding a piece of wood of the same shape and about as long as the last joint of your thumb."; now the compass is extruded.

The star piece is part of the compass. It is privately-named. Understand "star/seven/pointed/seven-pointed/extrusion" or "star piece" as star piece when the compass is revealed or the compass is extruded. The description is "[if compass is revealed]The seven-pointed star seems to be etched into the back of the compass[else]The star has popped out of the body of the compass, forming a jagged cylinder[end if].". Check pushing star piece when compass is revealed: say "You push against the star, but nothing happens." instead. Check pushing star piece: now the compass is revealed; say "You push against the extrusion, feeling a spring resist you. Once you've pushed the star back to the surface of the compass, a tiny snick locks the spring in place again." instead. Check taking star piece: try pushing star piece instead.

Rule for printing the name of the compass while taking inventory: say "compass[if compass is revealed] (with a metal star on the back)[else if compass is extruded] (with an extruded metal star on the back)[end if]".

Section - The Color Door

The lava wall is a setpiece in Back Room. Understand "face/flow/crack/surface" as lava wall. The description is "Nearly vertical here, the lava flow's sharp edges drop smoothed and polished from floor to ceiling, a rippling, deep black surface." Check touching the lava wall: say "Smooth and glasslike, although quite hard." instead. Check pushing the lava wall: say "Solid." instead. Check climbing the lava wall: say "The floor, ceiling, and walls run right up against the lava flow, adjoining it at all points and leaving no gap to climb through." instead. Check attacking the lava wall: say "Hard as rock. Which it is." instead. The dream-text of lava wall is "cobblestones made of black lava rock".

Some cobblestones are a setpiece in Back Room. Understand "stones" or "cobble stones" or "cobbles" as some cobblestones. The description is "They have been shaped to neatly fill a crack bisecting the lava flow, from the top of the door to the roof of the shack, fitting together without any seam.". Instead of pushing or pulling or taking or opening cobblestones, say "The cobblestones, set firmly, do not budge at all.". Check attacking cobblestones: try attacking lava wall instead. The dream-text of cobblestones is "cobblestones made of black lava rock".

The lava tunnel door is east of Back Room and west of Jumble. The lava tunnel door is a closed undescribed implemented door. The description is "[if location is Back Room]Only just your height but wider than a normal door, its wooden surface has been planed smooth to bring out a complex grain. [door_details][otherwise]This side of the wide door crawls with a complex mechanism of clockwork [o]gears[x] and cogs, along with a large horizontal [o]lever[x] which can be pulled outwards[end if]." To say door_details: say "[if lava tunnel door is open]It stands open, and is[otherwise]It is[end if] unpainted except for six small [o]bands[x] of vertical color at about eye level. [paragraph break]At about the height you'd expect to see a doorknob runs a smooth arc of [the number of on-stage lava door buttons in words] small [o]buttons[x], each engraved with a stylized symbol". Check vague knocking when lava tunnel door is visible: try knocking lava tunnel door instead. Check knocking the lava tunnel door: say "You rap your knuckles sharply against the door, feeling the firmness of thick wood, but also a faint resonance and echo of space beyond." instead. Check listening to lava tunnel door: say "You put your ear close to the door as you experimentally press a few buttons. You can distinctly hear the snick of dowels and gears moving each time, but can't discern any difference between the buttons. But after some experimentation you're quite sure the machinery on the other side is storing the sequence of buttons pressed, and presumably the correct pattern will open the door" instead. Check listening to a lava door button: try listening to lava tunnel door instead. Check listening to the arc of buttons: try listening to lava tunnel door instead. The can't go through undescribed doors rule is not listed in any rulebook. The dream-text of lava tunnel door is "crates filled with replacement door buttons".

The six small bands of vertical color are part of the lava tunnel door. The description is "Each band seems to have been painted directly on the wood. From left to right, the colors are [o]red[x], [o]yellow[x], [o]black[x], [o]white[x], [o]blue[x], and [o]green[x]." Understand "colors" or "band of color" as small bands of vertical color. Instead of touching or pushing small bands of vertical color: say "You can feel the slightly different texture of each band of color, painted over the wood of the door."; rule succeeds. Check taking small bands of vertical color: say "They're just painted directly on the door." instead.

A color band is a kind of setpiece. Understand "stripe" as a color band. The red band is a color band. The description is "A deep, rich crimson.". The blue band is a color band. The description is "Deep sea-blue." The white band is a color band. The description is "Milky, with a faint pearlescent shimmer." The yellow band is a color band. The description is "The stripe is a rich, vibrant lemon-yellow.". The black band is a color band. The description is "Jet black." The green band is a color band. The description is "A rich emerald green.". Instead of pushing, taking or touching a color band, say "The bands are painted directly on the door.". 

Instead of opening or pulling or taking the lava tunnel door when the door is closed and location is Back Room and Jumble is unvisited, say "You can't see any obvious way to open it: no knob or handle, just the row of [o]buttons[x] and the bands of [o]color[x].". Instead of vague unlocking the door: say "You don't see any sort of keyhole." instead. 

Check pushing the lava tunnel door:
	if the lava tunnel door is open begin;
		try closing the lava tunnel door instead;
	otherwise;
		say "You brace yourself and shove against the door with your shoulder, but it doesn't even creak, let alone budge." instead;
	end if.

Check attacking the lava tunnel door: say "You take a running start and ram the door with your shoulder, but gain nothing save a bruise. The door is solidly constructed and whatever mechanism holds it fast is sturdily built." instead. Check looking under the lava tunnel door: say "The door is almost flush with the floor and surrounding masonry; you cannot see beyond it." instead.

The arc of small buttons is part of the lava tunnel door. The description is "Each is a circle about the size of one made with a thumb and finger, flush with the door but very slightly convex. Stylized symbols are inlaid into each one. From left to right, the symbols are [if story mode][blist8][blist9][otherwise][blist1][blist2][blist3][end if].". To say blist1: say "[o]whale[x], [if rayfish is named][one of]manta -- no, [o]rayfish[x][or][o]rayfish[x][stopping][otherwise][o]manta[x][end if]". To say blist2: say ", [o]tree[x], [o]turtle[x], [o]crab[x], [o]crystal[x], [o]berry[x], ". To say blist3: say "[o]seagull[x], [o]bee[x], [o]spider[x], [o]mussel[x], [o]snail[x]". To say blist8: say "[o]manta[x], [o]tree[x], [o]crystal[x], ". To say blist9: say "[o]berry[x], [o]mussel[x], [o]snail[x]". Check attacking arc of small buttons: try attacking manta ray button instead.

Check pushing arc of small buttons: say "You'll have to say which one you want to press. There are [number of on-stage lava door buttons in words] buttons: [list of on-stage lava door buttons]." instead. Check attacking arc of small buttons: try attacking berry button instead.

A lava door button is a kind of setpiece. Understand "symbol/symbols" as a lava door button.  Check taking a button: say "The buttons are flush with the door, the seams so tight you could not even get a fingernail in." instead. Check attacking a lava door button: say "You smash the base of your hand against it, but it simply pops back out again." instead. Check touching a lava door button: say "[if noun is manta ray button or noun is windsigh tree button or noun is crystal button or noun is berry button or noun is mussel button or noun is snail button]The slightly concave surface is rubbed smooth[otherwise]The slightly convex surface feels like roughened wood[end if]." instead. [A subtle hint.] Understand "hold [a lava door button]" as a mistake ("Pressing and holding the button seems to produce the same result as merely pressing it.").

Check pushing a lava door button when night: say "It's too dark to make out which button is which." instead. Check pushing a lava door button when lava tunnel door is open: say "With the door open, the buttons don't seem to depress." instead. Check pushing a lava door button when location is Jumble: say "The buttons are on the other side of the closed door." instead.

jumble_scenery is a setpiece in Back Room. The printed name is "fissure". Understand "fissure" as jumble_scenery when location is Back Room and lava tunnel door is open. The description of jumble_scenery is "Through the open doorway you can see a narrow [dr]chasm[x][if dir] to the [east][end if] cutting through the lava rock and heading to the right.".

chasm_scenery is a setpiece in Back Room. Understand "chasm" as chasm_scenery. Check examining chasm_scenery: try going east instead. The printed name is "chasm". 

The whale button is a lava door button. The description is "A fat-bodied whale, one baleful eye peering out.". The manta ray button is a lava door button. Understand "rayfish" as the manta ray button. The description is "[if we have examined rayfish and rayfish is unnamed]A beautiful carving of the glowing manta ray creature in the lagoon[otherwise if we have examined rayfish and rayfish is named]A beautiful carving of Progue's rayfish from the lagoon[otherwise if we have not examined rayfish and rayfish is named]A beautiful manta ray creature you would guess is the one [the Progue] calls a rayfish[otherwise]Some sort of diamond-shaped manta ray creature[end if].". The windsigh tree button is a lava door button. Understand "tree9" as the windsigh tree button. The printed name of windsigh tree button is "[if tree1 is named]windsigh[otherwise]tree[end if] button". The description is "[if tree1 is named]Unmistakably a windsigh tree[otherwise]It's another one of those strange trees like the one you painted[end if].". The turtle button is a lava door button. The description is "A sea turtle, graceful in mid-paddle.". The crab button is a lava door button. The description of the crab button is "A scuttling crab, pincers raised.". The crystal button is a lava door button. The description is "A hexagonal pillar of crystalline mineral.". The berry button is a lava door button. Understand "berries" as berry button. The description is "A bush laden with heavy round berries.". The seagull button is a lava door button. The description is "A seagull in flight.". Understand "gull" as seagull button. The bee button is a lava door button. Understand "bumblebee" as bee button. The description is "A bumblebee, delicate wings spread open." The spider button is a lava door button. The description is "Hairy legs and a fat, smooth body.". The mussel button is a lava door button. The description is "A single oval mussel, its shell lined with tiny ridges." The snail button is a lava door button. The description is "A snail with a large, spiraled shell.".

The lava tunnel door has a list of objects called the rtl combination. The rtl combination of the lava tunnel door is {mussel button, crystal button, snail button, manta ray button, windsigh tree button, berry button}. The lava tunnel door has a list of objects called the ltr combination. The ltr combination of the lava tunnel door is {berry button, windsigh tree button, manta ray button, snail button, crystal button, mussel button}. The lava tunnel door has a list of objects called the setting.

Check object-debugging a lava door button: try object-debugging lava tunnel door instead. Check object-debugging the arc of small buttons: try object-debugging lava tunnel door instead. Check object-debugging a color band: try object-debugging lava tunnel door instead. Check object-debugging the small bands of vertical color: try object-debugging lava tunnel door instead.

Understand "push [things]" as pushing. [This allows players to push multiple buttons at a time, which saves typing.]

First Report pushing a lava door button:
	say "With a gentle snick, the button depresses into the door, then pops back out as you release it.";
	truncate the setting of the lava tunnel door to the last 5 entries;
	add the noun to the setting of the lava tunnel door;
	if lava tunnel door is being debugged, say "// Door: setting is now [the setting of the lava tunnel door].";
	if the setting of the lava tunnel door is ltr combination of the lava door and story mode, reverse the setting of the lava tunnel door; [Can go right-to-left or left-to-right for story people.]
	if the setting of the lava tunnel door is the rtl combination of the lava tunnel door:
		now the lava tunnel door is open; 
		say "[line break]A heavy clunk and wooden grinding sound from behind the door as it swings open, revealing a [o]fissure[x] running into the black lava rock[one of].[section break][or].[stopping]";
		try looking;
	otherwise: [Provide some feedback so people know they're on the right track.]
		if the setting of the lava tunnel door is ltr combination of the lava tunnel door:
			say "[line break]Nothing happens. Odd. You felt sure that was it.";
		otherwise if the setting of the lava tunnel door is close to rtl combination of the lava tunnel door or the setting of the lava tunnel door is close to ltr combination of the lava tunnel door:
			say "[line break]You slam your palm against the door in frustration. You're sure you've almost got it, but still nothing happens.";
		otherwise if the setting of the lava tunnel door is getting close to rtl combination of the lava tunnel door:
			say "[one of][line break]Nothing. You have a feeling you're getting closer, though.[or][stopping]";
	stop the action.

[Detect entering a combination that's only one symbol off, to print a consolation message to the player, but don't trigger this if we're still in the process of entering it.]

To decide whether (subject - a list of objects) is close to (target - a list of objects):
	let tally be 0;
	repeat with ctr running from 1 to number of entries in target begin;
		if the number of entries in subject is at least ctr and entry ctr of subject is entry ctr of target, increase tally by 1;
	end repeat;
	if tally is at least ( the number of entries in target - 1 ) and the number of entries in subject is the number of entries in target, decide yes;
	decide no.

[Detect a combination in progress that is getting close to correct (this is used to make sure Progue is not in the room if the player is about to enter a correct combination).]

To decide whether (subject - a list of objects) is getting close to (target - a list of objects):
	let tally be 0;
	repeat with ctr running from 1 to number of entries in subject begin;
		if entry ctr in subject is listed in target, increase tally by 1;
	end repeat;
	if tally is at least ( the number of entries in target - 2 ) , decide yes;
	decide no.

First Report opening lava tunnel door when location is Back Room: say "You enter the combination into the door. As you press the final button, it swings open with a heavy clunk and wooden grinding, revealing the narrow [dr]chasm[x] behind it." instead.

When play begins: now all lava door buttons are part of the lava tunnel door. When play begins: now all color bands are part of the lava tunnel door.

Report going from Back Room to Jumble: say "You step through the doorway into a confusion of boulders.".

Section - Back Room Cheats (not for release)

The secret button is an undescribed thing in Back Room. Check pushing secret button: try pushing mussel button; try pushing crystal button; try pushing snail button; try pushing manta ray button; try pushing windsigh tree button; try pushing berry button instead.



Part - North Island

North Island is a region.



The ambience table of North Island is Table of North Island ambience.

Table of North Island ambience
freq		start time	end time	text	table		trigger	flag
common	dawn		twilight	--	Table of Seagull Air ambience	distant gulls
rare		--	--		--	Table of Lacuna Insect ambience
rare		--	--		--	Table of Lacuna Weather ambience
rare			--	--		--	Table of Chairlift ambience
rare			--	--		--	Table of Mountain ambience
common	dawn	twilight	--		Table of Snail ambience

Table of Snail ambience
freq		text	table		trigger	flag
common	"A [o]snail[x] with a pearly-white shell inches along [if location is Stumps]a tree stump[otherwise]the ground[end if]."	--	white snail
uncommon	"Two [o]snails[x] with pearl-white shells cross the ground near your feet, leaving milky trails behind."	--	white snail
uncommon	"A [o]seagull[x] swoops down and snatches a [o]snail[x] off [if location is Stumps]a nearby stump[otherwise]the ground[end if], crushing its pearl-white shell in its beak.[summongull]"	--	white snail
uncommon	"A half-crushed snail [o]shell[x], pearly-white, catches a momentary gleam of light in the moss underfoot."		--	white snail
uncommon	"A [o]gull[x] flies in to perch on [if location is Stumps]a nearby stump[otherwise if location is Chairlift Base]the roof of the shack[otherwise]a rocky rise[end if], and begins pecking at a few small milky-white [o]snails[x] half-heartedly.[summongull]"	--	white snail

A white snail is set dressing. Understand "pearly-white" or "pearly" or "white" or "pearl" or "pearl-white" or "shell" or "snails" as a white snail. The description is "[snail description].". Check attacking a white snail: say "You crush the shell beneath your foot, leaving an intense white chalky substance behind." instead. Instead of taking or touching a white snail, say "You pick it up for a moment and study it more closely. [snail description]. Curiosity satisfied, you return it to the ground." To say snail description: say "The shell is a rich, luminous white, faintly iridescent, that seems to almost glow in the [light-source][snailhint]". To say snailhint: if ( time for excitement or story mode ) and Back Room is visited and Jumble is unvisited, say ".[paragraph break]You notice that the snail shell is exactly the shade of the white band painted on the back room door of the cabin on the beach".

To say summongull: move seagull to the location.

Table of Chairlift ambience
freq		text	table		trigger	flag
common	"The cables of the ropeway sway gently in the [if morning]morning [end if][if afternoon]afternoon [end if]breeze[if raining or rained], heavy with rain[end if]."
common	"A gust of wind tugs at the ropeway cable."
common	"The cables of the distant ropeway sigh as a gust of wind pulls them suddenly taut, then releases them again."



Chapter - Rise

The prose name of Rise is "the top of the rise". The printed name of Rise is "On the Old Lava Flow". Rise is a room in North Island. Understand "rise" as northwest when location is North Beach. The description of Rise is "[risedesc].". To say risedesc:
	if longform begin; say "Here is where the lava met the sea, after cutting a long swath across the island. From your position atop the flow you can see both sides of the island: [if former location is North Beach]before you, [Rise-northdesc], and behind [Rise-southdesc][otherwise if former location is Stumps]before you, [Rise-southdesc], and behind [Rise-northdesc][otherwise]to one side, [Rise-northdesc][otherwise][Rise-southdesc]";
	say ". [if Rise is unvisited]You are surprised to see a[otherwise if Chairlift Base is visited]The[otherwise]A[end if] [o]ropeway[x] stretch[if Chairlift Base is visited]ing[otherwise]es[end if] from a meadow high atop the mountain to a small base station near the island's [if dir]northwestern [end if]corner[dot]";
	otherwise if midday; say "The black lava rock bakes under the soles of your feet, the swaying [if konokuk trees are named]konokuk [end if]trees offering little shade[dot]";
	otherwise if evening; say "Black shadows play over black lava in a visual cacophony as the slanting light throws the flow into sharp relief[dot]";
	otherwise if raining or ( afternoon and rained ) ; say "Rain pools in tiny puddles and depressions atop the lava flow[if raining], dribbling off the green fronds above you and pattering loudly on the lava rock[otherwise], slowly evaporating in the warm afternoon light[end if][dot]";
	otherwise if night; say "Your toes stub on hidden protrusions and uneven ripples in the lava, merging seamless and invisible with the black night[if pyramid has power]. In fact, almost the only light comes from a deep red glow beaming from atop the distant mountain, revealing[otherwise if the pressure of the related pipe of the pyramid pressure gauge > 0 ]. A faint red light pulses from atop the distant mountain, illuminating[end if]"; if the pressure of the related pipe of the pyramid pressure gauge > 0, say " [if pyramid-seen is true]the [o]pyramid[x][else]a man-made [o]structure[x][end if]"; say "[dot]";
	otherwise if morning or sunrise; say "The rising light just reaches the lava flow here, pulling the cold shadowed black rock into reluctant hints of relief[dot]";
	otherwise if midmorning; say "The grove of [if konokuk trees are named]konokuk[otherwise]tropical[end if] trees casts swaying shadows over the lava flow, still cool from the night[dot]";
	otherwise; say "[one of][room ambience][or][time ambience][at random]"; 
	end if;
	if fallen trees are in Rise begin; unless Rebelworld-Sequence is solved and Treeworld-Sequence is solved, say "Fallen konokuk trees, felled by the quake or the storm, lay across the top of the rise, partially blocking the way to the hot spring[dot]"; end if;
	say "[exits]".

To say Rise-northdesc:
	say "the land drops off into a marshy swamp that stretches to the edge of [if North Marsh is visited]the[otherwise]a jagged[end if] [o]mountain[x]".

To say Rise-southdesc:
	say "curves the tranquil white crescent of the lagoon, protected by the lava flow as it rises to the shattered side of the distant [o]volcano[x]".

Rise-stuff is stuff in Rise. Understand "swath/side/corner/swamp" as Rise-stuff when location is Rise.

Some fallen trees are a minor setpiece. The description is "They are split near their bases, the white wood splintered and jagged.". The provoke message is "They're too heavy to move, but you can easily clamber over them.".

Check sleeping in Rise: say "The lava rock is too hard and sharp; you'd never be able to get to sleep.[sleepsuggest]" instead.

		
The exits text of Rise is "From here, you could scramble [bw of North Beach][if dir][southeast][otherwise]down[end if] to the [dr]beach[x] or take an easier route [bw of Stumps][if dir][north][otherwise]down the other side of the flow[end if] towards the [dr]edge[x] of the marsh. [exrise_hotspringsbit]". To say exrise_hotspringsbit: if Hot Springs is unvisited, say "You can also hear the sound of a [dr]waterfall[x]"; otherwise say "The hidden [dr]pool[x] lies"; say " [bw of Hot Springs]through some heavy fronds [if dir][east][otherwise]opposite the sea[end if]". Understand "edge" as north when location is Rise. Understand "waterfall" or "pool" as east when location is Rise.

The ambience table of Rise is the Table of Rise ambience.

Table of Rise ambience
freq		start time	end time	text	table		trigger	flag
common	rising uptide		falling uptide	"The surf [one of]beats heavily against the sharp edges of the flow beneath you[or]smashes into the lava flow, sending wisps of spray up above the edge of the flow[or]crashes into the jutting edge of the lava flow, sending clouds of spray up over the edge to moisten your clothes[as decreasingly likely outcomes]."
rare	sunrise	sunset		"A gull lands by a tiny stream trickling out of the overgrowth and drinks deeply, then begins to clean itself." 	--	seagull
rare	sunrise	sunset		"A seagull swoops past your head, flying into the dense vegetation to the side; a miniature vortex of wind pulls and tugs at the heavy fronds."		--	seagull

Report going from Rise to Stumps: say "You follow the path down a slight mossy slope[if raining or rained] slick with rainwater[end if]"; if raining, say " into a misty cloud"; otherwise say "[if a random chance of 1 in 2 succeeds][time-of-day-bit][otherwise], enjoying the unobstructed panorama before you[end if]"; say "." Report going from Rise to Hot Springs: say "You push great leafy fronds out of the way[if raining or rained], shivering as water drips all over you,[otherwise if night], pushing forward into thick blackness,[end if] and after a few moments break into a secluded grove." Report going from Rise to North Beach: say "You pick your way [if night or raining or rained]carefully [end if]down the cluster of [if raining or rained]slippery [end if]boulders, [if night or twilight or dawn]taking care not to twist an ankle in the gloom[otherwise]using handholds to steady yourself[end if], till your feet touch the smooth [if raining or rained]wet [otherwise if midday or afternoon or evening]hot [end if]sand again."



Chapter - Hot Springs

The prose name of Hot Springs is "the hot springs by the waterfall". The printed name of Hot Springs is "Hidden Pool". The description of Hot Springs is "[hotspringdesc].". To say hotspringdesc:
	if longform begin; say "Tucked away in a natural bowl stained with sea-blue hues, hidden from view, this beautiful [o]pool[x] is fed by a clear [o]waterfall[x] cascading down from an overhang above. Steam rises from the almost perfectly circular pool, which looks deep enough for diving but not so deep that the blue-tinted floor is not visible, and leafy green fronds sway gently on all sides, creating a secluded and relaxing ambiance[dot]";
	otherwise if raining; say "The pool is like a private sauna in the rain, as drops patter down to joining the [o]waterfall[x] pattering into the bowl[dot]";
	otherwise if night; say "[if moonup]A single beam of moonlight pierces the secluded grove, lighting up the steam wisping off the surface of the [o]pool[x], which ripples with dancing silver reflections disturbed by the [o]waterfall[x][otherwise]Only the faintest hint of starlight penetrates the grove, faintly reflected off the [o]pool[x] in jagged ripples stirred by the pounding of the [o]waterfall[x][end if][dot]";
	otherwise if dawn or twilight or sunrise; say "The magical stillness of the half-light is broken, but not completely dissipated, by the loud clamor of the [o]waterfall[x] curtaining down into the clear  [o]pool[x] below[dot]";
	otherwise if morning or midmorning or afternoon or evening; say "[if midmorning or afternoon]Only a few angled slants of[otherwise]Hardly any[end if] sunlight penetrates the secluded glade, making the cool [o]waterfall[x] and the clear steamy water of the hot [o]springs[x] a welcome respite from the day's heat[dot]";
	otherwise if midday; say "Sunlight beams down into the glade, turning the [o]waterfall[x] into thousands of tiny sparkling gemstones, and the surface of the round [o]pool[x] beneath to a mirror for the cloudless sky[dot]";
	end if;
	say "A rich vein of crumbling sea-blue [o]crystal[x] runs through the wall behind the waterfall[if midday], sparkling in the sunlight[otherwise if night and moonup], glowing in the moonlight[otherwise], staining the rock face and water of the pool a brilliant indigo[end if].[paragraph break][exits]".

The exits text of Hot Springs is "[et0hs]". To say et0hs: if night, say "The [dr]gap[x] leading back [if dir][west] [end if]to the open is hardly visible, but you think you remember the way"; else say "A [dr]gap[x] in the trees marks the way [if dir][west] [end if]back to the open". Understand "gap" as west when location is Hot Springs.

HotSprings-stuff is stuff in Hot Springs. Understand "beam/steam/sauna/overhang" as HotSprings-stuff when location is Hot Springs.

The waterfall is a setpiece in Hot Springs. The description is "Stretching about twice your height above the surface of the pool, the waterfall cascades over a natural overhang in the rock[if midday or afternoon], sparkling brightly in the sun overhead[end if]. [if night and moonup]The moonlight brings the complex interplay of water and air to life, an animate sculpture in glass. [end if][if evening or sunset]Beams of failing sunlight penetrating the thick vegetation to the [west] light up the water intermittently, tiny rippling lines of red illuminating its silky surface. [end if]Behind and alongside the waterfall, lumpy nodes of sea-blue [o]crystal[x] poke out of the rocky earth.". Check touching the waterfall: say "The water is surprisingly cool, running over your hand in thick wet ribbons smelling faintly of moss and earth." instead. Instead of tasting or taking the waterfall, say "The water thunders down with enough force that you cannot hold any in your hands.". Understand "look behind waterfall" or "go behind waterfall" as a mistake ("The waterfall is fairly small and almost flush with the cliff behind it."). The dream-text of waterfall is "hundreds of chunks of sea-blue crystal".

The sea-blue crystal is a backdrop. It is in Hot Springs, Viewpoint, and Ravine Floor. Understand "rock/wall/blue" as sea-blue crystal. The description is "Some rich vein of a brilliant sea-blue crystal slices diagonally through the rock here, brought up to the surface from unfathomed depths by some past volcanic action. The crystal seems inclined to break along hexagonal lines, producing the effect of crumbled six-sided pillars[if location is Hot Springs]. The pounding action of the waterfall has softened the edges, and in turn stained the whole wall and tinted the pool below a brilliant indigo[end if][if we have not examined the sea-blue crystal and Rume-tracker >= -10].[paragraph break]It's the precise shade of Rume's eyes[end if][crystalhint].". Understand "mineral" as sea-blue crystal. Instead of touching or taking the sea-blue crystal: move green-stain to location; say "You rub your fingers up against the crystal, turned an almost muddy texture, and study with a twinge of sadness the deep blue hues that stain your fingertips." Check attacking sea-blue crystal: say "You smash a fist against the crystal, and a chunk breaks off easily and tumbles [if location is Hot Springs]into the pool[otherwise if location is Viewpoint]into the ravine[otherwise]into the surf, where it is washed away[end if]." instead. The dream-text of sea-blue crystal is "hundreds of chunks of sea-blue crystal". Check tasting sea-blue crystal: say "You touch your tongue to the crystal tentatively, but discern only a flavorless texture of grit." instead.

A green-stain is a set dressing. Understand "stain/finger/deep/green/hues/hue/fingertips/fingertip" as green-stain. The printed name is "green stain". The description is "The color is a deep, rich emerald green.". Check tasting green-stain: say "Chalky, with a complex tang of mineral aftertaste." instead. Check touching green-stain: say "It rubs off fairly easily." instead. Check taking green-stain: say "It's just a slight smudge on your finger." instead.

To say crystalhint: if ( time for excitement or story mode ) and Back Room is visited and Jumble is unvisited, say ". You notice that the crystal is the same hue as the blue band on the back room door of the cabin on the beach".

Understand "dive" or "bathe" as vague swimming.

The large pool is an undescribed enterable open unopenable container in Hot Springs. Understand "spring/springs" as pool. The description is "Tinted with hues of green, the surface of this round pool constantly shifts and dances as the waterfall plunges from a mossy overhang. The pool looks deep enough for diving under the churning falls, but shallows near the far end to a jumble of good sitting rocks a few feet below the surface. The water is hot and steaming, simultaneously warmed by some scalding source below and cooled by the waterfall." Check touching the large pool: say "The water is hot, but not uncomfortably so." instead. Check tasting the large pool: say "[one of]You cautiously sip a bit of water gathered in your hand. It seems all right[or]Bending to your knees, you scoop a few handfuls of the pool water to your mouth and drink deeply. It is exceedingly refreshing, the taste holding a faint hint of some mineral effervescence. After drinking your fill, you rise to your feet again[stopping]." instead. Check taking the large pool: say "You cup two hands together and scoop up some of the hot water, feeling it immediately cool as it trickles through your fingers down your arms and elbows. You let it trickle away and enjoy the cool sensation as your hands dry." instead. Understand "water" or "natural" or "bowl" or "hidden" or "blue" or "cerulean" or "perfectly" or "circular" or "round" or "depression" or "far" or "end" as the large pool. The dream-text of large pool is "hundreds of chunks of sea-blue crystal".

Check vague swimming when location is Hot Springs: try entering the large pool instead. Check swimming in pool: try entering the large pool instead. [Check going when player is in the large pool: try exiting instead. ][BUG]

First report entering the large pool: pass 15 minutes of time; say "With a little thrill of excitement, you dive into the pool. The water is hot, almost too much so for swimming, but feels invigorating and cleansing nonetheless. When you near the cool of the waterfall, you can feel the temperature difference between it and the pool distinctly, invisible eddies of heat transference swirling about your legs.

After a while you retreat to the rocks near the shallow end and relax for a while in the [if evening or sunset or twilight]fading light[else if morning or midmorning]morning air[else if night]cool night air[else if dawn]growing light[else if weather state is decided to rain or rained or raining]cloudy afternoon light[else]tropical sunlight[end if]." instead. 

First report exiting when the player was in the large pool: say "You climb out into the now chilly-seeming air[if sunup], drying off quickly in the warm breeze[otherwise], shivering[end if]." instead.

The ambience table of Hot Springs is the Table of Hot Springs ambience

Table of Hot Springs ambience
freq		start time	end time	text	table		trigger	flag
rare		dawn		twilight	--	Table of Seagull Air ambience	distant gulls
rare		--	--		--	Table of Lacuna Insect ambience
rare		--	--		--	Table of Lacuna Weather ambience
rare		dawn	twilight	--		Table of Snail ambience
uncommon	--	--	"Wind stirs the greenery fringing the pool, causing it to shimmer and dance as it reflects in the emerald water."
uncommon	dawn	twilight	"A gull circles overhead momentarily, eyeing you warily before moving on."	--	seagull
uncommon	night	dawn	"Silver-white [light-source] glimmers on the hexagonal facets of [o]crystal[x] under the waterfall."

Report going from Hot Springs to Rise: say "You push your way back through the greenery to the open area beyond.".

Chapter - Stumps

The prose name of Stumps is "the cluster of tree stumps". The printed name of Stumps is "Among the Stumps". Understand "stumps" as southeast when location is Chairlift Base. Understand "stumps" as southwest when location is West-Marsh. The description of Stumps is "[stumpsdesc].". To say stumpsdesc: 
	if longform begin; say "The remains of what once must have been a small copse of trees on this bit of grassy land overlook the edge of [if Stumps is unvisited]a flat marsh[otherwise]the marsh[end if]. Across the marsh rises [if Stumps is unvisited]a[otherwise]the[end if] sheer cliff, rising to the summit of [if Stumps is unvisited]an imposing[otherwise]the[end if] mountain[dot]";
	otherwise if raining; say "Rain patters off the stumps, seeping into the crumbling wood and staining it a rich, deep red-brown[dot]";
	otherwise if afternoon or evening or sunset; say "Insects drift lazily through the sunbeams over the stumps, washed with the summery rays of the [if evening]evening[else]afternoon[end if] sun[dot]";
	otherwise if dawn or sunrise or morning; say "Dew clings wetly to the twisted, crumbling roots at your feet, and mist dances over the marsh[dot]";
	otherwise if night; say "[if moonup]The stumps are pale circles of rotting bark under the dull moonlight[otherwise]Unseen roots stretch out to trip you every few steps in the darkness[end if][dot]";
	otherwise if midday; say "Humid air blows over the stumps from the marshlands, beginning to broil as the sun beats down[dot]";
	otherwise; say "[one of][room ambience][or][time ambience][at random]";
	end if;
	say "Jutting from the rock near the short drop-off to the sea is a roughly-hewn [o]block[x] of grey stone[dot]";
	if the pressure of the blue pipe > 0 and puzzle mode and Tsunami Sequence is not happening and Epilogue is not happening, say "[if pressure of the blue pipe < 3]Wisps of [o]steam[x] rise[otherwise if pressure of the blue pipe < 5][o]Steam[x] shoots[otherwise if pressure of the blue pipe < 8]Jets of [o]steam[x] shoot[otherwise]With a whistle, a high-pressure curtain of [o]steam[x] torrents[end if] up from a blue pipe off to the side of the path[dot]";
	say "[exits]".

Understand "steam" as blue pipe when location is Stumps.

Understand "swampy" or "swamp" or "marshland" or "terrain" or "marsh" as northeast when location is Stumps.
	
The exits text of Stumps is "Far across the marsh [bw of West-Marsh][if dir]to the [northeast][otherwise][down] a soggy slope[end if] is the sheer cliff face of the mountain. You could also follow the drier stretch [bw of Rise][if dir][south] [end if][etstump2]". To say etstump2: say "[if not dir][up][otherwise]up[end if] the rise or [bw of Chairlift Base][if dir][northwest][otherwise]over[end if] to the tiny [dr]shack[x] at the base of the ropeway". Understand "shack" as northwest when location is Stumps. 

Stumps-stuff is stuff in Stumps. Understand "remains/stretch/dropoff" as Stumps-stuff when location is Stumps. 

Some old tree stumps are a setpiece in Stumps. Understand "stump/root/roots/bark" as tree stumps. The description is "About forty or fifty of the tall, swaying [if konokuk trees are named]konokuk[otherwise]fruit-bearing[end if] trees seem to have been felled some years ago, though moss and vines have since grown over what remains.[paragraph break]Almost hidden by accumulated dirt and vegetation, a blue bamboo [o]pipe[x] runs past a particularly [o]large[x] stump on its way to the ropeway.". The dream-text of old tree stumps is "tree stumps". Does the player mean entering old tree stumps: it is likely.

The old-windsigh-stump is a perchable setpiece in Stumps. The printed name is "particularly large stump". Understand "stump/large/particularly" as old-windsigh-stump. The description is "This stump is larger than the others and set apart a little, and as you examine it more closely, it seems clearly the remnant of another type of tree. Thousands of tiny cavities dot the surface, ranging in size from fist-shaped to the lower limits of your vision to make out.". Check touching old-windsigh-stump: say "You run your hands over the uneven surface of the stump, letting your fingers bounce in and out of the tiny cavities, but feel nothing unusual." instead. The dream-text of old-windsigh-stump is "tree stumps".

The tiny cavities are part of old-windsigh-stump. The description is "The hemispherical holes must have been spheres of empty space inside the tree, of all sizes."

Check entering old tree stumps: say "You perch on the top of a[if raining or rained] wet[end if] stump for a minute, but the rough-hewn wood makes for an uncomfortable seat, and after a moment, you stand again." instead.

A heavy block of uncut stone is a setpiece in Stumps. The description is "The stone seems to be part of a spire that once rose here, of some natural material that erodes more slowly than the surrounding rock. The part jutting up out of the earth has been roughly hacked into a block large enough to stand inside, were it hollow." Instead of taking or pushing heavy block, say "It's not going anywhere.". Check climbing heavy block: say "It's only just your height. You awkwardly hoist yourself up to the semi-flattened top of it and take a look around, but don't gain any new insights, so you lower yourself back to the ground." instead. Check touching heavy block: say "Salt encrusts the seaward side of the stone, from years or decades of high tide spray lashing against it, but the opposite side is smoother and grey, edges rough where human tools shaped it." instead. The dream-text of heavy block is "huge square pillars of roughly chiseled rock". Understand "carve [heavy block]" or "sculpt [heavy block]" or "sculpt" or "carve" or "chisel [heavy block]" as a mistake ("You don't have the tools for that, and wouldn't really know what to do with them if you did.") when location is Stumps.

Noticing-Snail-Shell is a scene. Noticing-Snail-Shell begins when time for excitement and we are going and location is Stumps and Jumble is unvisited. Noticing-Snail-Shell ends when Noticing-Snail-Shell begins.

When Noticing-Snail-Shell begins:
	move white snail to location;
	say "Something crunches underneath your foot. You lift it aside and see you have crushed an old abandoned [o]snail[x], its whorled edges a milky, pearlescent white.".

Report going from Stumps to Chairlift Base: say "Keeping the marsh on your right and a bluff overlooking the sea to your left, you approach a low mound at the corner of the island, topped by the shack.". Report going from Stumps to Rise: say "Climbing back up onto the old lava flow, you once again reach the viewpoint from its top.". Report going northeast from Stumps: say "You walk down a slight slope into boggier terrain, entering a long flat marsh that eventually merges with the ocean off [if dir]to the north[otherwise]in the distance[end if]."



Chapter - Chairlift Base

Chairlift Base is a room in North Island. The printed name of Chairlift Base is "Ropeway Base Station". The prose name of Chairlift Base is "the base of the ropeway". The description of Chairlift Base is "[chairliftbasedesc].".

To say chairliftbasedesc:
	if longform begin; say "On this hump of dry land between the sea on two sides and the marsh on another, a small shack, open on the side towards the [o]mountain[x], shelters the base of [if Chairlift Base is unvisited]some sort of [o]ropeway[x] system[otherwise]the [o]ropeway[x][end if]. A complex mechanism of ropes and pulleys connects"; say " to twin cables which stretch [if dir]east and [end if]up towards the summit of the mountain[dot]";
	otherwise if raining; say "The cables tug and sigh and the [o]ropeway[x] creaks in the storm; you are grateful to slip under the roof of the tiny shack for shelter[dot]";
	otherwise if night; say "The sounds of the sea crash against boulders below you on two sides, past the dropoff that the indistinct ropeway structure perches on[dot]";
	otherwise if dawn or twilight; say "The shack at the corner of the island is still and quiet in the sunless light; not even the cables trailing up towards the mountain sway[dot]";
	otherwise if evening or sunset; say "The ocean off the edge of the dropoff behind the shack glimmers in the evening sunlight as it stretches to the horizon[dot]";
	otherwise if night; say "The details of the mechanism are indistinct within the gloom of the overhang";
	otherwise; say "[one of][room ambience][or]The weather-beaten overhang provides a modicum of shade that covers the workings of the ropeway[dot][or]Wind gusts sadly through the boards of the ropeway shack, causing the cables overhead to dance and the cogwheels to tug restlessly against their brakes[dot][in random order]"; end if;
	say "[if pressure of related pipe of the ropeway pressure gauge > 0][ropewaysteam] from an outlet vent attached to the [o]mechanism[x] below[otherwise]The ropeway [o]mechanism[x] is motionless, no steam flowing from the outlet vent poking through the structure's roof[end if]"; say "[if bucket is enclosed by location][one of]. A large open-topped wooden [o]crate[x], long and narrow, hangs from the cables above, swaying slightly in the breeze[or]. The [o]crate[x] hangs from the cables, swaying gently in the breeze[stopping][end if]";
	say ".[paragraph break][exits]".

The exits text of Chairlift Base is "[if we are requesting the exits text]The moss and rocks around you sloping gently down to small cliffs hugging the ocean seem largely uninteresting, and the marsh near here looks particularly deep and muddy. [end if]The only promising route leads back towards the [dr]stumps[x][if dir] to the [southeast][end if]". 

ChairliftBase-stuff is stuff in Chairlift Base. Understand "hump/sides/cliff/cliffs" as ChairliftBase-stuff when location is Chairlift Base.

Report going from Chairlift Base to Stumps: say "You walk back along the edge of the marsh toward the stumps[time-of-day-bit].". 

Section - The Ropeway

To say ropewayl: say "Ropeway: p:[pressure of related pipe of ropeway pressure gauge]/[target pressure of ropeway pressure gauge]; bkt:[location of bucket][if bucket is ascending] (asc)[otherwise if bucket is descending] (desc)[end if]". 

To say ropewaysteam:
	let Q be the pressure of related pipe of the ropeway pressure gauge;
	if Q < 3 begin; say "Wisps of steam drift";
	otherwise if Q < 6; say "A steady cloud of steam pours";
	otherwise if Q < 12; say "Torrents of steam rise";
	otherwise; say "A geyser of steam erupts";
	end if.

The ropeway-shack is a setpiece in Chairlift Base. The printed name is "shack". Understand "shack" as ropeway-shack. The description is "The small building is open on the side facing the mountain, and crudely shields the ropeway mechanism from the elements.". The dream-text of ropeway-shack is "spare flywheels for the ropeway".

The ropeway mechanism is a setpiece in Chairlift Base. Understand "complex" or "pulley" or "pulleys" or "exquisitely" or "carved" or "wood" or "piston" or "cogwheel" or "cogwheels" or "system" or "counterweight" or "counterweights" or "rope" or "relay" as the ropeway mechanism. The description is "The mechanism is complex yet elegant. [if puzzle mode][gauge-description] marks the spot where a[else]A[end if] faded blue bamboo [o]pipe[x], stretching half-buried in a line towards the [if dir]southeast[otherwise]stumps[end if], joins the main mechanism, which is topped by an outflow [o]tube[x]. An exquisitely carved wood piston drives a system of pulleys, flywheels, and counterweights that connect to two thick [o]cables[x] rising up to the mountain's summit. A large wood [o]lever[x] is the only visible control.". Check attacking ropeway mechanism: say "Better to keep it in working order." instead. The dream-text of ropeway mechanism is "spare flywheels".

The flywheels are part of the bucket. Understand "flywheel" or "wheel" or "wheels" or "brake" or "brakes" as the flywheels. The description is "The wheels, expertly carved from some strong wood, connect the crate's support to the ropes. Each is equipped with a tiny brake, currently [if bucket is in Chairlift Base]engaged[otherwise]disengaged[end if].". Understand the command "disengage" as "unlock". Understand the command "engage" as "lock". Instead of vague unlocking or vague locking the flywheels, say "You don't see any manual way to engage or disengage the brakes on the wheels.". Check attacking flywheels: say "Better to keep it in working order." instead.

The ropeway outlet vent is an outflow tube. The ropeway outlet vent is part of the ropeway mechanism. The related pipe of the ropeway outlet vent is the blue pipe.

The ropeway pressure gauge is a pressure gauge. It is part of the ropeway mechanism. The target pressure is 4. The related pipe is the blue pipe. Does the player mean examining the ropeway mechanism: it is likely. ["ropeway" should default to machinery.]

A ropeway lever is a setpiece in Chairlift Base. Understand "ropeway" or "lever" as ropeway lever. The description of lever is "The lever [if bucket is ascending]is pushed forward[otherwise if bucket is descending]is pulled back[otherwise]stands straight up[end if]. It looks like it can be either pushed forward (towards the mountain) or pulled back." Instead of pushing or pulling the lever when bucket is not stationary, say "You give it a tug, but the lever seems for the moment to be locked into position." Check attacking the ropeway lever: say "You give it a savage kick, to no avail." instead. Instead of switching on or switching off ropeway lever, try examining ropeway lever. The dream-text of ropeway lever is "spare flywheels for the ropeway".

Understand "push forward" or "push [something] forward" as pushing. Understand "pull back/backward/backwards" or "pull [something] back/backward/backwards" as pulling. Rule for supplying a missing noun when pushing and location is Chairlift Base: change noun to ropeway lever. Rule for supplying a missing noun when pulling and location is Chairlift Base: change noun to ropeway lever.

To decide whether the chairlift has power: if puzzle mode and the pressure of the related pipe of the ropeway pressure gauge <= 6, decide no; if pressure of the related pipe of the ropeway pressure gauge < 4, decide no; decide yes. To decide whether the chairlift hasn't power: if the chairlift has power, decide no; decide yes.

Check pushing the ropeway lever: try turning the ropeway lever instead.

Check turning the ropeway lever: 
	if ropeway mechanism is being debugged, say "// Ropeway: blue pipe has pressure of [pressure of the related pipe of the ropeway pressure gauge] / 6 needed.";
	if the chairlift hasn't power begin;
		if ropeway mechanism is being debugged, say "// Ropeway: hasn't power.";
		respond to unpowered ropeway;
		stop the action;
	end if;
	say "You [if player is in bucket]reach out, [end if]push the lever into the forward position and feel something catch. ";
	if bucket is in Lawn begin; say "But immediately a relay snaps shut above you, and nothing further happens other than a momentary surge of steam from the outflow vent.";
	otherwise;
		say "[if pressure of related pipe of ropeway gauge is 6]Steam stops flowing from the outflow vent[otherwise]The volume of steam from the outflow vent drops dramatically[end if] and the ropes, cogwheels, and counterweights around you start to move. [paragraph break]With a groan, the thick main flywheel begins to rotate. The rope moves, and the crate, wheels tightly locked, swings and follows it, picking up speed as it [if player is in bucket]and you move[otherwise]moves[end if] forward out of the station.";
		now bucket is ascending;
		if Lawn is unvisited and player is in bucket begin;
			now ever-used-ropeway is true;
		end if;
		if player is in bucket, reset the boredom meter with "riding ropeway";
	end if;
	stop the action.

ever-used-ropeway is a truth state that varies.
	
Instead of pulling the ropeway lever:
	if the chairlift hasn't power begin;
		respond to unpowered ropeway;
		stop the action;
	end if;
	say "You [if player is in bucket]reach out, [end if]pull the lever into the back position and feel something catch. ";
	if bucket is in Chairlift Base begin; say "But immediately, a relay snaps shut above you, and nothing further happens other than a momentary surge of steam from the outflow vent.";	
	otherwise;
		say "[if pressure of related pipe of ropeway gauge is 6]Steam stops flowing from the outflow pipe[otherwise]The volume of steam from the outflow pipe drops dramatically[end if] and the ropes, cogwheels, and counterweights around you start to move. But moments later a clunk sounds in the machinery above, and everything smoothly comes to a halt again. [paragraph break]From high up on the mountain, you see the crate come over the edge and begin quickly descending, rolling freely down the ropes above it.";
		now bucket is descending;
		rule succeeds;
	end if.

To respond to unpowered ropeway:
	if ropeway mechanism is being debugged, say "// Ropeway: respond to unpowered ropeway.";
	if the pressure of the related pipe of the ropeway pressure gauge is 0 begin; say "You [if player is in bucket]reach out and [end if][if we are turning something]push against[otherwise]pull back on[end if] the lever, but nothing seems to happen, and when you release it, it snaps back up to vertical.";
	otherwise if puzzle mode and the pressure of the related pipe of the ropeway pressure gauge is less than 4; say "You [if player is in bucket]reach out, [end if][if we are turning something]push the lever forward[otherwise]pull the lever back[end if] and feel something catch. Immediately steam stops rising from the outflow vent, and you a hear a hiss and groan as cogwheels start to turn; but almost immediately they grind to a halt again, seemingly lacking the oomph to get going. [paragraph break]Steam begins to rise again from the outflow vent."; 
	otherwise; say "You [if player is in bucket]reach out, [end if][if we are turning something]push the lever forward[otherwise]pull the lever back[end if] and feel something catch. Immediately steam stops rising from the outflow pipe, and you a hear a hiss and groan as cogwheels start to turn. The ropes begin to move above you, but just as everything seems about to kick into gear, the mechanism slowly loses speed and finally grinds to a halt. [paragraph break]Steam begins to rise again from the outflow vent.";
	end if.


Instead of pushing or pulling or turning the bucket:
	if player is in bucket begin; say "You can't push it while you're inside it.";
	otherwise if location is Chairlift Base; say "You give the crate a solid push. It swings heavily back and forth in place, but does not otherwise move. Looking up, you see the wheels connecting it to the ropes seem to be locked.";
	otherwise; say "You give the crate a gentle push. It begins to roll gently forward, the unlocked wheels turning against the taut ropes above."; now the bucket inertia counter is 1;
	end if.

To advance the bucket:
	if bucket is ascending begin;
		if location of bucket is Chairlift Base, move bucket to Chair-lift1;
		otherwise move bucket to the room up from the location of bucket;
	otherwise;
		if location of bucket is Lawn, move bucket to Chair-lift3;
		otherwise move bucket to the room down from the location of bucket;
	end if.
	
Every turn when the bucket is ascending or the bucket is descending (this is the report on ropeway excitement rule):
	if ropeway mechanism is being debugged, say "// Ropeway: report on ropeway excitement rule (bucket in [location of bucket]).";
	if the player is in the bucket begin;
		if bucket is in Lawn begin;
			say "The crate swoops over the edge of the cliff and plummets down the rope.";
			if player is in bucket, reset the boredom meter with "riding ropeway";
		otherwise if bucket is ascending;
			say "You continue [one of]your ascent[or]rising[or]ascending[at random][if a random chance of 1 in 2 succeeds][time-of-day-bit][end if].";
		end if;
	otherwise if the player is in Chairlift Base; 
		if bucket is ascending, say "The ropes above you continue to move through the flywheel, which rotates noisily.";
		otherwise say "[if bucket is in Chair-lift1]The suspended crate sails gracefully into the station[otherwise]The stationary ropes above you vibrate as the crate rolls down them towards you[end if].";
	otherwise if the player is in Lawn;
		say "[if bucket is in Lawn]The crate swoops over the edge of the cliff and plummets down the rope[otherwise if bucket is in Chair-lift2]Far below, you see the crate slow drastically, then stop as it pulls into the base station, swinging crazily back and forth[otherwise]The ropes above you vibrate tautly as the suspended crate flies down the track below you[end if].";
	end if;
	advance the bucket;
	if ropeway mechanism is being debugged, say "// Ropeway: bucket advanced to [location of bucket].";
	if location is Chair-lift1 or location is Chair-lift2 or location is Chair-lift3, try looking;
	if the bucket is in Lawn or the bucket is in Chairlift Base begin;
		if player is enclosed by bucket begin; say "[if bucket is in Lawn]As the crate crests the lip of a sharp mountain ledge, you pass another support pole and flatten out almost completely as you pass just above a wide green lawn.[paragraph break]With a shudder, the ropes above stop moving, but some catch snaps open and the brakes on the car's wheels unlock. You roll forward under the crate's momentum up a gradual slope, slowing until finally coming to a gentle halt against a round wooden bumper[otherwise]The crate continues braking as you fly above the surface of the marsh towards the base station. Just as you think you're about to smash into it, the brakes clunk into place above, arresting your forward motion. The crate sways dramatically forward, then backwards; your stomach will take a bit more time to settle[end if].";
		otherwise if the player is in Chairlift Base; say "[line break][if bucket is in Lawn]Atop the distant mountain, you see the suspended crate crest the edge of the cliff[otherwise if bucket is in Chairlift Base and bucket is descending]The crate sails over the marsh, swooping towards you as half-engaged brakes squeal alarmingly. Just as it arrives at the station, the brakes snap shut, and the crate swings dramatically forward, backward, and finally comes to a stop[end if]. Moments later the lever near you snaps back to upright and a cloud of steam spurts from the outflow vent[if bucket is ascending]. The ropes slow to a halt[end if]."; 
		end if;
		now the bucket is stationary;
		if player is in bucket, try looking;
	end if.

First check going up when location is Chairlift Base: say "You'll have to operate the ropeway mechanism somehow, if you hope to do that." instead. First check going up when location is Lawn: say "You scramble up the pile of loose rocks and boulders to the summit, and stand for a moment in the wind on the island's highest point, enjoying your victory and the [o]view[x]. But the constant wind becomes wearisome before long, so you climb back down to the relative shelter of the lawn." instead.

The bucket is a open unopenable enterable undescribed container in Chairlift Base. It is fixed in place. The printed name is "crate". Understand "large" or "open-topped" or "wooden" or "wood" or "box" or "long" or "narrow" or "crate" or "coffin" or "seat" or "chair" as bucket. The description is "Roughly coffin-shaped, the open crate is scratched and nicked all over the inside, where ghosts of sawdust and grime still linger. A cross-brace near the support pole connecting the crate to the ropes above provides a crude wooden seat." The bucket can be ascending, descending or stationary. The bucket is stationary. Does the player mean entering the bucket: it is likely. Check taking bucket: say "It's attached to the cables overhead." instead. Check opening the bucket: say "There's no top; it's open to the air." instead. Instead of sleeponing bucket, say "It doesn't look very comfortable.[sleepsuggest]". Check climbing bucket: try entering bucket instead. The dream-text of bucket is "spare flywheels for the ropeway".

First report entering bucket: if bucket is in Lawn, increase the bucket inertia counter by 1; say "[one of]The seat is covered with years of accumulated grime, and spiderwebs and birds['] nests thrive near the join where the suspended crate hangs from the rope. You spend a few minutes clearing the detritus away, wondering how long it's been since this equipment was operated.[paragraph break][or][stopping]You grip the central support of the crate and climb unsteadily onto the seat as it rocks slowly beneath you[if location is Chairlift Base]. Once seated, you see that you can easily reach out and manipulate the [o]lever[x][end if]." instead. First report exiting when player was in bucket: say "You rock the crate as you push your legs over the edge onto solid ground again." instead.

The bucket inertia counter is a number that varies.

The check for bucket stranding rule is listed before the report on ropeway excitement rule in the every turn rulebook. Every turn when bucket inertia counter > 0 (this is the check for bucket stranding rule) :
	if ropeway mechanism is being debugged, say "// Ropeway: bucket inertia counter at [bucket inertia counter].";
	if the bucket inertia counter is 1 and player is in bucket, say "The addition of your weight causes the crate to pull loose from its berth. It begins to inch slowly forward as the wheels above start to turn.";
	if the bucket inertia counter is 2 begin; say "The crate picks up speed, the wheels above turning faster and faster as it approaches the edge of the cliff."; end if;
	if the bucket inertia counter is 3 begin;
		if player is not in the bucket and ( the player is wounded or the mountain-spring is pristine ) begin; arrest the bucket;
		otherwise; now the bucket is descending;
		end if;
		now the bucket inertia counter is -1;
	end if;
	increase the bucket inertia counter by 1. 

Before going when location is Lawn and bucket inertia counter > 0 and ( the player is wounded or the mountain-spring is pristine ) : arrest the bucket.

To arrest the bucket: say "Quickly, you grab the crate and arrest its forward motion. If it were to go over the edge without you in it, you'd be stuck up here. You pull it back to its starting position."; now the bucket is stationary; now bucket inertia counter is 0; move bucket to Lawn.

Instead of pulling or taking the bucket when bucket inertia counter > 0 and player is not in the bucket: now the bucket inertia counter is 0; now the bucket is stationary; move bucket to Lawn; say "Grabbing the crate with both hands, you manage to stop its momentum and pull it back up to the end of the line, where it once again rests motionless.". Understand the command "stop" as "take".

Chapter - Ropeway Ride

Check sleeping in Chairlift-Ride: say "But you'll have to dismount in just a minute." instead.

Chair-lift1 is a room with printed name "Gently Rising". "The taut ropes above you jerk forward with a steady power, lifting you slowly above the sinking ground beneath your feet, which drops off into a quagmire as you pass above the edge of the [o]marsh[x].".  

The cl1-marsh is a backdrop. Understand "marsh/swamp/marshlands" as cl1-marsh. The printed name is "view of the marsh". It is in Chair-lift1 and Chair-lift2. The description is "From your elevated vantage point, you can see how the marsh is really just a salty lowlands running across the north end of the island. Waves break gradually and slowly across the boggy expanse till they become undetectable ripples lapping against the sudden upthrust of the black lava flow to your right.".

Chair-lift2 is a room with printed name "Above the Marsh". "[chair-lift2desc].". To say chair-lift2desc: if bucket is ascending, say "The ropeway carries you higher, above the mud and reeds. To your left, the [o]sea[x] breaks unevenly across the fuzzy boundary of the [o]marsh[x], while opposite [windsigh phrase of tree3] rises from a rocky spur of the [o]mountain[x], which looms up ever larger before you.[paragraph break]The car bumps and squeals as it passes a [o]pillar[x] affixed to the top of a spire rising from the marsh, descends for a moment, and then begins rising steeply towards the summit"; otherwise say "The crate's wheels squeal like mad as you continue your breakneck descent, pulling up as the angle of the cable flattens.[paragraph break]You pass the lone support pillar in the center of the marsh with a stomach-churning hump. Something trips a catch in the wheels above, which loudly begin squealing as something abrades them. You grip the support with white knuckles as the car slow downs and throws your weight forward". Chair-lift2 is up from Chair-lift1.

The cl2-sea is a backdrop. It is in Chair-lift1, Chair-lift2 and Chair-lift3. Understand "sea/ocean/waves/water" as cl2-sea. The printed name is "ocean". The description is "The blue whitecapped waves seem to stretch forever off to the northern horizon.". 

The cl2-pillar is a setpiece in Chair-lift2. Understand "pillar" as cl2-pillar. The printed name is "ropeway pillar". The description is "The pillar seems to be a single sturdy log, affixed somehow to the top of a natural rock spire rising from the marsh.".

Chair-lift3 is a room with printed name "[if bucket is descending]Rapid Descent[otherwise]Approaching the Mountain[end if]". "[if bucket is ascending]You rise at a steep angle towards the summit of the [o]mountain[x]. Before you is a sheer [o]cliff[x], marred by one deep crack and numerous ledges and pockmarks[ledgehint]. The angle of the rope above grows steeper and steeper[otherwise]You are flying down the rope, the wheels above spinning madly. The marsh rises to met you at a terrifying rate[end if].". To say ledgehint: if Ledge is unvisited, say ". One [o]ledge[x] in particular stands out, strewn with rubbish and signs of habitation". Chair-lift3 is up from Chair-lift2. Chairlift Base is down from Chair-lift2. Up from Chairlift Base is nowhere. Lawn is up from Chair-lift3.  

The cl3-cliff is a setpiece in Chair-lift3. Understand "cliff/crack/pockmarks" as cl3-cliff. The printed name is "cliff". The description is "The cliff is sheer and steep on this side, and you see from this dizzying height where the lowlands of the marsh fill a negative space that the other half of this mountain must have occupied before some tumultuous geologic event.".

The cl3-ledge is a setpiece in Chair-lift3. Understand "ledge/ledges" as cl3-ledge. The printed name is "ledge". The description is "The great crack running up the side of the cliff bisects the ledge, and as you peer closer you can see someone obviously has spent some time there[if location of Progue is ledge]. In fact, you can see [the Progue] moving around on the ledge when you look closer[end if][if Ledge is unvisited]. It looks like you might be able to climb up the crack from the marsh near the cliff if you were careful about it[end if].".

Instead of jumping or leaping or exiting when location is regionally in Chairlift-Ride, say "Not on your life." First before going when location is regionally in Chairlift-Ride: say "Not on your life." instead. Check going nowhere when location is regionally in Chairlift-Ride: say "You'll have to wait until the car gets where it's going first." instead. Instead landmark-going when location is regionally in Chairlift-Ride (this is the can't landmark go from chairlift rule): say "You'll have to wait until the car gets where it's going first." instead. The can't landmark go from chairlift rule is listed first in the instead rules.

Part - The Marshlands

Check sleeping in Marshlands: say "It's too boggy to sleep anywhere around here.[sleepsuggest]" instead.

To say a sentence about the marshlands: 
	if raining begin; say "There is nothing but mud as the rain thrashes the already soaking marshlands";
	otherwise if rained; say "Hot mist hangs like a physical presence over the soaking marshlands, as if the tiniest disturbance would cause the evaporating moisture to start falling again";
	otherwise;
	if night, say "[one of]Quiet sounds of trickling water and shifting mud seem ominous in the oppressive darkness[or]Vague shapes surround you on all sides, but only the sucking of the mud beneath your feet seems real in the thick black of night[in random order]";
	if dawn, say "A still mist blankets the marsh, lending the muddy patches, tufts of grass, and deeper pools a grey indistinctness, a reluctance to let in the growing light";
	if twilight, say "Even now that the sun has set, curtains of heat still radiate from the mud and grass around you";
	if sunrise or morning, say "[one of]White curtains of mist swirl delicately over the marsh, the cold shadow of the great mountain protecting them from the hidden sun[or]Here in the shadow of the mountain, the marsh is still cool and quiet, tendrils of mist drifting over mud and patches of deeper water[in random order]";
	if midmorning, say "[if location is Marsh]Morning arrives late to the marsh, the mountain's shadow only now reluctantly retreating as the sun crests the ridge, touching muddy patches of grasses and pools of standing water with insistent yellow-gold light[otherwise]Still caught in the mountain's shadow, the marsh here retains hints of the night's chill[end if]";
	if afternoon or midday, say "[one of]The marsh bakes in the [if midday]midday[otherwise]afternoon[end if] sunlight, which lifts steam from momentarily dry patches and turns the standing puddles around you uncomfortably warm[or]Humidity rises in curls of moisture from the swampy ground, adding to the topical heat[in random order]";
	if evening or sunset, say "[one of]Striking shades of [if evening]orange and brown[otherwise]red and purple[end if] paint the marsh as the [if evening]falling[otherwise]setting[end if] sun slants through clumps of grasses and murky pools[or]Insects drift lazily through the vivid evening light, sluggish in the warmth of both sun and steaming marsh[in random order]";
	end if.

Report going from Marshlands to Marshlands: say "[one of]You pick your way carefully through the marsh[or]Hopping from one clump of dry grass to another, you navigate the swampy maze[or]Slowly, you work through the boggy terrain[or]You find a path through the wet salty bog[at random] [one of]towards[or]to[at random] [if location is West-Marsh]the edge of the marsh[otherwise if location is East Marsh]the vicinity of the rocky spire[otherwise]the cliff face[end if][if a random chance of 1 in 2 succeeds][time-of-day-bit][end if].".


The ambience table of Marshlands is Table of Marshlands ambience.

Table of Marshlands ambience
freq		start time	end time	text	table		trigger	flag
common		midmorning	twilight	--	Table of Frog ambience
common		--	--		--	Table of Lacuna Insect ambience
uncommon		--	--		--	Table of Lacuna Weather ambience
uncommon		--	--		--	Table of Chairlift ambience
rare			sunrise	sunset	--	Table of Mountain ambience
common	twilight	night	--	Table of Firefly ambience

Table of Frog ambience
freq		text	table		trigger	flag
common	"Steady croaking sounds on all sides, somehow merging with the wet, bubbling sounds of the marsh into a steady buzz."

A frog is an animal. The description is "The squat round creature, about the size of a child's hand, quivers nervously.".


Chapter - West Marsh

West-Marsh is a room. "[A sentence about the marshlands]. [A sentence about the mountain]. [paragraph break][exits].". The printed name of West-Marsh is "Edge of the Marsh". The prose name of West-Marsh is "the edge of the marshlands". 

The exits text of West-Marsh is "You could return from here to higher ground, the drier area near the tree [dr]stumps[x][if dir] to the [southwest][end if], or slog through more marsh [etwmar2]". To say etwmar2: say "[if dir]to the [east] and [northeast][otherwise]towards a craggy [d]spire[x] or, farther off, the [d]foot[x] of the mountain[end if]". Understand "spire" as east when location is West-Marsh. Understand "foot" as northeast when location is West-Marsh. 

 Report going southwest from West-Marsh: say "You gratefully climb out of the mud and muck of the marsh, emerging amongst the drier ground near the stumps."


Chapter - East Marsh
	
East Marsh is a room. "A lone [o]spire[x] of rock reaches from the muck into the sky, about three times your height. Affixed to its top is a wooden pole, the sole support of the ropeway [o]cable[x] on its long climb up the mountain. [paragraph break][exits]." The printed name of East Marsh is "Marsh, Near the Spire". The prose name of East Marsh is "the marshlands by the spire". Understand "marshlands" as east when location is West-Marsh. Understand "marshlands" as south when location is North Marsh. Understand "stumps" as west when location is East Marsh.

The exits text of East Marsh is "[if dir]To the [north][otherwise]Farther afield[end if], the [dr]foot[x] of the mountain rises abruptly from the muck, while [if dir]to the [west][otherwise]in the opposite direction[end if] the marsh continues towards the [dr]stumps[x]". Understand "foot" as north when location is East Marsh.

The spire is a setpiece in East Marsh. Understand "lone" or "rock" as spire. The description is "A great splinter of rock that must have fallen from the shattered mountain long ago rises at a slightly crooked angle from the marsh like a giant's bony finger.[if sunup][paragraph break]Several faint [o]drawings[x] in chalk, faded to near invisibility, adorn the base of the spire.[end if]". Instead of climbing or entering spire, say "You test some handholds. The knobby rock makes for an easy climb. Quickly, you pull yourself up the short distance to its top.[paragraph break]Supporting yourself on the ropeway pole, you stand up on the precarious top of the spire. From here, you can see how the pole was firmly embedded into a natural crack in the rock, secured with dozens of stone pegs. Squinting, you follow the path of the two cables as they steepen up towards the distant summit of the mountain.[paragraph break]Curiosity satisfied, you return back to the swampy ground.". Instead of climbing or entering spire when player is wounded, say "You're not climbing anything with this leg." The dream-text of spire is "obelisks covered in childish scrawls". 

The faded chalk drawings are part of the spire. Understand "drawing" as faded chalk drawings. The description is "You kneel to study the drawings more closely. The simple subjects suggest the work of a small child, but still show some skill: a rendering of a bulbous frog captures the creature's awkward grace, and another of two dragonflies twirling around each other in flight shows remarkable details in the delicate wings. One large sketch shows two girls holding hands, backs turned, skipping along a beach.[paragraph break]Below the drawings is drawn some [o]writing[x] in a simple, awkward hand.". Check touching faded chalk drawings: say "Wind and rain has almost completely washed the faint drawings away; just the touch of your finger erases the line underneath it." instead. Check taking faded chalk drawings: say "They are drawn directly on the rock." instead.

The chalk writing is a story-based scrawl in East Marsh with standard message "I want to go home. I miss mommy. What's wrong with daddy?".

Chapter - North Marsh

North Marsh is a room. The description of North Marsh is "[A sentence about the marshlands]. But the marsh ends abruptly here at a sheer [o]cliff[x] face, the edge of the imposing mountain. [paragraph break][exits]." The printed name of North Marsh is "Marsh, Near the Cliff". The prose name of North Marsh is "the marshlands". 

The exits text of North Marsh is "The marsh stretches away from the mountain [if dir]to the [south] and [southwest][otherwise]towards the lonely [dr]spire[x] and the distant [dr]stumps[x][end if]". Understand "stumps" as southwest when location is North Marsh. Understand "spire" as south when location is North Marsh.

The weather-worn crack is a backdrop. The crack is in North Marsh, Ledge, Cliffside, and Lawn. 

Check examining the weather-worn crack:
	if location is North Marsh begin; say "About the width of your outstretched hand, the crack runs nearly vertically up the side of the cliff";
	otherwise if location is Ledge; say "[exits text of Ledge]";
	otherwise if location is Cliffside; 
		if the mountain-spring is pristine, say "You can see handholds, but the water coursing down both sides of the crack soaks you and prevents you from getting a solid grip";
		otherwise say "Gripping the crack tightly, every handhold and foothold stands out in sharp relief with clarity enhanced by adrenalin";
	otherwise; say "[if mountain-spring is pristine and pressure of the related pipe of the pyramid pressure gauge >= 5]The tiny spring vanishes into[otherwise]The damp streambed leads to[end if] a narrow crack that drops straight down the face of the mountain towards the marsh far below";
	end if;
	say "." instead.

Understand "reach in/into/inside" as touching.
	
Check entering the crack: say "The crack is too narrow to enter." instead. Check climbing the crack when location is North Marsh: try going up instead. Check climbing the crack when location is Lawn: try going down instead. Check climbing the crack: say "You'll have to specify: [up] or [down]." instead.

First Check going up when location is North Marsh and we have not touched the crack: try touching the crack instead.

First Check going up in North Marsh when player is wounded: say "You're not climbing anything with this leg." instead. 

Instead of touching the weather-worn crack: say "You feel the edge of the crack experimentally for handholds. It wouldn't be easy, but you might be able to climb the crack up, at least a little ways."; rule succeeds. [Currently broken due to a bug in "Default Messages."][still true?]

Understand the command "crack" as something new. 

Report going from North Marsh to Ledge for the second time: say "Flexing your hands, you step anxiously up to the crack, set your first handholds, and begin to climb. The ascent is not easy, but you make quick progress, and before you know it you have followed the crack all the way up to a small ledge, some distance above the marsh below.". Report going from North Marsh to Ledge for the third time: say "The ascent is a little easier this time, old handholds remembered and a few easier ones found. Before long you have hauled yourself up to the ledge once again." Report going from North Marsh to Ledge for at least the fourth time: say "You find your way up the long crack to the ledge with practiced ease.";



Part - High Altitude

Check jumping when location is Lawn or location is Observatory Exterior: say "Better not. It's a long way down." instead.

Check sleeping when location is regionally in High Altitude: say "[if location is Cliffside]Cute.[otherwise]You feel too exposed up here.[sleepsuggest][end if]" instead. 

Chapter - Ledge

The prose name of Ledge is "the mountain ledge". The description of Ledge is "[ledgedesc].". To say ledgedesc: say "No more than a few paces across, this tiny ledge in the cliff face offers a vantage of the marshlands stretching back to the coast, the chairlift cables arcing high above them, and the lagoon, just visible over the edge of the distant lava flow.[paragraph break]"; say "Strewn about the ledge are a variety of [o]nicknacks[x] that, along with a simple [o]bed[x] of palm fronds, make it immediately obvious somebody has made this ledge a sort of home.[paragraph break][exits]". The exits text of Ledge is "The [o]crack[x] goes right through the ledge, bisecting it into two neat halves, before continuing both up and down the slope[if the mountain-spring is pristine and pressure of the related pipe of the pyramid pressure gauge >= 5]. [o]Water[x] [ldgpyrtest] down both sides from somewhere high above, before vanishing into smaller cracks at your feet[end if]". To say ldgpyrtest: say "[if pressure of the related pipe of the pyramid pressure gauge > 17]ripples[otherwise if pressure of the related pipe of the pyramid pressure gauge > 10]trickles[otherwise if pressure of the related pipe of the pyramid pressure gauge >= 5]seeps[end if]".

Progue's nicknacks are a prop in Ledge. The description is "Mostly junk: small piles of sea shells, scattered fish bones and broken crab legs, bits of rope of various sizes woven from coconut husks, and the like[if Progue's pendant is in location]. Buried among the remains, however, you do notice a small [o]pendant[x] on a leather chain[end if].". Understand "knicknacks/knicknacks" as nicknacks.

Progue's pendant is a wearable undescribed thing in Ledge. The description is "Just a small stone on a leather chain that can be worn around the neck. It seems well-worn, as if it has been rubbed nearly to smoothness over years.". After taking Progue's pendant: now player is wearing Progue's pendant; say "You slip the small pendant around your neck.". Instead of dropping or taking off Progue's pendant when location is not Ledge: say "You probably shouldn't leave it lying around just anywhere.". Instead of dropping or taking off Progue's pendant: move Progue's pendant to Ledge; say "You slip off the pendant and return it to the pile of nicknacks.". [Stealing this can trigger a scene with Progue.] Check touching Progue's pendant: say "The stone is warm and smooth." instead.

A bed of palm fronds is a setpiece in Ledge. The description is "The fronds could do with replacing: they are rotting and the smell is most unpleasant. It certainly doesn't look like a very comfortable place to sleep.". Instead of entering or sleeponing bed of palm fronds: say "This is someone else's bed." Check sleeping in Ledge: say "It looks like somebody else has already claimed this spot.[sleepsuggest]" instead. The dream-text of palm fronds is "thousands of dried palm fronds".

[ The chairlift [o]cables[x] rise through the air far away; the point where they reach the mountain's summit is still high above your head. ]

Report going down from Ledge for the first time: say "Nervously, you lower your feet back over the edge, gripping your handholds tightly. It seems to be a long descent, the marsh spinning dizzily far beneath your feet each time you glance down for footholds, but slowly it gets closer and closer. When you finally hop the last few feet down, the muck of the marsh is good to feel beneath your feet.". Report going down from Ledge for the second time: say "With confidence boosted, you manage to pick your way down in about half the time as your first attempt. It's still not an easy climb, but you manage without too much trouble.". Report going down from ledge for at least the third time: say "Handholds and footholds come easily to you, and in no time at all you are back on solid ground again.".

First Instead of going up from Ledge for the first time: say "The [o]crack[x] steepens here[if the mountain-spring is pristine and pressure of the related pipe of the pyramid pressure gauge >= 5] and [o]water[x] [ldgpyrtest] down from somewhere above[end if]. It looks like climbing farther will be more difficult[if mountain-spring is diverted or pressure of the related pipe of the pyramid pressure gauge < 5], but still possible[end if].". 

Report going up from Ledge: say "[if the mountain-spring is pristine and pressure of the related pipe of the pyramid pressure gauge >= 5]You find your initial handholds. [repupled] the slippery stone carefully, you begin to climb.[otherwise]You find your handholds in the angular nooks of the crack and begin to climb.[end if]". To say repupled: say "[if pyramid has power]Hot water courses down your arms and wets your whole body. Gripping[otherwise]Water begins to trickle down your arms and wet your whole body. Shivering, and gripping[end if]".

Chapter - Cliffside

Cliffside is a room. "Breathing heavily, you pause for a moment at a relatively stable foothold, hands clenched tightly [if mountain-spring is pristine and pressure of the related pipe of the pyramid pressure gauge >= 5]on water-slick rock [end if]and muscles quavering. [exits].". The prose name of Cliffside is "the side of the mountain cliff".   The exits text of Cliffside is "The ground is a long way [d]down[x] and the crack continues [d]up[x]". 

Check sleeping in Cliffside: say "Good one.[sleepsuggest]" instead.

cliff-climb-try is a number that varies. cliff-climb-try is 0.

First Instead of going up when location is Cliffside and mountain-spring is pristine and pressure of the related pipe of the pyramid pressure gauge >= 5:
	if current episode is Word Day:
		say "It's probably a better idea to explore a little more before you go climbing dangerous things." instead;
	if the psyche of Progue is emotional or the psyche of Progue is fugue or the psyche of Progue is resolved or Tsunami Sequence is happening:
		say "Perhaps you once could have tried, but by now your body has grown so used to this crack being unclimbable that you can't work up the nerve to do it." instead;
	if an episode is playing:
		say "You try to pick your way farther up, but the hot water coursing down the crack scalds your arms. A fingerhold slips and you hug the side of the mountain in cold panic. You can't work up the nerve for now to try to get any higher." instead;
	increment cliff-climb-try by 1;
	if cliff-climb-try is 1, say "You try to pick your way farther up, but the water coursing down becomes more intense, the stone underneath slicker. You are all too conscious of the distance to the ground, far, far below your feet. Finally, when one hand slips on a slimy hold, you are forced to descend to your previous stopping point, nervous and shaky.";
	if cliff-climb-try is 2:
		say "Carefully, you start up the water-soaked crack again, once again trusting to moss handholds and slicker and slicker footholds. This time, you seem to find them easier. You are just starting to gain some confidence and get a good rhythm going when suddenly, your foot slips off a mossy niche, your wet hands claw at slickness and you fall...";
		begin Tending-to-Wounded-Player.

After going to Ledge: now cliff-climb-try is 0; continue the action. [So we can always come back and try without dying.]

Report going up from Cliffside: say "The climbing gets even tougher. There's one spot where you're desperate for a handhold, and have to make a great reach that makes your muscles groan. But a few body lengths later, thankfully, you reach the top of the crack, and climb gratefully up onto a broad green lawn.".

Report going from Cliffside to Ledge: say "[if Ledge is unvisited]You lower yourself carefully down the cliff, grateful the crack remains so constant. Finally, with relief, you get to a small ledge, and stand up gratefully, rubbing your aching arms[otherwise]You climb back down the crack towards the safety of the ledge below[end if].".

Report going from Lawn to Cliffside: say "[if Cliffside is unvisited]Nervously, you peer over the edge. It's a long way down. As long as the crack continues, you'll have good hand and footholds, but it will be risky.[paragraph break][end if]You lower yourself carefully into the crack, keeping an eye out for holds, and begin descending the face of the mountain.".

Chapter - Lawn

The prose name of Lawn is "the mountain summit". The description of Lawn is "[lawndesc].[checklawnchapter]".

To say lawndesc:
	if raining begin; say "Misty rain whips past your head, the hot summer storm drenching you. The twirling mist hides most features of the summit; the [o]crack[x] and [o]streambed[x] near the edge of the cliff, the top of the ropeway [o]turnaround[x] and the cable vanishing into clouds below, and around the corner, the strange [dr]structure[x]";
	otherwise; say "This wide, rolling lawn of wild grasses rests just underneath the summit of the mountain, and overlooks a tremendous [o]view[x]. Cable swoops up from far below to end here at a simple [o]turnaround[x]. A "; say "[if pressure of the related pipe of the pyramid pressure gauge >= 5][o]spring[x] bubbles[otherwise]dry [o]streambed[x] meanders[end if] from a jumble of boulders halfway up the lawn, arcing lazily through the grass before finally "; say "[if mountain-spring is pristine]vanishing into[otherwise]tumbling into space near[end if] a [o]crack[x] at the cliff's edge";
	end if;
	say ".[paragraph break]The grass rises gently [if dir][east] [end if]towards a strange [dr]structure[x] ahead, half-hidden by the summit's overhang";
	say "[if bucket is enclosed by location].[paragraph break]The [o]crate[x] hangs from the cables, swaying gently in the breeze[end if]".

The exits text of Lawn is "Other than via the ropeway, [if Cliffside is visited]or [down] the crack, [end if]the only other place to go seems to be [if dir][east] [end if]towards the [dr]structure[x] at the meadow's end". Understand "structure" as east when location is Lawn.

Lawn-stuff is stuff in Lawn. Understand "lawn/overhang" as Lawn-stuff when location is Lawn.

First Check landmark-going when location is Lawn or location is Observatory Exterior: say "You'll have to get down from the mountain, first." instead. Check landmark-going when player is in bucket: say "You'll have to get out of the ropeway crate, first." instead.

The lawntop-view is a backdrop. It is in Lawn and Observatory Exterior and Atop and Saddle. Understand "view/island" as lawntop-view. The printed name is "view of the island". The description is "From this high point you have a tremendous view of all the island. You can see how it is structured almost like a dumbbell or figure eight: the mountain [if location is Lawn or location is Observatory Exterior]you stand on [end if]at one corner and the volcano at the other are linked by the black lava flow streaming from the ruined side of the caldera, which runs neatly into [if location is Atop or location is Saddle]the steep spur you stand on[otherwise]a steep spur jutting out from the mountain below you. High atop the spur is the giant windsigh, almost at the geographic center of the island[end if].[paragraph break]The island's west side comprises the marsh, the lagoon, and the light forest on the slopes of the volcano; the east side is mostly filled with a plateau covered with dense rain forest. To the south, the mountain drops off dramatically into a sea-swept ravine, separating it from the rain forest plateau, and to the north and east the mountain slopes down in a more gradual if treacherous fashion to rocky shoreline.".

lawncheck is a number that varies. lawncheck is 0. To say checklawnchapter: if pyramid has power and lawncheck is 0 begin; now lawncheck is 1; end if.

First Instead of going down in Lawn when mountain-spring is pristine and the pressure of the related pipe of the pyramid pressure gauge >= 5: say "Sheer cliffs drop off at the edges of the lawn, and the crack is mossy and wetted by the streambed. Other than using the ropeway, you see no easy way down." First Check going down in Lawn when player is wounded: say "With this leg, you aren't likely to be climbing any time soon." instead.

The lawncliff is a backdrop. It is in Lawn and Observatory Exterior. Understand "cliff/cliffs" as lawncliff. The printed name is "cliff". Instead of climbing or entering lawncliff: try going down.

The ropeway-summit apparatus is a setpiece in Lawn. Understand "wood" or "wooden" or "bumper" or "ropeway/turnaround" as apparatus. The description is "Much simpler than the station below, all you see is a large post supporting a flywheel, where the cable does an about turn and heads back towards the cliff, and a wooden bumper designed to stop and support the crate when it's here.". The dream-text of ropeway-summit apparatus is "spare flywheels". Check entering ropeway-summit apparatus when bucket is enclosed by location: try entering bucket instead.

Report going from Lawn to Observatory Exterior: say "Feeling exposed in the fast-moving breeze of the mountaintop, you cross the lawn and enter a half-shielded cirque.". 

Section - Spring

The mountain-spring is a backdrop. It is in Lawn, Observatory Exterior, Cliffside, and Ledge. It is either pristine or diverted. It is pristine.  Understand "water" or "trickle" or "stream/streambed/spring" or "springbed/mountain" or "spring bed" or "channel" as the mountain-spring. The printed name is "spring".

Instead of examining the mountain-spring:
	let vol be the pressure of the related pipe of the pyramid pressure gauge;
	if location is Lawn begin; say "The [if vol is 0]dry spring bed[otherwise if vol <= 2]damp spring bed[otherwise if vol <= 10]trickling spring[otherwise]gurgling spring[end if] meanders across the lawn haphazardly from the direction of the pyramid through a shallow channel, [if mountain-spring is pristine]past a number of grey [o]boulders[x] which must have tumbled down from the mountain's summit, till it vanishes into a [o]crack[x] in the cliff[otherwise]until a boulder diverts it and sends it running over the grass to plunge off the far side of the cliff in a tiny waterfall that quickly vanishes into mist[end if].";
	otherwise if location is Observatory Exterior; say "[if vol >= 15]The searing hot spring pours forth from[otherwise if vol >= 10]The hot spring trickles from[otherwise if vol >= 5]The warm spring water seeps from[otherwise]The dry streambed originates at[end if] a sodden depression in the grass. Peering closer, you can see a buried bamboo [o]conduit[x], cracked. Following the conduit, you see its end sticking out over the edge of the cliff, where it would drain into the ravine far below, if the crack didn't divert the water[if puzzle mode].[paragraph break]Some [o]words[x] are scrawled onto the pipe near the dropoff[end if].";
	otherwise; say "The water, [if vol >= 22]coming down in hot steaming curtains[otherwise if vol >= 12]while only a trickle and not too cold[end if], is enough to wet the crack completely and form a base for moss and slime to grow."; 
	end if.

Instead of touching or taking the mountain-spring, say "The water is scalding hot to the touch.". Understand "stop [mountain-spring]" or "dam [mountain-spring]" or "divert [mountain-spring]" as a mistake ("The cirque has been swept smooth by wind and rain; you can't see anything nearby you could use to divert the spring.").

The buried bamboo conduit is a setpiece in Observatory Exterior. Understand "break/crack/hole" as conduit. The description is "It looks as if the conduit is meant to drain runoff water from the steam powering some underground mechanism. The break is quite large; perhaps some boulder tumbling from the rocky slope above did it in.". Understand "fix [conduit]" or "repair [conduit]" or "cover [conduit]" as a mistake("The damage is quite extensive. You don't see any way to repair it short of excavating the whole cirque and replacing the pipe, which you don't have the tools to do."). The dream-text of buried bamboo conduit is "stands of bamboo".

Check tasting the mountain-spring: let vol be the pressure of the related pipe of the pyramid pressure gauge; say "[if vol >= 15]The water is scalding hot; you can barely touch it, let alone drink it[otherwise if vol >= 10]The trickle of water is too hot to drink[otherwise if vol >= 5]The water is warm, and has a strange mineral undertaste[otherwise]The spring is not running at the moment[end if]." instead. Instead of taking or touching the mountain-spring, say "You gather a handful of the scalding hot water in your hand, before letting it fall."

An overly energetic boulder is a prop in Lawn. Understand "boulders/jumble" as energetic boulders when location is Lawn. The description is "[if mountain-spring is diverted]Having rolled quite a ways from most of its siblings nearer the summit, this boulder seems content now in its role as temporary traffic director for the spring[otherwise]The boulders lie strewn around the lawn, some huge and old and sunken into the ground, others, the smaller and more recently mobile, resting on top of it[end if].". The dream-text of energetic boulder is "unsteady boulders". Instead of climbing or entering overly energetic boulder, say "Most of the boulders are far too small for that to be useful; they would probably easily shift under your weight.".

Instead of taking or attacking the overly energetic boulder, try pushing the overly energetic boulder. Check pushing the overly energetic boulder when the mountain-spring is diverted: say "You've already pushed a boulder to divert the tiny spring." instead.

First report pushing the overly energetic boulder: now the mountain-spring is diverted; say "You bend down and, with one solid heave, manage to topple one large boulder into the path of the [if the pressure of the related pipe of the pyramid pressure gauge >= 5]stream. The water changes course, running across the lawn to tumble off the cliff in a waterfall that vanishes into the air, rather than trickling into the crack[else]dry streambed. It looks like any water flowing through here now would be diverted away from the crack[end if]."; rule succeeds.



Chapter - Observatory Exterior

The printed name of Observatory Exterior is "[if pyramid is on-stage]Outside the Pyramid[otherwise]At the Machinery[end if]". Understand "lawn" as west when location is Observatory Exterior.

The prose name of Observatory Exterior is "the mountain cirque by the [if pyramid is on-stage]wooden pyramid[else]machinery".

The description of Observatory Exterior is "[observdesc].". To say observdesc:
	let vol be the pressure of the related pipe of the pyramid pressure gauge;
	if vol >= 22, let outvol be vol - 22; otherwise let outvol be vol;
 [pyramid uses 22 units of power if available.]
	if longform begin;
		say "Nestled into this cirque at the foot of the mountain's summit[if raining], sheltered by the slight overhang from the rain, [end if] is [one of]a[or]the[stopping] [pyrstatesummarylong]";
	otherwise;
		say "The [pyrstatesummaryshort], ";
		if sunup, say "gleams in the [Progue-time-of-day] sunlight";
		else say "rests mysteriously in the [light-source]";
	end if;
	say "[dot][if outvol > 20]Torrents of steam gush from a nearby outflow [ventword], rising high into the sky before dissipating[otherwise if outvol > 15]Steady clouds of steam bellow from a nearby outflow [ventword][otherwise if outvol > 3]Steam pillows from a nearby outflow [ventword][otherwise if outvol > 0]Thick tendrils of steam rise up from a nearby outflow [ventword][otherwise]An outflow [ventword] emits only wisps of humid air[end if] "; 
	say "at the base of the [if pyramid is on-stage]pyramid[otherwise if destroyed mind machinery is in location]wreckage[else]machinery";
	if pyramid has power and destroyed mind machinery is not in location begin; say ", and a steady whir and thrum deep in your bones sighs up from somewhere underneath the ground[if pyramid is on-stage]. A brilliant ruby glow spills through its three vertical seams[compasssqueezebit][otherwise]. The [o]egg[x] pulses with an intense ruby glow, so bright you almost can't look into it[end if][if night or dawn or twilight], and a faint column of crimson light rises from it into the sky[end if]";
	otherwise if vol > 0 and destroyed mind machinery is not in location; say ", and a dim crimson glow pulses [if pyramid is on-stage]through the three edges of the pyramid[otherwise]from the [o]egg[x][end if], cycling slowly off and then back to dimness again[if night or dawn or twilight] and casting weird shadows against the walls of the cirque";
	end if;
	say "[dot]A few paces away a [if vol >= 5][o]spring[x] bursts from the ground[otherwise]dry [o]streambed[x] begins[end if], ";
	say "meandering in a shallow channel back towards the lawn[dot]";
	say "[exits]".

To say compasssqueezebit: if puzzle mode, say "; where it hits the mountain cirque behind is projected an [o]image[x]".

Check listening when location is Observatory Exterior: if pyramid has power, say "The noise is subsonic, a deep rumbling coming from somewhere [if pyramid is on-stage]beneath the pyramid[else]beneath the chair[end if]." instead; else say "Wind whips through the mountaintop, whistling faintly through the curvature of the cirque." instead.

[[if raining or rained]; drops of water glisten and run along them like dewdrops on a spiderweb[end if]]

The mountain scrawl is a hint-based scrawl in Observatory Exterior with standard message "Not safe. Locked now. This way you have to know my words to get in." and secret message " Just have to finish Echo Cave work first." Understand "word/words" as mountain scrawl.

The exits text of Observatory Exterior is "The only safe place to go is back[if dir] [west][end if] towards the [dr]lawn[x]".

Observatory-stuff is stuff in Lawn. Understand "cirque/foot/whir/thrum/rod/rods" as Observatory-stuff when location is Observatory Exterior.

The projected image is a setpiece. The description is "The red light spills out from the seam in the side of the pyramid, painting the cliff behind in intense crimson light; but some hidden stencil obscures parts of the light to create a detailed image. It shows a compass that looks remarkably like the one [if player wears compass]around your neck[else]you've seen around the island[end if], held in a hand[squeezehint].". Check going to Observatory Exterior: if pyramid has power and puzzle mode, move projected image to Observatory Exterior; otherwise remove projected image from play; continue the action. To say squeezehint: if compass is extruded, say " that is squeezing it tightly"; else say "[one of] that is squeezing it tightly[or] that squeezes it tightly[or]. The hand is squeezing the compass[stopping]".

The ambience table of Observatory Exterior is Table of Observatory Exterior ambience.

Table of Observatory Exterior ambience
freq		start time	end time	text	table		trigger	flag
common	--		--		"[one of]Wind whips through your hair sharply[or]Birds soar through the air beneath you, catching warm updrafts from the marsh[or]The distant sounds of surf crashing echo up dimly from the ocean far below[in random order]."
frequent		--		--		"[if pyramid has power and player is not enclosed by mind chair][one of]A deep, rhythmic thrum[or]A powerful thrumming vibration[or]An almost electric thrum[in random order] [one of]beneath your feet[or]from somewhere beneath the ground[in random order] [one of]surges underneath your feet[or]fills the air[in random order].[end if]"


Section - The Pyramid

[There are a confusing number of states here to describe. The machinery here can be unpowered, insufficiently powered (in which case it pulses faintly red) or fully powered (in which case it glows a deep red and shoots a beam of light into the sky, visible at night). The pyramid is either concealing the egg (the source of the glow) and the chair, or gone, exposing them. Also, the machinery might be destroyed. ]

To say pyrstatesummarylong:
	if pyramid is in location:
		say "crude wooden [o]pyramid[x] only a head taller than you are, completely encircled by huge metallic hoops tilted like the rings of some strange planet. Hundreds of tiny wire filaments run from points across the rings to a junction at the top of the pyramid";
	otherwise if destroyed mind machinery is in location:
		say "wreckage of the [o]machinery[x], broken glass and twisted filaments and sparking wires";
	otherwise:
		say "reclined [o]chair[x], surrounded by a medley of strange [o]machinery[x]. Hundreds of noodle-thick metal hoops encircle the chair, joined by thousands of wire filaments that converge at a point suspended above it".

To say pyrstatesummaryshort:
	if pyramid is in location:
		say "wooden [o]pyramid[x], surrounded by its halo of [o]hoops[x] and [o]filaments[x]";
	otherwise if destroyed mind machinery is in location:
		say "wreckage of the [o]machinery[x]"; 
	otherwise:
		say "[o]chair[x], surrounded by the medley of strange [o]machinery[x] and the halo of hoops and filaments".

To say ventword: say "[o]vent[x]".

The pyramid is an undescribed setpiece in Observatory Exterior. The description is "The pyramid, despite the bizarre implements surrounding it, seems quite plain, constructed from three pieces of triangular wood, weather-worn but quite solid. Each side of the pyramid is adorned with one of three [o][if puzzle mode]drawings[otherwise]words[end if][x][pyrdesc2]". To say pyrdesc2: say "[if pressure of the related pipe of the pyramid pressure gauge > 0 and pyramid is on-stage], and a red glow streams through minute joins along its edges[otherwise if pressure of the related pipe of the pyramid pressure gauge > 0 and pyramid is on-stage], and a red [o]glow[x] pulses inside the egg hotly[end if][pyrdesc2b]". To say pyrdesc2b: say ". Wire [o]filaments[x] run from the [o]hoops[x] surrounding the [if pyramid is on-stage]pyramid to its apex, where they converge and presumably run to the inside[otherwise]structure to a point suspended above the chair, where they converge and run in a thick bundle into the egg[end if][pyrdesc3]". To say pyrdesc3: if puzzle mode, say ".[paragraph break][gauge-description], near [if pyramid is on-stage]the point of the pyramid nearest the cliff[otherwise]the foot of the chair[end if], rises from the ground, connected to a yellow [o]pipe[x] that snakes off towards the dropoff. A"; else say ".[paragraph break]A yellow [o]pipe[x] snakes towards the dropoff and connects to the base of the [if pyramid is on-stage]pyramid[else]chair[end if]; a"; say " stubby outlet [o]vent[x] [if pressure of the related pipe of the pyramid pressure gauge > 24]emits a steady cloud of steam[otherwise if pressure of the related pipe of the pyramid pressure gauge > 22]emits faint wisps of steam[otherwise]rises from the join[end if].". Does the player mean doing something to the pyramid: it is likely. Instead of doing something to distant-pyramid when location is Observatory Exterior: if pyramid is on-stage, try examining the pyramid; otherwise say "The three sides of the pyramid have vanished into slits in the ground.". The dream-text of pyramid is "tiny wooden pyramids".

The red-glow is part of the pyramid. Understand "red/glow" as red-glow. The printed name is "red glow". The description is "It streams out through the three edges of the pyramid, a knife-edge of crimson brilliance, as if something inside is giving off a tremendous light.".

Check opening the pyramid: say "The edges are far too close together to get a finger or even a fingernail between them, and there are no handles or other places to get a grip anywhere on the surface." instead. Check pushing the pyramid: say "You push against the side of the pyramid." instead. Check attacking the pyramid: say "You take a step back and slam into the side of the pyramid with your shoulder; though you are sure now that the interior is hollow, the wood does not come even close to giving." instead. Check entering the pyramid: try opening the pyramid instead. Check closing the pyramid: say "It seems quite closed already." instead. Check climbing pyramid: say "No point, since it's only as high as your head." instead. Check touching pyramid: say "The wood, though weathered a little, is planed smooth." instead.

To decide whether pyramid has power: if the pressure of the related pipe of the pyramid pressure gauge >= 22, decide yes; decide no.

The track is a setpiece in Observatory Exterior.

The pyramid outlet vent is an outflow tube. The pyramid outlet vent is part of the pyramid. The related pipe of the pyramid outlet vent is the yellow pipe.

The pyramid pressure gauge is a pressure gauge. It is in Observatory Exterior. It is undescribed. The target pressure is 22. The related pipe is the yellow pipe.

The three etchings are part of the pyramid. Understand "drawing" or "drawings" or "konokuk" or "fruits" or "trees" or "square" or "windsigh" or "tree" or "circle" or "galaxy" or "capalla" or "pentagon" or "dot/dots/side/sides" as the etchings. The description is "Each of the three sides of the pyramid bears one of the drawings, along with one, two, or three dots: the first shows [if konokuk trees are named]a konokuk fruit[otherwise]one of the hairy brown sphere-shaped fruits[end if] enclosed by a square, the second shows [if tree1 is named]a windsigh tree[otherwise]one of the ubiquitous twisted trees[end if] surrounded by a circle, and the last shows the night sky's galaxy, [if galaxy is named]Capalla, [end if]surrounded by a pentagon.". Instead of touching or taking the etchings, say "The detailed drawings are done directly on to the sides of the pyramid.". Check pushing the etchings: try pushing the pyramid instead. Understand "say capalla" [or "capalla"] or "say windsigh" [or "windsigh"] or "say konokuk" [or "konokuk"] as a mistake ("You say the word loudly into the air, but there is no response.") when location is Observatory Exterior.

The alternate-etchings are a story-based scrawl. [This is for story mode; a simpler version that bypasses the echo chamber puzzle.] Understand "etchings" or "word/words" as alternate-etchings. The printed name is "words on the pyramid". The standard message is "knock[paragraph break]thrice[paragraph break]clap". 

Some metallic hoops are a setpiece in Observatory Exterior. Understand "huge/hoop/tilted/rings" as metallic hoops. The description is "From up close, you can see hundreds of the hoops, all of similar but not identical positions and dimensions. As a whole, they form one large ephemeral torus, tilted about thirty degrees to the ground, and giving the pyramid a wide berth, like some strange probability cloud bound to an origin by one force and repulsed by another. A forest of wooden rods support the strange structure in place.". Understand "huge" or "torus" or "ephemeral" as the hoops. Check attacking metallic hoops: say "It's probably not a good idea to damage this device until you're sure of what it does." instead. Instead of pushing or pulling or touching metallic hoops, say "[if pressure of the related pipe of the pyramid pressure gauge > 20]You reach out to touch the metallic hoops and--[paragraph break][paragraph break]... slowly, you open your eyes to find yourself flat on your back. Woozily, you stand to your feet, feeling faint tingles still arcing through your body. Where your fingertip brushed the hoop is a narrow black band[otherwise if pressure of the related pipe of the pyramid pressure gauge > 10]You reach out to touch the metallic hoops, then jerk your hand back sharply as a searing electric shock runs through it[otherwise if pressure of the related pipe of the pyramid pressure gauge > 0]You touch one metallic hoop and feel an electric current moving through it[otherwise]You touch your finger to a metal hoop, but feel nothing other than smooth coolness[end if].". The dream-text of metallic hoops is "tiny wooden pyramids".

The wire filaments are a setpiece in Observatory Exterior. Understand "filament/tiny/hundreds/junction" as wire filaments. The description is "Thin as human hair, the filaments stretch like a spiderweb from the apex of the pyramid to thousands of points along the metallic hoops surrounding it.". Check attacking wire filaments: try attacking metallic hoops instead. Check touching wire filaments: say "You touch one tentatively; it is incredibly fine and strung so tight you doubt you could move it without slicing your finger." instead. The dream-text of wire filaments is "tiny wooden pyramids".

Understand "knock thrice" or "knock three times" as thrice-knocking. Thrice-knocking is an action applying to nothing. Check thrice-knocking: if pyramid is off-stage, try vague knocking instead; if location is not Observatory Exterior, say "You knock sharply three times, but nothing happens." instead. Carry out thrice-knocking: say "You rap your knuckles sharply three times against the weathered wood of the pyramid's side." Understand "knock thrice on [something]" or "knock three times on [something]" or "knock on [something] thrice" or "knock on [something] three times" as knocking.

Clapping is an action applying to nothing. Understand "clap" as clapping. Carry out clapping: say "You clap your hands together sharply[if location is Observatory Exterior]. The sound is amplified by the round cirque[otherwise if location is Echo Chamber]. The sound echoes like a gunshot around and around, until slowly fading into silence[end if]."

Check vague knocking when location is Observatory Exterior: try knocking the pyramid instead. Check knocking the pyramid: say "You rap your knuckles sharply against the weathered wood of the pyramid's side. The wood seems thick, but the structure is definitely hollow." instead. 

Pyract1 is a number that varies. Pyract2 is a number that varies. Pyract3 is a number that varies. Pyract4 is a number that varies.

Every turn when the pyramid is on-stage and location is Observatory Exterior:
	now pyract1 is pyract2;
	now pyract2 is pyract3;
	now pyract3 is pyract4;
	if we are clapping begin; now pyract4 is 2;
	otherwise if we are thrice-knocking; now pyract1 is pyract3; now pyract4 is 1; now pyract3 is 1; now pyract2 is 1;
	otherwise if we are vague knocking or knocking the pyramid; now pyract4 is 1;
	otherwise; now pyract4 is 0;
	end if;
	if pyract1 is 1 and pyract2 is 1 and pyract3 is 1 and pyract4 is 2 begin;
		if pyramid has power begin;
			remove the pyramid from play;
			move the mind chair to Observatory Exterior; 
			move the mind machinery to Observatory Exterior;
			say "Something catches with a tiny click, and then, with a deep groaning, the three sides of the pyramid retract and disappear into black slits in the ground, revealing a triangular platform with a mass of [o]machinery[x] and a single wooden [o]chair[x], reclined and padded.";
			print a section break;
			try looking;
		otherwise;
			say "You hear a tiny snick, followed by a dull grinding of wound-down gears. All the steam flowing from the outflow vent immediately stops. The pyramid shutters, but then the noise winds down, and nothing further happens.[paragraph break]Steam begins rising again from the outflow vent.";
		end if;
	end if.

Section - Pyramid Machinery

The mind machinery is a setpiece. The mind machinery can be idling or projecting. The mind machinery is idling. The mind machinery is either calibrated or uncalibrated. The mind machinery is uncalibrated. The mind machinery can be crypted or unencrypted. The mind machinery is unencrypted.  The description is "The complex array of machinery, which seems to extend well beneath the ground, centers around a cylindrical mass that rises from behind the chair. At its top is a large crystalline [o]egg[x], pulsating with a deep red glow and nearly obscured by a frankenstein medley of technology, half delicate alien machinery and half crude wires and handmade stopgaps.[paragraph break]The machinery forms a wide hemispherical berth around the headrest of the [o]chair[x][pyrdesc2]". Understand "cylindrical" or "mass" as mind machinery. The machinery-password is an indexed text that varies. Understand "machine" as mind machinery.

Instead of attacking the mind machinery when Finishing-Treeworld is solved and Finishing-Rebelworld is solved: force discuss machinery_death. Machinery_death is a beat with reaction "The complex of wires and delicate machines would smash easily enough, you're sure. But is that what you really want?". Instead of saying yes when last beat is machinery_death and location is Observatory Exterior, super rampage. Instead of saying no when last beat is machinery_death and location is Observatory Exterior, say "You lower your hands and calm yourself.". Instead of attacking the mind machinery when Finishing-Treeworld is solved and Finishing-Rebelworld is solved and we have discussed machinery_death: super rampage.

To super rampage: remove the mind machinery from play; remove the mind egg from play; move the destroyed mind machinery to Observatory Exterior; change the machinery-password to "un.typable"; say "Blood pumping thickly through your veins, you grab a fistful of cables and yank as hard as you can. Sparks fly as they come loose in your hand like tufts of hair and the deep thrum beneath you groans. Encouraged, you begin smashing and pummeling the machinery with a vigor. A torrent of steam escapes a broken tube; lights and noises die; the thrum below you slows and finally stops.[paragraph break]Finally, panting, you lower your hands. The mindlink machinery lies in ruins.".

The destroyed mind machinery is a setpiece. Understand "mindlink" or "ruins" or "egg" as destroyed mind machinery. The description is "Only bits and pieces remain. The egg lies dark and silent in their midst.". Instead of attacking destroyed mind machinery: say "No more violence is necessary; it's been reduced to rubbish.".

Instead of attacking the mind machinery: say "This is delicate equipment, probably irreplaceable. You don't want to break anything until you're absolutely sure that's the only solution.".

The mind egg is a setpiece. It is part of the mind machinery. The description is "The torso-sized egg is made of some glass-like material that refracts and bends the red glow spilling from inside it in strange ways. Hundreds of tiny veins of sea-blue run through the crystal. Though intact, the surface is marred by blackened scorch marks and streaks of ash melted into the surface. What bits of the interior you can see seem clouded with fractal patterns of impossible complexity; but most of the object's surface is obscured by wires, tubes, and contacts that connect it to the array of machinery surrounding it.". The dream-text of mind egg is "hundreds of glowing red eggs, filled with luminous sparkles of gold and silver". Instead of taking the mind egg: say "It's intricately connected to the machinery underneath it by hundreds of wires and structural rods.". Instead of touching the mind egg: say "The surface is utterly smooth: smoother than marble, smoother than glass, and [if pyramid has power]hot[otherwise if pressure of the related pipe of the pyramid pressure gauge > 10]warm[otherwise if pressure of the related pipe of the pyramid pressure gauge > 0]slightly warm[otherwise]cool[end if] to the touch.". Instead of opening mind egg: say "It seems to be one unbroken solid shape.". Instead of attacking mind egg, try attacking mind machinery. 


Section - The Mind Chair

The mind chair is an undescribed enterable supporter. The printed name is "reclined chair". The description is "Angled back in a reclining position, it is constructed of wood and padded with simple cushions. Above, behind, and below the headrest is a frankenstein array of [o]machinery[x], running into the ground beneath the chair." Does the player mean entering the mind chair: it is likely. Check climbing mind chair: try entering mind chair instead.

After entering the chair:
	say "Heart racing, you carefully sit down on the chair-- then, after a moment, lean back and rest your head on the padded cushion. ";
	if pyramid has power begin;
		move icon-case to chair;
		if the mind machinery is calibrated begin; say "[paragraph break]After a moment of strange mental tingling, a set of transparent icons winks into view, seeming to hover a few feet in front of you. [mindlink summary].";
		otherwise;
			if Mindlink Calibration has ended begin;
				say "[paragraph break]Once again, something appears hovering in your field of vision: [a list of things in icon-case].";
			otherwise;
				say "[paragraph break]At first, nothing happens, but then you feel a faint, quiet tickling somewhere inside your head.[paragraph break]A faint [o]brightness[x] suddenly appears in the center of your field of vision. It seems to float there, regardless of where you look, as if it is somehow being projected on top of it.";
				move the light-icon to icon-case;
			end if;
		end if;
	otherwise;
		say "At first, nothing happens, but then you feel a strange mental tingling, and a fuzzy concept takes shape in your head which slowly resolves into a pair of numbers:[paragraph break][pressure of the related pipe of the pyramid pressure gauge].[paragraph break]22.[paragraph break]Then the tingling fades, and nothing further happens.";
	end if.

After entering the chair when the mind machinery is off-stage: [i.e. destroyed] say "You sit down on the chair, but nothing happens; the machinery is ruined."

After getting off the chair: say "[if icon-case is on-stage]As you move to stand up, the icons instantly disappear. [end if]You rise to your feet."; remove icon-case from play; now counter of light-icon is 0. After getting off the chair when the mind machinery is off-stage: say "You get to your feet."

Instead of looking when player is on the mind chair and icon-case is on-stage, say "Floating in midair before you [if tree icons are in icon-case]is an array of icons. [mindlink summary][otherwise][is-are the list of things in icon-case][end if].[paragraph break]The world outside of the chair is hard to focus on until you [d]stand up[x].".

To say mindlink summary: 
	say "An arc of seven [o]windsigh[x] icons[if the number of contacted windsigh trees is 7], all glowing [color text of yes-icon of mind machinery],[otherwise if the number of contacted windsigh trees is 0], all grey,[otherwise] ([the number of contacted windsigh trees in words] glowing [color text of yes-icon of mind machinery], the [sti_color] dim and grey)[end if] ";
	say "floats below a large [o]globe[x] icon ([if the machinery-password exactly matches the text rebel-password or the machinery-password exactly matches the text tree-password]pulsing [color text of yes-icon of mind machinery][otherwise if the number of contacted windsigh trees is 7]still [color text of no-icon of mind machinery][otherwise]a dull [color text of no-icon of mind machinery][end if])";
	if the number of contacted windsigh trees is 7 begin;
		say ". Above both of these is a stylized lock and [o]key[x]";
		if mind machinery is unencrypted, say ", the latter grey and hovering just to the right of the open lock";
		otherwise say ", the latter engraved with the word '[machinery-password]' and inserted into the lock";
		say ". Finally, floating above the lock is a cloud of thousands and thousands of almost imperceptibly small [o]dots[x][if the machinery-password exactly matches the text rebel-password or the machinery-password exactly matches the text tree-password], all [color text of no-icon of mind machinery] but for a single [color text of yes-icon of mind machinery] speck[otherwise if the machinery-password is blank], all [color text of yes-icon of mind machinery][otherwise], all [color text of no-icon of mind machinery][end if]";
	end if.


To say sti_color: if the number of contacted windsigh trees is 6, say "last"; otherwise say "rest".

A mindlink-icon is a kind of thing. A mindlink-icon is usually undescribed. A mindlink-icon is always minor. Last instead of taking a mindlink-icon: say "Your hands move right through it." [bug2: does this work?]

Test mindlink with "tp observatory exterior / knock thrice / clap / sit / l / head".

Icon-case is a transparent open unopenable undescribed container. It is fixed in place.

The seven tree icons are a mindlink-icon. Understand "windsigh" as the tree icons. The description is "As you focus on the icons you [if the number of contacted windsigh trees is 0]feel a strange, distant pull from somewhere below you on the island[otherwise if the number of contacted windsigh trees is 7]feel a powerful tingling in your mind, and recognize the trees you have found, the seven spread around the island. They are ready[otherwise if guessed_trees is false]feel a powerful tingling in your mind, like the presences from your dreams. Only it's stronger now; and you sense that you no longer need to dream under the trees to speak to the presences-- you must still find the rest, but now you can merely touch them to hear their message[otherwise]feel a powerful tingling in your mind, and recognize the [number of contacted windsigh trees in words] mind[s] you have already found, and the eagerness of the [7 - number of contacted windsigh trees in words] other[s] you have yet to contact. You sense that the calibration has helped them; now, you do not need to be in sleep to speak with them. Merely touching the trunks of the windsigh trees will be enough for the minds to reach you[end if].".

The globe icon is a mindlink-icon.

Instead of examining the globe icon when mind machinery is calibrated: 
	say "You focus on the globe icon";
	if the number of contacted windsigh trees < 7:
		say ". It does not change, but the [the number of uncontacted windsigh trees in words] grey windsigh icon[if the number of uncontacted windsigh trees > 1]s below it flash[otherwise] below it flashes[end if] [color text of no-icon of mind machinery] a few times.";
	otherwise if the machinery-password is blank:
		say ", but immediately all the colored [color text of yes-icon of mind machinery] dots turn [color text of no-icon of mind machinery]. A few random single dots turn [color text of yes-icon of mind machinery], one at a time, before the whole group returns to [color text of yes-icon of mind machinery] again.";
	otherwise if the machinery-password exactly matches the text rebel-password or the machinery-password exactly matches the text tree-password:
		say "-- and an impossibly bright red glow flares into your eyes. You fling your hand up to shield them---";
		if ( Being-In-Rebelworld is unsolved and the machinery-password exactly matches the text rebel-password ) and Lab is unvisited, begin chapter 9;
		if ( Being-In-Treeworld is unsolved and the machinery-password exactly matches the text tree-password ) and Overlook is unvisited, begin chapter 8;
		now the mind machinery is projecting;
	otherwise:
		say ". Nothing happens, except that the cloud of dots and the lock and key icons blink [color text of no-icon of mind machinery] for few moments.".

The key icon is a mindlink-icon.

Instead of examining the key icon when mind machinery is calibrated and the number of contacted windsigh trees >= 7:
	say "As you activate the key, [if the machinery-password is blank]it moves forward into the lock with a mental click. The key begins pulsing with an expectant quiver, and you can feel intuitively that it is waiting to swallow your next utterance[otherwise if the machinery-password exactly matches the text rebel-password or the machinery-password exactly matches the text tree-password]it pulls back out of the lock and the single [color text of yes-icon of mind machinery] dot above becomes just one in a sea of [color text of yes-icon of mind machinery] dots[otherwise]it pulls back out of the lock[end if][if the machinery-password is not blank]. The engraved word, '[machinery-password],' fades away until the key is once again featureless[end if]";
	if the machinery-password is blank begin;
		now the key icon is feeding;
		change the command prompt to ">>";
	otherwise;
		change the machinery-password to "no.thing";
	end if;
	if the machinery-password is not blank, say ", [if the machinery-password exactly matches the text rebel-password or the machinery-password exactly matches the text tree-password]and the single [color text of yes-icon of mind machinery] dot becomes lost as all the [color text of no-icon of mind machinery] others fade to join it in uniform [color text of yes-icon of mind machinery][else]and all the dots fade from [color text of no-icon of mind machinery] to [color text of yes-icon of mind machinery]";
	say ".";


The key icon is either satiated or feeding. The key icon is satiated. 

After reading a command when the key icon is feeding:
	let testtext be indexed text;
	let testtext be the player's command;
	if testtext is an invalid password, reject the player's command;
	otherwise replace the player's command with "setkey machpw [the player's command]".

After defining a password while key icon is feeding:
	change the command prompt to ">";
	now the key icon is satiated;
	now the mind machinery is crypted;
	say "As you visualize the word, you can feel neurons firing in your brain, and sense intuitively somehow that unique pattern, the precise electrical, neurological relationship between your brain and that word -- [machinery-password] -- is being recorded and copied. Slowly, the word becomes etched into the key above[if the machinery-password exactly matches the text rebel-password or the machinery-password exactly matches the text tree-password]. When it is finished, a single dot in the [color text of yes-icon of mind machinery] cloud above retains its color, while all others fade to [color text of no-icon of mind machinery]; the [o]globe[x] icon also lights up [color text of yes-icon of mind machinery][otherwise], as all the tiny dots above wink from [color text of yes-icon of mind machinery] to [color text of no-icon of mind machinery], until they are one solid band of color[end if].".

The tiny dots are a mindlink-icon. The description is "[if the machinery-password exactly matches the text rebel-password or the machinery-password exactly matches the text tree-password]The single [color text of yes-icon of mind machinery] dot and the globe icon seem to pulse together as you activate it, but otherwise nothing happens[otherwise]They are so small they are only barely perceptible as individual points, floating in a loose halo above and around the lock and key... almost in the shape of a galaxy[end if]."

Section - The Calibration Sequence

Mindlink Calibration is a recurring scene. Mindlink Calibration begins when player is on the chair and mind machinery is uncalibrated and pyramid has power. Mindlink Calibration ends when player is not on the chair or mind machinery is calibrated.

The light-icon is a mindlink-icon. Understand "bright/brightness" as light-icon. The printed name of light-icon is "brightness". The light-icon has a number called counter. The counter of light-icon is 0. The description is "It burns bright and intense, hurting your eyes.". Instead of touching or taking or pushing or pulling light-icon, say "You reach out for it but your hands close on nothingness. You can't feel it but your eyes certainly can see it.". Check attacking light-icon: say "You thrash out at the light but your hands go right through it, feeling nothing." instead.

Every turn when the light-icon is in the icon-case and the icon-case is on-stage:
	increase counter of light-icon by 1;
	let C be the counter of light-icon;
	if C is 1 begin; say "The fuzzy [o]brightness[x] grows stronger and more distinct.";
	otherwise if C is 2; say "The [o]brightness[x] gets brighter, shimmering and strengthening in the center of your field of vision.";
	otherwise if C is 3; say "Growing brighter and brighter, the [o]brightness[x] in front of you is becoming intense.";
	otherwise if C is 4; say "The [o]brightness[x] is becoming blinding, searing and bubbling before your eyes painfully.";
	otherwise if C is 5; say "A sun boils before you, radiant [o]brightness[x] burning its way into your retinas; you can hardly stand it.";
	otherwise if C is at least 6; say "The [o]brightness[x] is a supernova; you can't take another second. Finally, involuntarily, you blink..."; try silently eye closing;
	end if.

Instead of eye closing when the light-icon is in the icon-case and the icon-case is on-stage: say "You close your eyes against the intense light and immediately it extinguishes.[paragraph break]Subtle currents of thought touch your mind. A moment of calculation, of consideration...When you open your eyes again, there are two glowing dots, but smaller, dimmer, and less fuzzy. Each [o]dot[x] flits around your field of vision like fireflies."; remove the light-icon from play; move firefly-icons to icon-case.

Instead of eye closing when Mindlink Calibration is happening and light-icon is not in the icon-case: say "You shut your eyes, but can still see the imagery hovering before you. You open them again." instead. Check sleeping when location is Observatory Exterior: say "[if pyramid is not enclosed by location]The chair looks comfortable, but not that comfortable[else]It's too exposed and windy to sleep up here[end if]" instead.

Some firefly-icons are a mindlink-icon. Understand "firefly" or "fireflies" or "dot/dots" as some firefly-icons. The printed name of some firefly-icons is "tiny firefly dot[if multi]s". Some firefly-icons can be either multi or sole. The firefly-icons are multi. The description is "The [if multi]two tiny dots dip and swarm[otherwise]tiny dot dips and swarms[end if] around in front of you, dodging forward and backward, left and right.". Understand "follow [firefly-icons]" as a mistake ("They flit around but seem to stay within a few feet of you.") when location is Observatory Exterior.

Every turn when firefly-icons are in the icon-case and the icon-case is on-stage:
	say "The tiny [if firefly-icons are multi][o]dots[x] bob and weave[otherwise][o]dot[x] bobs and weaves[end if] around in strange, circling patterns.".

Instead of touching or taking some firefly-icons:
	if firefly-icons are multi begin; now firefly-icons are sole; say "You reach out your hand towards one of the tiny dots; as you brush against it, it becomes fixed in place for a moment, then vanishes with a thrilling quiver.";
	otherwise; remove firefly-icons from play; say "You touch the other dot, and it too freezes, then shimmers out of existence.[paragraph break]Another moment of hesitant thought, and then six glowing spheres appear before you, each a different color: [o]red[x], [o]orange[x], [o]yellow[x], [o]green[x], [o]blue[x], [o]violet[x], a spectrum.[paragraph break]A dull nagging sensation floats through your mind, which throws up words that dance around the central concept as it struggles to comprehend: danger, no, negation, closed, locked, unavailable, unready, impermissible."; now every color-icon is in icon-case; remove unassigned light from play; now counter of light-icon is 0;
	end if.

A color-icon is a kind of mindlink-icon. A color-icon has some text called the color text. The red glow is a color-icon. The color text of red glow is "red". The orange glow is a color-icon. The color text of orange glow is "orange". The yellow glow is a color-icon. The color text of yellow glow is "yellow". The green glow is a color-icon. The color text of green glow is "green". The blue glow is a color-icon. The color text of blue glow is "blue". The violet glow is a color-icon. The color text of violet glow is "violet". The unassigned light is an undescribed color-icon. The color text of unassigned light is "unassigned". Does the player mean doing something to the yellow glow: it is likely. [because of the yellow pipe.]

The mind machinery has a color-icon called the no-icon. The mind machinery has a color-icon called the yes-icon. The no-icon of mind machinery is unassigned light. The yes-icon of mind machinery is unassigned light.

Every turn when a color-icon is in the icon-case and the icon-case is on-stage:
	say "The [one of]nebulous[or]vague[or]uncertain[in random order] [one of]feeling[or]sensation[in random order] of [feeling-word] [one of]continues[or]keeps[in random order] [one of]floating through your mind[or]running through your thoughts[or]nagging at your brain[in random order]."

To say feeling-word: say "[if the yes-icon of mind machinery is unassigned light and the no-icon of mind machinery is unassigned light][one of]negation[or]danger[or]unavailability[in random order][otherwise][one of]readiness[or]permissiveness[or]acceptability[in random order][end if]".

Instead of doing something to a color-icon when the yes-icon of mind machinery is unassigned light and the no-icon of mind machinery is unassigned light:
	say "As you focus your attention on the [noun], it suddenly flares along with the intensity of the sensation of negation, and just as suddenly they both disappear.[paragraph break]A new sensation appears: a prickling feeling of readiness, accessibility, openness, okay-ness.";
	now the no-icon of mind machinery is noun;
	remove noun from play.

Instead of doing something to a color-icon when the yes-icon of mind machinery is not unassigned light or the no-icon of mind machinery is not unassigned light:
	now the yes-icon of mind machinery is noun;
	say "You have barely focused on the [noun] when it too suddenly brightens, along with a spike in the feeling of permissibility, of readiness-- then both vanish.[paragraph break]There is a long pause, redolent with concealed calculations.[paragraph break]Then, with a satisfied click of finality, a set of glowing icons appear in front of you. [mindlink summary].";
	repeat with trash running through color-icons begin; remove trash from play; end repeat;
	finish mindlink calibration.


To finish mindlink calibration:
	now mind machinery is calibrated;
	move icon-case to chair;
	remove light-icon from play;
	repeat with trash running through color-icons begin; remove trash from play; end repeat;
	remove firefly-icons from play;
	move the tree icons to icon-case;
	move the globe icon to icon-case;
	move the key icon to icon-case;
	move the tiny dots to icon-case.




Section - Endgame Storm

[To preserve forward momentum in the last few chapters of the story, we create a night time storm that descends on the island during the player's visit to the first of the two endgame worlds. The storm prevents leaving the mountaintop until both worlds are visited.]

endgame-dispersing clouds is a backdrop with printed name "dispersing clouds". Understand "cloud" or "clouds" or "patches" as endgame-dispersing clouds. 
   
To set up the endgame storm:
	say "[line break]The weather has changed in your absence. [unless night]Night has fallen, and b[else]B[end if]lack storm clouds race across the darkened sky, bruised by dull flashes of lightning. Wind whips over the exposed mountain peak, swirling dust and grit into eddies that disappear over the cliff edge into darkness.";
	change the time of day to 10:30 PM;
	now the time factor is 1;
	move storm clouds to Outdoors.

 
To set up the endgame afterstorm:
	begin chapter 10;
	change the time of day to 10:30 PM;
	now the time factor is 1;
	move endgame-dispersing clouds to Outdoors;
	remove storm clouds from play;
	say "The storm seems to be moving by; ever-widening patches of stars shine down from above, and the wind now feels warmer and calmer.".

Some storm clouds are a backdrop. The description is "The black clouds swallow up the sky; flashes of lightning dart constantly between them.". Understand "stormclouds" as storm clouds.

Every turn when storm clouds are on-stage and location is regionally in Lacuna:
	add potential messages from the Table of Endgame Stormage, only one;
	increase estormctr by 1;
	[Sometimes testers would get stuck after the first world because they couldn't remember the password they'd set for the second, and the storm prevented them reaching any trees to dream and remember. The line below was added to prompt players who get stuck here.]
	if estormctr is 10 or ( estormctr > 10 and a random chance of 1 in 6 succeeds ) , say "The two [o]passwords[x] float through your racing mind.".

estormctr is a number that varies. Understand the command "passwords" as "inventory".

Table of Endgame Stormage
freq			text	table		trigger	flag
common	"Lightning flickers menacingly in the sky above."
common	"A few raindrops patter through the air."
common	"Vague patterns shift above as the storm clouds swirl by."
common	"Wind howls and tugs at you heavily."
common	"Swirls and eddies of wind ripple past the exposed summit."

Going down is stormy behavior. Pushing the bucket is stormy behavior. Entering the bucket is stormy behavior. Before stormy behavior when location is regionally in Lacuna and storm clouds are on-stage: say "Until this storm dies down, until the danger of winds and lightning have passed, you're probably safer staying put." instead. Before stormy behavior when location is Lawn and endgame-dispersing clouds are on-stage and sb-warning-flag is false: now sb-warning-flag is true; say "You pause for a moment before you go, getting a strange feeling that you may never return to this spot. If you want to make any changes, now is the time." instead. sb-warning-flag is a truth state that varies.

Part - The Volcano Slopes

Chapter - Volcano Slopes

The prose name of Volcano Slopes is "the slopes of the volcano". The description of Volcano Slopes is "[volslodesc].". To say volslodesc:
	say "The trees fail entirely at this spot, giving way to ";
	if raining begin; say "smooth dark-brown slopes rising into clouds. Rivulets of rainwater run down the unobstructed terrain, vanishing into a waterlogged [o]thicket[x]. A few clusters of berry [o]bushes[x] dot the slopes. [paragraph break][exits]";
	otherwise; say "[if night]the indistinct black slopes of[otherwise]the smooth brown slopes of[end if] [if Volcano Slopes is unvisited]a tall [o]volcano[x], fortunately quiet at the moment[otherwise]the [o]volcano[x][end if]"; say "[if dawn or sunrise], catching the first rays of the morning sunlight above you[otherwise if twilight], growing vague and indistinct as the light dims and the stars begin to come out above it[end if]. "; say "A few clusters of berry [o]bushes[x] [if morning or midmorning]cast long shadows down slope towards impassable [o]thickets[x][otherwise]ease the transition into more barren terrain above, but the undergrowth twists into an impassable thicket down slope[end if]. [paragraph break][exits]";
	end if.

An impassable thicket is a setpiece in Volcano Slopes. Understand "thickets" as thicket. The description is "Below you can hear the sound of the surf beating against cliffs, but the terrain is too steep and too thick with vegetation to be passable.".
	
The exits text of Volcano Slopes is "[if raining][volcanoexit-rain][otherwise][volcanoexit][end if]". To say volcanoexit: say "You could take an easy but long hike [bw of Rim of Volcano]up to the volcano's [dr]rim[x][if dir] [southeast][end if], or return [bw of Big Tree]to the [dr]forest[x][if dir] to the [north][end if]". To say volcanoexit-rain: say "The slopes head [up] into clouds, or you can retreat into the relative shelter of the [dr]forest[x][if dir] [north][end if]". Understand "forest" as north when location is Volcano Slopes.

Report going from Volcano Slopes to Big Tree: say "You pass back into the [if night or twilight or dawn or raining]darkened[otherwise]dimmer[end if] spaces under the trees." Report going from Volcano Slopes to Rim of Volcano: say "The slope is steep but lack of obstacles makes it a relatively easy climb. [if midmorning or midday or afternoon and not raining]Sweltering in the heat of the sun[otherwise if night or dawn or twilight]Moving quickly in the cool air[otherwise]Stopping occasionally to catch your breath[end if], you [if raining]pass through layers of mist of various thickness, rain not falling so much as coalescing out of the air to cling to you[otherwise]rise quickly up the slope until at last you stand atop the volcano, on the lip of the caldera[end if]."; pass 10 minutes of time.

Slopes-stuff is stuff in Volcano Slopes. Understand "undergrowth/barren/terrain/transition" as slopes-stuff when location is Volcano Slopes.

Chapter - Sloping Meadow

The prose name of Sloping Meadow is "the sloping meadow near the chasm". The description of Sloping Meadow is "[slopmeddesc].". To say slopmeddesc:
	if longform begin; say "A [if raining or rained]boggy[otherwise]dense[end if] patch of pale green grass marks the boundary of this long, gently sloping meadow. The slope continues rising through barren brownish-grey terrain to your [if former location is Fork]right[otherwise]left[end if] towards the rim of [if Rim of Volcano is unvisited]a good-sized[otherwise]the[end if] [o]volcano[x], dominating the horizon and venting wisps of steam[dot]";
	otherwise if rained and afternoon; say "Tendrils of mist hover motionlessly over the meadow, as if the rain clouds still cling to the flowers enviously[dot]";
	otherwise if morning or midmorning; say "Birds chirp and small creatures scurry through the verdant meadow[dot]";
	otherwise if afternoon or evening; say "Insects drone lazily in the haze of the afternoon, spinning and twirling over the meadow[dot]";
	otherwise if dawn or twilight; say "A single bird call echoes over the meadow, which is otherwise silent and still in the faint light[dot]";
	otherwise; say "Gentle breezes waft a pleasant smell through the rustling grass of the meadow[dot]";
	end if;
	say "Clusters of [o]wildflowers[x] and bushes bearing heavy, deep red [o]berries[x] dot the meadow.[paragraph break][exits]".

The exits text of Sloping Meadow is "[if meadow-path-open is false]You might be able to find your way through thick[else]You could take the way you cleared [bw of Fork]through the[end if] [dr]forest[x][if dir] to the [west][end if], or [etsm2]". To say etsm2: say "go [bw of Chasm Edge]across the meadow to the [dr]edge[x] of the chasm[if dir] to the [east][end if]".

Understand "forest" as west when location is Sloping Meadow.

SlopingMeadow-stuff is stuff in Sloping Meadow. Understand "boundary/tendrils/mist/birds/creatures/small/insects/haze/bird/breezes/landscape" as slopingmeadow-stuff when location is Sloping Meadow.

Report going from Sloping Meadow to Fork: say "[one of]The vegetation gets thicker and denser. You push wildly overgrown fronds and dense stands of bamboo out of your way, until you finally you break out into a familiar spot[or]You leave the tranquil meadow behind and walk back into the trees, following the way you cleared earlier into the forest[stopping]."; now meadow-path-open is true. meadow-path-open is a truth state that varies. Report going from Sloping Meadow to Chasm Edge: say "The grass slowly thins out, giving way to barren black lava flow in strange ripples and mounds. You [if Chasm Edge is unvisited]stop short at a sudden dropoff[otherwise]eventually come to the dropoff again[end if]."

Some berry-bushes are a backdrop. They are in Sloping Meadow, Volcano Slopes, and Cinder Cone. Understand "berry bush" or "berry bushes" or "bush" or "bushes" or "cluster" or "clusters" as berry-bushes. The printed name is "berry bush[if location is not Cinder Cone]es". The description is "Close to the ground but with many wide, gently arcing branches, the [if location is Sloping Meadow]smattering of bushes[otherwise if location is Volcano Slopes]profusion of bushes[otherwise]lone bush[end if] bears many red [o]berries[x], about as wide as your pinky." Instead of attacking or pulling berry-bushes: say "You grasp one of the bushes and try to uproot it, but cut yourself on a sharp twig and are forced to stop." instead.

Some berries are a backdrop. They are in Sloping Meadow, Volcano Slopes, and Cinder Cone. Understand "berry/ripe/plump/red" as some berries. Does the player mean doing something with the berry-bushes: it is unlikely. [prevents "berry" from needing disambiguation] The description of some berries is "The berries are plump, the ripest ones a deep crimson, and give slightly to your touch. A few are greener and harder, but most seem quite ripe[berryhint]." Instead of tasting some berries, try taking some berries. Instead of taking some berries for the first time: say "You pluck a berry from the closest bush and pop it into your mouth. The flavor is remarkable: an almost fizzy quality gives way to a sweet, tropical taste, and crimson juice stains your fingers red."; move red-stain to location. Instead of taking some berries: say "You collect a few more of the delicious berries and enjoy a small meal of them. When you are finished, your fingers have been stained a deep crimson from the thick red berry juice."; move red-stain to location. Instead of tasting some berries, try taking some berries. [Instead of tasting some berries: say "You pick a berry, study it carefully, then carefully bite off a side. Deep red juice leaks from the berry, staining your fingers; but the flavor is remarkable."; move red-stain to location.] Instead of attacking some berries: say "You squish one of the berries between your fingers, releasing a crimson-red juice that stains your fingers."; move red-stain to location. Understand "lick finger" or "lick fingers" as a mistake ("You lick the juicy flavor from your fingers.") when red-stain is in location. 

A red-stain is a set dressing. Understand "stain/finger/crimson/juice" as red-stain. The printed name is "red stain". The description is "Deep crimson.". Instead of tasting red-stain, say "You lick the last of the juice from your fingers.". Instead of touching red-stain, say "It rubs off fairly easily.". Instead of taking red-stain, say "It's just a slight smudge on your finger.".

To say berryhint: if ( time for excitement or story mode ) and Back Room is visited and Jumble is unvisited, say ".[paragraph break]You notice that the color of the berries matches the red band painted on the door in the cabin on the beach".

Some wildflowers are a backdrop. They are in Sloping Meadow, Crater Pond, Forest2, Edge of Ravine, Grassy End, and Egg Room. Understand "flower" or "flowers" or "meadow" or "clusters" or "cluster" or "of" as wildflowers. The description of wildflowers is "The meadow flowers come in shades of yellow, pink, and blue, and sizes from tiny sunbursts to delicate, hand-sized blossoms. They exude a faint but pleasing fragrance of straw and honey.". Instead of taking some wildflowers, say "You bend down and pluck a single [one of]pink[or]cerulean[or]sky-blue[or]yellow[or]yellow-white[at random] blossom, studying the texture and detail of the petals carefully, before finally letting it fall back to the ground." Instead of smelling wildflowers, say "You inhale deeply, getting faint whiffs of sweet lavender and the subtle tang of sea salt.".

Understand "pick [something]" as taking.

Chapter - Rim of Volcano

To say a sentence about the beach: say "The distant surf [if sunup]glimmers in the light of the sun[otherwise]sparkles under the stars[end if]".

To say a phrase about the beach: say "[if midday]and the glimmering curve of the distant beach reflects the sunlight like a mirror[otherwise if sunset or evening]while the sweeping curve of the beach glows pink in the failing sunlight[otherwise if night]and the white sand of the distant beach glows in the [light-source] as if absorbing it[otherwise]and the distant curve of the lagoon's cyan waters beckons temptingly[end if]".

The prose name of Rim of Volcano is "on the rim of the volcano". Understand "rim" as southeast when location is Volcano Slopes. The description of Rim of Volcano is "[rimvolcdesc].". To say rimvolcdesc: 
	if night or raining begin; say "[if night]Under the [light-source], the tropical landscape stretching before you is like something from a storybook. [A sentence about the mountain], while the crater of the volcano looms below you. [A sentence about the beach][otherwise]Inside a cloud on top of a volcano--it's like being in a dream. Rain falls around the rocky ground here at the lip of the volcano, which curves gently away on both sides and vanishes into the mist. Grey tendrils of cloud reach down to mingle with white puffs of steam coming up from the volcano floor, far below[end if].[paragraph break][exits]";
	otherwise; say "[if dawn]Only the faint sounds of lapping surf break the unnatural early morning quiet[otherwise if sunset]The sunset is spectacular from this unobstructed vantage, an orangey-red fire shimmering on the waves and clouds to the west[otherwise if sunup]You shield your eyes from the glare[time-of-day-bit][otherwise]You stand on the very rim of the volcano[time-of-day-bit][end if], and take in the [if Rim of Volcano is unvisited]whole of the island, trying to get your bearings[otherwise]island vista again[end if]. From "; say "up here on the volcano's rim, it's the most striking features that catch your glance. [one of][a sentence about the mountain], [a phrase about the beach][or][A sentence about the beach], [a phrase about the mountain][at random]. The east half of the island is filled with a dense rain [o]forest[x]. Beneath your feet[if dir] to the east[end if], steep slopes curve down to the volcano's "; say "[if sunrise or morning or evening or sunset]shadowed[otherwise if midmorning or midday or afternoon]sunlit[otherwise]indistinct[end if] [o]caldera[x], [one of]where pockets of steam rise amid jumbled rocks and moss[or]where black lava flow stretches from slope to slope[or]where jumbled rocks cause a confusion of lines and angles[in random order]"; say ". There's no getting down that side; [if dir]back [northwest][otherwise][d]back[x] the way you came[end if] is your only option";
	if sunup, say ".[paragraph break]Surrounding the island on all sides is deep blue ocean flecked with dancing whitecaps, broken only by a distant column of [o]steam[x][if dir] to the south[end if] rising from the water, bent by the winds into a vertical cloud slowly merging into the sky";
	end if;
	if volcano sculpture is on-stage, say ".[paragraph break]Rising from the [if raining or rained]muddy [end if]dirt on the very lip of the crater is a magnificent [o]sculpture[x]".
	
The rv-forest-view is a backdrop. It is in Rim of Volcano. Understand "rain forest" or "forest" as rv-forest-view when location is Rim of Volcano. The printed name is "distant rain forest". The description is "The deep greens of the forest fill their side of the island, from low cliffs running along its eastern boundary to the northern slopes of the volcano. At the forest's northern end, a huge ravine separates it from the mountain.[paragraph break]The forest is a mostly level plateau, except for one [o]depression[x] near its eastern side.".

The rv-forest-depression is a backdrop. It is in Rim of Volcano. Understand "depression/glint" as rv-forest-depression. The printed name is "depression". The description is "The deep, circular depression seems unusual in the otherwise relatively level topography of the forest. A faint metallic glint pokes through the thick vegetation. From this great distance you can't make out any further details, or see what's at the bottom.". 

The exits text of Rim of Volcano is "The only exit is back [d]down[x] the outer slope of the volcano".

The distant column of steam is a backdrop in Rim of Volcano. The description is "About halfway to the horizon, the column of steam must foretell some significant geological event taking place under the waves, perhaps the precursor to the dormant volcano's successor.".

The tree4view is a backdrop in Rim of Volcano. Understand "tree" as tree4view. The description is "It's hard to make out much detail from here, but it looks much like the others you've seen."

Report going from Rim of Volcano to Volcano Slopes: say "Taking one last look around, you head back down the volcano[one of], taking giant steps as you let gravity pull you rapidly down to the edge of the forest[or][time-of-day-bit][at random].". 

Instead of entering or climbing the crater proper when location is Rim of Volcano, say "The inner slope of the volcano is just too steep for you to navigate. You'd likely cause a landslide if you tried."

Section - The Volcano Sculpture

The volcano sculpture is a setpiece in Rim of Volcano. Understand "magnificent/blue/crystal/crystalline/material/man/spiral/arms/feet/mud/statue" as the sculpture. The description is "Perched precariously on the very lip of the crater[if sunset or evening], catching the light of the setting sun,[otherwise if sunrise or morning], sparkling in the light of the rising sun,[end if] is a magnificent abstract sculpture carved from some blue crystalline material, a few heads taller than you. It seems to show a stylized man, twisted into a spiral, both arms stretched to the sky as if he is about to take flight. But his feet are hopelessly mired in the mud, and a distorted expression of pain, frustration, and rage is carved into his long, twisted face as he struggles to free himself. [paragraph break]It's remarkably well-done, the work of a master, even, but a thousand minute signs (and, indeed, the subject matter) tell you it wasn't left behind by a Wayfarer. It's good, but not enough.[paragraph break]Carved in the side of the sculpture is an [o]inscription[x]." The printed name of volcano sculpture is "abstract sculpture". Instead of touching the sculpture, say "Running your fingers over the rock, you feel how what would seem to a casual observer to be almost random blows with chisel, crude and cruel, must in fact have been carefully planned and executed for artistic effect. Whoever carved this piece knew what they were doing.". The dream-text of volcano sculpture is "countless copies of the abstract sculpture at the volcano".

The long inscription is a hint-based scrawl in Rim of Volcano with standard message "Poised on the brink, but never to fall: shadow of being, shade of shades...". The secret message is " oh, let my tumbling down reshape the hillsides.". 

The volcano sculpture can be stable, loosened, or precarious. The volcano sculpture is stable. Instead of attacking or pulling the volcano sculpture, try pushing the volcano sculpture. 
	
First report pushing the volcano sculpture:
	if the sculpture is precarious begin;
		say "With a final shove, the sculpture breaks free in a shower of earth from the edge of the volcano. You step back hastily as a chunk of the crater rim breaks away. The sculpture rolls noisily down the inside of the volcano wall, kicking up loose scree and then larger rocks, until a whole landslide is sliding down to the caldera floor below. [paragraph break]When the dust clears, you can see that the steam vents below have been largely covered by the landslide.";
		remove the sculpture from play;
		remove rotting timbers from play;
		now the system power is 30;
		if boiler handle is on-stage begin;
			now boiler handle is overloaded;
			now pressure of red pipe is target pressure of bridge pressure gauge;
			now pressure of blue pipe is target pressure of ropeway pressure gauge;
			now pressure of yellow pipe is target pressure of pyramid pressure gauge;
		end if;			
	otherwise if sculpture is loosened and player-loosened-it is false;
		say "The sculpture, in such a precarious spot to begin with, seems to have shifted in the earthquake; the dirt around its foundation is cracked and weakened. You push against it and with hardly any force it tips forward to a dangerous angle. One more push and it would probably go over the edge.";
		now the sculpture is precarious;
	otherwise if sculpture is loosened;
		say "Straining, you push against the sculpture again. It loosens even further in the muddy soil now, leaning at a dangerous angle. One more push and it would probably go over the edge.";
		now the sculpture is precarious;
	otherwise if didnt rain;
		say "You give the sculpture a good shove[if sculpture is loosened]. It gives a little[otherwise], but the ground at its base seems dry and firmly packed[end if].";
	otherwise;
		say "Trying to find a spot in the wet, slippery moss to brace yourself, you give the statue a solid shove. You can feel it give a little in the muddy ground, loosening its foundation in the earth.";
		now player-loosened-it is true;
		now the sculpture is loosened;
	end if;
	rule succeeds.

player-loosened-it is a truth state that varies. [The tsunami can make this happen for us, in which case we describe things a little differently.]




Part - The Volcano Floor Region

Chapter - The Chasm and Bridge

Section - The Chasm

The lava chasm is a backdrop. It is in Chasm Edge, Chasm Floor, and Jumble. The description is "Though not particularly large, the chasm is deep and wide enough to present a serious navigational problem. Sheer walls of sharp lava rock form the nearly vertical edges; the floor runs [if dir]northwest to southeast[otherwise]towards a jumble of collapsed lava rock in one direction or the volcano's interior in the other[end if]." Does the player mean climbing the lava chasm: it is likely. Instead of entering the lava chasm when location is Chasm Edge and Chasm Edge is westsided and bridge is raised, try entering chasm-ebridge. Instead of entering the lava chasm when location is Chasm Edge and Chasm Edge is eastsided and bridge is raised, try entering chasm-wbridge. Instead of entering the lava chasm when location is Chasm Edge and Chasm Edge is eastsided and bridge is lowered, try going down. Instead of entering the lava chasm when location is Chasm Edge, try going down. Instead of entering the lava chasm when location is Chasm Floor, try going up. Instead of climbing the lava chasm when location is Chasm Edge, try going down. Instead of climbing the lava chasm, try going up. Instead of entering the lava chasm when location is Chasm Floor and bridge is lowered, try going up. Instead of touching the lava chasm, say "The edges of the chasm are composed of sheer walls of razor-sharp lava rock." Instead of crossing lava chasm, try entering lava chasm. Understand "across" as northeast when location is Chasm Edge and Chasm Edge is westsided. Understand "across" as west when location is Chasm Edge and Chasm Edge is eastsided.

Understand "rockslide" as northeast when location is Chasm Edge. Understand "meadow" as west when location is Chasm Edge. Understand "edge" as east when location is Sloping Meadow. Understand "edge" as southwest when location is Rockslide. Understand "meadow" as east when location is Fork.

chasm-jump-try is a number that varies. chasm-jump-try is 0.  

Instead of leaping when location is chasm edge, try jumping.

Instead of jumping when location is Chasm Edge:
	if South Beach is unvisited or current episode is Word Day:
		say "It's probably a better idea to explore a little more before you go leaping off of things.";
	else if player is wounded:
		say "It would be too far to jump even if your leg was in perfect shape."; 
	else if the psyche of Progue is emotional or the psyche of Progue is fugue or the psyche of Progue is resolved or Tsunami Sequence is happening:
		say "Perhaps you once could have tried, but by now your body has grown so used to this chasm being impassable that you can't work up the nerve to do it.";
	else if an episode is playing:
		say "You can't work up the nerve just now.";
	else:
		increment chasm-jump-try by 1;
		if chasm-jump-try is 1:
			say "You eye the distance carefully but judge it to be too far. You could try with a running start, but the distance is vast, and the ground is far below.";
		otherwise if chasm-jump-try is 2:
			say "You take a few steps back and a deep breath, then sprint forward before you can think about what you're doing. You shove off the edge of the chasm as hard as you can, and for a brief moment you almost think-- but then you're falling, falling towards the lava rocks below...";
			begin Tending-to-Wounded-Player.

After going in Chasm Edge: now chasm-jump-try is 0; continue the action.


Section - The Bridge/Stairs


The bridge is a backdrop. It is in Chasm Edge and Chasm Floor. The description is "The [if bridge is lowered]stairs are[otherwise]bridge is[end if] made from a series of wooden planks held into shape by taut ropes at foot and hand height[if location is Chasm Edge and Chasm Edge is westsided and bridge is lowered]. They rise from the floor of the chasm below you to its far side, making them inaccessible from here[end if]." Understand "stairs/staircase/plank/planks" as the bridge. The bridge can be raised or lowered. The bridge is raised. Instead of pulling the bridge when the bridge is raised, say "The bridge is already raised." Instead of pushing the bridge when the bridge is lowered, say "The bridge (or staircase, now) is already down." Instead of pulling or pushing the bridge when location is Chasm Edge and Chasm Edge is westsided, say "You can't see any way to do that from here." The printed name of bridge is "plank [if bridge is raised]bridge[otherwise]staircase[end if]". Instead of entering or crossing the bridge, try entering the chasm. Does the player mean doing something to the bridge: it is likely. Instead of climbing the bridge, try entering the bridge. Instead of touching, pulling, taking, or pushing bridge: say "[if Chasm Edge is westsided and bridge is lowered]You can't reach it from here[otherwise]The planks that form it are held tight by guide ropes[end if].".

Instead of leaping bridge, try entering bridge. Check using bridge: try entering bridge instead.

The posts are a backdrop. They are in Chasm Edge and Chasm Floor. Understand "post" or "hole" or "holes" as posts. The description is "The two posts rise to about waist height. They seem featureless except for a pair of notched holes [if bridge is lowered]on either side[otherwise]which the bridge has snapped into[end if].".

Instead of climbing basic-walls when location is Chasm Edge or location is Chasm Floor: try entering the chasm. Instead of climbing crater proper: say "The walls of the volcano are too crumbly and unstable to climb.".

The bridge ropes are a backdrop. Understand "guide/rope/ropes/taut/handrail/handrails/rail/rails" as bridge ropes. They are in Chasm Edge and Chasm Floor. The description is "The ropes hold the structure together[if bridge has been raised], allow for it to transform between bridge and staircase,[end if] and provide handrails.". Instead of pulling, taking, touching or pushing the ropes, say "[if Chasm Edge is westsided and bridge is lowered and location is Chasm Edge]You can't reach them from here[otherwise]The ropes are held taut by some unseen mechanism[end if].". Instead of entering bridge ropes, try entering bridge. Instead of climbing bridge ropes, say "[if Chasm Edge is westsided and bridge is lowered and location is Chasm Edge]The ropes, like the stairs, run from the floor of the chasm to the opposite side; you can't reach them from here.[otherwise]Easier to just use the [bridgeorstairs].". To say bridgeorstairs: if bridge is lowered, say "stairs"; otherwise say "bridge".

Instead of going northeast when location is Chasm Edge, try entering chasm-ebridge. Instead of going west when location is Chasm Edge, try entering chasm-wbridge. Instead of going up when location is Chasm Floor, try entering chasm-stairs. Instead of going down when location is Chasm Edge, try entering chasm-stairs.

First Instead of entering chasm-stairs when location is Chasm Floor and bridge is raised: say "The wooden planks of the bridge are quite a ways above you, and the walls of the chasm are razor-sharp. You don't see any other way up." First Instead of entering  chasm-stairs when location is Chasm Edge and bridge is raised: say "The bridge currently leads across the chasm, the walls of which are too sharp to risk climbing." First instead of entering chasm-ebridge when location is Chasm Edge and Chasm Edge is westsided and bridge is lowered: say "The rough staircase rises from the chasm floor to its far side-- you see no way to access it from here." First Instead of entering chasm-wbridge when location is Chasm Edge and Chasm Edge is eastsided and bridge is lowered: say "The bridge is currently lowered, providing access to the chasm floor but none to its far side." First instead of entering chasm-stairs when location is Chasm Edge and bridge is lowered and Chasm Edge is westsided: say "The rough staircase rises from the chasm floor to its far side-- you see no way to access it from here, and the walls are razor-sharp." 

Check jumping when location is Chasm Floor and bridge is raised: say "You jump, hands stretched out above you, but you still can't reach the swaying planks of the bridge." instead.

Chasm Edge is either westsided or eastsided. Chasm Edge is westsided.

Before going from Sloping Meadow to Chasm Edge: now Chasm Edge is westsided; adjust chasm bridges; continue the action. Before going from Chasm Edge to Sloping Meadow: now cross-bridge-bit is true; now Chasm Edge is westsided; adjust chasm bridges; continue the action.

Before going from Rockslide to Chasm Edge: now Chasm Edge is eastsided; adjust chasm bridges; continue the action.

Before going from Chasm Floor to Chasm Edge: now Chasm Edge is eastsided; adjust chasm bridges; continue the action.  Before going to Chasm Floor: adjust chasm bridges; continue the action. Before going to Rockslide: adjust chasm bridges; continue the action. Before going to Sloping Meadow: adjust chasm bridges; continue the action. Before going from Chasm Edge to Rockslide when Chasm Edge is westsided: now cross-bridge-bit is true. cross-bridge-bit is a truth state that varies.

To adjust chasm bridges:
	if bridge is being debugged, say "// adjust chasm bridges.";
	if bridge is lowered and ( Chasm Edge is eastsided or location is regionally in Frozen Hell or location is regionally in Progue's Domain ) :
		now chasm-stairs is open;
	else:
		now chasm-stairs is closed;
	if bridge is lowered and Chasm Edge is westsided:
		now chasm-ebridge is closed;
	else:
		now chasm-ebridge is open;
	if bridge is lowered and Chasm Edge is eastsided:
		now chasm-wbridge is closed;
		now chasm-ebridge is open;
	else:
		now chasm-wbridge is open.	

Instead of entering chasm-wbridge when chasm-wbridge is closed: say "The stairs are lowered; you can't get to the west side of the chasm.". Instead of entering chasm-ebridge when chasm-ebridge is closed: say ""

Report going from Chasm Edge to Rockslide: say "You [if cross-bridge-bit is true]cross the plank bridge, using the vine handrails for support, and [end if]clamber up onto a field of shifting boulders kissed with green moss and cyan lichens, until you arrive at a viewpoint."; now cross-bridge-bit is false. Report going from Chasm Edge to Sloping Meadow: say "You [if cross-bridge-bit is true]cross over the plank bridge, using the vine handrails for support, and [end if]curve around the slope of the volcano to the grassy meadow[if a random chance of 2 in 3 succeeds][time-of-day-bit][end if]."; now cross-bridge-bit is false. Report going from Chasm Floor to Chasm Edge: say "You climb the steep plank steps, holding to the taut vine handrails for support, and finally step on to the mossy lava flow at the chasm edge." Report going from Chasm Edge to Chasm Floor: say "You hold the taut vine handrails carefully as you step down the steep plank steps to the smooth floor of the chasm beneath."

To decide whether bridge has power: if the pressure of the related pipe of the bridge pressure gauge is at least the target pressure of the bridge pressure gauge, decide yes; decide no.

Definition: a thing is farsided:
	if it is the bridge-control and Chasm Edge is westsided and location is Chasm Edge, decide yes;
	if it is the bridge outlet vent and Chasm Edge is westsided and location is Chasm Edge, decide yes;
	decide no.
	
First Instead of doing anything other than examining or examining by name to a farsided thing: 
	if bridge is raised begin;
		if Chasm Edge is westsided, now Chasm Edge is eastsided;
		otherwise now Chasm Edge is westsided;
		say "(first crossing the bridge)[command clarification break]";
		continue the action;
	otherwise;
		say "You can't reach that from this side of the chasm.";
	end if.

To say bridge state:
	if bridge is raised, say "[if location is Chasm Floor]Well above your head[otherwise]At your feet[end if], a plank [o]bridge[x] crosses the chasm";
	otherwise say "A plank [o]staircase[x] with vine handrails[if location is Chasm Floor] rises [up] from here to the chasm's east side[otherwise if Chasm Edge is eastsided] heads down to the floor of the chasm beneath you[otherwise], inaccessible from here, connects the far side of the chasm to its floor[end if]"; 
	let vol be pressure of the related pipe of the bridge pressure gauge;
	if vol > 0, say ", near [if vol > 20]a high-pressure pillar of steam rising[otherwise if vol > 15]gushing torrents of steam rising[otherwise if vol > 10]clouds of steam rising[otherwise if vol > 5]steam puffing[otherwise if vol > 0]tendrils of steam wafting[end if] from an outlet vent [if location is Chasm Floor]in the chasm wall above your head[else]in the ground[end if]";
	if location is Chasm Edge and Chasm Edge is eastsided begin; say ". A red [o]handle[x] extrudes from a smoothed tree trunk poking up from a hole in the ground";
	otherwise if location is Chasm Floor and Volcano Floor is visited [this is a bit of a cheat, but designed to keep the player from messing with the handle and ruining the red pipe reveal when the adjust the boiler] ; say ". Nearby, a [o]mechanism[x] is visible through a rough window in the chasm wall, connected to a red [o]pipe[x] snaking along the chasm floor, one of several";
	end if.

The distant-bridge is minor scenery in Volcano Floor with printed name "[if bridge is raised]bridge[else]staircase[end if] in the chasm". Understand "bridge/stairs/stair/staircase/plank" as distant-bridge. The description is "[if bridge is raised]The distant bridge spans the chasm[else]The distant stairs rise from the floor of the chasm to its eastern side[end if].". The provoke message is "You need to move back towards the [d]chasm[x] to be close enough to interact with it.". Check following distant-bridge: try following bridge instead.


Section - The Bridge Control

[A tree trunk accessible from both the east top and bottom of the chasm provides an explanation for how the power system works, and allows the player to control the bridge.]

Every turn: if bridge is being debugged, say "**h: [bridge-height of bridge-control] / [if bridge is raised]raised[else]lowered[end if] / [if bridge has power]powered[else]not powered[end if] / [if bridge-control is locked]locked[else]unlocked[end if] / Chasm Edge is [if Chasm Edge is eastsided]eastsided[else]westsided[end if]**".

The bridge-control is a setpiece in Chasm Edge. It has a number called bridge-height. The bridge-height of the bridge-control is -1. It is either locked or unlocked. It is locked. It can be lockable. It is lockable. The description is "[bridge-control-desc].". Understand "tree trunk" or "trunk" or "heavy" or "log" or "pole" or "handle/handles" or "mechanism" as bridge-control. The printed name is "heavy tree trunk". The dream-text of bridge-control is "logs with handles on either end". After going to Chasm Edge: move bridge-control to location; continue the action. After going to Chasm Floor: move bridge-control to location; continue the action. Check touching bridge-control: say "Just plain wood, painted red." instead. Check attacking bridge-control: say "It's solid, sturdy wood; you couldn't do much damage to it without an axe." instead. Instead of vague locking bridge-control, try turning bridge-control. Instead of vague unlocking bridge-control, try turning bridge-control. Instead of vague locking bridge: try turning bridge-control. Instead of vague unlocking bridge: try turning bridge-control.

To say bridge-control-desc:
	say "A heavy tree trunk [if bridge-control is unlocked and bridge has power and bridge-height of bridge-control > 0]rises[else if bridge-control is unlocked and bridge has power]sinks[else]sticks[end if] ";
	if location is Chasm Edge, say "[if bridge-control is unlocked and bridge has power and bridge-height of bridge-control > 0]up from[else if bridge-control is unlocked and bridge has power]down into[else]out of[end if] a hole in the ground near the edge";
	else say "[if bridge-control is unlocked and bridge has power and bridge-height of bridge-control > 0]up into[else if bridge-control is unlocked and bridge has power]down from[else]down from the top of[end if] a man-made hollow in the side of the chasm wall";
	say ". A [o]handle[x] [if location is Chasm Edge]at its top[else]protruding from the side[end if] looks designed to turn it; currently, the handle is [if bridge-control is locked]parallel to the chasm edge[otherwise]at right angles to the chasm edge[end if]";
	say ". Near the chasm is an outflow [o]vent[x][if the pressure of the related pipe of the bridge pressure gauge is 1 and bridge-control is unlocked], emitting nothing[otherwise if the bridge has power and bridge is unlocked], venting steam[end if][if puzzle mode], and a pressure [o]gauge[x][end if]".

Instead of turning bridge-control:
	say "[if bridge has power]You twist the handle and the trunk rotates easily[else]Your grasp the handles and strain, and the trunk slowly rotates[end if] until the handles are [if bridge-control is locked]parallel to the chasm edge[else]at right angles to the chasm edge[end if]. As you do, you feel something [if bridge-control is locked]scrape open[else]lock into place[end if]";
	if bridge-control is locked, now bridge-control is unlocked; else now bridge-control is locked;
	if bridge has power and bridge-control is unlocked, say ". The steam from the outflow vent [if pressure of the related pipe of the bridge pressure gauge is 1]stops flowing[else]decreases a little[end if] and the trunk starts moving";
	if bridge has power and bridge-control is locked, say ". The steam from the outflow vent [if pressure of the related pipe of the bridge pressure gauge is 1]starts wisping out again[else]increases a little[end if] and the trunk stops moving";
	say ".".

Instead of pushing bridge-control:
	if bridge is raised and Chasm Edge is westsided and location is Chasm Edge, say "(first crossing the bridge)[command clarification break]";
	if bridge is lowered and Chasm Edge is westsided, say "You can't reach it from this side of the chasm." instead;
	if bridge-control is locked, say "You push on the handle, but the log does not budge." instead;
	if bridge-height of bridge-control > 0, say "You push against the handle, managing to keep the log stationary for a moment, but pressure starts to build beneath you and finally you're forced to let it go." instead;
	if bridge-height of bridge-control is 0, say "The trunk has sunk almost to the level of the ground; you can't seem to push it any farther down." instead;
	say "You push down on the handle, but the trunk seems to be descending on a pillar of steam, and you can't appreciably make it move faster.".

Instead of pulling bridge-control:
	if bridge is raised and Chasm Edge is westsided and location is Chasm Edge, say "(first crossing the bridge)[command clarification break]";
	if bridge is lowered and Chasm Edge is westsided, say "You can't reach it from this side of the chasm." instead;
	if bridge-control is locked, say "You pull on the handle, but the log does not budge." instead;
	if bridge-height of bridge-control > 0, say "You pull against the handle, but the trunk seems to be rising on a pillar of steam, and you can't lift its massive bulk any faster." instead;
	if bridge-height of bridge-control is 0, say "You pull the handle, but nothing happens. Straining, you pull harder, and at the end of your strength feel the log lift up a tiny amount, but then collapse again when you loosen your grip. It feels as if you are pulling the full weight of the trunk." instead;
	say "You pull against the handle, but the weight of the trunk is just too great; it continues slowly descending on a bed of steam.".

Check taking bridge-control: say "The trunk seems to be attached to some apparatus buried in the ground." instead.
	
[The log sinks gently on a cushion of steam, even when the power's been disabled.]
Every turn when bridge-control is unlocked and bridge-height of bridge-control < 0:
	increase bridge-height of bridge-control by 1;
	if player is in Chasm Edge or player is in Chasm Floor, say "The tree [o]trunk[x] [if location is Chasm Edge and Chasm Edge is westsided]on the far side of the chasm[otherwise if location is Chasm Edge and Chasm Edge is eastsided]near your feet[otherwise if location is Chasm Floor]in the window[end if] [if bridge-height of bridge-control is -3]begins[otherwise]continues[end if] to sink[if bridge-height of bridge-control is 0], finally coming to a stop[grndbit] with a hiss of steam[end if].". To say grndbit: if location is Chasm Edge, say " at ground level".[aar]

[When there's power, the log slowly rises again after sinking.]
Every turn when bridge-control is unlocked and bridge-height of bridge-control > 0 and bridge has power and current episode is not Earthquake and current episode is not Water Works:
	increase bridge-height of bridge-control by 1;
	if player is in Chasm Edge or player is in Chasm Floor, say "The tree [o]trunk[x] [if location is Chasm Edge and Chasm Edge is westsided]on the far side of the chasm[otherwise if location is Chasm Edge and Chasm Edge is eastsided]near your feet[otherwise if location is Chasm Floor]in the window[end if] [if bridge-height of bridge-control is 2]begins[otherwise]continues[end if] to rise[if bridge-height of bridge-control is 5], finally coming to a stop[waistbit] with a hiss of steam[end if].". To say waistbit: if location is Chasm Edge, say " at waist-height".

[When the log has sunk completely, the bridge lowers.]
Every turn when bridge-height of bridge-control is 0 and bridge is raised and bridge-control is unlocked:
	if ambience_on is 1 and player is in Chasm Edge or player is in Chasm Floor or player is in Volcano Floor or player is in Sloping Meadow or player is in Rockslide, say "[if location is not Chasm Floor and location is not Chasm Edge]Off at the chasm you see the bridge lower[else]With creaking sighs, rope whirs through pulleys and the bridge lowers[end if] itself, until finally the last plank snaps into place[if location is Chasm Edge] at the bottom of the ravine[otherwise if location is Chasm Floor] at your feet[end if] and it has become a [o]staircase[x].";
	now the bridge is lowered;
	adjust chasm bridges;
	now bridge-height of bridge-control is 1.

[When the log has risen completely, the bridge rises.]
Every turn when bridge-height of bridge-control is at least 5 and bridge is lowered and bridge-control is unlocked:
	if ambience_on is 1 and player is in Chasm Edge or player is in Chasm Floor or player is in Volcano Floor or player is in Sloping Meadow or player is in Rockslide, say "[if location is not Chasm Floor and location is not Chasm Edge]Off by the chasm you see the staircase raise[else]With creaking sighs, rope whirs through pulleys and the staircase raises[end if] itself, until finally the last plank snaps into place[if location is Chasm Edge] across from you[otherwise if location is Chasm Floor] above your head[end if] and it has become a [o]bridge[x] across the chasm.";
	now the bridge is raised;
	adjust chasm bridges;
	now bridge-height of bridge-control is -4.

The bridge outlet vent is an outflow tube. The bridge outlet vent is part of the bridge-control. The related pipe of the bridge outlet vent is the red pipe.

The bridge pressure gauge is a pressure gauge. The bridge pressure gauge is part of the bridge-control. The target pressure is 1. The related pipe is the red pipe.


Chapter - The Boiler

The brick boiler is a setpiece in Volcano Floor. The description is "Made of wood, it's really just a squat, rectangular box, hot to the touch, directly above the sealed-off steam vent. Three bamboo [o]pipes[x] stick out of one side, snaking their way back down the floor of the [dr]chasm[x][if dir] to the [northwest][end if][bb2].". To say bb2: say "[if puzzle mode], and where each exits the boiler is a small wooden [o]wheel[x]. Each pipe and wheel set is coated with a layer of matching dry, flaking paint: red, blue, and yellow[otherwise]; red, blue, and yellow, they are topped by a wooden [o]handle[x] currently [bh-desc][end if]. Finally, a vertical "; say "[o]tube[x][state of current outflow] is joined to the top of the wood structure via a strange quartz [o][boiler pressure gauge][x].[paragraph break]Painted onto the side of the boiler is a short [o]message[x]". Instead of attacking brick boiler: say "The brick construction is quite sturdy, and you see no way to damage it without tools.". Instead of touching brick boiler: say "The bricks are searing hot to the touch.". The dream-text of brick boiler is "steaming bricks".

The boiler-message is a hint-based scrawl in Volcano Floor with standard message "As long as west chasm stays blocked, should be sufficient power for all." and secret message " could always cause rockslide on western slope to divert more steam". Understand "message" as boiler-message. The printed name is "the message on the boiler".

The system power is a number that varies. The system power is 24. [ Covering the other vent will raise this to 30. ]

The boiler pressure gauge is part of the boiler. Understand "quartz" or "cylinder" or "curious" as the boiler pressure gauge. It is a closed unopenable transparent container. The description is "Only about as tall as your hand, this hollow cylinder seems to have been meticulously carved from a solid piece of quartz, allowing you to see through to the inside. It connects the [o]boiler[x] to an outflow [o]tube[x]. [if current outflow >= 7 and current outflow <= 30]Torrents of steam rush upwards through roiling[otherwise if current outflow >= 1 and current outflow <= 6]Steam bubbles up through boiling[otherwise]All you can see is a tiny pool of standing[end if] water inside the pipe. A series of delicate vertical rings are etched into the quartz, numbered from zero to thirty. 

The [if current outflow is greater than 7]water dances around the number[otherwise]water level is at the number[end if] [current outflow in words]." Does the player mean doing something to the boiler pressure gauge: it is unlikely. [keeps "boiler" from referring to this.] The printed name of boiler pressure gauge is "gauge". 

The boiler outlet is an outflow tube. The boiler outlet is part of the boiler. 

Section - Boiler Pipes

The red pipe is a pipe. It is in Volcano Floor and Chasm Floor. The pressure of the red pipe is 0.

The blue pipe is a pipe. It is in Volcano Floor, Chasm Floor, Jumble, Stumps, and Chairlift Base. The pressure of the blue pipe is 0.

The yellow pipe is a pipe. It is in Volcano Floor, Chasm Floor, Chasm Edge, Edge of Ravine, Ravine Floor, and Observatory Exterior. The pressure of the yellow pipe is 22. 

Noticing-The-Pipe-Crack is a scene. Noticing-The-Pipe-Crack begins when location is Stumps and pressure of the blue pipe > 0 and puzzle mode and we-are-landmark-going is true. Noticing-The-Pipe-Crack ends when Noticing-The-Pipe-Crack begins. When Noticing-The-Pipe-Crack begins: tidy landmark-go; clean up landmark-go. [Since players tend to miss this clue, we'll stop them if they're landmark-going past it.]

First report examining a pipe (called item):
	if item is blue pipe, say "[bluepipedetailmsg].";
	if item is yellow pipe, say "[yellowpipedetailmsg].";
	if item is red pipe, say "[redpipedetailmsg].".

To say bluepipedetailmsg: [Should end without periods because "first report examining a pipe" prints them.]
	if location is Stumps begin;
		if the pressure of the blue pipe is at least 1 and puzzle mode begin;
			say "Underneath the line of moss is an overgrown bamboo pipe half-buried in the ground, flecks of blue paint still clinging to it, coming from the [dr]shack[x] but disappearing into the jumbled lava rock [up] the rise. The steam seems to be venting from a small crack that runs almost an entire body length through this section of the pipe";
			move pipe crack to Stumps;
		otherwise; say "A line of moss, barely noticeable unless you look for it, reveals where the half-buried blue pipe runs between the stumps, coming from the [dr]shack[x] but disappearing into the jumbled lava rock [up] the rise";
		end if;
	otherwise;
		if location is Chasm Floor, say "The blue pipe follows the chasm from the volcano [dr]caldera[x] and vanishes into the [dr]jumble[x] of rocks at its far end";
		if location is Chairlift Base, say "The blue pipe, arriving from the direction of the [dr]stumps[x], emerges from the ground running parallel to it, then twists up ninety degrees at the shack and connects to the ropeway mechanism[if puzzle mode] via a transparent quartz [o]gauge[x][end if]";
		if location is Volcano Floor, say "The blue pipe snakes off from the boiler towards the [dr]chasm[x]";
		if location is Jumble, say "The blue pipe comes from the more open [dr]terrain[x] near the stairs and vanishes into a confusion of boulders";
	end if.

The pipe crack is a set dressing. Understand "small" as pipe crack. The description is "It looks as if some past impact smashed into the pipe at this exposed spot, sending a long crack down in either direction from the point of impact.". Understand "fix [pipe crack]" or "repair [pipe crack]" or "fix [blue pipe]" or "repair [blue pipe]" as a mistake ("You can't see any way to do so. The high-pressure steam would just burrow straight through any soil you dumped on it, and there isn't even much of that to go around near here."). Instead of attacking the blue pipe, say "That would just make things worse.". Instead of attacking the pipe crack, try attacking the blue pipe.
	
To say redpipedetailmsg:
	if location is Volcano Floor, say "The red pipe snakes off from the boiler towards the [dr]chasm[x]";
	otherwise say "The red pipe comes in from the volcano [dr]caldera[x], bends up to follow the wall, and then disappears into the rock by the mechanism[if puzzle mode]. [gauge-description] marks the join[end if]".
	
To say yellowpipedetailmsg:
	if location is Volcano Floor, say "The yellow pipe snakes off from the boiler towards the [dr]chasm[x]";
	if location is Chasm Floor, say "The yellow pipe arrives from the volcano [dr]caldera[x], then turns ninety degrees and heads straight [up] the side of the ravine, vanishing over the [if dir]eastern [end if]edge";
	if location is Chasm Edge, say "The yellow pipe comes from [down] inside the ravine and vanishes into a cliff near the base of the rockslide";
	if location is Edge of Ravine, say "The yellow pipe emerges from the ground some ways back towards the beehive, then follows the edge of the cliff and plunges straight [down] the side of the ravine";
	if location is Ravine Floor, say "The yellow pipe comes from [up] above, crosses the ravine at about the height of the seventh rung, and then starts running up the side of the mountain, eventually vanishing into a crack";
	if location is Observatory Exterior, say "The yellow pipe snakes up over the side of the mountain and runs into the ground near the [if pyramid is in Observatory Exterior]pyramid[otherwise]chair[end if][if puzzle mode]. Some [o]words[x] are scrawled on its side[end if]".
	
Instead of touching a pipe, say "The [noun] is [if pressure of the noun > 10]scalding hot to the touch and vibrating slightly[otherwise if pressure of the noun > 4]hot to the touch[otherwise if pressure of the noun > 0]warm to the touch[otherwise]cool to the touch[end if]." Instead of listening to a pipe, say "[The noun] [if pressure of the noun > 10]emits an audible roar of white noise[otherwise if pressure of the noun > 4]makes a faint whooshing noise if you put your ear near it[otherwise]is silent[end if]." Instead of taking a pipe: say "The pipe runs parallel to the ground and is embedded into it; you can't pick it up. "; try touching noun.


Section - Boiler Handle (Story Mode)

The boiler handle is a setpiece. [This only exists if we are in story mode; its a simplification of the system. Rather than having to give each element the correct amount of power, we just turn the handle towards the system we want to power.] The boiler handle has a pipe called pipe-position. The pipe-position of the boiler handle is the yellow pipe. The boiler handle can be functional or overloaded. The boiler handle is functional. The description of boiler handle is "It's a rounded length of wood that [if functional]can be turned to point to any of the three pipes, red, yellow, or blue[otherwise]could once be turned to point at any of the three pipes, but now just flops, uselessly[end if].". To say bh-desc: say "[if boiler handle is functional]turned to the [pipe-position of boiler handle][otherwise]tilted at an odd angle; all three pipes are now steaming hot to the touch and hissing[end if]".

Instead of pushing or turning the boiler handle when boiler handle is functional: 
	now saved-pyramid-power is pressure of yellow pipe;
	now saved-bridge-power is pressure of red pipe;
	now pressure of blue pipe is 0;
	now pressure of red pipe is 0;
	now pressure of yellow pipe is 0;
	if pipe-position of boiler handle is yellow pipe begin;
		now pipe-position of boiler handle is red pipe;
		now pressure of red pipe is target pressure of bridge pressure gauge;
	otherwise if pipe-position of boiler handle is red pipe;
		now pipe-position of boiler handle is blue pipe;
		now pressure of blue pipe is target pressure of ropeway pressure gauge;
	otherwise if pipe-position of boiler handle is blue pipe;
		now pipe-position of boiler handle is yellow pipe;
		now pressure of yellow pipe is target pressure of pyramid pressure gauge;
	end if;
	say "You turn the handle so it points towards the [pipe-position of boiler handle].[paragraph break]The pipes groan, and the outflow [o]tube[x] changes[state of current outflow].";
	if the psyche of Progue is resolved or Progue is dead, pipechangeending;
	say pyramidupdate;
	say bridgeupdate.

Instead of pushing or turning the boiler handle: say "Some great pressure seems to have broken something loose underneath the handle; it just turns freely now, without feeling as if it's connected to anything, letting steam flow fully into all three pipes.".

Section - Boiler Wheels (Puzzle Mode)

A wheel is a kind of setpiece. Understand "wheel/wheels" or "number" as a wheel. The description of a wheel is usually "The [noun], marked by now-flaking gritty paint, is exquisitely carved and smoothed from some local wood. Between it and the corresponding pipe, scratched into the wood, [if noun is red wheel]is a single horizontal line[otherwise if noun is blue wheel]are four horizontal lines[otherwise]are twenty-two tiny horizontal lines[end if].". The red wheel is a wheel in Volcano Floor. The blue wheel is a wheel in Volcano Floor. The yellow wheel is a wheel in Volcano Floor. Instead of pushing a wheel, try turning noun. Does the player mean turning a wheel: it is likely. Does the player mean examining a pipe when location is Volcano Floor: it is unlikely. Understand "b" as blue wheel when location is Volcano Floor. Understand "r" as red wheel when location is Volcano Floor. Understand "y" as yellow wheel when location is Volcano Floor. Understand "w" as a wheel when location is Volcano Floor. Does the player mean adjusting a wheel: it is very likely. Instead of adjusting the red pipe when location is Volcano Floor: try adjusting the red wheel. Instead of adjusting the yellow pipe when location is Volcano Floor: try adjusting the yellow wheel. Instead of adjusting the blue pipe when location is Volcano Floor: try adjusting the blue wheel.

Instead of turning a wheel: say "It looks like you can turn it either left or right, and multiple revolutions in either direction.

[as the parser]You can type TURN RED WHEEL 3 RIGHT, for example. For convenience, you could abbreviate this to T RED 3 R[as normal].".

left is a thing. right is a thing. Understand "l" as left. Understand "r" as right.

Adjusting is an action applying to one thing and one topic. Understand "turn [something] [text]" as adjusting when location is Volcano Floor. Understand "t [something] [text]" as adjusting when location is Volcano Floor. Does the player mean adjusting a wheel: it is very likely.

The third noun is a thing which varies. Blankblank is a thing. The num noun is a number that varies.

Check adjusting:
	let temp be the noun;
	change the num noun to -1;
	if the topic understood includes "[number]" begin; change the num noun to the number understood; end if;
	if the player's command includes "hleft/l" begin; change the third noun to left; end if;
	if the player's command includes "hright/r" begin; change the third noun to right; end if;
	if third noun is not left and third noun is not right begin; say "(left)[line break]"; change the third noun to left; end if;
	if num noun is -1, now num noun is 1;
	change the noun to temp.

To say absolute value of (xnum - a number):
	if xnum < 0, now xnum is xnum * -1;
	say "[xnum in words]".
	
Check adjusting:
	if noun is not a wheel, try turning noun instead.
[	if the second noun is not a number or the third noun is not a handedness, try turning noun instead;]
[	if the second noun is not a number, try turning noun instead;]

To say boilerupdate:
	say ".[paragraph break]You glance at the tube[state of current outflow] now";
	if saved-pyramid-power is 0 and pressure of the yellow pipe > 0, say ". The yellow pipe hisses and begins to heat up";
	if saved-pyramid-power > 0 and pressure of the yellow pipe is 0, say ". The yellow pipe ticks and pops as it starts cooling down";
	if saved-ropeway-power is 0 and pressure of the blue pipe > 0, say ". The blue pipe hisses and begins to heat up";
	if saved-ropeway-power > 0 and pressure of the blue pipe is 0, say ". The blue pipe ticks and pops as it starts cooling down";
	if saved-stairs-power is 0 and pressure of the red pipe > 0, say ". The red pipe hisses and begins to heat up";
	if saved-stairs-power > 0 and pressure of the red pipe is 0, say ". The red pipe ticks and pops as it starts cooling down".


Carry out adjusting:
	now saved-pyramid-power is pressure of yellow pipe;
	now saved-ropeway-power is pressure of blue pipe;
	now saved-bridge-power is pressure of red pipe;
	now saved-stairs-power is pressure of red pipe;
	let rotations be num noun;
	if rotations is 0, try touching the noun instead;
	if third noun is left, now rotations is rotations * -1;
	[say "r: [rotations]";]
	if noun is red wheel, let recipient be red pipe;
	if noun is blue wheel, let recipient be blue pipe;
	if noun is yellow wheel, let recipient be yellow pipe;
	[say "***pressure of recipient: [pressure of recipient], current outflow: [current outflow]***"; ]
	if pressure of recipient + rotations < 0: [too far]
		if pressure of recipient is 0, say "You can't seem to turn [the noun] any farther to the left";
		otherwise say "As you turn the [the noun], the volume of steam from the outflow [o]tube[x] steadily increases. However, you only manage to turn it [pressure of recipient in words] time[s] to the left before it will no longer go any farther";
		now pressure of recipient is 0;
	else if pressure of recipient + rotations is 0: [exactly 0]
		say "As you turn the [the noun], the volume of steam from the outflow [o]tube[x] steadily increases. At the end of your last turn is a firm resistance";
		now pressure of recipient is 0;
	else if current outflow - rotations < 0: [using more power than avail.]
		if current outflow is 0, say "Attempts to turn [the noun] farther right produce only a loose, wobbly feeling, as if it's no longer catching on anything";
		otherwise say "You turn [the noun] to the right, causing the volume of steam from the outflow [o]tube[x] to steadily decrease, but after [current outflow in words] revolution[s] the wheel becomes loose and wobbly, as if it's no longer catching on anything";
		now pressure of recipient is pressure of recipient + current outflow;
	else if current outflow - rotations is 0: [exactly everything]
		say "You turn [the noun] [current outflow in words] time[s] to the right. As you stop, the last wisp of steam vanishes from the outflow [o]tube[x] above you";
		now pressure of recipient is pressure of recipient + current outflow;
	else: [ not hitting any boundaries ]
		say "You turn [the noun] [absolute value of rotations] time[s] to the [third noun]. As you do so, the water level inside the [o]gauge[x] slowly [if rotations > 0]drops[otherwise]rises[end if]";
		if current outflow > 0, say " and the steam venting from the outflow [o]tube[x] above you [if rotations > 0]decreases in quantity and pressure[otherwise]increases in volume and speed[end if]";
		otherwise say ", and steam begins to flow from the outflow [o]tube[x] above you";
		now pressure of recipient is pressure of recipient + rotations;
	say "[boilerupdate].";
	if the psyche of Progue is resolved or Progue is dead, pipechangeending;
	say pyramidupdate;
	say bridgeupdate;
	if brick boiler is being debugged, say powersystemstatus.

Does the player mean object-debugging the brick boiler: it is very likely. Instead of object-debugging a pipe, try object-debugging the brick boiler. Instead of object-debugging a wheel, try object-debugging the brick boiler. Instead of object-debugging a pressure gauge, try object-debugging the brick boiler.

Check adjusting when the brick boiler is being debugged: say "[powersystemstatus]"; continue the action. 

To say powersystemstatus: say "// Power system: Blue pipe (ropeway) at [pressure of blue pipe] of [target pressure of ropeway pressure gauge]; Red pipe (bridge) at [pressure of red pipe] of [target pressure of bridge pressure gauge]; Yellow pipe (pyramid) at [pressure of yellow pipe] of [target pressure of pyramid pressure gauge]; Total boiler output at [system power - current outflow] of [system power].". 

To decide what number is the current outflow: [say "([system power]-[pressure of red pipe]r-[pressure of blue pipe]b-[pressure of yellow pipe]y)";] let val1 be system power - pressure of red pipe; let val2 be val1 - pressure of blue pipe; let val3 be val2 - pressure of yellow pipe; decide on val3. 
	
Check pipesetting: if second noun is not a pipe, say "You can only turn it to point to one of the three pipes: red, yellow, and blue." Carry out pipesetting: if second noun is red pipe, now pipe-position of boiler handle is yellow pipe; if second noun is yellow pipe, now pipe-position of boiler handle is blue pipe; if second noun is blue pipe, now pipe-position of boiler handle is red pipe; try pushing boiler handle. Understand "turn [boiler handle] to [a pipe]" or "set [boiler handle] to [a pipe]" as pipesetting. Pipesetting is an action applying to two things. 
						

Section - Boiler Feedback

To say bridgeupdate:
	if saved-bridge-power is 0 and pressure of red pipe > 0 and Rockslide is unvisited, say "[line break]By the chasm, the [if bridge is raised]bridge[else]staircase[end if] shudders once, then subsides.".

saved-pyramid-power is a number that varies. saved-ropeway-power is a number that varies. saved-stairs-power is a number that varies. saved-bridge-power is a number that varies. s-m-pyr-test is a truth state that varies.

To say pyramidupdate:
	if story mode and s-m-pyr-test is false and pressure of red pipe > 0: [To simplify the discovery process in story mode, we pretend the bridge has been "jammed" and the first time power is sent to it, it unlocks and falls. This explains how it can have been up, not falling, and unlocked, a state it normally can't be in.]
		now s-m-pyr-test is true;
		now bridge-control is unlocked;
	let yP be pressure of the yellow pipe;
	let tP be target pressure of the pyramid pressure gauge;
	let sP be saved-pyramid-power;
	if sP is 0 and yP is at least tP: [none to full]
		say "[line break]A deep, subsonic rumbling booms through the ground, resolving into a steady, faint thrum. From atop the distant mountain[mtnex], the [o][distant-pyramid][x] lights up with a [if night]brilliant[else]faint[end if] ruby glow that spills from its seams, sending a faint pink beam straight up into the sky[one of], as if given off by something inside[or][stopping][if night], lighting up the distant mountain summit[end if].";
	else if sP is 0 and yP is at least 1: [none to some]
		say "[line break]From atop the distant mountain[mtnex], the [o][distant-pyramid][x] begins to slowly pulse with a reddish glow, cycling gradually from dimness to full strength[if night], like a beacon in the darkness[end if].";
	else if sP is at least tP and yP is at least 1 and yP is less than tP: [full to some] 
		say "[line break]Some subsonic thrumming beneath your feet you'd hardly been aware of dies away. On the distant mountain[mtnex], the [o][distant-pyramid][x] loses its ruby glow, and instead starts cycling gradually from dimness to crimson and back again.";
	else if sP is at least tP and yP is 0: [full to none]
		say "[line break]Some subsonic thrumming beneath your feet you'd hardly been aware of dies away. On the distant mountain[mtnex], the [o][distant-pyramid][x] loses its ruby glow, which fades away along with the noise completely.";
	else if sP is at least 1 and sP is less than tP and yP is at least tP: [some to full]
		say "[line break]A faint subsonic thrumming ripples through the ground. On the distant mountain[mtnex], the pulsing light coming from the [o][distant-pyramid][x]'s seams suddenly brightens to a [if night]brilliant[else]strong[end if] and constant ruby glow[if night], and a faint pink beam points upward from it into the sky[end if].";
	else if sP is at least 1 and yP is 0: [some to none]
		say "[line break]On the distant mountain[mtnex], the cycling glow from the seams of the [o][distant-pyramid][x] dies away completely.".
	
To say mtnex: say "[one of], whose top you can just see poking above the jumbled end of the chasm[or], whose top pokes above the jumble[or][stopping]".

To say state of (outf - a number): 
	if outf is 0, say ", its outlet vent emitting nothing";
	if outf >= 1 and outf <= 3, say ", venting faint wisps of steam";
	if outf >= 4 and outf <= 7, say ", trickling steady tendrils of steam";
	if outf >= 8 and outf <= 11, say ", emitting clouds of steam";
	if outf >= 12 and outf <= 15, say ", billowing out fast-moving clouds of steam";
	if outf >= 16 and outf <= 19, say ", surging with clouds of expanding steam";	
	if outf >= 20 and outf <= 23, say ", gushing a huge torrent of steam";
	if outf >= 24 and outf <= 27, say ", exploding with a solid column of steam that surges high into the sky";
	if outf >= 28 and outf <= 30, say ", whistling like a kettle and exploding with a solid column of steam that surges high into the sky".
	

Chapter - Jumble

The prose name of Jumble is "the jumble of lava rock". Understand "jumble" as northwest when location is Chasm Floor. The description of Jumble is "[jumbledesc].". To say jumbledesc:
	if night begin; say "It is pitch black.[paragraph break]";
	otherwise;
		say "You stand amidst a confusing jumble of black lava boulders, almost a cave. [if dawn or twilight or sunrise or sunset]Only the faintest light filters down from the jagged crack of sky visible above[otherwise if morning or evening]Light hits the side of the fissure, painting the confusion of rockfall in refracted, fuzzy hues[otherwise if midmorning or afternoon]Light creeps down one side of the fissure, causing an almost painful contrast between the sunlit tips of rock and the shadowed rubble beneath them[otherwise]The sun bridges the jagged crack of sky above, illuminating the bottom of the crack with harsh midday light[end if].[paragraph break]";
	end if;
	say "[exits]"

Check going up when location is regionally in Frozen Hell and location is not Chasm Floor: try climbing basic-walls instead.

The exits text of Jumble is "[jumble_door], while more open [dr]terrain[x][if dir] [southeast][end if] is reachable once you disentangle yourself from the boulders here". Understand "terrain" as southeast when location is Jumble. Understand "room" as lava tunnel door.

To say jumble_door: if lava tunnel door is open, say "An open [d]door[x] covered with cogs and [o]gears[x] leads [if dir][west][otherwise]to the back room of the cabin"; otherwise say "A boarded-over crack in the lava surrounds a closed [o]door[x][if dir] [west][end if] covered with cogs and [o]gears[x]". Understand "shack" as west when location is Jumble. Does the player mean opening a direction: it is very unlikely. Does the player mean closing a direction: it is very unlikely.

The clockwork gears are a setpiece in Jumble. Understand "cogs" or "mechanism" or "relay" or "key" or "notched" or "catch" or "counterweight" as gears. The description is "Studying the mechanism closer in the dim light, you can see how each button is connected to a relay which advances a long narrow key along a notched path, the correct sequence finally tripping a catch which releases the [o]lever[x] and swings a counterweight free. The craftsmanship is very fine."

The lava lever is a setpiece in Jumble. The description is "The lever is connected to a counterweight; pulling it will cause the weight to drop and the door to swing open." Instead of pulling the lever when the lava tunnel door is open, say "The lever is already extended to its full length." Instead of pulling the lever: try opening the lava tunnel door. After opening the lava tunnel door when location is Jumble: say "You pull the lever, which chunks a bolt out of place and releases a counterweight that swings the heavy door slowly open.". After closing the lava tunnel door: say "[if location is Jumble]You push against the heavy door. As it becomes flush with the wall, the lever is pushed back against its surface and the counterweight is raised, until both are locked in place with a tiny clunk[otherwise]You pull heavily on the handle and the door swings to. As it becomes flush with the wall, you feel something clunk fully into place behind it and the door is again closed and locked[end if].".
	
Report going from Jumble to Chasm Floor: say "Picking your way carefully through the sharp and unstable lava rock, the ceiling gradually opens up above you, until you emerge into the bottom of an open chasm leading straight into the volcano." Report going from Jumble to Back Room: say "You step through the door into the interior of the cabin."


Chapter - Chasm Floor

Understand "caldera" as southeast when location is Chasm Floor. Understand "chasm" as northwest when location is Volcano Floor. Chasm Floor is a room. "[if dawn or sunrise or morning]Tendrils of mist swirl lazily above the hardened surface of the lava flow beneath your feet[otherwise if evening or sunset or twilight]Shadows swallow the hardened black lava flow beneath your feet, and you catch your toe on the odd protrusion made nearly invisible in the refracted light[otherwise if night]The black lava flow beneath your feet is nearly invisible under the stars[otherwise]Hardened black lava swirls like waves caught mid-surge beneath your feet[end if][if midday or midmorning], reflecting the blue sky above with buffed black highlights[otherwise if afternoon], radiating heat but not light with a near-physical presence[end if].[paragraph break][bridge state].[paragraph break][exits].". The prose name of Chasm Floor is "the floor of the chasm". 

The exits text of Chasm Floor is "The frozen river winds through a twisted mass of collapsed rockfall, widening [if dir]to the [southeast] [end if]as it approaches the volcano's riven [dr]caldera[x]. [etcmf2]". To say etcmf2: say "[if dir]To the [northwest][otherwise]In the opposite direction[end if] it disappears into a [dr]jumble[x] of cracks and collapsed rockfall[if we are requesting the exits text and bridge is lowered]. A plank staircase rises [up] the side of the chasm[end if]".

Report going from Chasm Floor to Volcano Floor: say "You hike along the steadily widening chasm, past huge fallen boulders and sheets of rock, until you enter the floor of the volcano itself." Report going from Chasm Floor to Jumble: say "You walk back into the crowded cluster of boulders, a labyrinth of broken boulders and lava rock, finally coming to the niche outside the door."

Chasmfloor-stuff is stuff in Chasm Floor. Understand "tendrils/surface/protrusion/waves/highlights/frozen/river/rockfall" as chasmfloor-stuff when location is Chasm Floor.

Chapter - Chasm Edge

The prose name of Chasm Edge is "the edge of the chasm". The description of Chasm Edge is "[chasmedgedesc].". To say chasmedgedesc:
	if longform begin; say "You are standing on [if dir and Chasm Edge is eastsided]the east[otherwise if dir and Chasm Edge is westsided]the west[otherwise]one[end if] side of a large lava [o]chasm[x]. To [if former location is Sloping Meadow]your right[otherwise if former location is Rockslide]your left[otherwise]one side[end if], the chasm widens and merges with the shattered caldera of the [o]volcano[x], while opposite it disappears into a collapsed jumble of rockfall[if Chasm Edge is eastsided]. Across the chasm is a meadow on the slopes of the volcano[end if][dot]";
	otherwise if dawn or twilight; say "The black floor of the [o]chasm[x] below is indistinct in the [if dawn]early[otherwise]darkling[end if] light[dot]"; 
	otherwise if morning; say "A few birds flit warily over the dark interior of the [o]chasm[x], still in shadow[dot]";
	otherwise if midmorning; say "The late morning sun slants lazily over the rippled lava, lighting up [if Chasm Edge is eastsided]the far[otherwise]this[end if] wall of the [o]chasm[x][dot]";
	otherwise if midday; say "The [o]chasm[x] looks less deep in the midday light, which shines down on the black lava rock of its uneven floor[dot]";
	otherwise if afternoon or evening or sunset; say "Radiated heat rises from the black lava [o]chasm[x], hot after a day's soak in the tropical sun[dot]";
	otherwise if night; say "You step cautiously near the edge of the [o]chasm[x], though even in the faint light you make out the knife edge of the dropoff, black on black[dot]";
	end if;
	say "[bridge state].[paragraph break][exits]". 

The exits text of Chasm Edge is "From this side of the chasm, [thissidebit][if bridge is lowered and Chasm Edge is eastsided], or take the stairs [down] into the chasm[otherwise if bridge is raised][bridgeraisedbit][end if]". To say thissidebit: if Chasm Edge is westsided and dir begin; say "the sloping meadow stretches [bw of Sloping Meadow]off to the [west]"; otherwise if Chasm Edge is westsided and not dir; say "the sloping [d]meadow[x] stretches [bw of Sloping Meadow]towards the forest"; otherwise if Chasm Edge is eastsided and dir; say "you can make your way [bw of Rockslide]towards [if Rockslide is visited]the[else]a[end if] rockslide to the [northeast]"; otherwise; say "you can scramble [bw of Rockslide]up towards [if Rockslide is visited]the[else]a[end if] [d]rockslide[x]"; end if. To say bridgeraisedbit: if Chasm Edge is westsided begin; say ", or cross the bridge [bw of Rockslide]towards [if Rockslide is visited]the[else]a[end if] [dr]rockslide[x][if dir] to the [northeast][end if]"; otherwise; say ", or cross the bridge and head [bw of Sloping Meadow]to the [dr]meadow[x][if dir] to the [west][end if]"; end if.

ChasmEdge-stuff is stuff in Chasm Edge. Understand "jumble/rockfall/caldera" as ChasmEdge-stuff when location is Chasm Edge.


Chapter - Volcano Floor


Understand "cone" as southeast when location is Volcano Floor. The prose name of Volcano Floor is "the floor of the volcano". The description of Volcano Floor is "[volcanofloordesc].". To say volcanofloordesc:
	if night, say "A circle of stars above your head marks the rim of the volcano as you look up from inside. [if moonup]Moonlight illuminates an unearthly landscape of steam vents and lava, but most details[otherwise]Details of the volcano floor[end if] are swallowed up by the blackness; all you are sure of is the path back to the [dr]chasm[x][if dir] [northwest][end if]";
	otherwise say "[if midmorning]Sunlight streams over the wall of the crater, rising[otherwise if afternoon and not raining]The sun hovers just above the crater wall, which rises[otherwise]The crater walls rise[end if] all around, but here you stand at the epicenter of some awesome past eruption. The explosion shattered this side of the volcano, sending lava coursing through the chasm[descVolFloor2]". To say descVolFloor2: say " towards the beach and leaving the ground a jumbled mess of [o]cracks[x] and holes, many of which still vent steam. [paragraph break]Nearby[state of current outflow], a wooden [o]boiler[x] straddles a boarded-over vent in the lava, connected to a network of bamboo [o]pipes[x].[paragraph break][exits]". 

VolcanoFloor-stuff is stuff in Volcano Floor. Understand "circle/rim/unearthly/landscape/details/blackness/epicenter/eruption/explosion/side" as VolcanoFloor-stuff when location is Volcano Floor. 
	
The exits text of Volcano Floor is "The [dr]chasm[x][if dir] [northwest][end if] leaves the caldera; notable features within it across the black plain[if dawn or sunrise or morning], still cool in the morning shade,[otherwise if midday or afternoon], reflecting waves of heat,[otherwise if evening or sunset or twilight], still radiating heat,[end if] are [if volcano sculpture is on-stage]a particularly dense [dr]cluster[x] of steam vents[otherwise]a recent [dr]landslide[x][end if][vfex2]". To say vfex2: say "[if dir] [southwest][end if][if sunrise or morning] under a rocky bluff lit up by the rising sun[otherwise if afternoon or evening or sunset], hidden in the shadow of the crater wall,[end if] and a small cinder [dr]cone[x][if dir] [southeast][end if][if evening or sunset] underneath one brightly lit rim of the volcano[otherwise if sunrise or morning or midmorning], hidden in the shadow of the crater wall[end if]". The printed name of Volcano Floor is "Inside the Caldera, At the Collapse". Understand "landslide" or "cluster" as southwest when location is Volcano Floor.

Report going northwest from Volcano Floor: say "You pass out of the caldera and pick your way down into the badlands of the chasm." Report going southeast from Volcano Floor: say "You follow the edge of the caldera wall clockwise, working your way around towards the cinder cone until you stand at its base." Report going southwest from Volcano Floor: say "You walk around the edge of the caldera [if dir]towards the [west] side[otherwise]counterclockwise[end if]"; if volcano sculpture is off-stage, say " towards the new landslide."; otherwise say ", aiming for a point under [if Rim of Volcano is visited]the abstract sculpture[otherwise]something shiny and pointed[end if] on the volcano's rim. You pass more and more steam vents, until you finally arrive in the middle of a dense cluster of them.". 

Some shallow puddles are described set dressing. The initial appearance is "Some shallow puddles of seawater still bake here and there across the caldera floor, remnants of the tsunami's flooding.". The description is "The puddles are hot to the touch and are quickly evaporating in the heat of the sun.". Instead of touching shallow puddles, say "The water is hot.". Instead of tasting shallow puddles, say "Salty.".

A jumbled mess of cracks is a setpiece in Volcano Floor. Understand "hole/holes/crack" as jumbled mess when location is Volcano Floor. The description of mess is "The ground has the strange, uneven look of land that was liquid not so long ago-- years? centuries? eons? Tiny puffs of steam rise here and there, though without nearly the ferocity of the [dr]cluster[x] of vents across the caldera floor." Instead of leaping jumbled mess of cracks, say "Not unless you'd like to be boiled alive.".

The boarded over steam vent is a setpiece in Volcano Floor. Understand "boarded-over" or "sealed-off" or "sealed" as the boarded over steam vent. The description is "This sizable rent in the caldera floor has been completely sealed with carefully carved, interlocking pieces of wood, which would serve to route any rising steam into the [o]boiler[x] at its center.". Instead of opening the boarded over steam vent, say "The boards fit quite tightly, and do not seem to conceal any trapdoors or other movable parts.". Instead of leaping or attacking boarded over steam vent, say "You jump heavily on the boards, but they are quite solid and do not give.". Instead of touching boarded over steam vent, say "The wood is too hot to touch for more than a moment.". The dream-text of boarded over steam vent is "steaming bricks".




Chapter - Steam Vents

The prose name of Steam Vents is "the volcano floor near the steam vents". The description of Steam Vents is "[steamventsdesc].". To say steamventsdesc:
	if volcano sculpture is on-stage begin;
		say "Hot [o]steam[x] swirls around you in waves and curtains from hundreds of [o]holes[x] in the lava, ranging from tiny mouse-holes to chasms big enough to drop a house into. The steam has given an army of grass, mosses and ferns the toehold they need to start to reclaim the lava flow. Loose [o]scree[x] runs up the steep slope of the caldera wall towards ";
		if sunrise or morning or evening or sunset begin;
			say "[distant-sculpture] high above catching the rays of the unseen sun";
		otherwise if midmorning or midday;
			say "[distant-sculpture] high above reflecting the rays of the sun";
		otherwise;
			say "[distant-sculpture] high above";
		end if;
		say " on the rim of the volcano";		
	otherwise;
		say "The landslide has almost completely covered this area with smooth, unsteady sand littered with boulders and lava rock. While a few trickles of [o]steam[x] still push up through the newly disturbed ground, it seems as if the volcano must have found another place to vent its energy";
	end if;
	if volcano sculpture is on-stage, say ".[paragraph break]Splintered, rotting [o]timbers[x] poke out of one nearby chasm, steam swelling their blackened sides";
	say ".[paragraph break][exits]".

Instead of whistling when location is Steam Vents: let atd be indexed text; let atd be the player's command; say "You [atd in lower case] as loud as you can. A few pieces of scree on the slope before you quiver and sand trickles down the slope as the echoes die away, bouncing around the inside of the caldera."

Some rotting timbers are a setpiece in Steam Vents. The description is "It looks as if these boards once sealed this steam vent like the one near the boiler, but some dramatic event, perhaps a boulder tumbling down the interior of the caldera, smashed through the timbers and sent most of them tumbling into the bottomless abyss below. The few warped and twisted boards clinging to the chasm now are useless.". Instead of taking timbers, say "They are beyond repair.". Understand "vent/vents/abyss/board/boards/chasm" as rotting timbers when location is Steam Vents. Understand "block/cover" as "[block]". Understand "[block] vents" as a mistake ("You don't see any materials nearby you could use to do that.") when location is Steam Vents. Check pushing timbers: say "You manage to shove a few more of the rotting board fragments into the steam vent. They go tumbling and clattering down into the heat and blackness." instead. Check pulling timbers: try taking timbers instead. Understand "fix [timbers]" or "repair [timbers]" as a mistake ("Only a few fragments of the original boards remain. You would need lumber and tools to seal this steam vent again.") when location is Steam Vents. Understand "push [timbers] in/into/to chasm/vent/vents" as pushing when location is Steam Vents.

SteamVents-stuff is stuff in Steam Vents. Understand "waves/curtains/army/ray/rays/sand/boulders/trickle/trickles" as SteamVents-stuff when location is Steam Vents.

Check going up when location is Steam Vents: try climbing loose scree instead. 
	
The printed name of Steam Vents is "Inside the Caldera, At the [if volcano sculpture is on-stage]Steam Vents[otherwise]Landslide[end if]". The exits text of Steam Vents is "Elsewhere in the caldera is the [dr]rift[x] [if dir]to the [northeast] [end if]and the cinder [dr]cone[x][if dir] to the [east][end if]". Understand "rift" as northeast when location is Steam Vents.

Report going northeast from Steam Vents: say "You follow the curve of the caldera back around towards the great rift in the wall." Report going east from Steam Vents: say "You follow the curve of the caldera [if dir]along its southern edge [end if]to the base of the cinder cone."

The distant-sculpture is a backdrop in Steam Vents. The printed name is "[if Rim of Volcano is visited]the abstract [o]sculpture[x][otherwise]something [o]shiny[x] and tall[end if]". Understand "sculpture/shiny/tall" as distant-sculpture. The description is "It's well above your head, and you can't see any details from this distance.".

Some steam-vents are a setpiece in Steam Vents. Understand "steam" or "vent" or "vents" or "hole" or "holes" or "hundreds" or "of" or "tiny" or "mouse-hole" or "mouse-holes" or "chasm" or "chasms" as steam-vents. The printed name of steam-vents is "steam vents". The description is "[if volcano sculpture is on-stage]The steam billows continuously from vents of all sizes, so no matter where you stand you're always getting hit by a blast of wet, superheated air. Fortunately there's no smell of sulfur: the clouds of steam are nearly odorless, perhaps even a little sweet[otherwise]Just a few trickles of steam, now[end if]." Instead of touching or taking some steam-vents, try touching steam-itself. Instead of smelling some steam-vents, try smelling steam-itself. Instead of entering steam-vents, say "Sounds like a good way to get baked alive.".

Some loose scree is a setpiece in Steam Vents. Understand "slope" as loose scree. The description is "Millions of tiny black rocks, filled with holes where superheated air bubbled through them, run up the slopes of the caldera at a precarious angle.". Instead of touching or taking scree, say "The aeration has made the rocks surprisingly light." Instead of entering or climbing scree, say "The crater wall quickly steepens-- you wouldn't be able to progress very far without starting an avalanche." Instead of pushing or attacking scree: say "You push against one of the larger rocks in the scree, and immediately a tiny avalanche of pebbles and silt whispers down the slope, coming to rest long seconds later." instead. 

The steam-itself is a backdrop. It is in Steam Vents, Volcano Floor, Chairlift Base, Chasm Floor, Chasm Edge, and Observatory Exterior. The description is "White, wispy, ephemeral." Instead of touching or taking steam-itself: say "The hot, moist air billows over your hand, which feels suddenly cool when you pull it away.". Instead of smelling or tasting steam-itself, say "The steam is almost completely odorless." Understand "steam" or "wisp" or "wisps" as steam-itself. Instead of examining steam-itself when an outflow tube (called source) is enclosed by location: try examining source instead.

Understand "cluster" as west when location is Cinder Cone. Understand "cone" as east when location is Steam Vents. 


Chapter - Cinder Cone

The prose name of Cinder Cone is "the volcano floor near the cinder cone". The printed name of Cinder Cone is "Inside the Caldera, At the Cinder Cone". The description of  Cinder Cone is "[cinderconedesc].". To say cinderconedesc: say "Like a miniature of the volcano proper, the shallow slopes of this brownish-grey cinder [o]cone[x] rise to a summit two or three times your height. Adorning the top of the cone is [windsigh phrase of tree4], branches stretched more vertical than the others as if reaching its way out of the shadowy caldera. [paragraph break]A sandy [o]ledge[x] lies just below the summit of the cinder cone, near a scraggly lone berry [o]bush[x]"; say "[if Tsunami Sequence has ended].[paragraph break]Faint trickles of steam rise from the top of the cinder cone[one of]. You try to remember if they were there before today[or][stopping][end if].[paragraph break][exits]". The exits text of Cinder Cone is "Between the cone and the crater wall is a collapsed [o]sinkhole[x] that [if Volcano Cave is unvisited]seems to lead[otherwise]leads[end if] [d]down[x] into a small cave. [ccex2]". To say ccex2: say "Elsewhere in the caldera is a [dr]cluster[x] of steam vents[if dir] [west][end if] and the chasm [dr]entrance[x][if dir] [northwest][end if]". Understand "entrance" as northwest when location is Cinder Cone.

CinderCone-stuff is stuff in Cinder Cone. Understand "slope/slopes" as CinderCone-stuff when location is Cinder Cone.

The cone proper is an enterable undescribed supporter in Cinder Cone. Understand "miniature/summit" as cone proper. The description is "This small cone marks the brief time, perhaps only weeks, when the volcanic energies of the island were concentrated beneath this one particular point." Understand "cinder" as cone proper. The printed name of cone proper is "cinder cone". Instead of going up in Cinder Cone, try entering cone proper. Instead of climbing cone proper, try entering cone proper. Instead of going down in Cinder Cone when player is on cone proper, try getting off cone proper. After entering the cone proper: say "You walk up the short distance to the tiny summit, providing a panoramic overview of the hellish caldera floor." After getting off the cone proper: say "You walk back down to the caldera floor." The dream-text of cone proper is "miniature science-fair volcanos".

Report going from Cinder Cone to Volcano Floor: say "You follow the curve of the caldera around back to the chasm entrance." Report going from Cinder Cone to Steam Vents: say "You follow the curve of the inner caldera wall into the area of thick steam vents." Report going from Cinder Cone to Volcano Cave: say "You climb down into the collapsed area and approach the cave entrance, which seems to be a half-crumbled lava tube. [if raining]Grateful for some shelter from the downpour[otherwise]Blinking[end if], you step inside into darkness."

The sinkhole is a setpiece in Cinder Cone. Instead of entering or climbing or leaping the sinkhole, try going down. The description is "The sinkhole is almost a mirror of the cinder cone, but concave instead of convex. You can see what looks like a cave entrance [down] at the bottom.".

The crater proper is a backdrop. It is in Volcano Floor, Cinder Cone, Chasm Floor, Rim of Volcano, and Steam Vents. Understand "volcano/wall/walls" as the crater proper. Understand "caldera/rim" as crater proper when location is Rim of Volcano. The description is "[if location is Volcano Floor or location is Cinder Cone or location is Steam Vents]The caldera walls encircle you, except for the shattered gap leading into the chasm[otherwise if location is Chasm Floor]Through the collapsed wall where the chasm meets the crater walls lies the interior, the floor of the caldera[otherwise]The view across the crater rim and down to the smooth black floor of the caldera is fantastic. Wisps of steam rise from points across the floor, mostly concentrated at a point beneath you, while across from here is a small cinder cone[end if].". Instead of leaping the crater proper, say "That would kill you.".

tree4 is a windsigh tree in Cinder Cone.  

The tree4-nook is a nook in Cinder Cone. The printed name is "ledge". Understand "ledge" as tree4-nook. The description is "The flat ledge is just large enough for you to lie down on."  Instead of touching tree4-nook, say "The sand is soft and dry.". First report entering tree4-nook: say "You stretch out on the sandy ledge, wriggling around to get comfortable, and look up. The walls of the caldera form a distant rim around the edges of your peripheral vision." instead. First report getting off when player was on tree4-nook: say "Reluctantly, you rise to your feet again." instead. The sleep message of Cinder Cone is "Surprisingly comfortable on the sandy bed, you drift off into sleep."

The ambience table of Cinder Cone is Table of Cinder Cone ambience.

Table of Cinder Cone ambience
freq		start time	end time	text	table		trigger	flag
common	--		--		--	Table of Windsigh ambience
common	--		--		--	Table of Frozen Hell ambience.

Table of Frozen Hell ambience
freq		start time	end time	text	table		trigger	flag
guaranteed	--		--		"[one of]Wind scours the black floor of the caldera[or]High above the caldera, some black bird circles endlessly on the hot updrafts rising from its steam vents[or]A breath of wind pulls the steam rising from the vents across the caldera into stretched shapes[in random order]."

Chapter - Volcano Cave

The prose name of Volcano Cave is "the cave in the volcano caldera". The description of Volcano Cave is "[volcanocavedesc].". To say volcanocavedesc:
	if night begin; say "It's even darker in here than outside; the black lava swallows any ambient light, surrounding you with featureless blackness. The exit [d]back[x] outside is all you can see";
	otherwise;
		if we are going, say "Your eyes struggle to adjust to the dimmer light. After a moment you start to make out detail. ";
		say "This small tube only goes back a short distance before a collapsed ceiling cuts it off. [exits].[paragraph break]Drawn on the wall are a myriad of overlapping [o]sketches[x]";
	end if.
	
The exits text of Volcano Cave is "The only way out is [if dir]back [up][otherwise][d]back[x][end if] the way you came; the bright daylight that direction reveals only boulders in the sunken pit". Report going from Volcano Cave to Cinder Cone: if night begin; say "You emerge into the light of the [light-source] again."; otherwise if raining; say "You reluctantly step out into the downpour once again."; otherwise; say "Blinking[if midmorning or midday or afternoon] and shielding your eyes[end if], you emerge into the [if sunrise or morning or evening or sunset]bright[otherwise if afternoon or midday or midmorning]intensely bright[end if] light of the sun and climb back out of the collapsed pit."; end if.

The series of sketches is a setpiece in Volcano Cave. Understand "myriad" or "overlapping" or "sketch/tree9/trees" as the series. The description is "There must be a hundred of these simple rock-on-rock drawings along the cave wall. Most of them are countless variations of the [if tree1 is named]windsigh trees[otherwise]ubiquitous withered trees[end if], often overlapping each other multiple times. Though the quality varies from stick figures to quite sophisticated drawings, you would guess they are the work of a single young artist-- or perhaps two-- over time. [paragraph break]Three drawings in particular catch your eye: a crude drawing of two [o]girls[x], a [o]landscape[x] scene, and a complex [o]study[x].". The dream-text of series of sketches is "loose-leaf sheets of paper covered in meaningless scribbles".

The crude drawing of two girls is a setpiece in Volcano Cave. The description is "Though the drawing is basic, the scene is still quite clear: two young girls, holding hands, sneaking through a secret door into a volcano while a larger man, face in hands, seems to be crying, oblivious.". The dream-text of crude drawing is "loose-leaf sheets of paper covered in meaningless scribbles".

The ropeway drawing is a setpiece in Volcano Cave. Understand "landscape" as ropeway drawing. The description is "More sophisticated than the first, this drawing quite clearly shows the island's northern mountain, rising above the marsh. The large man is climbing it, with a thick cable strapped to his back, covered in sweat with a crazed look in his eye. Papers covered in scribbles are falling from him, piling up in stylized mounds on the ground beneath. On the other side of [if Edge of Ravine is unvisited]a great rift[otherwise]the ravine at the forest's edge[end if], drawn very small, are the two girls, watching, backs to the viewer. [paragraph break]Several of the ubiquitous tree drawings overlap this image." The dream-text of ropeway drawing is "loose-leaf sheets of paper covered in meaningless scribbles".

The final drawing is a setpiece in Volcano Cave. Understand "study" as final drawing. The description is "The last drawing is astonishingly good for chalk marks on an uneven surface; better perhaps than you might have believed possible in this medium. Again, something within you tingles; you are sure this is the work of a wayfarer, though not a piece that has been used to travel.[paragraph break]The drawing shows two glowing portals, the light almost swallowing the female figures-- a few years older now, with long black hair stretching down to their waists-- in the act of stepping inside them. One is gone already, only a foot remaining; the other is about to enter. In the center is the broken man, outlined by a portal that does not glow, turning to grab the woman's hand with a terrible look of sadness and desperation on his face. He realizes it is already too late.[paragraph break]At the bottom of the image are two [o]lines[x] of text in a neat, controlled hand.".

The cave-lines are a story-based scrawl in Volcano Cave. Understand "line/lines/text/writing" as cave-lines. The printed name is "two lines of writing". The standard message of cave-lines is "Goodbye, father. May you find your peace again. Lethe.". 

The dream-text of final drawing is "loose-leaf sheets of paper covered in meaningless scribbles".

 Instead of touching a setpiece in Volcano Cave, say "You touch the drawings delicately, imprinting a ghost line of white chalk on your fingertips.".

Part - The West Forest Region

West Forest is a region. Fork, Big Tree, and Treehouse are in West Forest. The ambience table of West Forest is Table of West Forest ambience.

Table of West Forest ambience
freq		start time	end time	text	table		trigger	flag
frequent		--		--		"The distant sounds of surf break faintly through the muffling vegetation."
frequent		morning		evening	"Birds twitter and small creatures scatter through the underbrush."
frequent		morning		evening	"Seagulls circle lazily above your head, their cries echoing faintly through the forest."		--	distant gulls
common	twilight	night	--	Table of Firefly ambience

A stand of bamboo is a backdrop. It is in Fork, Sloping Meadow, Volcano Slopes, and South Beach. The description of a stand of bamboo is "Tall and cylindrical, about as thick as your arm, the bamboo seems to grow in clusters and sways gently in the breeze. The tallest of the bamboo reaches three times your height." Instead of taking the stand of bamboo, say "The bamboo seems to be firmly rooted into the ground." Instead of touching the stand of bamboo, say "The bamboo plant is hard, like solid wood." Instead of pushing or pulling or attacking the stand of bamboo, say "You could probably push some of these over without too much difficulty, but it would take time, effort, and skill to do anything further." Instead of tasting the stand of bamboo, say "You've lived on worlds where they eat bamboo, but this variety seems to be too hard for that." Instead of climbing the stand of bamboo, say "You wrap your hands around a bamboo plant and try to pull yourself up, but it immediately begins to bend under your weight and you give up." 

Some leafy fronds are a backdrop. Fronds are in Fork, Big Tree, Volcano Slopes, and Sloping Meadow. The description of fronds is "All manner of leafy green plants grow out of the mossy earth."

The old path is a seen backdrop. The old path is in Fork, South Beach, Big Tree, and Sloping Meadow. The description of the old path is "The forest has mostly reclaimed it, but you can see where a path was once cut through the trees here: moss-covered stumps and repositioned boulders mark a gently curving line through the vegetation. The path connects the [dr]beach[x] with the [dr]forest[x].".



Table of Windsigh ambience
freq		start time	end time	text	table		trigger	flag
guaranteed		--	--	"[one of]An eerie, multi-tonal hum suddenly swells in time with the wind. Startled, you peer around warily for its source, before finally realizing it comes from wind gusting through the strange holes in [windsigh phrase of a random windsigh tree in location][or][windsighnoise][stopping]."

To say windsighnoise: if location is Egg Room, say "A [one of]high-pitched whine[or]whistle[in random order] whispers through the young windsigh, [one of]an octave higher than the others[or]its tiny holes pushing the tone nearly into the ultrasonic[in random order]"; otherwise say "[one of]Wind gusts through the holes in[or]A whisper of wind funnels through the holes in[or]A sudden blast of wind whips through the holes in[or]Gentle waves of wind channel through the holes in[in random order] [if location is Atop or location is Treehouse]the tree[otherwise][windsigh phrase of a random windsigh tree in location][end if], [one of]the strange multi-tonal song echoing around [the prose name of location][or]overlapping frequencies humming in strange, alien harmonies[or]a soothing, multi-tonal hum[in random order]". 

Chapter - Treehouse

The prose name of Treehouse is "the treehouse". The description of Treehouse is "[treehdesc].". To say treehdesc:
	if longform begin; say "This child-sized house was obviously built with love-- the detailed [o]etchings[x] of flowers along the length of the doorjamb, if nothing else, speak to that-- but the child for whom it was constructed must now be long grown. Greenery overruns every surface, vines and leaves blurring the lines of cut boards and straight railings. The tree has grown, too, tilting the floor and setting the shelves and windows subtly askew[dot]";
	otherwise if night; say "Vines and leaves [if moonup]ride the moonlight piercing the treehouse, like green foam on a frozen wave[otherwise]crawl from the night into the black interior of the treehouse[end if], and the man-made lines and flat surfaces under the greenery almost vanish into indistinctness, as if you stand in some natural hollow in the tree around you[dot]";
	otherwise if raining; say "You are glad to have refuge from the rain under the still-solid eaves; you watch waves of the downpour move through the forest around you[dot]";
	otherwise if sunrise or morning or midmorning; say "Birds take flight as you [if we are going]step inside the treehouse[else]stir[end if], shaking and twirling the vines and leaves as they glow in the warm morning light[dot]";
	otherwise if midday or afternoon; say "Things are cool and quiet in the shade of the treehouse; the vines and overgrowth spill eagerly through the windows as if trying to escape from the heat of the day[dot]";
	otherwise if evening or sunset; say "Sunlight slants into the treehouse, filtered by thousands of lemon-yellow leaves that shimmer faintly in the wind and cast the interior into a warm golden glow[dot]";
	otherwise; say "A lone bird calls from somewhere high in the tree above, like a ghost-cry breaking slowly over the treehouse's indistinct, abandoned interior[dot]";
	end if;
	if Tsunami Sequence has ended, say "One support of the wooden shelf has been shaken loose, and it swings sad and loose; the clockwork [o]head[x] lies near the [o]hammock[x], both seemingly undamaged";
	otherwise say "A small wooden shelf attached to the trunk [if clockwork head is not on shelf]sits gathering dust[otherwise]supports the clockwork [o]head[x][end if], just above a [o][tree2-hammock][x] neatly hung in one corner[if clockwork head is not on shelf]. Something [o]round[x] and wooden lies in a dusty corner underneath it, forgotten[end if]";	
	say ".[paragraph break][exits]".

The printed name of Treehouse is "Inside the Treehouse". The exits text of Treehouse is "The only exit from the one-room treehouse is [down] the rope ladder you came in on".

Report going from Treehouse: say "You grip the leaf-covered lintel and lower yourself onto the rope ladder, quickly descending six or seven rungs to the ground below.".

Instead of climbing or going up in Treehouse, say "You're already up in this tree." Instead of exiting in Treehouse when player is not enclosed by tree2-hammock, try going down.

Check going to Treehouse: move tree2 to Treehouse. Check going to Big Tree: move tree2 to Big Tree.

The detailed etchings are a setpiece in Treehouse. Understand "etching/carving/carvings" as etchings. The description is "Years of rain have softened the carvings, but even so they remain a marvel of craftsmanship. The detail is such that it is hard to tell where the real leaves and vines end and the carvings begin.". Instead of touching detailed etchings, say "You run your hands delicately over the intricate carvings. The craftsmanship is remarkable for so simple a thing.".

The greenery is a setpiece in Treehouse. The description is "Vines and creepers stretch up from both the forest floor below, and the [o]tree[x] itself, encircling the outside and inside walls as if slowly embracing it as part of itself.".

The tree2-hammock is an enterable undescribed container in Treehouse. It is not openable and open. The printed name of tree2-hammock is "hammock". Understand "hammock" as the tree2-hammock. The description is "The carefully twined ropes that make up this hammock must be spaced in a way disagreeable to the otherwise ubiquitous vines, as they have not progressed too far along it. It's tied between the treehouse railing and a thick main branch of the tree, and still seems to be in good shape." Instead of taking the tree2-hammock, say "It's anchored with ropes long since past the time they could be untied." First report entering the tree2-hammock: say "[one of]The hammock is covered with a layer of settled dirt and twisted vines, but after a few minutes of untangling and brushing, you find it still looks surprisingly intact. You sit down gingerly, but the hammock supports your weight just fine[or]You sit on the hammock, the ropes creaking and stretching taut beneath your weight[stopping]. It is surprisingly comfortable." instead. First report getting off when player was on tree2-hammock: say "You stand to your feet again, ducking your head slightly to avoid scraping the roof." instead. Instead of pushing tree2-hammock: say "It rocks gently back and forth.". The dream-text of tree2-hammock is "rolled hammocks". The sleep message of Treehouse is "Stretching out in the comfortable hammock, you soon find yourself drifting into a deep, bottomless sleep.".

A wooden shelf is an undescribed supporter in Treehouse. The description is "The simple shelf, [if Tsunami Sequence has ended]swaying loose from its one remaining support[otherwise]slightly out of plumb[end if], [if shelf supports something]supports [a list of things on the shelf][otherwise]is covered in a faint sheen of dust[end if].". Understand "fix shelf" as a mistake ("You'd like to, but you don't have any of the tools you need.") when location is Treehouse and Tsunami Sequence has ended. Check putting something on wooden shelf: say "At the angle it's slanted out, you doubt anything would stay there." instead.

Treehouse-stuff is stuff in Treehouse. Understand "window/windows" as Treehouse-stuff when location is Treehouse.  Instead of leaping treehouse-stuff: if player is hale begin; say "Standing hunched awkwardly in the tiny doorway, you leap forward with a little thrill and land awkwardly but unhurt on your feet."; move player to Big Tree; otherwise; say "Not with your injured leg."; end if.

Section - The Clockwork Head

The clockwork head is a prop in Treehouse. "[if we have examined the clockwork head]The clockwork head rests on a shelf[otherwise]Something round and wooden lies in a dusty corner, forgotten[end if]." Understand "round" or "wooden" or "something" or "dusty" or "corner" or "smooth" or "carving" or "sculpture" or "skull" as the clockwork head. The description is "[if we have not examined the clockwork head]You reach down, pick up the smooth wooden object -- it's surprisingly heavy -- and turn it around to discover that it's a richly detailed carving of a human head. You place it on a shelf and examine it more carefully. [paragraph break][end if]The head[if we have examined Progue], which bears a passing resemblance to [the Progue],[end if] is expertly carved from some richly-grained wood. [cwhead2].". After examining clockwork head for the first time: move clockwork head to shelf. To say cwhead2: say "Within the eye sockets are two wooden [o]spheres[x][eye description]. [cwhead3]". [To say cwhead3: say "A large wooden key on the back [if we have not switched on the clockwork head]looks like it [end if][cwhead4]". ] To say cwhead3: say "A large wooden [o]key[x] on the back looks like it [cwhead4]". [To say cwhead4: say "can be wound[if we have switched on the clockwork head] to activate some internal mechanism[end if][cwhead5]".] To say cwhead4: say "can be wound to activate some internal mechanism[cwhead5]".  To say cwhead5: say ". Visible joins at [if left ear is part of the clockwork head]each [o]ear[x] indicate they can be turned to rotate the eyes[otherwise]the head's right [o]ear[x] would seem to indicate it can be moved somehow; the left ear, however, is missing[end if]". Rule for printing the name of the clockwork head while listing contents: say "clockwork [o]head[x]".  Instead of attacking the clockwork head: say "You smash it against the side of the treehouse, but other than both surfaces acquiring scuffs and dents, not much else results.". The dream-text of clockwork head is "crates of spare wooden eyes, ears, mouths, and clockwork gears". Instead of pushing the clockwork head: say "You shake it back and forth, but it seems quite solid inside, and all the pieces and gizmos well-attached.". Instead of vague locking or vague unlocking the clockwork head: try turning the large wooden key instead.  Check opening the clockwork head: say "The workmanship is so fine, you see no sign of any seams." instead.

The eyes are part of the clockwork head. Understand "eye" or "hright eye" or "hleft eye" or "sphere" or "spheres/gear/gears/dowel/dowels/socket/mechanism/sockets" as the eyes. The description is "Each eye seems to be an independent sphere within the head; you can see inside the mechanism just enough to see a series of dowels and tiny wooden gears inside. Within the sockets are the two wooden spheres[eye description]." Instead of turning or pushing eyes, say "You don't seem to be able to make the eyes move directly; hidden cogs resist you.".

The eye-symbols are part of the eyes. Understand "symbol/symbols" as eye-symbols. The printed name is "symbols". The description is "Delicately inscribed, they are in some strange language you've never before seen, with graceful curls and arcs.".

The wooden mouth is part of the clockwork head. The description is "While delicately carved, the mouth seems only able to move up and down, incapable of more precise articulation. Inside you can dimly see something round and concave, partially concealing a complex mechanism of many tiny wooden gears and cogs." Instead of opening  or closing wooden mouth: say "You cannot get your fingers in far enough to make it move, and it feels as if the mechanism inside grips it tight, at any rate.".

To say eye description:
	if the reading level of the player is language-knowing begin; 
		say " inscribed with the symbols for '[head consonant][head vowel]'";
	otherwise if the reading level of the player is vowel-knowing;
		say " inscribed with symbols; the left (on the head's right) shows one of the vowels, while the other symbol must be [if left ear is part of the clockwork head]a consonant[else]an 'L'[end if]";
	otherwise;
		say " inscribed with two strange symbols";
	end if.

Instead of touching or taking the clockwork head when we have not examined the clockwork head: try examining the clockwork head. Instead of taking the clockwork head: say "It's surprisingly heavy, and would be difficult to take down the ladder with you. You may as well leave it here." Instead of touching the clockwork head, say "The detail in the sculpture is remarkable, the wood oiled smooth and warm to your touch." Instead of wearing clockwork head: say "It's solid wood; not something you can wear.".

The clockwork head has a number that varies called consonant. The clockwork head has a number that varies called vowel. The consonant of the clockwork head is 7. The vowel of the clockwork head is 3.

To say head consonant:
	let x be the consonant of the clockwork head;
	choose row x in Table of Head Consonants;
	say sound entry.

To say head vowel:
	let x be the vowel of the clockwork head;
	choose row x in Table of Head Vowels;
	say sound entry.

Table of Head Consonants
sound
"B"
"K"
"D"
"F"
"H"
"J"
"L"
"M"
"N"
"P"
"Kw"
"R"
"S"
"Sh"
"Ch"
"T"
"V"
"W"
"Y"
"Z"

Table of Head Vowels
sound
"ah"
"eh"
"ih"
"oh"
"oo"
"uh"
"aay"
"ee"
"y"

A head ear is a kind of thing. Understand "seam" as a head ear. The description of a head ear is usually "The ear is a remarkable carving, all smooth curves and fine detail[if noun is part of the clockwork head]. Where is it joined to the head is a visible seam[one of], as if the ear can be moved somehow[or], where the ear turns to change the symbol on the adjacent eye[stopping][end if].". Instead of pulling a head ear (called earmo): if earmo is part of clockwork head, say "This one seems stuck fast to the head.".

Instead of turning or pushing a head ear: 
	if noun is part of the clockwork head begin;
		say "The ear rotates as you twist it, and the head's [if noun is right ear]right[otherwise]left[end if] eye moves with it, clunking into place centered on another curious symbol. You quickly rotate the ear backwards and forwards and see that there are [if noun is right ear][the number of rows in Table of Head Vowels][otherwise][the number of rows in Table of Head Consonants][end if] unique symbols it can be set to, before returning it to its original position (number [if noun is right ear][vowel of the clockwork head][otherwise][consonant of the clockwork head][end if]).";
		say line break;
		speak as the parser "Try typing SET [if left ear is part of clockwork head]LEFT [end if]EAR TO 5, for example, to move the ear more precisely.";
	otherwise;
		say "The ear is not connected to anything yet.";
	end if.
	
The right ear is a head ear. Understand "hright" as the right ear. The right ear is part of the clockwork head.

The left ear is a head ear. Understand "hleft" as the left ear. The initial appearance of left ear is "Lying on the beach, strewn about with other churned up wreckage and debris, is a small wooden [o]ear[x].". After taking left ear: remove missing-left-ear from play; continue the action. 

The missing-left-ear is an undescribed prop in Treehouse. Understand "hleft ear" or "hleft" as missing-left-ear. Instead of doing anything to missing-left-ear: say "You don't see it anywhere.". 

Instead of using the left ear in Treehouse, try inserting left ear into clockwork head. Instead of putting the left ear on the clockwork head, try inserting left ear into clockwork head. Instead of tying left ear to clockwork head, try inserting left ear into clockwork head. Understand the commands "join" or "reconnect" or "connect" or "reattach" as "attach". Does the player mean tying the left ear to the clockwork head: it is very likely. Does the player mean inserting the left ear into the clockwork head: it is very likely. Understand "push [a head ear] in/into/to [the clockwork head]" as inserting it into. Understand "fix [the clockwork head]" or "repair [the clockwork head]" as using. Instead of using the clockwork head when left ear is held, try inserting left ear into clockwork head.

Instead of inserting left ear into clockwork head:
	move left ear to Treehouse;
	now left ear is part of the clockwork head;
	say "You carefully line the ear up along the head's left side and push gently. The dowel slides into place and catches with a satisfying snick.".

Understand "set [a head ear] to [number]" as headsetting when location is Treehouse or location is Dream-BigTree. Understand "turn [a head ear] to [number]" as headsetting when location is Treehouse or location is Dream-BigTree. Understand "set to [number]" or "set ear" as a mistake ("[as the parser]You need to be explicit: try SET EAR TO 5, for example.") when location is Treehouse or location is Dream-BigTree.

Headsetting is an action with past participle headset, applying to one thing and one number.

Carry out headsetting:
	if noun is the right ear, let q be the number of rows in Table of Head Vowels;
	otherwise let q be the number of rows in Table of Head Consonants;
	if the number understood < 1 or the number understood > q begin; say "There are only [q] possible positions [the noun] can be set to.";
	otherwise if check-right-ear or check-left-ear; say "[The noun] is already set to that symbol.";
	otherwise;
		if the noun is right ear, now the vowel of clockwork head is the number understood;
		otherwise now the consonant of clockwork head is the number understood;
		say "[The noun] turns under your hand, catching at each number, until the head's [if noun is right ear]right[otherwise]left[end if] eye shows the proper symbol.";
	end if.	

To decide whether check-right-ear: if the number understood is the vowel of the clockwork head and the noun is the right ear, decide yes; decide no. To decide whether check-left-ear: if the number understood is the consonant of the clockwork head and the noun is the left ear, decide yes; decide no. Does the player mean doing something to the right ear: it is likely. Does the player mean doing something to the left ear: it is likely.

The large wooden key is part of the clockwork head. Understand "handle" as large wooden key. Instead of turning the clockwork head, try turning the large wooden key. Understand the command "wind" as "turn". The description of large wooden key is "It looks like it winds some mechanism inside the head if you turn it.". Instead of taking or pulling large wooden key, say "It is firmly attached to the mechanism. It looks designed to be turned to wind something inside.".

Head-vowels-learned is a list of numbers that varies. Head-consonants-learned is a list of numbers that varies.

Instead of pulling large wooden key: say "You tug at the key, but it seems firmly attached to the back of the head, useful only for turning.".

Instead of turning or pushing the large wooden key:
	say "You wind the large handle several times, then release it. Whirs and thunks come from inside the head. The wooden mouth opens and closes slightly and lets out a mechanical exhalation that, while crude, is clearly distinguishable as a sound: '[head consonant][head vowel]. [head consonant][head vowel]. [head consonant][head vowel].' Then, wound down, the mouth stops moving and the sound fizzles out.";
	add the vowel of the clockwork head to head-vowels-learned, if absent;
	add the consonant of the clockwork head to head-consonants-learned, if absent;
	if the number of entries in head-consonants-learned is 3 and the reading level of the player is not language-knowing begin;
		say "[line break]Working systematically, you move through each symbol and slowly begin to match the symbols to the sounds. Years of practice learning unfamiliar scripts have made this an easy game. Within a few hours you feel you've gotten a basic mastery of the symbols, and could sound out, if slowly, something simple written in this script.";
		now the reading level of the player is language-knowing;
		[pass 120 minutes of time;]
	end if;
	if the number of entries in head-vowels-learned is 3 and the reading level of the player is uneducated begin;
		say "[line break]One at a time, you move through all the symbols around the right ear. Each one, it would seem, is a different vowel sound; the [if left ear is not part of clockwork head]missing [end if]left ear must be used to change the beginning of the sound to something other than 'L.'";
		[pass 60 minutes of time;]
		if the reading level of the player is uneducated, now the reading level of the player is vowel-knowing;
	end if;
	rule succeeds.

[An unfortunate side effect of Smarter Parser is that if the player types a command related to the head that isn't recognized, it might print an awkward message about how the player doesn't need to refer to body parts. Avoid this.]

The don't act stupid head rule is listed before the stripping body parts rule in the Smarter Parser rules. A smarter parser rule (this is the don't act stupid head rule):
	if location is Treehouse and stripping "(head|eye|eyes|ear|ears|nose)" is fruitful:
		change rejected command to "[word number 1 in rejected command] clockwork".



Chapter - Fork

The prose name of Fork is "the overgrown path". The description of Fork is "[forkdesc].". To say forkdesc: 
	if longform begin; say "Smells of damp earth and a profusion of greenery encircle this half-clearing amidst light forest. Trees encrusted with moss rise from a carpet of grassy, leaf-strewn earth, along with tall stands of bamboo and explosions of delicate fronds[dot]";
	otherwise if sunrise or morning; say "Shafts of sunlight kiss the treetops of the tiny clearing amid a profusion of greenery[dot]";
	otherwise if midmorning or midday; say "Spears of light penetrate the forest, yellow-gold spotlights on the greenery around you, which sways gently in the breeze[dot]"; 
	otherwise if afternoon; say "[if raining]Water dribbles down the fronds and bamboo stands around you, catching in tiny pools of leaves or sinking into the moss and turning it a deep, full green. The smell of rain and wet earth is thick in the air[otherwise if weather state is gathering clouds]Delicate fronds and bamboo sway in the gathering breeze, under the swiftly gathering clouds above[otherwise if rained]Heavy drops of water patter to the mossy earth all around you, pooling in hollows and cupped leaves that hang heavily under the weight[otherwise]The swaying greenery around you seems almost lazy in the warmth of the afternoon light[end if][dot]";
	otherwise if evening or sunset; say "The sinking sun sends tiny spears of [if evening]orange[otherwise]red[end if] light through the holes in [windsigh phrase of tree1], and lights up its thousand lemon-yellow leaves like paper lanterns[dot]";
	otherwise if dawn or twilight; say "Indistinct, shadowless light paints the foliage shades of greenish-grey, softened even further by its gentle swaying in unfelt breezes[dot]";
	otherwise if night; say "[if moonup]Silver shafts touch swaying fronds and tall bamboo patches in this half-clearing, but the deeper forest is hidden in darkness[otherwise]You can smell and hear the foliage around you more than you can see it: the smell of cool earth and growing things, and the sounds of leaf rubbing against leaf[end if][dot]";
	end if;
	say "The clearing is dominated by [windsigh phrase of tree1], vine-wrapped trunk rising from gnarled roots, lemon-yellow leaves springing from sinuous branches. At the base of the tree, a leaf-lined [o]nook[x] curls invitingly between two gnarled roots.[paragraph break][exits]".

Fork-stuff is stuff in Fork. Understand "dew" as Fork-stuff when location is Fork.

The exits text of Fork is "Though long overgrown with moss and concealed by huge fallen leaves, a path was once cut through the vegetation, connecting [if South Beach has not been visited]what looks like a [dr]beach[x] through the trees[otherwise]the [dr]beach[x][end if][if dir] to the [northwest][end if] with [exFork2]". To say exFork2: say "the deeper [dr]forest[x][if dir] to the [south][end if][exFork3]". To say exFork3: if meadow-path-open is true, say ". The way you cleared back to the [dr]meadow[x][if dir] [east] of here[end if] is also open".

The printed name of Fork is "Overgrown Path". Understand "beach" or "blue" as northwest when location is Fork. Understand "deeper" or "forest" as south when location is Fork. 

Check going from Fork to Sloping Meadow when meadow-path-open is false: say "The vegetation is so thick in that direction, you can't see a way through." instead. 

Report going to South Beach from Fork: say "You follow the overgrown path down a slight slope[if sunup] towards a bright open area[end if], picking your way over fallen trees and slippery earth, and finally emerge from the trees on some grassy mounds at the edge of a beach." Report going to Sloping Meadow from Fork: say "Picking your way carefully through the dense vegetation, you climb a bit before the trees begin to thin out and you finally find yourself in a more open area." Report going to Big Tree from Fork: say "Making slow progress, you venture deeper into the forest along the nearly-vanished path, ducking under vines and walking through knee-deep clusters of fallen leaves and dense ground cover[if sunup]. The ground slopes up to your left and down to your right, but you stay relatively level[end if].".

Tree1 is a windsigh tree in Fork. The description of tree1 is "[if tree1 is named]This is the windsigh you painted, which brought you here to begin with[otherwise]It certainly is a curious tree[end if]. [the tree spiel]. [paragraph break]The tree is nothing like the surrounding vegetation, and seems stunted somehow-- though you can't say what creates that impression, with nothing to compare it to.". The printed name of tree1 is "[if tree1 is named]a [o]windsigh[x] tree[otherwise]the strange [o]tree[x] you painted[end if]".

The tree1-nook is a nook in Fork. The printed name is "nook". The description is "It looks like a soft place to curl up in for a nap."  Instead of touching tree1-nook, say "The leaves feel soft and dry.". First report entering tree1-nook: say "You lie down on the bed of leaves, comfortably anchored between the two tree roots, and rest comfortably on your back, looking up into the sea of dancing lemon-yellow leaves above you." instead. First report getting off when player was on tree1-nook: say "Reluctantly, you rise to your feet again." instead. The sleep message of Fork is "Lulled by the rustling of the leaves above and the quiet sigh of the tree, you drift into a deep, bottomless sleep."

The ambience table of Fork is Table of Fork ambience.

Table of Fork ambience
freq		start time	end time	text	table		trigger	flag
common	--		--		--	Table of Windsigh ambience



Chapter - Big Tree

The printed name of Big Tree is "Big Tree, Beneath the Treehouse".

treehouse-in-rain is a truth state that varies.

The prose name of Big Tree is "underneath the treehouse". The description of Big Tree is "[bigtreedesc].". To say bigtreedesc:
	if raining begin; say "[one of][if we are going]As you approach[otherwise]As you step around[end if] the treehouse in the rain, studying its strange curves and patches, you suddenly stop in your tracks. The rain has altered the color and texture of its components, and as it falls and curves around the wooden rafters and beams it accentuates certain details and hides others. You take a step to the left and suddenly you see it.[paragraph break]The treehouse is an achingly beautiful sculpture of a woman's face, drawn and haggard as in the last stages of some long illness which nevertheless cannot hide the charm of her appearance or character. Rain curves around the bulge in the wall that is her cheekbone, trails down the vines of her hair, and glistens in the specks of quartz that are the highlights in her eyes. But only when the light is flattened by overcast clouds, only when the rain soaks into the wood and turns it the hues of her face, and only standing just at the right spot, is she here[or]Rain drizzles through the leaves of [windsigh phrase of tree2] above, dripping in streams off the roof of the sinuous [o]treehouse[x], where the face of the sad, haggard woman once again looks out at you[stopping][dot]"; now treehouse-in-rain is true;	
	otherwise if longform; say "Before you stands [windsigh phrase of tree2], larger than the first one and different in another notable way: a small strange [o]treehouse[x], all curves and strange extrusions, is built in its lower branches, overgrown with moss and vegetation, vines running up and down the sagging rope ladder leading to its covered interior. The ground drops off [if dir]to the west[otherwise]behind the tree[end if], but opposite the forest slopes gently upwards[dot]";
	otherwise if night; say "The forest is thick and black here, the vague shape of the treehouse and vegetation above blocking out the [light-source][dot]";
	otherwise if afternoon and rained; say "Raindrops glisten on the ladder to the [o]treehouse[x], and drip in quiet intervals from the leaves of [windsigh phrase of tree2][dot]";
	otherwise if dawn or twilight; say "Before you, [windsigh phrase of tree2] and its crumbling, undulating [o]treehouse[x] are still in the shadowless grey light[dot]";
	otherwise if morning or midmorning; say "Morning sunlight streams through the curved windows of the [o]treehouse[x], the lemon-yellow leaves of [windsigh phrase of tree2] casting burnt copper shadows on its warped boards[dot]";
	otherwise if midday; say "The angled roof of the wavy [o]treehouse[x] shades the indistinct interior from the beating sun, which sparkles the shimmering leaves of [windsigh phrase of tree2] into amber[dot]";
	otherwise if evening or sunset; say "Silhouetted in the sinking sun's dazzling light, [windsigh phrase of tree2] and its abandoned, warped [o]treehouse[x] wearily await the night[dot]";
	otherwise; say "The curving waves of the [o]treehouse[x], overgrown with moss and vegetation, rests gently in the branches of [windsigh phrase of tree2] above[dot]";
	end if;
	say "[exits]".

The exits text of Big Tree is "The rotting rope ladder leads [up] through the open doorway of the treehouse. The way [bw of Fork][if dir][north] [end if]to the [dr]path[x] is open, and [etbt2]". To say etbt2: say "[if not dir]opposite that [end if]the forest [if Volcano Slopes is unvisited]seems to give[else]gives[end if] way to open [dr]terrain[x] [bw of Volcano Slopes][if dir]to the [south][else]the way you came[end if]". Understand "terrain" as south when location is Big Tree. Understand "path" as north when location is Big Tree.

Report going from Big Tree to Treehouse: say "[if Treehouse has not been visited]You put your hands on the rope ladder, testing your weight gently on rungs woven from vines that look dangerously rotted, but surprisingly the ladder holds your weight easily. [end if]You climb the rope ladder awkwardly[if player is wounded], wincing as you bend your tender leg in unfortunate directions,[end if] and hoist yourself up into the small interior." Report going from Big Tree to Fork: say "Cutting back along the route you found earlier, you wade through the forest undergrowth[if a random chance of 1 in 2 succeeds][time-of-day-bit][end if]." Report going from Big Tree to Volcano Slopes: say "The ground begins to slope up as you push towards the edge of the forest[if a random chance of 1 in 2 succeeds][time-of-day-bit][end if]. Finally, you break through the edge of the trees into a [if sunup]brighter, [end if]more open space."

Tree2 is a windsigh tree in Big Tree. 

The rope ladder is an open implemented door. It is not openable and undescribed. Understand "rotting" as ladder. Instead of climbing rope ladder, try entering rope ladder. The description is "The ladder, expertly weaved long ago from now-brown strands of vine, seems to have suffered years of neglect and exposure to the elements. Fresh vines and moss creep up the sides and along the rungs, and one side has sagged further under the weight." Instead of taking or pulling the rope ladder, say "Ancient knots bind it to the treehouse, and newer strands of green further connect it to ground and tree alike.". The dream-text of rope ladder is "coiled rope ladders".

The treehouse-scenery is a setpiece in Big Tree. The printed name is "treehouse". Understand "treehouse/house/window/windows/interior/doorway/roof" as treehouse-scenery when location is Big Tree. The description is "[if raining]You marvel once again at the incredibly artistry that turns the chaotic design of the treehouse into perfect order under the shadowless light of clouds and the glistening touch of the rain[otherwise]The treehouse is tall and all organic curves and lumps, not a straight line to be seen. The windows are skinny ovals of differing sizes; the roof slopes up here, extrudes outwards there, and is thatched in each spot with wildly differing material. Despite the obvious work that went into its construction, it now seems overgrown and long abandoned, eerie somehow through the negative presence of absent children[end if].". Instead of entering treehouse-scenery, try going up. Instead of attacking treehouse-scenery, say "It seems dilapidated enough already.".

The ambience table of Big Tree is Table of Big Tree ambience.

Table of Big Tree ambience
freq		start time	end time	text	table		trigger	flag
common	--		--		--	Table of Windsigh ambience
uncommon	--		--		"[one of]The rope ladder sways gently in the breeze[or]A small red-grey creature scampers along the roof of the treehouse, peering cautiously down at you for a moment before vanishing into the branches[or]The treehouse creaks as the wind shifts the branches around it[in random order]."




Part - The East Island Region

The ambience table of East Island is Table of Nearby Rain Forest ambience.

The forest-view is a backdrop. It is in East Island and Rain Forest.

To say a sentence about the rain forest:
	if Rockslide is unvisited, say "The view ahead is dominated by a plateau covered in dense rain [o]forest[x], [a phrase about the rain forest]";
	otherwise say "[one of]The rain [o]forest[x] dominates the view, [a phrase about the rain forest][or]The rain [o]forest[x], [a phrase about the rain forest], stretches across this side of the island[at random]".

To say a phrase about the rain forest:
	say "[if raining]green-wet giants disappearing into fog[otherwise if rained]dripping and steaming like some great living creature[otherwise if twilight]slowly vanishing into the arms of the encroaching darkness[otherwise if dawn]silent and still under the half-lit sky[otherwise][patrf2][end if]".

To say patrf2: say "[one of]its interior only a haze of shadows and bird cries from here[or]guarded by great old trees strewn with vines and ferns[in random order]".

Report going from East Island to Rain Forest: say "[one of]You step into the dim rain forest, brushing aside vines and spider webs[or]You step into the dark, moist greenness of the rain forest interior[at random]."

Chapter - The Bees

The dancer bee is an undescribed animal in Hive Interior. Understand "single" or "lone/lead" as dancer bee. The description is "[if the hive bees are watching or hive bees are collecting]The bee performs his strange little dance carefully, with a precision doubtless refined by eons of evolution[otherwise]The dancer bee has vanished back into the rest of the swarm[end if]." Does the player mean doing something to the dancer bee: it is likely.

The swarm of bees are an animal in Hive Interior. Understand "bee" or "handful/red/stripe/stripes/wing/wings" as the swarm of bees. The description is "The bees are unnervingly large, about the size of your fist, with alternating red and cream stripes and fat wings. As you look closer, though, you see they don't appear to have stingers, and at any rate are paying you no attention at all.". Instead of attacking the swarm of bees, say "That probably isn't the smartest idea." Instead of taking or touching the swarm of bees, say "You put your hand near one of the fat creatures. Obligingly, it climbs onto it, quivering its wings every few moments, and does a few complete circuits, before flying off disappointed.". Instead of remembering swarm of bees: say "The main body of the swarm is no longer in sight.". After going to Jumble for the first time: now swarm of bees is seen; continue the action. [So that we can "Remember" them even if we haven't yet examined them.]

The initial appearance of the swarm of bees is "[if not raining and not night][swarmdesc].[end if]".

Instead of object-debugging swarm of bees, try object-debugging beehive. Instead of object-debugging dancer bee, try object-debugging beehive. Instead of object-debugging hive bees, try object-debugging beehive.

To say swarmdesc:
	if location is Hive Room or location is Hive Interior, say "A slowly steady stream of [o]bees[x] flies in and out of the hive through its [o]skylight[x] [if location is Hive Interior]just above your head[otherwise]high above[end if]";
	otherwise say "A swarm of [o]bees[x] mills about the flowers here, delicately gathering nectar".

First report remembering when noun is the swarm of bees: say "They have already vanished from sight." instead.

The bee target is a room that varies. The bee target is Hive Room. The bee dance tracker is a number that varies. The bee dance tracker is 0.

Every turn when the hive bees are asleep and the player is awake and the player is in Lacuna and sunup (this is the wake up the bees rule): now the hive bees are awake; if beehive is being debugged, say "// Bees: waking up.".

After waiting when location is Hive Interior (this is the watching the bees isn't as boring as all that rule): now the time of day is 7 minutes before the time of day; continue the action.

Every turn when the player is awake and the hive bees are awake and the player is in Lacuna and we are not landmark-going (this is the bee plan rule):
	if beehive is being debugged, say "// Bees: follow the bee plan rule.";
	if night begin;
		remove swarm of bees from play;
		now hive bees are asleep;
		stop;
	otherwise if sunset or twilight;
		if swarm of bees are in Hive Interior begin; now hive bees are asleep; if beehive is being debugged, say "// Bees: going to sleep."; stop;
		otherwise; [ tell them it's time to go home ]
			if beehive is being debugged, say "// Bees: heading home because sundown.";
			now hive bees are collecting;
			now counter of hive bees is 99; 
		end if;
	end if;
	increase the counter of the hive bees by 1; 
	if hive bees are hesitating and the counter of the hive bees is at least 2 and a random chance of 2 in 3 succeeds begin; [bees need to pick a plan]
		if beehive is being debugged, say "// Bees: starting to watch (because hive bees are hesitation and counter of hive bees is at least 2 ([counter of the hive bees]) and a random chance of 2 in 3 succeeded).";
		now hive bees are watching;
		if there is a selected of 0 in Table of Bee Dance Recipes begin;
			sort Table of Bee Dance Recipes in selected order;
		otherwise;
			repeat through the Table of Bee Dance Recipes begin; change selected entry to 0; end repeat;
			sort the Table of Bee Dance Recipes in random order;
		end if;	
		choose row 1 in Table of Bee Dance Recipes;
		if beehive is being debugged, say "// Bees: chose [dest entry] as next destination.";
		change the selected entry to 1;		
		now bee target is dest entry;
		now the counter of the hive bees is 0;
	otherwise if hive bees are watching or hive bees are collecting and counter of hive bees < 24; [dancer bee shows his stuff]
		choose row 1 in the Table of Bee Dance Recipes;
		let dancex be 99;
		increase the bee dance tracker by 1;
		let z be the bee dance tracker;
		if z is 1, now dancex is 8;
		if z is 2 and there is a move1 entry, now dancex is move1 entry;
		if z is 3 and there is a move2 entry, now dancex is move2 entry;
		if z is 4 and there is a move3 entry, now dancex is move3 entry;
		if dancex >= 1 and dancex <= 9 begin;
			[now bee dance tracker is 0;]
			if location is Hive Interior begin;
				choose row dancex in the Table of Bee Dances;
				say "[dance move entry].";
				[If this is the last move of the dance, jigger things so we'll see the bees fly off immediately.]
				choose row 1 in the Table of Bee Dance Recipes;
				unless there is a move2 entry begin;
					if z is 2 begin; say line break; now bee dance tracker is 0; end if;
				end unless;
				unless there is a move3 entry begin;
					if z is 3 begin; say line break; now bee dance tracker is 0; end if;
				end unless;
				if z is 4 begin; say line break; now bee dance tracker is 0; end if;
			end if;
		otherwise;
			now bee dance tracker is 0;
			if counter of hive bees > 15, now counter of hive bees is 30;
		end if;
	end if;
	if hive bees are collecting and counter of hive bees is 24 and location is Hive Interior begin;
		say "The empty space disappears in a flash, the dancer bee disappearing back into the crowd.";
	end if;
	if ( hive bees are watching or hive bees are collecting ) and bee dance tracker is 0 and counter of hive bees > 1 and counter of hive bees <= 30 begin;
		if hive bees are watching begin;
			if beehive is being debugged, say "// Bees: starting collecting.";
			now hive bees are collecting;
			now the counter of the hive bees is 0;
		end if;
		if location is in East Island or location is Forest2 or location is Chasm Edge or location is Sloping Meadow or location is Crater Pond or location is Forest3 or location is Egg Room or location is Grassy End, process bee movement; [saves computation time]
		move swarm of bees to bee target; 
	otherwise if hive bees are collecting and the counter of the hive bees >= 25 and ( the counter of the hive bees > 30 or a random chance of 1 in 3 succeeds ) ;
		if beehive is being debugged, say "// Bees: starting hesitating.";
		now hive bees are hesitating;
		now bee dance tracker is 0;
		now the counter of the hive bees is 0;
		if location is in East Island or location is Forest2 or location is Chasm Edge or location is Sloping Meadow or location is Crater Pond or location is Forest3 or location is Egg Room or location is Grassy End, process bee movement; [saves computation time] 
		remove swarm of bees from play;		
		now bee target is Hive Interior;
	end if;
	if beehive is being debugged, say "// Bees: status: swarm in [location of swarm of bees]; counter is [counter of hive bees].".

Table of Bee Dances
num	dance move
1		"[describe dancer] walks a line, holding its wings straight up"
2		"[describe dancer] walks a counter-clockwise circle, holding its wings flat against its body"
3		"[describe dancer] walks a counter-clockwise circle, holding its wings angled downwards"
4		"[describe dancer] walks a counter-clockwise circle, holding its wings angled up"
5		"[describe dancer] walks a line, holding its wings straight down"
6		"[describe dancer] walks a clockwise circle, holding its wings angled down"
7		"[describe dancer] walks a clockwise circle, holding its wings flat against its body"
8		"[one of]The bees milling about the inside of the hive draw back around a single [o]dancer[x] bee, seemingly identical to the rest, in the center of an empty circle. The lone bee quivers in anticipation[or]The bees again make a wide circle around a single [o]dancer[x], who stands still, preparing to dance[stopping]"
9		"[describe dancer] walks a clockwise circle, holdings its wings angled up"

To say describe dancer: say "[one of]The bees have all left a wide empty gap around one [o]dancer[x] bee, seemingly identical to all the rest, who[or][describe dancer2][stopping]". To say describe dancer2: say "The [o]dancer[x] bee".

Table of Bee Dance Recipes
dest					move1		move2		move3		selected
Sloping Meadow		5			6			7			0
Crater Pond			5			3			--			0
Forest2				2			--			--			0
Edge of Ravine		1			--			--			0
Egg Room			2			3			4			0
Grassy End			9			--			--			0



To say lpbmbit: say "[if bees are hesitating and location is Hive Interior], climb industriously through the hole in the ceiling of the beehive, and spread out to all the honeycombs[otherwise if bees are hesitating], and climb industriously into the hive[otherwise if location is Hive Interior]. Meanwhile, others and new arrivals continue milling in a wide circle around the [o]dancer[x] bee, who quivers expectantly[end if]". To say lpbmbit2: say "[if dir]to[otherwise]towards[end if] [if hive bees are hesitating and dir]north[otherwise if hive bees are hesitating and not dir]the chute[otherwise if bee target is Crater Pond and dir]southeast[otherwise if bee target is Crater Pond and not dir]the meadow[otherwise if bee target is Sloping Meadow and dir]southwest[otherwise if bee target is Sloping Meadow and not dir]the chasm[end if]".

To say southorrockslide: say "[if dir]south[otherwise]rockslide[end if]". To say eastorrainforest: say "[if dir]east[otherwise]rain forest[end if]". To say northwestorgap: say "[if dir]northwest[otherwise]gap in the lava flow[end if]".

To say beesl: say "bees ([if hive bees are asleep]asl[otherwise]aw[end if]): [if hive bees are dormant]dormant[otherwise if hive bees are hesitating]hesitating[otherwise if hive bees are watching]watching[otherwise if hive bees are collecting]collecting[end if]; bdt:[bee dance tracker]; c:[counter of hive bees]; swrm:[location of swarm of bees]; targ:[bee target]".
		
To process bee movement:
	[ if this routine is running, there's a possibility we may witness some bee movement. 
	If we're in the Hive Room, deal with that.
	If the bees are returning to the Hive, deal with that.
	If we're in the location the bees are arriving in, deal with that.
	Otherwise, determine if our location is along the flight path of bees.
		If so, print a description mentioning where they're coming from and going to.]
	if ambience_on is 0, stop; [ Don't print bee descriptions while the player is napping.]
	if beehive is being debugged, say "// Bees: process bee movement.";
	if location is Hive Interior or location is Hive Room begin; [ If we're in the Hive Room, deal with that.]
		say "[if location is Hive Interior and swarm of bees is in location]The dancer bee stops its strange dance. A number of bees immediately take flight and fly off towards the[otherwise if swarm of bees is in location]A [o]swarm[x] of bees in the hive take wing and fly out the hole in the top. They do a graceful arc in the air and zoom off towards the[otherwise if hive bees are collecting]A [o]handful[x] of bees emerge from the hive and fly off towards the[otherwise]A [o]swarm[x] of bees arrives from the[end if] "; say "[if bee target is Sloping Meadow or bee target is Crater Pond][southorrockslide][otherwise if bee target is Forest2 or bee target is Egg Room][eastorrainforest][otherwise if bee target is Grassy End][northwestorgap][otherwise if dir]north[otherwise]edge of the ravine[end if][lpbmbit].";
	otherwise if swarm of bees is in location; [If the bees are returning to the Hive]
		if hive bees are collecting begin; say "A few new [o]bees[x] arrive and land gracefully on empty flowers, while others depart and fly off ";
		otherwise; say "[one of]One by one, the [o]swarm[x] of bees rise from their flowers and fly off[or]First in ones and twos, and then all at once, the [o]swarm[x] of bees lift off from their flowers and fly off[at random] "; [move bee-ghost to location;] end if;
		say "[if dir]to[otherwise]towards[end if] [bee exit desc].";
	otherwise if location is bee target; [If we're in the location the bees are arriving in.]
		if hive bees are collecting, say "A [o]handful[x] of bees trickle in from ";
		otherwise say "A [o]swarm[x] of bees arrives from ";
		say "[bee exit desc]";
		say ", and settle gracefully on the wildflowers.";
	otherwise; [Otherwise, determine if our location is along the flight path of bees.]
		if ( location is Chasm Edge and bee target is Sloping Meadow ) or ( location is Rockslide and bee target is Sloping Meadow ) or ( location is Rockslide and bee target is Crater Pond ) or ( location is Forest2 and bee target is Egg Room ) or ( location is Forest3 and bee target is Egg Room ) , say "From somewhere overhead you hear the vague drone of bees zipping through the air.";
	end if.



To say bee exit desc: 	say "[if location is Egg Room]the way out of the crater[otherwise if location is Crater Pond and dir]the northwest[otherwise if location is Crater Pond]the rockslide[otherwise if location is Sloping Meadow and dir]the east[otherwise if location is Sloping Meadow]the chasm[otherwise if location is Grassy End]the hive[end if][bedesc2]". To say bedesc2: say "[if location is Forest2 and dir]the west[otherwise if location is Forest2]the edge of the forest[otherwise if location is Edge of Ravine and dir]the south[otherwise if location is Edge of Ravine]the hive[otherwise if location is Grassy End and dir] to the southeast[end if]".

To say random bee noun: say "[if hive bees are collecting][beefewnoun][otherwise][beeswarmnoun][end if]". To say beeswarmnoun: say "[one of]A [o]swarm[x] of bulbous red bees[or]With a chest-vibrating zoom, a [o]swarm[x] of bees[or]A [o]swarm[x] of huge red bees, lazily dipping and swaying,[at random]". To say beefewnoun: say "[one of]A small group of huge red [o]bees[x][or]A pair of oversized [o]bees[x][or]A cluster of melon-sized [o]bees[x][at random]".

To say random bee verb: say "[one of]comes flying through the air[or]flies past[or]flies by[or]zips through[or]passes through[at random]".


Section - Following the Bees

[Since following the bees is an important puzzle, we want to respond to any possible attempts to follow them. The swarm is off-stage when the bees are not "at" a certain location; in this case, if the player is not near the Hive, we can simply move them one room towards it. The behavior is identical if the swarm is on-stage and the player is in its location. If the swarm is on-stage and we're near the hive, we also move one room towards their location, but after that we can only print a message like "You can't tell where the bees went from here." (Since otherwise they could just follow the swarm straight to the Egg without having to solve the puzzle.) If the player tries to follow bees when none of the above conditions are true (maybe because of the ambient message about a swarm of bees passing overhead, gently refuse. ]

[
Who are we following?
Near hive & swarm onstage: swarm.
Near Hive & swarm offstage: hive bees.
Near swarm & swarm onstage: hive bees.
Near neither and swarm onstage: "not sure."
Near neither and swarm offstage: hive bees.
]

Does the player mean following swarm of bees: it is likely. Instead of following hive bees, try following swarm of bees.

First check following swarm of bees:
	let target be UnRoom;
	if swarm of bees is off-stage:
		if location is Hive Interior or location is Hive Room, say "The bees seem to have climbed inside the hive." instead;
		if location is not regionally in Lacuna, say "You're not sure where they went." instead;
		now target is Hive Room;
	else:
		if location is Hive Interior:
			say "(first getting off the beehive)[command clarification break]";
			move player to Hive Room, without printing a room description;
		if location is Hive Room:
			say "You head off in the direction the bees went[if location of swarm of bees is not adjacent to Hive Room], but you've already lost sight of them[end if].";
			now target is location of swarm of bees;
		else if location is location of swarm of bees:
			say "You head off in the direction the bees flew[if location of swarm of bees is not adjacent to Hive Room], but you've already lost sight of them[end if].";
			now target is Hive Room;
		else:
			say "You're not sure where the bees went from here." instead;
	if target is UnRoom, say "You're not sure where the bees went from here." instead;
	let way be the best route from location to target;
	if way is a direction, try going way instead;
	else say "You're not sure how to get there from here." instead.


Chapter - Rockslide

The prose name of Rockslide is "the boulder pile". Understand "pond" as southeast when location is Rockslide. The printed name of Rockslide is "Boulder Pile".

The description of Rockslide is "[rockslidedesc].". To say rockslidedesc:
	if longform begin; say "Moss and soil glue together this field of tumbled boulders, the crumbling end of a long arm of the island's northern mountain. Here at the one flat spot in the ancient rockslide you can see the whole eastern half of the island, almost entirely covered in impenetrable rain forest[dot]";
	otherwise if raining; say "Stepping carefully on the rain-slicked rock, you pause atop the boulder field to survey the mist-shrouded view of the rain forest[dot]";
	otherwise if night; say "Dim boulders loom on all sides in the [if moonup]moonlit[otherwise]shadowless[end if] night, and you step carefully over the treacherous hill[dot]";
	otherwise if sunrise or morning; say "Moss and tufts of grass drink in the morning light, in patches of dirt that have settled on the boulder field to start the long process of reclamation[dot]";
	otherwise if evening or sunset; say "The boulder field and the rain forest ahead lie in evening shadows, quiet under the coloring sky[dot]";
	otherwise if twilight; say "Small rodents scurry from your footsteps in the failing light to secret hiding places beneath the boulders[dot]";
	otherwise; say "[one of]You stand unsteadily atop a lichen-draped boulder, surveying the view[or]The boulders sigh as wind gusts gently over the rockslide, slipping smoothly between the cracks and hole[or]The boulders bake in the light of the sun, casting dark and sharp-edged shadows on the thousands of tiny caves and hollows beneath them[in random order]. [A sentence about the rain forest][dot]";
	end if;
	say "Clinging tenaciously to a rocky boulder is [windsigh phrase of tree7], a mossy [o]hollow[x] cradled in its roots.[paragraph break][exits]".

The exits text of Rockslide is "The boulder field descends [bw of Hive Room]into a wide [dr]chute[x] running [if dir][north] [end if]along the edge of the rain forest. You could also make a trickier descent [bw of Crater Pond][if dir][southeast] [end if]to a small [etrs2]". To say etrs2: say "[dr]pond[x], or return [if dir][southwest] [otherwise if former location is Chasm Edge]back the way you came [end if]towards the chasm's [dr]edge[x]". Understand "chute" as north when location is Rockslide.

Rockslide-stuff is stuff in Rockslide. Understand "boulder/boulders/patch/patches/rockslide/field" as Rockslide-stuff when location is Rockslide.

Instead of going down in Rockslide, say "From this vantage point, there are several ways down; you'll have to specify. [exits]." Report going to Chasm Edge from Rockslide: say "[descendtheboulders][if a random chance of 1 in 2 succeeds][time-of-day-bit],[end if] until you come to the edge of the chasm once again." Report going to Hive Room from Rockslide: say "[rockslideposttsum][descendtheboulders] till you enter the chute. Picking up speed, you follow the narrow swath of flat ground between the jagged rift on your left and the rain forest on your right." Report going from Rockslide to Crater Pond: say "[rockslideposttsum][descendtheboulders], and finally reach the bottom.". 

To say descendtheboulders: say "[if raining]You place your feet extremely carefully on the rain-slicked boulders[otherwise if night]Moving slowly, more by feel than sight, you work your way down the boulder field[otherwise][one of]You carefully work through the boulder field[or]Hopping lightly from one boulder to the next, you descend the boulder field[or]Descending carefully down the steep slope of the boulder field, flinching every time a boulder moves under your feet, you finally make it to more stable ground[in random order][end if]".

To say rockslideposttsum: if Tsunami Sequence has ended, say "[one of]Stepping forward, your ankle suddenly twists under you as a boulder shifts. Stumbling forward onto another boulder with a surge of adrenaline, you twist aside as the massive rock you first landed on rolls and tumbles down the pile, picking up a few other smaller rocks as it goes. It seems the slide hasn't quite restabilized itself after the earthquake yet.[paragraph break][or][stopping]".

tree7 is a windsigh tree in Rockslide.

The tree7-nook is a nook in Rockslide. The printed name is "mossy hollow". Understand "mossy/hollow" as tree7-nook. The description is "The hollow would be the one flat and stable place to lie down here in the midst of the rockslide."  Instead of touching tree7-nook, say "The moss is soft and dry.". First report entering tree7-nook: say "You lie down in the mossy hollow. It's a little short for you to fully stretch out, but you feel snug and surprisingly secure cradled in its arms." instead. First report getting off when player was on tree7-nook: say "You extract yourself from the mossy hollow, stretching sore muscles." instead. The sleep message of Rockslide is "Lulled by the rustling of the leaves above and the quiet sigh of the tree, you drift into a deep, bottomless sleep."


The ambience table of Rockslide is Table of Rockslide ambience.

Table of Rockslide ambience
freq		start time	end time	text	table		trigger	flag
frequent		evening		twilight		"[one of]A tiny chirp echoes from somewhere in the rock pile, as some small creature scurries away under cover[or]Tiny peeps and the scrabbling of small creatures come from somewhere under the rock pile[or]A little mouse-like creature scampers up to a nearby boulder, watching you intently for a moment, before diving back into a tiny hole in the rock[in random order]."		--	mouse	--
common	--		--		--	Table of Windsigh ambience

A mouse is a set dressing. Understand "creature/creatures" as mouse. The description is "The little mouse-like creature has already vanished back into the dark labyrinth beneath the boulder pile."


Chapter - Grassy End

Report going from Hive Room to Grassy End: say "Slipping into the narrow crack in the lava, you pass back into a secluded circular amphitheater surrounded by sheer black rock walls.". Report going from Grassy End to Hive Room: say "You slip back through the crack[if a random chance of 1 in 2 succeeds][time-of-day-bit][end if].". 

The description of Grassy End is "[graenddesc].". To say graenddesc:
	if longform begin; say "Tufts of grass and a profusion of flowers carpet the floor of this circular amphitheater, perhaps the remnants of a lava tube with a long-collapsed ceiling[dot]";
	otherwise if evening or morning; say "The ground is in shadow, and the narrow strip of sunlight striking the lava above seeps straight into the black rock, leaving everything painted in a weird half-light, and a strange sensation of isolation[dot]";
	otherwise if afternoon or midmorning; say "Sunlight angles down tentatively, lighting up one lava wall which paints the bowl in weak refracted light[dot]";
	otherwise if midday; say "The ground is lit up by the sun, shining straight down into the sheltered bowl[dot]";
	otherwise if sunrise or sunset or dawn or twilight; say "Everything is dim and indistinct, only a faint light creeping down the black lava walls to reach the ground at your feet[dot]";
	otherwise; say "A circle of stars above you only barely illuminate the ground, and the black walls are formless and indistinct[dot]";
	end if;
	say "[if night]The dark grass at your feet whispers with[else]Crude chalk [o]markings[x], so faint as to be nearly invisible, cover one wall near[end if] a bed of [o]wildflowers[x].[paragraph break][exits]".

The exits text of Grassy End is "The only way out is [dr]back[x][if dir] [southeast][end if] towards the hive". The prose name of Grassy End is "the grassy dead end".

GrassyEnd-stuff is stuff in Grassy End. Understand "amphitheater/remnants/lava/tube/ceiling/strip/bowl/circle" as GrassyEnd-stuff when location is Grassy End.

The bee hint drawing is a setpiece in Grassy End. The printed name is "crude chalk markings". Understand "marking/markings/marks/crude/chalk/faded/circle/arrow" as bee hint drawing. The description is "Largest are two symbols: a three-quarter circle with an arrow indicating a clockwise direction, and another arrow, angling upwards. Next to these is drawn a compass rose[if puzzle mode]. Underneath are scrawled some [o]words[x][end if].".

The bee words are a hint-based scrawl in Grassy End with standard message "the dancer showed me where to go. made The Discovery by following them into the forest." and secret message " clockwise is west, angled up is north". Understand "text/scrawl/scrawls/writing" as bee words.



Chapter - Hive Room

The printed name of Hive Room is "At the Hive". Understand "rockslide" as south when location is Hive Room.

The prose name of Hive Room is "the giant beehive". The description of Hive Room is "[hiveroomdesc].". To say hiveroomdesc:
	if longform begin; say "At a wide spot in the thin border zone between the rain forest and the jagged rift rises a massive organic mound, a [sayhive] several times your height: grayish-pink and almost whimsical in its curved irregularities. It makes a distinctive landmark at the halfway point of the long narrow chute between the rockslide and [if Edge of Ravine is visited]the edge of the ravine[otherwise]a sudden dropoff farther ahead[end if][dot]";
	otherwise if raining; say "Raindrops drizzle and stream down the weird curves of the [sayhive] sedately, though now the design of the skylights becomes more clear, as none of the water drips into the interior[dot]";
	otherwise if rained and afternoon; say "The [sayhive] glistens wetly in the misty afternoon light, its light exterior soaked to a deep, textured brown[dot]";
	otherwise if afternoon; say "The whimsical curves of the [sayhive] are already in the dark shadow of the lava flow, except for a grey-gold tuft near the skylights at its top[dot]";
	otherwise if morning; say "The vicinity of the [sayhive] stirs with busy activity in the golden light, as if the bees are eager to get to work[dot]";
	otherwise if twilight or dawn; say "The [sayhive] is still and silent in the faint half-light, strangely alien without the drone of its daytime workers[dot]";
	otherwise if night; say "The [sayhive] seems strange and mysterious in the darkness, curves and shapes turned to unpredictable angles and disturbing lines[dot]";
	otherwise; say "The [sayhive] rises above you, several times your height, a grayish-pink whimsical structure of curves and ridges[dot]";
	end if;
	say "[exits]". To say sayhive: say "[o]beehive[x]".

The exits text of Hive Room is "The edge of the rain [dr]forest[x] [bw of Forest2][if dir][east] [end if]continues [bw of Edge of Ravine][ethr2]". To say ethr2: say "[if dir][north] and [bw of Rockslide][south][otherwise]toward a [dr]dropoff[x] or [bwt of Rockslide]the [dr]rockslide[x][end if], "; say "and a small [dr]gap[x] in the lava flow [if dir][bw of Grassy End][northwest] [end if]also looks passable[if Hive Interior is visited]. You could also climb [up] the beehive itself[end if]". Understand "gap" as northwest when location is Hive Room. Understand "dropoff" as north when location is Hive Room. Understand "forest" as east when location is Hive Room.

HiveRoom-stuff is stuff in Hive Room. Understand "spot/border/zone/rift" as HiveRoom-stuff when location is Hive Room.

Report going from Hive Room to Rockslide: say "You climb back up onto the boulder field, stepping carefully as the odd rock shifts under your weight.". Report going from Hive Room to Edge of Ravine: say "You follow the grassy path downhill, keeping the edge of the lava flow on your left and the rain forest on your right, till you come to a sudden dropoff.".

The ambience table of Hive Room is Table of Hive Room ambience.

Table of Hive Room ambience
freq		start time	end time	text	table		trigger	flag
frequent		morning		evening		--	Table of Beehive ambience


Table of Beehive ambience
freq		start time	end time	text	table		trigger	flag
common	--	--	"[one of]A faint drone sounds steadily from the interior of the hive[or]A bee circles lazily around the hive before returning to the interior through a wide window[or]Bees crawl in and out of the wide windows running around the hive's exterior[in random order], well above your head."

Instead of listening when beehive is enclosed by location or swarm is enclosed by location, say "[if night]The bees are silent in the darkness of night[otherwise]The gentle drone of the bees makes the [Progue-time-of-day] light somehow seem thicker and heavier[end if].".

The beehive is a backdrop. It is in Hive Room and Hive Interior. Understand "hive" or "massive" or "organic" or "mound" or "grayish-pink" or "grayish" or "pink" or "whimsical" or "curved" or "irregularity" or "irregularities" or "textured" or "wall" or "walls" or "dome" or "top" or "side" or "sides" or "walls of hive" or "wall of hive" as beehive. The description is "Rising well above your head, the curved and textured walls ripple and fold [one of]vertically[or]like a ladder[stopping] before eventually curving in to form a dome, though the top seems to be broken by several large [o]skylights[x]. A number of other small gaps and windows pepper the upper sides of the hive, allowing you obscured glimpses of the interior[if time for excitement].[paragraph break]It looks like you could easily climb the walls of the beehive[end if].". Instead of climbing or entering the beehive, try going up. Instead of touching the beehive, say "The walls of the hive are as strong as cement, surprising since their texture seems light and airy.". Does the player mean climbing or entering the beehive: it is very likely. The dream-text of the beehive is "honeycombs". Instead of attacking the beehive, say "You slam a hand against the wall of the hive, but it's as solid as rock.".

Instead of searching the beehive: say "The holes in the wall of the hive are all higher than your head, so you can't see in very well from here.".

Report going from Hive Room to Hive Interior: say "The numerous ripples and swirls of the textured hive made for good hand and footholds[if we have not touched the beehive], and the papery-grey surface is hard as a rock[end if]. You climb [if player is wounded]laboriously, keeping your weight on the good leg,[else]easily[end if] up to the level of the windows.". Report going from Hive Interior to Hive Room: say "Carefully, you climb back down to ground level.". 

The beehive-windows are part of the beehive. The printed name is "hive windows". Understand "beehive windows" or "window" or "windows" or "hole" or "holes" or "largest" or "skylight/skylights" as the beehive-windows. The description of the beehive-windows is "[if location is Hive Interior]From here, you can easily see through the opening into the interior of the hive.[otherwise]Of irregular sizes and intervals around the upper third of the hive, the largest of these windows provides a good view of the textured ceiling of the dome, from this angle.[end if]". Instead of entering or climbing the beehive-windows, say "[if location is Hive Interior]The windows aren't big enough to easily squeeze through, but you can see through them fine[otherwise]The windows are well above your head[end if]." Instead of searching the beehive-windows when location is Hive Room, say "All you can see from here is the ceiling of the dome.". Instead of touching beehive-windows: say "[if location is Hive Interior]They are just organic openings running around the top of the hive[otherwise]You can't reach them from down here[end if]."

Discovering-Hive-Is-Climbable is a scene. Discovering-Hive-Is-Climbable begins when Hive Interior is unvisited and the player is in Hive Room for at least the fourth time. When Discovering-Hive-Is-Climbable begins: say "You catch movement out the corner of your eye, and turn just in time to see a cat-sized creature with brown fur and and long tail clamber frantically down the rippled side of the beehive and dash into the protection of the rain forest. You are surprised that the walls of the hive supported its weight.". Discovering-Hive-Is-Climbable ends when Discovering-Hive-Is-Climbable begins.

Chapter - Hive Interior

The printed name of Hive Interior is "At the Hive, Peering Inside". Check sleeping when location is Hive Interior: say "Clinging to the side of the beehive? Not likely." instead.

The prose name of Hive Interior is "on the giant beehive". The description of Hive Interior is "[beeintdesc].".

To say beeintdesc:
	say "Clutching the sides of the beehive, you peer curiously inside. The inside walls are thick with hexagonal honeycombs[if morning or midmorning or afternoon or evening], glowing with a creamy golden sheen where snatches of slanting sunlight falls through the windows to touch them[end if][dot]";
	say "[if night]The bees huddle in clusters around the hive, quivering on occasion but clearly asleep[otherwise if hive bees are collecting]A sparse smattering of bees mill around the honeycombs[otherwise if hive bees are dormant]Bees, wings and heads tucked in, cover every surface, hardly moving except for an occasional faint twitch[otherwise if hive bees are watching]Bees mill around the walls, most watching one [o]dancer[x] bee who moves in strange but regular patterns[otherwise]Hundreds of bees mill around over the interior surface of the hive[end if]. The only way to go from here is back [down]".

Instead of going up in Hive Interior, say "You're less confident of the ceiling's ability to support your weight." Instead of entering the beehive when location is Hive Interior, say "The windows are big enough to see through, and big enough for the bees to enter, but not you.". 

Some hive bees are an undescribed animal in Hive Room.  Understand "stream/hundreds" as hive bees. The hive bees can be dormant, hesitating, watching, or collecting. The hive bees are hesitating. The hive bees have a number that varies called counter. The counter of the hive bees is 0. After going to Hive Interior: move hive bees to location; continue the action. After going to Hive Room: move hive bees to location; continue the action. The description of hive bees is "[if location is Hive Room]You can faintly see, through the elevated [o]windows[x] in the hive, bees milling about inside[else]Bees swarm around the honeycombs on the inside of the hive[end if].". [The hive bees represent the bees that are always present in the hive. They can only be seen/interacted with from the Hive Interior and Hive Room locations.]

The honey is a minor prop in Hive Interior with provoke message "You carefully break off an abandoned corner of honeycomb, dripping with thick, creamy honey, and pop it into your mouth. The taste is overwhelmingly sweet: not just sugary, but with hints of fruit and mint, too. Fortunately, the bees do not seem to mind.". The indefinite article is "some". Understand "honeycomb/honeycombs/hexagonal/cream/creamy/golden" or "honey comb" as honey. 

Instead of going nowhere when location is Hive Interior: say "(first getting down from the beehive)"; move player to Hive Room, without printing a room description; try going noun.




Chapter - Edge of Ravine

The printed name of Edge of Ravine is "At the Dropoff". The prose name of Edge of Ravine is "at the dropoff to the great ravine". The description of Edge of Ravine is "[edgeravdesc].". To say edgeravdesc: say "At your feet a carpet of [o]wildflowers[x] suddenly drops off into a sheer ravine, a [if dawn or sunrise]mist-shrouded[otherwise]narrow[end if] inlet that sharply divides this side of the island from the equally sheer slopes of the mountain peak [if dir]to the north[otherwise]across (and up) from here[end if]. "; say "[if night]Waves crash somewhere below you[otherwise][A sentence about the gorge waves][end if][if sunup]. Above the far end of the gorge opposite the sea, on a narrow spur of the mountain running straight into the lava flow, rises [windsigh phrase of tree3], the largest you've seen, branches reaching high into the sky[end if].[paragraph break][exits]".

The ravine proper is a backdrop. It is in Edge of Ravine, Ravine Floor, Top of Ravine, Saddle, Atop, Viewpoint. Understand "inlet/gorge/mouth" as ravine proper. The printed name is "ravine". The description is "The ravine's sheer sides drop into a gorge swallowed by seawater.". Instead of leaping the ravine proper, say "It's much too far across and too far down for that.". Instead of entering the ravine proper, try climbing ravine-ladder.

The exits text of Edge of Ravine is "A rope [o]ladder[x] descends [down] a dizzying drop to the bottom of the ravine. The rain forest runs nearly to the cliff edge, but a short walk[if dir] [south][end if] would take you back to the [dr]beehive[x]". Understand "beehive" as south when location is Edge of Ravine. 

To say a sentence about the gorge waves:
	if high tide, say "Huge swells break through the gorge far below you";
	if falling uptide or rising uptide, say "Waves crash up the gorge spectacularly";
	if falling downtide or rising downtide, say "Waves smash dramatically into boulders at the distant mouth of the gorge";
	if low tide, say "The bottom of the gorge is a bed of gravel";
	if night begin; say ", dimly visible in the [light-source] that filters down into the depths";
	otherwise;	
		if high tide, say ", the bottom hidden by a maelstrom of churned [foam bit] foam, now flowing up the gorge, now sinking back";
		if falling uptide or rising uptide, say ", sending runners of [foam bit] foam dancing past and then slinking back repeatedly";
		if falling downtide or rising downtide, say ", sending runners of [foam bit] foam almost halfway up the gorge to the ground far below you";
		if low tide, say ", slicked with seaweed and pools of water, but safe for the moment from the distant smash of the waves far down by the gorge's mouth";
	end if.
	
To say foam bit: if sunrise or morning begin; say "sun-kissed"; otherwise if afternoon or evening or sunset; say "shadowed"; otherwise if dawn or twilight; say "ghostly grey"; otherwise; say "cream-white"; end if.

The ravine-ladder is a backdrop. It is in Edge of Ravine and Ravine Floor. The description is "Woven from tough vines reinforced with some fibrous material; the rungs are planks of wood.". Instead of pulling or taking the ravine-ladder, say "The ladder does not hang free, but seems to be attached periodically to anchor points as it runs [if location is Ravine Floor]up[otherwise]down[end if] the wall of the ravine.". Instead of climbing or entering or using ravine-ladder when location is Edge of Ravine, try going down. Instead of climbing or entering or using ravine-ladder when location is Ravine Floor, try going up. Understand "ladder" or "ravine ladder" as ravine-ladder. The printed name is "ravine ladder".

Instead of going down in Edge of Ravine when tidein, say "You descend the ladder carefully, clutching the rungs slicked with sea breeze tightly, but after only a dozen rungs down you can see it's a lost cause; the waves are still crashing through the gorge below you, and if you made it to the bottom you'd be swept out to sea.[paragraph break]You climb back up the ladder to the edge of the ravine again.". Report going from Edge of Ravine to Ravine Floor: say "You descend the ladder [if player is wounded]one rung at a time, favoring your uninjured leg[else]carefully[end if], "; say "[if afternoon]passing into shadow after only a dozen rungs, [otherwise if evening or sunset]passing into shadow almost immediately, [end if]clutching rungs slicked with sea breeze and encrusted with years of brine. [if Ravine Floor is unvisited]It's a lot farther than you thought. [end if][if night]The darkness hides the distance to the ground, which is probably just as well. [end if][if sunrise or morning]The early morning light shines right up the ravine, letting you see just how far you are from the bottom-- something of a mixed blessing. [end if]Finally[if Ravine Floor is unvisited], after counting sixty-seven rungs,[end if] you step onto the wet gravel bed of the ravine floor[if Ravine Floor is unvisited] and massage your fingers, looking around with interest[end if]." Report going from Edge of Ravine to Hive Room: say "You walk back up the clear swath between forest and lava flow, until you arrive again at the bee hive."

The distant-tree3 is a view with base room Saddle. It is in Top of Ravine, North Beach, Rise, Chair-lift1, Chair-lift2, Chair-lift3, Chairlift Base, Stumps, Lawn, Observatory Exterior, Ravine Floor, Edge of Ravine. It is near Top of Ravine, North Beach, Rise. It is far from Chair-lift1, Chair-lift2, Chair-lift3, Chairlift Base, Stumps, Lawn, Observatory Exterior, Ravine Floor, Edge of Ravine. The printed name is "distant [tree3]". Understand "tree/tree9/windsigh" as distant-tree3. The description is "The tree straddles a steep ridge that angles down from the mountain and eventually collapses into the lava flow, neatly dividing the eastern side of the island from the west half. [if location is Chair-lift2 or location is Chair-lift3]Below you and to your right[otherwise]Far above you[end if], the distant tree is taller and larger than the others you've seen, presumably because of its all-day exposure to sunlight, but it still seems stunted somehow.". Does the player mean doing something to distant-tree3: it is unlikely. [There may be closer trees in the room we're in.] 

The ambience table of Edge of Ravine is Table of Edge Ravine ambience.

Table of Edge Ravine ambience
freq		start time	end time	text	table		trigger	flag
common		--		--	--	Table of Ravine ambience

Table of Ravine ambience
freq		start time	end time	text	table		trigger	flag
common	rising uptide		falling uptide	"[one of]A great wave thunders[or]Waves crash[or]The tide surges[in random order] through the ravine below, [one of]smashing its way in a series of foam explosions[or]tumbling in an ever-rising white foamy jumble[in random order] [one of]past the boulders far below your feet[or]up the channel towards its rocky top[in random order] before retreating again."
uncommon	falling downtide	rising downtide	"[one of]Waves break[or]Water smashes[or]The sea crashes[or]The ocean slams[or]Swells slap[in random order] [one of]noisily[or]fiercely[in random order] [one of]against the base of the ravine[or]far down near the bottom of the ravine[or]at the jumble of boulders near the ravine's bottom point[in random order], but [one of]only a few small runners of foam penetrate the channel[or], but only showers of foam make it past the breakwater[or], a reminder of low tide's temporary nature[in random order]."


Chapter - Viewpoint

The prose name of Viewpoint is "the viewpoint of the mountain from the rain forest". The description of Viewpoint is "[viewpointdesc].[paragraph break]A vein of sea-blue [o]crystal[x] breaks the surface here.". To say viewpointdesc: say "This small ledge of cleared grassy space is surrounded by forest, except for the sides that drop off into the sea. Below you is the mouth of [if Viewpoint is unvisited and Edge of Ravine is unvisited]a[otherwise]the[end if] ravine[if dir] running west[end if], while infinite blue ocean stretches to the horizon[if dir] eastwards[end if][if sunup], where a faint [o]smudge[x] is just visible against the blue[end if]. [exits]. "; say "[paragraph break]From this ledge you are far enough around the mountain to see where the path on the distant summit leads. Tucked in a sheltered cirque on the mountain's backside is a tiny [o]pyramid[x] surrounded by a great curved ring. You can't make out many details from this far off". The exits text of Viewpoint is "The rain [dr]forest[x] looms [if dir]to the [south][otherwise]behind you[end if]". Understand "forest" as south when location is Viewpoint. 

The distant cliffs are a backdrop in Viewpoint. Understand "smudge" as distant cliffs. The description is "Squinting into the haze, the smudge slowly resolves itself into a far-off outcrop of cliffs, the extremity of some distant landmass just poking over the horizon.".

Viewpoint-stuff is stuff in Viewpoint. Understand "ledge/sides" as Viewpoint-stuff when location is Viewpoint.

The ambience table of Viewpoint is Table of Viewpoint ambience.

Table of Viewpoint ambience
freq		start time	end time	text	table		trigger	flag
common		--		--	--	Table of Ravine ambience


Chapter - Crater Pond

The printed name of Crater Pond is "Hidden [if Tsunami Sequence has ended]Geyser[else]Pond". The description of Crater Pond is "[craterponddesc].". To say craterponddesc: say "Tucked between the slopes of the volcano, the base of the boulder field, and the wet green arms of the rain forest, this small depression [if Tsunami Sequence has ended]is filled with fiercely bubbling water that churns and roils while emitting a rich, loamy odor[else]has filled with rainwater to make a tiny [o]pond[x], dotted with water lilies and reeds[end if]. [o]Wildflowers[x] dot the moist banks of the water.[paragraph break][exits]". The exits text of Crater Pond is "The [dr]forest[x] is dense, but you [if dir]could enter it through a gap to the [north][otherwise]do see one way in[end if]; you could also scramble back [dr]up[x] the rockslide[if dir] to the [northwest][end if]". Understand "forest" as north when location is Crater Pond. The prose name of Crater Pond is "the hidden pond".

Viewpoint-stuff is stuff in Viewpoint. Understand "ledge/sides" as Viewpoint-stuff when location is Viewpoint.

The small pond is a setpiece in Crater Pond. Understand "water/pool/geyser" as small pond when location is Crater Pond. The description is "The pond is only three or four times as wide as you are tall. [if Tsunami Sequence has ended]Milky bubbles roil up from some newly-opened crack far below, and the surface steams copiously[else]It reflects the slopes of the volcano above serenely[end if].". Instead of vague swimming when location is Crater Pond, try swimming in the small pond. Instead of entering or leaping small pond, try swimming in small pond. Instead of swimming in the small pond, say "[if Tsunami Sequence has ended]The water is scalding hot to the touch; you'd be boiled alive[otherwise]You dip your toes in the water, causing the small blue birds to scatter into the air. It is lukewarm; the bottom is a soft carpet of thick wet moss on uneven boulders. Your steps stir up clouds of silt that billow in slow-motion through the pool water.[paragraph break]The pond isn't big enough for actual swimming, but you spend a while cooling off before finally returning to dry land again[end if].". Instead of tasting or taking the small pond, say "[if Tsunami Sequence has ended]You reach out your hand to touch the water, but jerk it back instantly; it is boiling hot[otherwise]You cup a handful of the pond water and try it. It has a silty aftertaste and a slightly unpleasant tang, but at least it quenches your thirst[end if].". Instead of touching the small pond, say "The water is lukewarm.". Instead of touching the small pond when Tsunami Sequence has ended, try taking the small pond. The dream-text of small pond is "great piles of silver-blue bird feathers".

The water lilies are a prop in Crater Pond.

Report going from Crater Pond to Rockslide: say "You scramble back up the boulder field to the saddle.". Report going from Crater Pond to Rain Forest: say "You leave the pond behind for the dark interior of the rain forest.".

The ambience table of Crater Pond is Table of Crater Pond ambience.

Table of Crater Pond ambience
freq		start time	end time	text	table		trigger	flag
common		morning		evening		"[one of]Small silver-blue [o]birds[x] bob serenely on the pond[or]A small silver-blue [o]bird[x] ducks its head under the water to nibble at something[or]A movement from you suddenly startles the silver-blue [o]birds[x] on the pond, most of which take flight in a splash and frantic flapping of wings[or]Some silver-blue [o]birds[x] fly in over the rain forest and land on the surface of the pond[in random order]."	--	pond-birds
common	twilight	night	--	Table of Firefly ambience

Table of Geyser Ambience
freq		start time	end time	text	table		trigger	flag
uncommon	--	--	"With only the briefest of warnings, a huge geyser of boiling water jets up from the pond, reaching six or seven times your height into the air and sending scaling hot steam billowing through the air. You hastily take a few steps back, but after only a few moments, the jet of water shrinks, and after a few more moments the pond has returned to its former gently percolating state."

Table of Firefly ambience
freq		start time	end time	text	table		trigger	flag
guaranteed	--	--	"[one of]Fireflies[or]Tiny golden lights[or]Glowing fireflies[in random order] [one of]dance[or]bob and weave[or]sway[in random order] through the [one of]warm night air[or]tropical evening[at random], [one of]magical[or]tracing delicate patterns of phosphorescence through the air[or]emitting a faint glow[or]winking on and off[in random order]."	--	fireflies.

Some fireflies are set dressing. Understand "fire flies" or "flies" or "firefly" or "golden/light/lights" as some fireflies. The description is "Small, glowing creatures winking in and out of sight.". Instead of taking some fireflies, say "You capture one in your hand; it gives off a faint blue-white glow shining through your fingers till you release it.".


Some pond-birds are an undescribed animal in Crater Pond. Understand "silver" or "blue" or "silver-blue" or "bird/birds" as some pond-birds. The printed name is "silver-blue birds". The description is "The birds are like little balls of feathers, about the size of child's fist. Silvery underbellies fade to bright sky-blue on the tops of their heads, and long, skinny orange beaks protrude from their somehow wise-looking faces.". Instead of taking or touching or attacking some pond-birds, say "At your movement, the birds take flight in a sudden frantic splash, zipping off over the rain forest.". 

 
Part - The Rain Forest Region

Rain Forest is a region. Forest1, Forest2, Forest3, Forest4, Forest5, Forest6, Forest7, Forest8, Forest9, and Egg Room are in Rain Forest. The printed name of a rainforest-room is usually "In the Rain Forest". 

The ambience table of Rain Forest is Table of Rain Forest ambience.

Table of Rain Forest ambience
freq		start time	end time	text	table		trigger	flag
common		dawn	sunset	--	Table of Rain Forest Insect ambience
common		twilight	night		--	Table of Rain Forest Night ambience
common		dawn	sunset	--	Table of Rain Forest Creature ambience
uncommon	--	--	"[if night][nightforest][otherwise][one of][timeofdayrelatedforestamb][or][nottimeofdayrelatedforest][at random][end if]."

Finding-A-Boar is a recurring scene. Finding-A-Boar begins when location is regionally in Rain Forest and location is not Egg Room and ( dawn or sunrise or sunset or twilight ) and a random chance of 1 in 30 succeeds. Every turn during Finding-A-Boar: if wild-boar is not enclosed by location , remove wild-boar from play. Finding-A-Boar ends when wild-boar is off-stage.

When Finding-A-Boar begins: say "Suddenly, in a clearing before you, you spot a wild [o]boar[x], snuffling through the undergrowth."; move wild-boar to location.

A wild-boar is an animal. The printed name is "wild boar". Understand "wild/boar" as wild-boar. The description is "The creature is much larger than you expected, with long tusks and ugly, mud-brown skin.". Instead of attacking wild-boar, say "That's probably not a good idea without some kind of weapon.".

Every turn when wild-boar is in location, say "[boardesc]". To say boardesc: say "[one of]The [o]boar[x] snuffles its hairy snout through the underbrush, searching for grubs[or]Cracking twigs under its cloven feet, the [o]boar[x] moves slowly through the clearing, sniffing for prey[or]Flicking flies off its backside with its long matted tail, the [o]boar[x] makes tired wheezes as it ambles through the clearing[or]The [o]boar[x] stops suddenly, sniffing something in the air, then returns to foraging[in random order].".

Table of Rain Forest Insect ambience
freq		start time	end time	text
frequent		--	--	"[one of]A blue-bellied spider weaves a delicate web in a nearby tree[or]A skinny centipede crawls through the fallen leaves near your feet, its countless legs twirling[or]A trio of yellow-blue butterflies flit by, vanishing quickly into the depths of the forest[or]A jet-black slug crawls slowly up a nearby tree trunk, ancient and buried in moss[or]Struggling with her wriggling prey, a blue-bellied spider works tirelessly to wrap a small black fly in silken webbing[or]A pair of small snails inch slowly along a fallen tree trunk[in random order]." 
frequent		--	--	"[one of]A buzz of flies hovers over the tiny corpse of a dead rodent[or]Black beetles scurry away into the decaying leaves, disturbed by your footsteps[or]A pair of small winged insects, black but for brilliant red dots on their heads, fly by in a complex, whirling mating dance[or]Hundreds of tiny blue ants carry fragments of leaves and twigs industriously into a myriad of holes at the base of the tree roots[or]A line of tiny blue ants crawls industriously down a mouldering fallen tree trunk[or]With a metallic buzzing, some beetle-like insect zips from tree to tree overhead[or]A lone red and cream striped bee zips quickly through the trees, dodging and weaving past a hundred obstacles with ease[in random order]."
rare		--	--	"[one of]With a sudden swoop, a bird swoops down from the canopy to snatch a wriggling centipede from a nearby boulder, vanishing again in a heartbeat into the forest[or]With a sudden jerk, you slap your hand to your head and brush away a blue-bellied spider, which skitters hastily away into the underbrush[in random order]."

[[or]A buzz of flies hovers over the tiny corpse of a dead rodent[or]Black beetles scurry away into the decaying leaves, disturbed by your footsteps[or]A pair of small winged insects, black but for brilliant red dots on their heads, fly by in a complex, whirling mating dance[or]Hundreds of tiny blue ants carry fragments of leaves and twigs industriously into a myriad of holes at the base of the tree roots[or]A line of tiny blue ants crawls industriously down a mouldering fallen tree trunk[or]With a metallic buzzing, some beetle-like insect zips from tree to tree overhead[or]A lone red and cream striped bee zips quickly through the trees, dodging and weaving past a hundred obstacles with ease]

Table of Rain Forest Creature ambience
freq		start time	end time	text
frequent	--	--	"[one of]A steady chorus of bird calls soaks through the rain forest from high in the sunlit canopy above[or]Above you, four or five small squirrel-like creatures deftly leap from branch to branch, on their way to some important destination[or]A pair of birds chase each other through the hanging moss and branches in a sudden flutter of wings[or]A small black squirrel creature watches you guardedly from a high branch, then scampers away[or]A flock of small blue birds descend on a nearby tree, and sit there grooming themselves and chirping loudly[in random order]."

Table of Rain Forest Night ambience
freq		start time	end time	text
frequent	--	--	"[one of]Something sticky and tickling brushes at your face; clawing it away in a momentary panic, you realize it was a spider's web[or]A branch snaps loudly, somewhere close by and you freeze for a long moment, but hear nothing further[or]Something unseen scurries away from you in the darkness[or]An unseen animal calls out somewhere nearby in the forest[in random order]."



The exits text of a rainforest-room is usually "[if night]In the blackness, you stumble with every step, and can barely make out possible routes. [otherwise if twilight]The light is rapidly failing, and ways through the forest are growing harder to see. [otherwise if dawn]It's still quite dim, but you can make out a few possible routes. [end if][Forest Exit Routine]". 

To say Forest Exit Routine:
	if location is Forest1, say "[Forest1Exits]";
	if location is Forest2, say "[Forest2Exits]";
	if location is Forest3, say "[Forest3Exits]";
	if location is Forest4, say "[Forest4Exits]";
	if location is Forest5, say "[Forest5Exits]";
	if location is Forest6, say "[Forest6Exits]";
	if location is Forest7, say "[Forest7Exits]";
	if location is Forest8, say "[Forest8Exits]";
	if location is Forest9, say "[Forest9Exits]".

Table of Nearby Rain Forest ambience
freq		start time	end time	text	table		trigger	flag
uncommon	dawn	twilight		"[if night][nightforest][otherwise][one of][timeofdayrelatedforestamb][or][nottimeofdayrelatedforest][at random][end if]."

To say nightforest: say "[one of]A tiny crash echoes from somewhere inside the rainforest, a tiny creature falling prey to some nocturnal predator[or]The rain forest is eerily quiet, like some slumbering beast, huge, humid, and black[or][if moonup]The moon breaks through a cloud and gives momentary form to the edge of the rain forest, details painted in its stark silver-pink light[otherwise]The stars glimmer brightly above the indistinct edge of the rainforest, but penetrate its black interior not at all[end if][in random order]".

To say nottimeofdayrelatedforest: say "[one of]A strange animal cry echoes from somewhere inside the rainforest, muffled and distorted, as if only barely escaping the thick carpet of moss-covered trees[or]A muffled crash sounds faintly from within the rainforest, perhaps some long-dead tree finally giving way to gravity's pull[or]A bird call sounds sharply from some tree on the edge of the rain forest, repeating several times with clockwork regularity before falling silent[or]A gust of wind makes the green tide of the rain forest shimmer and breathe, swaying and waving the humid air[in random order]".

To say timeofdayrelatedforestamb:
	if dawn begin; say "[one of]Shapes gradually begin to coalesce out of the dimness of the rain forest: trees, ferns, boulders, and vines coming into being[or]The rain forest is utterly still in the growing light, as if even the wind has yet to wake up[in random order]";
	otherwise if morning or sunrise or midmorning; say "[one of]The morning light burnishes the tops of the forest trees, but you sense the deep interior is still cold and unlit[or]A whispering susurrus of sound trickles out of the rainforest, the noise of a million leaves rubbing against each other, a million beetles scurrying[in random order]";
	otherwise if midday; say "[one of]The rain forest bakes in the midday sun, waves of steam rising from its dark, hot interior[or]A faint breath of air stirs the trees of the rain forest teasingly, but then vanishes, like a heat mirage under the baking sun[in random order]";
	otherwise if afternoon; say "[if raining][one of]The rain forest soaks in the falling moisture like a huge green sponge[or]Channels of water run down huge fronds or rivets in tree trunks at the edge of the rain forest[in random order][otherwise if weather state is decided to rain or rained][one of]Wind whips the fringe of the rain forest, great dark leaves quivering under the scudding clouds[or]Bird cries echo through the rain forest as clouds race by overhead[in random order][otherwise][one of]The dense vegetation of the rain forest burns gold and chartreuse in the afternoon light[or]Birds circle lazily over the rain forest, drinking in the sun's slanting rays[in random order][end if]";
	otherwise if evening or sunset; say "[one of]The rain forest lies quiet in the shadow of the lava flow[or]Birds chirp restlessly from atop some tree in the rain forest, anxious for the long shadow of the lava flow to give way to night[in random order]";
	otherwise if twilight; say "[one of]Insects buzz quietly in strange syncopations and harmonies within the depths of the rain forest[or]The rain forest shimmers under a faint wind and the fading sky, settling in for another long night[in random order]";
	end if.
	

To say a sentence about the forest profusion:
	if night begin; say "The interior of the rain forest is almost pitch black in the night; strange undefined shapes and sourceless noises surround you on all sides";
	otherwise; say "[if a random chance of 2 in 3 succeeds and not raining][forestprofusiongen][otherwise][forestprofusiontod][end if]";
	end if.

To say forestprofusiongen: say "[one of]Living things grow on every side, on top of and overtaking each other like a closet too full of unneeded things[or]Light filters warily through the forest canopy high above, filtered green by countless huge leaves and shadowed by dozens of moss-encrusted branches[or]The living forest surrounds you on every side, a verdant chaos of leaves, branches, trunks, moss, and vines of all shapes and sizes[or]Damp air mists through the rain forest, perceptible only in fits[or]Greenery clusters in on all sides, and daylight descends only in timid shafts to touch the odd lucky branch or twist of root[or]Waves of humid air buffet you gently, soaking in smells of earth and vegetation from the huge trees and endless mossy roots that press in on every side[in random order]".

To say forestprofusiontod:
	if dawn or twilight begin; say "[one of]Only the faintest light filters through the canopy to the floor of the rainforest, painting it in dull half-shades and shadows[or]The forest seems half asleep in the faint light, and you tread quietly, as if fearful of waking it up[or]Indistinct shapes and dimensionless forms loom up on all sides in the dim light[in random order]";
	otherwise if sunrise or morning; say "[one of]Wisps of mist hover strangely in the rain forest, like lost cloud children hiding from the punishment of sunlight[or]Bright light turns the canopy far overhead to glowing greens and golds, but only reflected light, shadowless and strange, makes it to the forest floor[in random order]";
	otherwise if raining; say "[one of]Water spatters noisily on the canopy overhead, gurgling down to your level along tree trunks, sudden showers, and huge, endless tear drops[or]The muddy ground sucks at your feet as you slog through the rain forest, stepping carefully over slimed boulders and mouldering deadwood[or]The rain has turned the forest to shades of deep soaked green, slimy earth browns, and rich crinkled blacks[or]Wet leaves slap at your face and water-swelled logs catch at your feet, but you finally manage to stop and catch your breath[or]The humid air is made so thick by the rainfall you are almost afraid to breathe, lest you drown amidst the mud puddles and shivering palm fronds[or]As rain penetrates the canopy and drizzles down to the rain forest floor, you can almost feel the great, twisting tree roots drink it in, the carpet of fallen leaves dissolving gradually into dirt[in random order]";
	otherwise if rained; say "[one of]Water drips continuously from the canopy far above, as the muddy ground struggles to drink in the afternoon's rain[or]The forest steams in the aftermath of the rain, wisps of moisture dancing restlessly through the ancient gnarled trunks and moss-draped vines[or]Rivulets of water trickle into mud puddles, as the rain forest quietly absorbs the rain shower's output[in random order]";
	otherwise if midmorning or midday or afternoon; say "[one of]The rain forest is a symphony of life, heat, moisture, and movement, pressing in on you from all sides oppressively[or]The afternoon heat hangs oppressively in the rain forest, water beading like sweat on moss-swamped trees and twisted, fallen branches[or]The rain forest is hot and heavy in the midday sun, shielding you from its direct light but baking nonetheless in its own moist fire[or]A hot wind gusts through the rain forest, creaking branches, shimmering fronds, and sending a scudding whirl of dead leaves past your feet[in random order]";
	otherwise if evening or sunset; say "[one of]Insects hum and chirp restlessly in the rain forest evening, settling invisibly on high branches and blending imperceptibly into the trunks of ancient, gnarled trees[or]The rain forest is dim and sleepy in the muffled evening light[in random order]";
	end if.

Chapter - Rain Forest Rooms

Section - Forest1

The prose name of Forest1 is "the rain forest". The description of Forest1 is "[forest1desc].". To say forest1desc: say "[if milestone mode is false and final release mode is false](1)[end if][A sentence about the forest profusion]. Clusters of deep-green fronds spring out in concentric circles from tiny buds here on a gentle slope. [paragraph break][exits]". To say Forest1Exits: say "Passable routes depart through a wooden [dr]archway[x][if dir] to the [east][end if], [if dir][southeast] [end if]into a fern-clogged [dr]valley[x], towards a distant [dr]brightness[x][if dir] [north][end if], or "; say "[if dir][south] [end if][dr]between[x] two great hoary tree trunks". Understand "passing" or "between" as south when location is Forest1. Understand "fern-clogged" or "clogged" or "valley" as southeast when location is Forest1. Understand "archway" or "branches" as east when location is Forest1. Understand "brightness" as north when location is Forest1. Report going from Forest1 to Forest7: say "You pass underneath the natural archway of intertwined tree branches." Report going from Forest1 to Forest6: say "You walk carefully down the narrow valley, trees and brambles climbing higher on either side.". Report going from Forest1 to Forest2: say "You pass between the two huge trunks and enter another part of the forest." Report going from Forest1 to Edge of Ravine: say "[one of]Keeping your eyes fixed on the light, you tread carefully over the slippery ground, but not carefully enough: suddenly your foot slips and you slide and stumble down an embankment onto a wide ledge, shaken but unbruised[or]You remember the embankment here this time, and jump off it past the muddy slope that will prevent you from returning this way[stopping].". 

Some clusters of deep-green fronds are a setpiece in Forest1. 

Section - Forest2

The prose name of Forest2 is "the rain forest". The description of Forest2 is "[Forest2desc].". To say Forest2desc: say "[if milestone mode is false and final release mode is false](2)[end if][A sentence about the forest profusion]. Some of the lower ground vegetation here gives way to goliath trees, trunks like pillars carpeted with what seems a thousand years of furry green moss, watching over a bed of delicate [o]wildflowers[x]. [paragraph break][exits]". To say Forest2Exits: say "A faint droning and brighter [if dir]spot [bw of Hive Room]to the [west][otherwise][dr]spot[x] [bw of Hive Room]through some stands of bamboo[end if] may mark the edge of the forest, while other passable routes "; if dir, say "head [bw of Forest1][north], [bw of Forest3][southeast], and [bw of Forest5][south]"; otherwise say "pass [bw of Forest1][dr]between[x] two huge trunks, [bw of Forest3]down an uneven [dr]slope[x], or [bw of Forest5]into a dimmer [dr]hollow[x]". Understand "spot" as west when location is Forest2. Understand "between" as north when location is Forest2. Understand "slope" as southeast when location is Forest2. Understand "hollow" as south when location is Forest2. Report going from Forest2 to Forest1: say "You pass between the two huge trunks and enter another part of the forest." Report going from Forest2 to Forest3: say "[one of]You step carefully down the scree-covered slope, but [if raining or rained]the wet mud bank gives way beneath you[else]a hidden branch catches your foot[end if], and you slide down ungracefully in a tumble of loose rock and rotting vegetation-- it will be quite impossible to go back up[or]You travel down the scree-covered slope more carefully this time, but there's no way you'll be able to climb back up[stopping].". Report going from Forest2 to Forest5: say "You pick your way down a mild slope into the hollow.".

The tree-bee-hint is a described setpiece in Forest2. "One of the huge tree trunks near the edge of the forest is marked with a fading [o]carving[x].". The printed name is "carving". Understand "carving/carvings/drawing/arrow" as tree-bee-hint. The description is "[one of]You pull some moss away from the carving in the tree trunk and study it more closely. It[or]The carving[stopping] shows a crude drawing of a bee, with an arrow pointing from the [if dir]west[otherwise]direction of the droning sound[end if] and angling down towards the bed of wildflowers. A second arrow from the hive points deeper into the forest and is followed by a question mark[if puzzle mode]. Below are carved a few [o]words[x] in a strange script[end if].". Check following tree-bee-hint: say "It's not entirely clear which way the arrow points from here." instead.

The tree words are a hint-based scrawl in Forest2 with standard message "three steps: east, ?, ?" and secret message " third is northeast".

Section - Forest5

The prose name of Forest5 is "the rain forest". The description of Forest5 is "[Forest5desc].". To say Forest5desc: say "[if milestone mode is false and final release mode is false](5)[end if][A sentence about the forest profusion]. [if raining or rained]Trickles of water clogged with leaves and twigs come to rest in this marshy hollow, bounded by thick muddy[otherwise]Innumerable bits of decaying debris, from twigs and leaves to tiny bird bones and snail shells, collect at this low hollow bounded by thick[end if] tree roots twisting their way up to trunks that begin well above your head. [paragraph break][exits]". To say Forest5Exits: say "A [dr]gap[x] of grey [if dir]to the [south] [end if][if former location is Crater Pond]indicates[otherwise]must indicate[end if] an escape from the rain forest, while a crumbling [dr]slope[x] [if dir][north] [end if][f5e2]". To say f5e2: say "or the [dr]swath[x] cleared [if dir][dc]east [x][end if]by a newly-fallen giant lead deeper in". Understand "gap" as south when location is Forest5. Understand "slope" as north when location is Forest5. Understand "swath" as east when location is Forest5. Report going from Forest5 to Forest3: say "You walk along the top of the crumbling tree trunk towards a tiny clearing near the edge of a dropoff.". Report going from Forest5 to Forest2: say "You walk carefully up a slight slope towards a lighter area near a cluster of wildflowers.". Report going from Forest5 to Crater Pond: say "You slip through the gap in the trees and escape the oppressive interior of the rainforest.".

Section - Forest3

The prose name of Forest3 is "the rain forest". The description of Forest3 is "[Forest3desc].". To say Forest3desc: say "[if milestone mode is false and final release mode is false](3)[end if][A sentence about the forest profusion]. The ground gives way here in a sudden dropoff, nearly disguised by sinuous silver-green branches twining up from trees on the steep slope. [paragraph break][exits]". To say Forest3Exits: say "The edge of the dropoff runs [if dir][north] or [south][otherwise]towards a [dr]clearing[x] one way or through curtains of [dr]vines[x] in the other[end if], while the fractured top of a mighty tree long-fallen "; say "[if dir]runs [west][otherwise]clears a [dr]route[x] away from the edge[end if][if Egg Room is visited]. The hidden route [down] to the Egg is also nearby[otherwise if story mode]. An almost invisible gap shows a way [down] into a hidden hollow[end if]". Report going from Forest3 to Forest4: say "You make your way along the edge of the dropoff, curving slightly[if dir] [southeast][end if], feeling the ground harden and given way from moss to lichen beneath your feet.". Report going from Forest3 to Forest9: say "Following the curving edge of the dropoff, you work past curtains of vines and great, drooping leaves as tall as you towards an even more densely vegetated area.". Report going from Forest3 to Forest5: say "Leaping nimbly to the top of the decaying trunk, you walk along the soft moss slowly reclaiming it through the forest.". Understand "clearing" as north when location is Forest3. Understand "vines" as south when location is Forest3. Understand "route" as west when location is Forest3.

The sudden dropoff is a setpiece in Forest3. The description is "Dense vegetation prevents you from seeing much of anything other than the sudden drop[if Egg Room is unvisited]; you certainly can't see a way down[end if].". Instead of entering sudden dropoff when Egg Room is unvisited: say "You can't see any way down.". Instead of entering sudden dropoff: try going northeast.

Before going nowhere when location is regionally in Rain Forest: increase dumb-luck-counter by 5. dumb-luck-counter is a number that varies. Every turn when dumb-luck-counter > 0: decrease dumb-luck-counter by 1. [This prevents a brute force attempt to find the Egg by going every direction from every forest room. Our in-game explanation can be that after a while the player gets tired and doesn't notice the exit. ]

Instead of going from Forest3 to Egg Room when dumb-luck-counter > 15, say goingnowhere.

Report going from Forest3 to Egg Room: say "[if Egg Room is unvisited and puzzle mode]Lining up the compass carefully, you take a bearing along the precise direction of northeast-- and suddenly feel a surge of excitement. Through a gap you could barely squeeze through in the silver-green branches you spot a massive fallen tree trunk that slopes steeply down into a hidden hollow.[paragraph break]Squeezing between the gap, you walk carefully down the steep trunk of a fallen windsigh to the hidden hollow.[section break][otherwise if Egg Room is unvisited]Squeezing between the gap, you walk carefully down the steep trunk of a fallen windsigh to the hidden hollow, and what you see makes you stop short in astonishment.[section break][otherwise]Squeezing between the gap, you walk carefully down the steep trunk of a fallen windsigh to the crater with the crashed egg ship.[end if]". Report going from Egg Room to Forest3: say "You step up onto the rotting windsigh trunk, made spongy by rain and time, and walk the steep angle back up through the gap into the rain forest.".

Section - Forest4

The prose name of Forest4 is "the rain forest". The description of Forest4 is "[forest4desc].". To say forest4desc: say "[if milestone mode is false and final release mode is false](4)[end if][A sentence about the forest profusion]. Great slabs of sloughed-off rock, a giant's skipping stones, tilt the ground here to strange angles, surfaces covered in countless tones of green-blue lichen and broken by clusters of ferns and skinny tree trunks. [paragraph break][exits]". To say Forest4Exits: say "The dropoff curves around [if dir][northwest] or [east][otherwise]into [dr]denser[x] forest or through a thick [dr]cluster[x] of short, stubby palms[end if]. The faint sounds of trickling water force their way through an impenetrable-looking [dr]wall[x] of bamboo[if dir] to the [southwest][end if]". Report going from Forest4 to Forest3: say "You keep the dropoff on your right side as you work your way away from the rocky ground[if dir], curving around to the north[end if].". Report going from Forest4 to Forest9: say "The palms have bark like armor and are densely clustered, making your progress slow. The dropoff curves in a gentle arc as you work your way through the grove, until you have almost turned around again[if dir] to the northwest[end if]. Eventually the palms lose their footing to even denser vegetation and you pause to catch your breath.". Report going from Forest4 to Crater Pond: say "Taking a deep breath, you plunge into the bamboo and are almost immediately completely lost and disoriented. The barely-yielding turtle green stalks surround you and give almost no headway. After an interminable amount of pushing, squeezing, and grunting, you finally push your way out into [if day]daylight[otherwise]open air[end if] and gasp for breath.". Understand "denser" as northwest when location is Forest4. Understand "cluster" as east when location is Forest4. Understand "wall" as southwest when location is Forest4.  [Instead of examining by name basic-walls when location is Forest4: try wordgoing Crater Pond.]

Section - Forest6

The prose name of Forest6 is "the rain forest". The description of Forest6 is "[forest6desc].". To say forest6desc: say "[if milestone mode is false and final release mode is false](6)[end if][A sentence about the forest profusion]. Bulbous red-orange fruits grow from spindly trees, weird curves and patterns etching their shiny skin. [paragraph break][exits]". To say Forest6Exits: say "A narrow leaf-choked [dr]valley[x] climbs [if dir][northwest][otherwise]upwards[end if], adjacent to a passable [dr]badlands[x] of tree roots[if dir] to the [north][end if]; the rain forest in all other directions looks impassable". Report going from Forest6 to Forest7: say "You find the tree roots make easy hand and footholds, plentiful but unsteady, as you clamber over the arboreal maelstrom, feeling like a child in some madman's playground given explosive life. Eventually a green tide of mossy soil rises up to recover the roots and once again you stand on solid ground." Report going from Forest6 to Forest1: say "Keeping out of the marshy bottom, you step carefully up the tiny ravine towards its top, wishing dearly for a machete as you go.". Understand "valley" as northwest when location is Forest6. Understand "badlands" as north when location is Forest6. 

Some bulbous fruits are a prop in Forest6. Understand "fruit/red-orange/seed/seeds/strands" as bulbous fruits. The description is "About the size of a newborn, the fruits are elongated spheres striped with ridges, their skin a brilliant red-orange, shocking against the mostly pale greens of the rain forest.". Instead of taking bulbous fruits, say "You try to pull one from the tree, but they are attached to the branches with thick, ropey stems; perhaps they are not yet ripe.". Instead of attacking bulbous fruits, say "You find a small rock and bash it against the side of the fruit. The tough skin gives way, and dense brown ropey strands thick with seeds oozes out.". First Check tasting bulbous fruits: try attacking bulbous fruits; say "The thick seeds seem to be the most edible, so you pop one in your mouth and chew. The flavor is dark and bitter at first, but a warming, tantalizing aftertaste lingers after." instead. Instead of touching bulbous fruits: say "The skin feels hard and thick, but gives a little under your touch, like an overripe pumpkin.".

Section - Forest7

The prose name of Forest7 is "the rain forest". The description of Forest7 is "[forest7desc].". To say forest7desc: say "[if milestone mode is false and final release mode is false](7)[end if][A sentence about the forest profusion]. The verdant terrain, faintly convex, hosts a rambling cluster of grey-brown trees with snake-like roots half-out of the ground. [paragraph break][exits]". To say Forest7Exits: say "From here, you could [dr]clamber[x] down a gauntlet of tree roots[if dir] to the [south][end if], pass through a natural wooden [dr]archway[x][if dir] [west][end if], [f7e2]". To say f7e2: say "or investigate a [dr]gurgling[x] sound[if dir] [northeast][end if]". Report going from Forest7 to Forest8: say "[if Forest8 is unvisited]Curiously, you push aside masses of feather-light ferns, heading[otherwise]Lifting the masses of ferns aside, you head[end if] in the direction of [if Forest8 is unvisited]the strange sound[otherwise]the mud pots[end if].". Report going from Forest7 to Forest6: say "Proceeding with caution, you half walk, half lower yourself through the tangled mess of tree roots until you stand on relatively flat ground again." Report going from Forest7 to Forest1: say "You pass under a natural arch of wood, two great branches of vine-wrapped trees growing into and around each other, and enter another part of the forest." Understand "clamber" as south when location is Forest7. Understand "archway" as west when location is Forest7. Understand "gurgling" as northeast when location is Forest7.

Section - Forest8

The prose name of Forest8 is "the rain forest". The description of Forest8 is "[forest8desc].". To say forest8desc: say "[if milestone mode is false and final release mode is false](8)[end if][A sentence about the forest profusion]. Fist-sized bubbles splatter noisily from a half dozen oval puddles of creamy gray mud, tucked into miniature craters choked with vines and tiny leafed creepers. A faint smell of sulfur mists the air, clinging heavily to damp tree trunks. [paragraph break][exits]". To say Forest8Exits: say "Faint sounds of surf whisper through willowy [dr]fronds[x][if dir] to the [north][end if], while[if not dir] in the opposite direction[end if] dots of [dr]color[x][f8e2]". To say f8e2: say "[if dir] [dc]southwest[x][end if] and [dr]spears[x] of sharp leaf[if dir] [southeast][end if] both draw your eye". Report going from Forest8 to Viewpoint: say "You follow the familiar sound of the surf through the greenery, and eventually emerge from the forest to a stunning viewpoint.". Report going from Forest8 to Forest9: say "Passing by clusters of strange green-black leaves that spear straight up and then gently fan out far above your head, you curve around the most easy path before arriving at the edge of a dropoff.". Report going from Forest8 to Forest7: say "You shove aside a limitless supply of huge bowed ferns, leaving the bubbling mud pits behind as you advance into another part of the forest.". Understand "fronds" as north when location is Forest8. Understand "color" as southwest when location is Forest8. Understand "spears" as southeast when location is Forest8.

Some oval puddles of mud are a setpiece in Forest8. Understand "puddle/creamy/gray/craters/sulfur/bubble/bubbles" as mud. The description is "A few of the puddles gurgle sloppily as fumes of gas rise through their muddy depths; the others steam silently, warm to scalding hot.". Instead of touching or taking or tasting mud, say "The mud in the puddles is near boiling; you draw your hand back hastily.". Instead of entering or swimming in puddles, say "Unfortunately, they're far too small (and hot) for that." 

Section - Forest9

The prose name of Forest9 is "the rain forest". The description of Forest9 is "[forest9desc].". To say forest9desc: say "[if milestone mode is false and final release mode is false](9)[end if]Vines, tree trunks, and fallen leaves so glut this spot it almost seems you are indoors, trapped in some shifting vegetable prison, but at the center of the green maelstrom the lesser plants make way for [windsigh phrase of tree5], the only one you've seen in the forest, rising mysteriously from the damp mossy earth.[paragraph break]A large, flat-topped [o]boulder[x] near the tree is topped by a bed of deep, springy moss.[paragraph break][exits]". To say Forest9Exits: say "You can escape towards strange bubbling [dr]sounds[x][if dir] to the [northeast][end if], follow the edge of the dropoff [F9ex2]". To say F9ex2: say "[if dir][southeast] or [west][otherwise]through a [dr]grove[x] of armored palms or in the [dr]opposite[x] direction[end if], or bushwhack through a wall of [dr]shrubs[x][if dir] [northwest][end if]". Report going from Forest9 to Forest8: say "Passing by clusters of strange green-black leaves that spear straight up and then gently fan out far above your head, you curve around the most easy path before stepping into wisps of sulfury mist." Report going from Forest9 to Forest6: say "Bravely, you push into the wall of shrubs and immediately decide you've made a mistake: hundreds of tiny rough leaves and sticks scratch you on every exposed surface. Attempts to back up make matters even worse, so instead you make a desperate push forward and pop out into a grove of curious fruits." Report going from Forest9 to Forest3: say "You follow the dropoff, curving gently, into another part of the forest." Report going from Forest9 to Forest4: say "The densely clustered palms provide only one real route past their stunted trunks, as you work gradually around the dropoff, keeping it to your right as you curve around. Eventually the ground hardens up and you find yourself in a less crowded part of the forest.". Understand "sounds" as northeast when location is Forest9. Understand "grove" as southeast when location is Forest9. Understand "opposite" as west when location is Forest9. Understand "shrub/shrubs" as northwest when location is Forest9. 

Tree5 is a windsigh tree in Forest9.

The tree5-nook is a nook in Forest9. The printed name is "boulder". Understand "boulder/moss" as tree5-nook when location is Forest9. The description is "The mossy top of the boulder looks like an inviting place to lie down for a minute."  Instead of touching tree5-nook, say "The moss is not damp at all, and soft as fur under your fingertips.". First report entering tree5-nook: say "Easily lifting yourself up to the top of the boulder, you stretch out on the soft moss." instead. First report getting off when player was on tree5-nook: say "Reluctantly, you push your feet off the edge of the mossy boulder and return your feet to the rain forest soil." instead. The sleep message of Forest9 is "As you close your eyes, the sounds of the rain forest seem to fade away until all you can hear is the rustling of the windsigh's lemon-yellow leaves, and the sighing tones of air moving through its perforated branches. Slowly, even these fade as you drift into sleep."

The ambience table of Forest9 is Table of Forest9 ambience.

Table of Forest9 ambience
freq		start time	end time	text	table		trigger	flag
common	--		--		--	Table of Windsigh ambience




Chapter - Egg Room

The prose name of Egg Room is "the crashed egg ship". The description of Egg Room is "[eggroomdesc].". To say eggroomdesc: say "Rising from the ground of this hidden [if we have examined the egg-proper]crater[otherwise]hollow[end if], walled in by dense jungle on all sides, is a massive rounded shape[if afternoon] lit by a single shaft of sunlight[otherwise if night and moonup] made ominous by the indistinct and filtered moonlight[end if]. Dense encrusted jungle growth fails to hide that the shape underneath is perfectly smooth and rounded, like a giant-sized [o]egg[x] with one end smashed and crumbling. [eggdesc2]". To say eggdesc2: say "A few paces from the egg is a rough-hewn [o]workbench[x] growing out of a carpet of wildflowers, nearly swallowed up by the jungle and [windsigh phrase of tree6] that seems to grow from its center, roots twining down table legs to the ground.[paragraph break]Near the workbench is a grassy [o]mound[x], relatively free from forest debris.[paragraph break][exits]". The printed name of Egg Room is "The Egg". The exits text of Egg Room is "Dim shapes beckon from the [inside] of the egg. The trunk of the fallen tree leads back [up] out of the crater, while you sense open space [down] a steep slope leading to a crack in the crater wall".

Eggroom-stuff is stuff in Egg room. Understand "crater/hollow/walled/jungle/shaft/growth/legs/crack" as Eggroom-stuff when location is Egg room.

Report going from Egg Room to Egg Interior: say "[if Egg Interior is unvisited]Hesitantly, y[otherwise]Y[end if]ou step inside the [if night]black[otherwise if twilight or dawn]indistinct[otherwise]shadowed[end if] interior of the Egg.".

The egg-proper is a setpiece in Egg Room. The printed name is "egg". Understand "shape" or "massive" or "rounded" or "giant-sized" or "giant" or "end" or "smashed" or "crumbling" or "egg" as egg-proper. The description is "[one of]As you study the position of the egg against the surrounding topography, something becomes chillingly clear: you stand within a crater, and this egg-shaped object was its cause[or]The position of the egg relative to the surrounding topography makes it clear that this great shape fell from the sky long years ago[stopping]. Despite what must have been a tremendous impact, the egg is mostly intact: the bottom is crushed, and a great crack has opened up providing access to the [d]inside[x], but otherwise the lines of the moss-encrusted shape are unbroken.". Instead of attacking egg-proper: say "Underneath the moss, dirt, and vegetation, the metallic surface seems terribly solid and uncorroded.". The dream-text of egg-proper is "cartons of eggs". Instead of entering egg-proper: try going inside. Check climbing egg-proper: say "The vines and vegetation half-dragging the egg back into the forest make easy hand and footholds. You quickly clamber up to the top of the egg, but find nothing underneath the muck of fallen leaves and soil other than a smooth, unbroken surface.[paragraph break]After a thorough search, you return to the ground.".

The rough-hewn workbench is an undescribed supporter in Egg Room. Understand "bench" or "table" as rough-hewn workbench. The description is "Obviously assembled hastily and with no eye for craftsmanship, the workbench rests half-concealed under a tangling mass of jungle overgrowth[if eggvines are off-stage]; although you've cleared the top to reveal [a list of things on the rough-hewn workbench][otherwise]; thick [o]vines[x] and moss have completely overrun its surface[end if].". The dream-text of workbench is "delicate stacks of painted eggs". 

Some eggvines are a prop in Egg Room. The printed name of eggvines is "vines". Understand "vines" or "moss" as eggvines. The description of eggvines is "The vines have completely overrun the surface of the workbench." Instead of taking or pulling or pushing or attacking eggvines for the first time: say "You pull one of the vines. It clings tightly to the wood, but slowly strips away, revealing a weathered strip of wood beneath. It looks like with a bit of work, you could remove the vines from the bench." Before taking or pulling or pushing or attacking eggvines: remove the eggvines from play; say "Working systematically, you begin stripping the vines and growth from the table. The forest has encroached on the workbench to an unbelievable extent, but after a few minutes of solid work, you've managed to uncover the surface. [paragraph break]On the workbench are [a list of things on the workbench]." instead. Instead of looking under eggvines, say "Some irregular lumps in the undergrowth do seem to hint there may be something under there." Instead of rubbing the rough-hewn workbench, try pulling the eggvines.   Understand "remove vines from [workbench]" as rubbing when location is Egg Room.

A cluster of seed pods is a prop on the rough-hewn workbench. Understand "pod" as cluster of seed pods. The description is "Spread around the young [if tree1 is named][o]windsigh[x][otherwise][o]tree[x], another of those like the one you painted[end if], which seems to grow out of the table itself, half-buried in dirt, are a handful of tiny, pointed seed pods unlike any others you've seen on the island. Light in weight and colored a rich yellow-brown, the size of a small fruit, the seed is filled with a myriad of tiny holes running straight through its roughly spherical shape.". Rule for printing the name of cluster of seed pods while listing contents: say "cluster of [o]seed[x] pods". Understand "plant [cluster of seed pods]" or "bury [cluster of seed pods]" as a mistake ("Carefully, you dig a small hole in the ground and bury the seed in it, covering the hole back up and patting it firmly."). Instead of attacking cluster of seed pods: say "The pods are hard and the tines sharp, but you manage to crush one under the base of your hand against the workbench.". The dream-text of cluster of seed pods is "thousands of pointed seed pods".

A silver tube is a prop on the rough-hewn workbench. The description is "Wiping a layer of grime from the tube, you see that underneath its surface is a lustrous, metallic silver. The tube is hollow and open at one end; as you tip it another seed cone rolls out.". Rule for printing the name of silver tube while listing contents: say "silver [o]tube[x]".

[The fallen windsigh tree is a setpiece in Egg Room. The description is "Though stripped of its vines and yellow flowers, you've seen enough windsigh by now to recognize this trunk as one of them. It has been many years since this one fell; rainfall, termites, and rot have made the trunk spongy and are starting to meld its shape into the land beneath it. It's still solid enough, however, to walk [up] its length back to the rain forest.".]

tree6 is a windsigh tree in Egg Room. Understand "young" as tree6. The printed name of tree6 is "young [if tree1 is named]windsigh[x] [end if]tree". The description is "This young [if tree1 is named]windsigh[otherwise]tree[end if], only about twice your height[if tree1 is unnamed] but recognizably the same as the other twisted trees you've seen[end if], seems to be growing straight out of the workbench, long spindly roots twined around the table legs to plunge into the soil below, lemon-yellow leaves poking brightly from its vine-wrapped branches.". Instead of climbing tree6, say "The tree is too young to climb without damaging it.".

The tree6-nook is a nook in Egg Room. The printed name is "grassy mound". Understand "grassy/mound/grass" as tree6-nook. The description is "The mound looks like a good spot to curl up on."  Instead of touching tree6-nook, say "The grass is soft and dry.". First report entering tree6-nook: say "You stretch out on the grassy mound. The warm grass collapses into a nest beneath your body, and the blades tickle your nose until you shift into a better position." instead. First report getting off when player was on tree6-nook: say "You step up off the grassy mound." instead. The sleep message of Egg Room is "Lulled by the rustling of the leaves above and the quiet sigh of the tree, you drift into a deep, bottomless sleep."

A circle of quartz is a prop on the workbench. Understand "glass" or "lens" or "magnifying" or "shape" or "convex" as circle of quartz. The description is "Cleaning the dirt and moss from this hefty piece of translucent rock, the size of a large dinner plate, you see it has been expertly carved into a convex shape that allows it to act as a simple magnifying lens.". Rule for printing the name of a circle of quartz while listing contents: say "circle of [o]quartz[x]". Instead of taking circle of quartz: say "It's too heavy to carry it around, and encrusted with enough dirt and grime to not function very well as a magnifier any more, regardless." Understand "look through [circle]" or "look in [circle]" as a mistake ("Peering through the quartz, you can see how it has been shaped to magnify things. You study the various objects on the workbench for a few moments, but learn nothing useful.").

The ambience table of Egg Room is Table of Egg Room ambience.

Table of Egg Room ambience
freq		start time	end time	text	table		trigger	flag
common	--		--		--	Table of Windsigh ambience


Chapter - Egg Interior

The description of Egg Interior is "Though it seems the rounded walls of the interior were excavated some years ago, the jungle has crept back in already, sending tendrils of vines around the shadowy contents: a line of vertical [o]cylinders[x], transparent, cracked; a gutted bank of [o]controls[x] leaking wires and foam; and an etched [o]design[x] on the curved inner wall, almost entirely covered now in vines. [paragraph break][exits]." The exits text of Egg Interior is "[if night]A shaft of faint [light-source] slices in from the forest [dr]outside[x][otherwise]Daylight streams in through the [dr]gash[x] in the side of the egg providing [eteibit]". To say eteibit: say "[if dir]a way [out][otherwise]egress[end if]". Understand "gash" as outside when location is Egg Interior. The prose name of Egg Interior is "inside the Egg". 

EggInterior-stuff is stuff in Egg Interior. Understand "jungle/contents" as EggInterior-stuff when location is Egg Interior.

Check sleeping in Egg Interior: say "It's too cramped and creepy in here; but you saw a spot just outside.[sleepsuggest]" instead.

The transparent cylinders are an undescribed transparent container in Egg Interior. They are closed and unopenable and fixed in place. Understand "cylinder" as cylinders. The description is "There are twelve, each large enough to hold a person, smooth and transparent. Cracks, some long and sharp-edged and others explosions of fracture points, mar each cylinder's surface[if we have not examined the transparent cylinders], so that it takes you a long moment to realize that the crumpled white shapes inside are human [o]skeletons[x][otherwise], half-concealing the crumpled [o]skeletons[x] within[end if].". Instead of opening the transparent cylinders, say "They seem to have no clasp or handle that you can find, and the dusty controls along the side as dead and unresponsive as their occupants." Instead of attacking transparent cylinders: say "You smash one of the fractured cylinders as hard as you can with an elbow, but even though it is already fractured and weakened, you do not even cause the fracture lines to lengthen.". Instead of taking cylinders, say "They seem to be joined seamlessly to the curving walls of the Egg.".

The human skeletons are a setpiece in the transparent cylinders. Understand "skeleton" or "corpse" or "human" or "body" as human skeletons. The description is "[if we have not examined the skeletons]No-- not human. As you draw nearer, you see at once any number of subtle differences. A slightly rounder skull, wider spacing between the eyes, different numbers of knuckles or arrangement of joints. But the similarities vastly outnumber the differences, and you have no doubt that if these twelve were alive you would recognize a kinship in them, and they in you.[paragraph break][otherwise]Though not quite human, the skeletons are close enough to it that you find yourself chilled. [end if]Each lies crumpled in a heap against the padded rear walls of a cylinder, the muscles that held their shape together long since turned to dust.". Instead of taking or touching or pushing or pulling the human skeletons, say "The glass is cracked, but still intact, preventing you from reaching inside the transparent chambers.".

The gutted bank of controls is a setpiece in Egg Interior. Understand "control/wire/wires/foam/gaping/hole" as gutted bank of controls. The description is "Protruding in a seamless, graceful curve from the end of the tilted egg smashed into the ground, the console is mostly ruined; blackened and melted slag suggest complex machinery now destroyed. One part of the bank has been forcibly pulled back and exposed, leaving a gaping hole amidst the ruined components inside.". Instead of searching controls, say "Whatever was once in here is gone now.". Instead of pushing or pulling or touching or using controls, say "Curiously, the controls seem to be entirely within the 'shell' of the egg; nothing protrudes into the interior other than the warped and destroyed debris breaking through the crushed walls. Regardless, there is nothing which looks operable any more.". Instead of taking controls, say "The remaining material seems either melted or embedded into the shell of the egg.".

The egg-mural is a setpiece in Egg Interior. Understand "design/etching/symbol" as egg-mural. The printed name of egg-mural is "mural". The description is "[if we have not examined egg-mural]You pull away a few trailing vines for a better look. [end if]The etching, covering one rounded interior wall of the Egg, has the look of something burned into metal, although the wall is perfectly smooth. It shows an iconic, stylized symbol, simultaneously simple yet rich with detail, depicting a [o]man[x] with arms outstretched, intertwined in the roots of a great windsigh [o]tree[x].". Instead of taking or touching or pushing egg-mural, say "Other than the accumulated jungle grime, the surface of the mural is perfectly smooth.".

The human-in-the-mural is part of the egg-mural. The printed name is "figure in the mural". Understand "man" or "figure" or "part" or "arms" as the human-in-the-mural. The description is "Most striking about the figure, other than the tree roots twining around his body, sometimes hard to tell apart from muscle and sinew, is the head, depicted as a perfect oval, featureless, radiating light. The head makes a geometrical pattern with two other ovals: the human's smaller navel below, and a larger hole in the windsigh's trunk the same distance above.[paragraph break]In fact, the way the image is drawn, the head could just as easily be a smooth gap in the roots of the tree.".

The tree-in-the-mural is part of the egg-mural. The printed name is "tree part of the mural". Understand "tree/tree9" or "part" or "windsigh" as the tree-in-the-mural. The description is "The windsigh in this drawing is different than the ones you've seen on the island: taller and stronger. Now your vague intuition of stuntedness is borne out, as the tree in this etching is obviously in its prime in a way the ones here are clearly not.".

Report going from Egg Interior to Egg Room: say "You step back outside into the crater.".

Part - The Secret Island

Chapter - Backside

Report going from Egg Room to Backside: say "You push through vegetation blocking a gully leading out of one eroded side of the crater[if a random chance of 1 in 2 succeeds][time-of-day-bit][end if]. The ground quickly drops off and descends at a sharp angle towards the sound of the surf, not far below.". Report going from Backside to Seal Beach: say "You scramble down the last of the canyon to firmer footing on a rocky ledge.". Report going from Backside to Egg Room: say "You clamber up the last steep slope of the gully and climb back into the crater.".

The prose name of Backside is "the steep canyon behind the egg ship". The description of Backside is "[backsidedesc].". To say backsidedesc: say "Descending at a rate that requires both hands and feet to navigate, this debris-choked stream bed, dry at the moment, tumbles down the cliffs that make up this side of the island. Below, waves beat heavily against the cliff. [paragraph break][exits]". The exits text of Backside is "The gully continues [down] or [up]". The printed name of Backside is "Narrow Gully".

Backside-stuff is stuff in Backside. Understand "gully/side/crater/angle/bed/stream/cliffs/cliff" as Backside-stuff when location is Backside.

Instead of sleeping in Backside, say "It's too steep here for that.[sleepsuggest]".


Chapter - Seal Beach

The prose name of Seal Beach is "the seal beach". The description of Seal Beach is "[sealbeachdesc].". To say sealbeachdesc:
	say "The canyon abruptly drops off here to a short, rocky beach covered in speckled brown [o]seals[x], grunting and shuffling lazily. A waterfall cascades off the cliff from the dense wall of rain forest above, vanishing into the wet stones in the hidden alcove. Across what looks to be a deep and turbulent channel of seawater rises a tiny domed island like a balding head, lush green trees sprouting from its upper slopes[dot]";
	say "A rope [o]bridge[x] spans the channel to the small island[if puzzle mode], but it starts from a rocky boulder a stone's throw away; even though a narrow wooden [o]archway[x] on the ledge you stand on seems to be a gateway to it, you see no way to get across to the bridge. A [o]pillar[x] rises from the ground near the archway[end if][dot]";
	say "[exits]".

The exits text of Seal Beach is "[etsealbeach]". To say etsealbeach: if secret rope bridge is open, say "The dry streambed leads [bw of Backside][up] towards the plateau, or you could head [dr]across[x] the bridge[if dir] to the [northeast][end if] [bw of Overhang]towards the tiny island"; otherwise say "The dry streambed leading [bw of Backside][up] is the only place you can really get to at the moment". Understand "across" as northeast when secret rope bridge is open and location is Seal Beach.

Some mottled seals are an undescribed animal in Seal Beach. The description is "The seals bask noisily on the small beach, packed in so tight you almost cannot see the rocky sand beneath them.". Understand "seal" as some seals.

The seal-waterfall is a setpiece in Seal Beach with printed name "waterfall". Understand "waterfall" as seal-waterfall.

The tiny domed island is scenery in Seal Beach with description "Lush green vegetation clings to the top of the tiny island as if it were the only spot of land in the world.".

A rocky boulder is minor scenery in Seal Beach with description "The sheer, algae-slicked sides of the boulder rise from the turbulent channel, unconnected to either the main island, and joined to the smaller domed island by the bridge.".

Check vague swimming when location is Seal Beach: say "Swift currents seem to be moving through the deep passage between here and the domed island, and foam laps angrily against sharp rocks. This is not a good place to swim." instead.

Section - Rope Bridge and Pillar

The secret rope bridge is an undescribed door. It is northeast of Seal Beach and southwest of Overhang. The secret rope bridge is unopenable and closed and not lockable. The description is "The long rope bridge arcs gently over the peaky, deep blue waves crashing against each other in the channel below, some three or four times your height above them, before reaching what looks like a grotto on the small island.". Instead of crossing the secret rope bridge, try entering the secret rope bridge. Instead of entering the secret rope bridge when secret rope bridge is closed, say "You can't get to the start of the bridge from here; it runs from the secret island to the top of a freestanding boulder a good distance from your ledge above the beach.". Instead of going northeast in Seal Beach when secret rope bridge is closed, try entering the secret rope bridge.

Instead of jumping when location is Seal Beach, say "On this tiny ledge, you have no way to get a running start or even a good solid push-off point-- you'd never make it.".

Instead of going down in Seal Beach: say "There's not a good way to scramble down to the beach from here, and even if you could, there'd hardly be a place to stand, and you'd disturb the seals. Or, judging by their size, they might well disturb you instead.".

The secret-bridge control is an open unopenable undescribed container in Seal Beach with printed name "pillar". It is fixed in place. Understand "pillar/indentation/jagged/hole" as secret-bridge control. The description is "It rises to about waist height and is featureless, except for a circular indentation on its flat top. In one half of the indentation is a jagged hole, in the shape of a seven-pointed star.". Instead of inserting the compass into the secret-bridge control when the compass is unmolested or the compass is revealed: say "The compass fits in the indentation perfectly[if compass is revealed], and the star shape lines up with the hole in the indentation,[end if] but no matter how you push, prod, twist, or align it, nothing seems to happen. You pick it back up and put it around your neck again.". Instead of inserting the compass into the secret-bridge control: now secret rope bridge is open; say "The extruded star shape and the compass fit perfectly in the indentations atop the pillar. As you drop it into place, a catch releases, and the wooden archway falls forward and slams down on the first plank of the rope bridge, allowing you to reach it and go [dr]across[x][if dir] [northeast][end if] to the other side.". Instead of putting something (called dongle) on the secret-bridge control: try inserting dongle into secret-bridge control. [Understand "lay/place/press" as "[press]".] Understand "lay [something] in/inside/into/to/on [something]" as inserting it into. Understand "place [something] in/inside/into/to/on [something]" as inserting it into. Understand "press [something] in/inside/into/to/on [something]" as inserting it into.

Instead of inserting something into secret-bridge control, say "That doesn't go there.". Instead of touching secret-bridge control, say "The pillar is just a simple wooden pole, slick with sea spray; the indentation on top is about the size of a pocketwatch.". Instead of pushing secret-bridge control, say "You push down on the indentation, but it is just a shape scooped out of the wood. Your finger is too large to fit in the seven-pointed hole in the bottom.". Instead of attacking secret-bridge control, say "The pillar seems firmly secured, and does not give to a good kick.".

The wooden archway is a setpiece in Seal Beach. The description is "[if secret rope bridge is closed]The narrow wooden archway is really just two vertical planks, joined at the top with a rounded connector[else]The archway has collapsed, forming two planks spanning the gap between you and the start of the rope bridge[end if].". Instead of pushing or pulling the wooden archway when secret rope bridge is closed: say "It seems a little wobbly, but something firmly resists your moving it very far.". Instead of pushing or pulling the wooden archway: say "You can't get any leverage to lift it back up.". Check entering archway: if secret rope bridge is open, try entering secret rope bridge instead; else say "The archway leads only to a sheer dropoff, with sharp rocks and a hungry sea below. A gap too far to jump stands between here and the boulder where the bridge begins." instead.

Report going from Seal Beach to Overhang: say "You walk across the long creaking plank bridge, swaying in the turbulence of the breeze and your footsteps, clutching the scratchy vine rails tightly, till you step under a rocky overhang at the island on the far side.". Report going from Seal Beach to Backside: say "You climb back up into the narrow canyon towards the rainforest above.".


Chapter - Overhang

The printed name of Overhang is "Open Grotto". The prose name of Overhang is "the grotto on the secret island". The description of Overhang is "[overhangdesc].".

To say overhangdesc:
	say "The side of the smaller island has eroded away here to make a long cave, open to the air all along the outer wall[dot]";	
	if lumpy moss-covered mound is on-stage, say "A lumpy moss-covered [o]mound[x] rests near the dropoff to the sea, green toes poking out over the edge[dot]";
	if mound of abandoned sculptures is on-stage, say "The [o]mound[x] of abandoned sculptures rests near the dropoff to the sea, kissed in grime and the moist salt spray[dot]";
	say "[exits]".

The exits text of Overhang is "The long cave continues [bw of Mossy Ledge][if dir][south] [end if][dr]around[x] the island's curve, or opposite shrinks to a narrow scramble [bw of Prison][up]. [if puzzle mode]Some rough-hewn stairs lead [bw of Echo Chamber][down] towards the ocean[else]There seems to be no way down to the ocean[end if][etovh2]". To say etovh2: say ", which the rope bridge [dr]crosses[x] [bw of Seal Beach][if dir]to the [southwest][else]over[end if]". Understand "around" as south when location is Overhang. Understand "crosses" as southwest when location is Overhang.

Instead of going down in Overhang when story mode, say "You don't see any way down to the ocean from here.".

The lumpy moss-covered mound is a setpiece in Overhang. Understand "moss/mossy/moss/covered" as moss-covered mound. The description is "Covered in a blanket of damp green moss, the mound is very irregular in shape, as if grown over a pile of differently sized stones with odd protrusions and curves.[paragraph break]Poking out from the edge of the moss at the base of the pile, something [o]crystalline[x] glints greenly and catches your eye.". Instead of pulling or taking or pushing the moss-covered mound: say "You pull away the moss and find more abandoned sculptures, sifting through them in wonder and sadness.[paragraph break]There are hundreds of them, carved from stone, crystal, wood, and bone. There are rough-hewn faces, fantastic animals half-formed, abandoned crude shapes perhaps the beginnings of mountains or clouds. There is a wooden violin, its neck rich with achingly intricate detail but its body an unsmoothed block; a breathtaking quartz tornado, stunning in its outline but the details of its facets not quite right; an old woman's smiling face emerging from a block of something like granite, every wrinkle and line etched with care, but unable somehow to free more than the left side of her face from the stone. None of them are finished. Many are cracked or shattered, or bear scars where furious blows with knife or chisel mar their artistry.[paragraph break]Finally, you step back, leaving the pile of sculptures where it rests, and can't shake a vaguely horrified feeling, as if you've just found a mass grave."; move mound of abandoned sculptures to Overhang; remove lumpy moss-covered mound from play.

The mound of abandoned sculptures is a setpiece. Understand "sculpture" as mound of abandoned sculptures. The description is "The pile of sculptures, balanced just shy of the dropoff to the ocean, seems sad and ghostly in the misty air.". Instead of pushing mound of abandoned sculptures: say "You push against the side of the mound with your shoulders, spreading out your arms, and it collapses with a chorus of groans and tinkles and scrapes, each piece plummeting in spins and whorls to the surf below and disappearing. You keep pushing until every one has fallen off the edge, and only chalky ghosts of sawdust and crushed stone remain."; remove mound of abandoned sculptures from play; remove songbird sculpture from play.

The songbird sculpture is a prop in Overhang. Understand "crystalline/bird" as songbird sculpture. The description is "You pull a piece of the moss away to get a better look. Underneath is part of a blue crystal sculpture of a songbird in flight-- but unfinished, the wings still crudely shapen, one roughly broken off. The rest is buried under the moss." Instead of taking the songbird sculpture, say "[if lumpy moss-covered mound is on-stage]The moss is in the way[else]It seems to belong here, somehow[end if]." Instead of pulling the songbird sculpture, try taking the songbird sculpture.

Report going from Overhang to Prison: say "Ducking your head, you clamber up the quickly tilting floor and around a tight curve to squeeze through a crack into a small chamber near the top of the island.". Report going from Overhang to Mossy Ledge: say "You follow the open grotto around the curve of the tiny island till you reach its ending on the side facing the open sea.". Report going from Overhang to Echo Chamber: say "You take a steep path near where the bridge connects, picking your way down to a cave nearer to sea level, which you slip cautiously inside."

Chapter - Prison

The prose name of Prison is "the prison". The description of Prison is "[prisondesc].". To say prisondesc:
	say "This round cave is open to the sky at the ceiling. The ground is covered with crumbled rock and rubble[dot]";
	say "Against one wall of the chamber is a crude [o]cage[x] constructed of bamboo bars and a simple wooden door. [if night and moonup]The wall opposite is alight with a long glowing [o]scrawl[x] of writing[else]On the top of the wall opposite is a [o]scrawl[x] of writing, with a huge empty space underneath[end if][dot]";
	say "[exits]".

The exits text of Prison is "A [dr]crack[x] leads [bw of Overhang][if dir][west] and [end if]down to the grotto, or you could stoop [bw of Mossy Ledge]into [one of]a[or]the[stopping] narrow [dr]tunnel[x][if dir] to the [east][end if]". Understand "crack" as west when location is Prison. Understand "tunnel" as east when location is Prison.

Report going from Prison to Overhang: say "You squeeze through the crack and then step carefully down a broken passage to the open grotto below.". Report going from Prison to Mossy Ledge: say "You duck awkwardly through the entrance, but it quickly opens up to a narrow path running down and around the outside of the island. You follow it carefully around until you reach the grotto again.".

The bamboo cage is an enterable transparent undescribed container in Prison. It is fixed in place. The description is "The bamboo runs into holes chiseled in the floor and wall, making the bars bow outward slightly and then curve back in to form the cell's ceiling. Some stone manacles and some dirty straw are all you can see inside[if the psyche of Progue is at least uncertainty].[paragraph break]The door to the cage is open, swinging loosely in the still air[end if].". Understand "door" as the bamboo cage. Instead of closing or opening bamboo cage, say "The door swings loosely, without a latch or any way to keep it shut.". 

Some stone manacles are a prop in the bamboo cage. The description is "Crude and heavy.". Instead of taking stone manacles, say "They are attached to the wall. Curiously, however, you note that were your hands put in them, it would be perfectly possible to take them out again.". Check entering manacles: say "You slip your hands inside the manacles, but feel nothing unexpected, so you easily remove them again." instead. Understand "put hand/hands in/into [manacles]" as entering when location is Prison.

Some dirty straw is a prop in the bamboo cage.

Report entering the bamboo cage: say "You open the door and step inside. Something about it seems odd, but you can't put your finger on it." instead. Report exiting when player was enclosed by the bamboo cage: say "You step through the door again. As you do so, you notice that it has no lock." instead.

The prison scrawl is a story-based scrawl in Prison. The standard message is "Everything I am is taken from me but". The secret message is " my soul, and it lies broken and bleeding on the verge of verges. It is here, in this cage.

Angry. It wants to hurt me. I do not want it to live, but I cannot kill it. It is all I have left.

I will come here to tend it, mayhaps once a year or so. Bring it food and water. Talk to it, laugh with it, cry with it.

Make sure it is not getting too well.

It will stay here, a prisoner, so it will not ask me to feel remorse, so it will not ask me to make decisions, so it will not ask me to remember those I have lost, so it will not judge, belittle, hate, hurt, harm me. It will stay here alone, with the rest of my failings.

Because if it escapes, it will try to kill me. And I don't want death to come at its hands.".


Chapter - Mossy Ledge

The prose name of Mossy Ledge is "the grotto near the cave paintings". The printed name of Mossy Ledge is "Grotto, At the Cave Paintings". The description of Mossy Ledge is "[mossyledgedesc].". To say mossyledgedesc:
	say "The grotto is slightly less open on this end, the floor rising at the edge of the dropoff and the ceiling dropping columns of stone, but plenty of [if night]star[end if]light still streams in to to illuminate the space, which feels more dusty and abandoned than the other side. Blackened scorch marks on the floor and ceiling speak to ancient fires[dot]";
	say "The back wall of the grotto is covered in ancient [o]paintings[x], faded but still clearly visible[dot]";
	say "[exits]".

The exits text of Mossy Ledge is "The grotto curves [bw of Overhang][if dir][south] [end if]towards its [dr]far[x] end, while a narrow [dr]ledge[x] breaks out of the overhang to follow the curve of the island [bw of Prison]around up[if dir] and [north][end if]". Understand "far" as south when location is Mossy Ledge. Understand "ledge" as north when location is Mossy Ledge.

Report going from Mossy Ledge to Overhang: say "You walk back along the uneven ground of the grotto, curving around to the landward side of the island again.". Report going from Mossy Ledge to Prison: say "You follow the path, really just a convenient crack in the rock, out from under the overhang and steeply up around the curve of the island. Finally it ends at a natural tunnel, which you duck into and take a few awkward steps before standing in another chamber.".

Some cave paintings are a setpiece in Mossy Ledge. Understand "painting/drawing/drawings" as cave paintings. The description is "The paintings seem ancient, far older than anything you've seen that Progue created, or even any of the remnants of the Egg. They are crude and sometimes difficult to decipher.[paragraph break]The largest quite clearly shows the seals you saw on the beach, drawn in crude red lines, alongside two boats containing bare-chested males with spears. Another drawing seems to show one of the figures dressing a killed seal next to a fire.[paragraph break]Other drawings are more obscure; there are certain symbols which are repeated multiple times, sometimes even overlapping, but nothing that seems like written language. The only other scene you can make out shows a few of the tiny boats surrounded by clusters of irregular shapes, some with lines drawn between them. One of them almost seems familiar: a broken-backed crescent with two peaks at the top and bottom.". Instead of taking or touching cave paintings, say "They're drawn directly on the rock.".

The scorched remnants of fires are a minor setpiece in Mossy Ledge. The description is "The ash has long since blown away, leaving only blackened marks on the rock."


Chapter - Echo Chamber

[This area is not accessible in story mode, since it's part of the puzzle to open the pyramid that is simplified in that mode.]

Report going from Echo Chamber to Overhang: say "You leave the dim interior of the cave and scramble back up the narrow path.".

The prose name of Echo Chamber is "the echo cave". The description of Echo Chamber is "[echochamdesc].". To say echochamdesc: say "[if sunup]L[otherwise]Faint starl[end if]ight streams from [if dir][outside][otherwise]the [d]mouth[x] of the cave[end if] into this large, rounded chamber, its low ceiling dripping with seawater. Echoes and whispered reverberations fill the space, and you feel the thunder of the surf beneath you; waves must be surging through smaller caves and channels beneath this one. The strange noises seems to be shaped and amplified by dozens of strange [o]formations[x] along and inside the walls, shaped in ways too regular to be "; say "natural[if puzzle mode].[paragraph break]A large [o]message[x] written in soot covers part of the wall near the exit, next to a drawing of a pyramid[end if]". The exits text of Echo Chamber is "A smattering of green [o]mussels[x] clings to the rock near the mouth of the cave, the only exit, sloping [up]". Understand "mouth" as up when location is Echo Chamber.

The soot-pyramid-drawing is a minor setpiece in Echo Chamber with printed name "drawing of a pyramid". Understand "drawing/pyramid" as soot-pyramid-drawing. The description is "The crude drawing shows a three-dimensional pyramid with light streaming from its edges.".

The echo message is a hint-based scrawl in Echo Chamber with standard message "Word Morphosis Chamber: Experiment in Sculpted Echoes." and secret message " Try konokuk, capalla, or windsigh."

Instead of listening when location is Echo Chamber: say "Weird echoes and reverberations bounce around the interior of the chamber, shaped and amplified by the strange formations.". Instead of whistling when location is Echo Chamber: let atd be indexed text; let atd be the player's command; say "You [atd in lower case] as loud as you can. Immediately you clap your hands to your ears; the sound reverberates crashingly around the tiny chamber, seemingly to be amplified and distorted by the fluted formations and resonance chambers around you, and it's as if hundreds of other people just outside your ears are all making the same noise.[paragraph break]Finally the echoes fade away, leaving only the hollow whispers of the surf moving through hidden tunnels below your feet.". To say echochmmsg: say "Your words echo and bounce strangely around the inside of the chamber, twisted and distorted by the strange fluted formations into a thousand whispers that almost sound at times like other words. Only slowly do the echoes die away". Understand "echo" as a mistake ("[echochmmsg].") when location is Echo Chamber.

EchoChamber-stuff is stuff in Echo Chamber. Understand "canyon/plateau/cave/chamber/ceiling/seawater/caves/channels" as EchoChamber-stuff when location is Echo Chamber.

Instead of sleeping in Echo Chamber: say "It's too wet and drippy in here to sleep. [sleepsuggest]".

The strange formations are a setpiece in Echo Chamber. Understand "formation" or "dozens" as strange formations. The description is "Smooth and curved, with fluted edges and rounded tunnels, these look almost like wind-carved features but are too carefully shaped and molded to be natural. Most are carved directly into the natural cavern wall; some are tunnel openings of various sizes. There are even a few large holes in the floor which seem to open into carefully shaped resonance chambers below your feet, where the crashing surf gurgles and drains.". Instead of touching formations, say "They are mostly smooth, arcing through strange contortions and swirls, usually with openings on one or both ends indicating they are hollow, like some huge strange musical instrument.".

The shapes are a described setpiece in Echo Chamber. "Drawn in chalk at various positions across the floor are six [o]shapes[x], large enough to stand in." The description is "The shapes, each about the diameter of your outstretched arm, are roughly drawn of a white, flaky substance, and spread out across the floor in no obvious pattern or reasoning. There is a [o]triangle[x], a [o]square[x], a [o]circle[x], a [o]rectangle[x], a [o]pentagon[x], and a [o]hexagon[x].".

An echo-shape is a kind of supporter. Understand "shape" as an echo-shape. An echo-shape is always undescribed and enterable. The triangle shape is an echo-shape in Echo Chamber. The square shape is an echo-shape in Echo Chamber. The circle shape is an echo-shape in Echo Chamber. The rectangle shape is an echo-shape in Echo Chamber. The pentagon shape is an echo-shape in Echo Chamber. The hexagon shape is an echo-shape in Echo Chamber. The description of an echo-shape is usually "Drawn roughly on the ground with some sort of chalky substance.". Instead of taking an echo-shape, say "It's just a drawing on the ground."

Understand "step on/in/into [an enterable thing]" or "stand on/in [an enterable thing]" as entering. First report entering an echo-shape: say "[one of]As you move to [the noun] the shufflings of your feet make weird, suggestive echoes that dance around the cavernous chamber[or]Echoes dance around the chamber as you move[stopping]. You step inside [the noun]." instead. 

An echo-keyword is a kind of thing. An echo-keyword is always undescribed. Understand "say [an echo-keyword]" or "shout [an echo-keyword]" as examining when location is Echo Chamber. An echo-keyword is either pending or uncovered. An echo-keyword is usually pending.

Understand "shout [text]" as echo-speaking when location is Echo Chamber. Echo-speaking is an action applying to one topic. Carry out echo-speaking: say "You call it out loud and clear. Instantly, the weird shapes and formations suck your utterance up, twist it around, and send it back to you weirdly changed and deformed to reverberate around the cavern until finally dying down.".

The knock-keyword is an echo-keyword in Echo Chamber. Understand "konokuk" as knock-keyword. The description of knock-keyword is "You call out the word. [if player is on the square shape][echo-text]'knock,' [echo-text2][otherwise][echo-text-bad][end if].".

The thrice-keyword is an echo-keyword in Echo Chamber. Understand "windsigh" as thrice-keyword. The description of thrice-keyword is "You call out the word. [if player is on the circle shape][echo-text]'thrice,' [echo-text2][otherwise][echo-text-bad][end if].".

The clap-keyword is an echo-keyword in Echo Chamber. Understand "capalla" as clap-keyword. The description of clap-keyword is "You call out the word. [if player is on the pentagon shape][echo-text]'clap,' [echo-text2][otherwise][echo-text-bad][end if].". 

To say echo-text: say "The weird shapes and formations suck your utterance up, twisting the sounds around before bouncing back what sounds to you like a single clear word: ". To say echo-text2: say "which echoes and bounces around the chamber before finally fading into indistinguishable murmurs". To say echo-text-bad: say "It bounces and echoes off the walls, and at times you think you can make out hints of something almost comprehensible, but too soon the echoes fade away into murmurs".


The ambience table of Echo Chamber is Table of Echo Chamber ambience.

Table of Echo Chamber ambience
freq		start time	end time	text	table		trigger	flag
common	--	--	"[one of]A drop of water falls from the ceiling into a pool, creating a bizarre, reverberating echo that bounces around inside the strange formations, dying only slowly and reluctantly[or]The shuffling of your feet produces strange stuttering echoes that bounce around the cave weirdly[or]The surf thunders through the openings under your feet, creating a great rush of noise that bounces and echoes strangely through the cave[in random order]."


Part - Ravine Floor and Cave

Instead of sleeping in Narrow Ravine, say "When the tide comes in, you'll be smashed to pieces. Not a good idea.[sleepsuggest]".

Chapter - Ravine Floor

Understand "top" as west when location is Ravine Floor. The prose name of Ravine Floor is "the floor of the great ravine". The description of Ravine Floor is "[ravfloordesc].". To say ravfloordesc:
	say "Surrounded by sheer cliffs on both sides, [if sunrise or morning]the wet surfaces of the ravine sparkle and glow in the brilliant morning light shining straight down its length and reflecting off the ocean[otherwise if night]the ravine is lit by only a narrow causeway of stars high above[otherwise if dawn]the ravine is chilly in the predawn glow, though the brightening glow over the ocean visible at its mouth is breathtaking[otherwise if twilight]the ravine already feels dark even though the failing light above is still strong[otherwise]the floor of the ravine is shadowed and chilly[end if]. [if falling downtide or rising uptide]Waves smash angrily against the barricade of boulders down at the mouth of the inlet, before charging raucously up its length over a channel of smooth stones that roll and grind together with a tremendous racket[otherwise]Distant waves beat against the cluster of boulders at the mouth of the inlet, but only rarely surge over to disturb the peace of standing pools of water here and there[end if][dot]";
	say "Near an outgrowth of blue [o]crystal[x] in the wall is a yellow [o]pipe[x][dot]";
	if time-for-shark-scene is true begin; now time-for-shark-scene is false; move beached shark to location; move tidepool-mud to location; say "Flopping helplessly in the remnants of a long-drained tidepool is a blue-grey [o]shark[x], almost as big as you[dot]"; end if;
	say "[exits]".

The exits text of Ravine Floor is "The rope ladder climbs back [up] towards the forested plateau; the surf is too threatening to venture farther[if dir] east[end if] down the ravine, but[if dir] [west][end if] towards the [dr]top[x] looks passable".

RavineFloor-stuff is stuff in Ravine Floor. Understand "cliff/cliffs/surface/surfaces/causeway/barricade/boulders/channel/stone/stones/cluster/pools/plateau" as RavineFloor-stuff when location is Ravine Floor.

Every turn when location is regionally in Narrow Ravine and tidein (this is the escaping the rising tide rule):
	say "A breaker surges past your feet, momentarily throwing you off balance. The tide is rapidly coming in. Hurriedly, you [if location is Top of Ravine]follow the ravine back down to the rope ladder[otherwise]clasp the rungs of the rope ladder[end if] and haul yourself back up to safety.";
	move the player to Edge of Ravine.

Report going from Ravine Floor to Top of Ravine: say "[if rising downtide or falling downtide]Picking your way carefully over the foam-slick stones[otherwise]Walking around drying clumps of seaweed and brine-encrusted stones[end if], you travel up the ravine as it narrows towards its end.". Report going from Ravine Floor to Edge of Ravine: say "You climb the ladder easily up the few dozen rungs till you stand again on the forested plateau.".

Section - Shark Rescue

[This is a post-tsunami scene that just adds a bit of diversion for the player.]

time-for-shark-scene is a truth state that varies.

The beached shark is set dressing. The description is "The creature's sleek skin is drying out now, and it still flops vigorously but with fading strength. It must have been thrown up here by the tsunami, or maybe just got confused by the strange tides and ended up stranded here. It rolls a baleful eye at you desperately.". Instead of taking beached shark, say "It's far too big for that, probably heavier than you are.". Instead of touching or hugging beached shark, say "Its skin is smooth as velvet where it is still wet, but feels like dry parchment and starting to flake in the places where the moisture is gone. You can feel its heart racing.". Instead of pushing or pulling beached shark when tidepool-mud is on-stage, say "You reach around the back half of the creature and push, but it's no use; the tidepool is blocked by a [o]clog[x] of mud and debris.". Instead of greeting beached shark, say "You try to murmur some words of comfort to the trapped creature, but it just snaps its jaws weakly at you and you take a hasty step back.". Instead of pushing or pulling beached shark: say "Getting a firm grip, you heave against the shark's bulk. It twists its flippers and snaps its jaw frantically, not understanding, but the panicky motions help break it free. With one final heave, it breaks forward out of the muck with a surge of water, sliding forward towards the water at the end of the ravine.[paragraph break]You follow it down until it reaches a much larger pool at the base of the wall of boulders currently keeping the surf out, where it quickly submerges and stays quiet and still. You have no idea whether he'll survive, but when the tide comes back in, it should wash him back out to sea.[paragraph break]You return up the ravine to the vicinity of the ladder, wiping the strange smells of sharkskin on your hands off on your pants."; remove beached shark from play. Instead of attacking beached shark, say "You hardly have a suitable weapon for that.".

Some tidepool-mud is set dressing. Understand "mud/clog/debris/leaves/rocks" as tidepool-mud. The printed name is "a dam of mud and debris". The description is "The end of the pool facing the slope down to the distant waves is clogged with a dam of mud, leaves, and rocks.". Instead of taking or pushing or pulling or attacking some tidepool-mud: say "Careful to keep your hands clear of the shark's razor jaw, you clear the worst of the mud and debris away. A gush of warm water surges out of the opening and down the shallow slope towards the ocean."; remove tidepool-mud from play.

Chapter - Top of Ravine

The prose name of Top of Ravine is "the top of the great ravine by the pool". The description of Top of Ravine is "[topravdesc].". To say topravdesc: say "The ravine pinches off here at a boulder-strewn [o]slope[x]; craning your head back, you can make out [windsigh phrase of tree3] high above at its summit. A [o]bowl[x] at the base of the slope, probably scooped out from the churning action of the high tide surf breaking and rebounding against this point, is filled with seawater and lined with small green [o]mussels[x]. [paragraph break][exits]". The exits text of Top of Ravine is "The rope [dr]ladder[x] halfway [if dir]down the ravine to the [east][otherwise]down the ravine[end if] stands out as the only obvious means of escape from this sheer canyon[if Water Cave is visited], other than the [d]tunnel[x] underneath the water[else]; but you also notice a strange [o]shadow[x] under the water of the bowl[end if]". Understand "ladder" as down when location is Top of Ravine.


The boulder-strewn slope is a setpiece in Top of Ravine. Understand "base" as boulder-strewn slope. The description is "The slope is mostly loose scree dotted with the occasional boulder, steepening as it approaches [windsigh phrase of tree3] on its top." Instead of climbing the boulder-strewn slope, try going up. Instead of going up in Top of Ravine, say "The slope at the top end is too loose and crumbly to climb, while the cliffs on either side of you are too steep and undercut to make climbing them an option." 

The ravine cave mouth is a setpiece in Top of Ravine. Understand "shadow/shadows" or "tunnel" as ravine cave mouth. The description is "[if Water Cave is visited]Under the surface you can see the [d]tunnel[x] to the underwater cave[otherwise]Peering closer through the foamy surface, you see what looks like an underwater [d]tunnel[x], wide enough to walk down with only a little hunching were it above the water level[end if].". Instead of entering ravine cave mouth, try going west. Understand "tunnel" as west when location is Top of Ravine.


The oversized tidepool is an undescribed setpiece in Top of Ravine. Understand "bowl" or "tide" or "pool" or "water/seawater" as tidepool. The description is "The lip on the seaward side is craggy lava rock, but the floor some two body lengths down is smooth and sandy. Pillowy clumps of foam still clinging to the sides of the pool are a reminder of the brutal pounding this place must receive at high tide.[paragraph break]Underneath the windswept surface of the water, you can make out [if Water Cave is visited]the[otherwise]what looks like a flooded[end if] [dr]tunnel[x][if dir] heading [west][end if].". Instead of touching oversized tidepool, say "The languid seawater has been heated by the sun.". Instead of vague swimming in Top of Ravine, try going west. Instead of swimming in oversized tidepool: try going west. Instead of entering oversized tidepool: try going west. The dream-text of oversized tidepool is "tanks filled with seawater". 

 Instead of going to Water Cave when night, say "In the darkness, you'd be certain to drown down there. Better wait until morning.". 

Understand "tunnel" or "enter tunnel" or "go tunnel" as west when location is Top of Ravine.

Report going from Top of Ravine to Water Cave:
	now breath count is 4; say "After preparing yourself, you dive into the water, surprisingly chilly, and surface near the center, treading water-- the sandy bottom is below the reach of your feet.[paragraph break]Taking a deep breath, you dive beneath the surface, force your eyes open against the briny water, and swim into the darkness of the rocky tunnel mouth. The tunnel slopes steeply downwards for a short distance before leveling out again.".


Chapter - Water Cave

The prose name of Water Cave is "the underwater cave". The description of Water Cave is "[watercavedesc].". To say watercavedesc: say "The tunnel sides are smooth and regular, though the top vanishes into a gloomy labyrinth of jumbled boulders and false ceilings. [exits]". The exits text of Water Cave is "Any one of the dark routes [up] above could be worth exploring, though the [dr]glow[x] from the tunnel mouth[if dir] [east][end if] is more appealing". Understand "glow" as east when location is Water Cave. 

Instead of sleeping in Water Cave, say "Good one.[sleepsuggest]". Instead of vague swimming in Water Cave, try going up.

Breath count is a number that varies. Breath count is 4. Every turn when location is not Water Cave and breath count is not 4: now breath count is 4.

Every turn when location is Water Cave:
	if breath count is 4, say "You let a small clump of spent air bubbles out from your mouth, which rise into the blackness above.";
	if breath count is 3, say "Already you feel a faint urge to breathe. You focus on moving calmly and efficiently.";
	if breath count is 2, say "The urge to breathe is growing stronger. You won't have much longer before you'll have to retreat.";
	decrement breath count by 1.

Every turn when location is Water Cave and breath count is 0:
	say "Your air is almost gone; your lungs flex involuntarily. Kicking powerfully, you swim back down the tunnel, up the steep bend and out into the tidepool, breaking the surface and gasping air gratefully.";
	move the player to Top of Ravine.

Instead of going up from Water Cave for the first time, say "You swim up one promising slope only to dead end at a cluster of mossy rocks. Awkwardly, you push yourself back down to the open space below.". Instead of going up from Water Cave for the second time, say "You swim around a protruding boulder to try again, but a smooth ceiling of rock again frustrates you and you return below.".

Report going from Water Cave to Top of Cave:
	if Top of Cave is unvisited, say "[if breath count < 2]In desperation, y[otherwise]Y[end if]ou swim into a small opening near the back of the cave and thrill to see the silvery underside of a surface! Kicking powerfully, you break the surface and climb gratefully onto a slick boulder.";
	otherwise say "You find again the small opening near the back of the cave, swim up to the surface, and climb up out of the water.".

 Report going from Water Cave to Top of Ravine: say "You kick back through the tunnel, up the steep bend and out into the tidepool, where you break the surface and climb out into the chilly air again.";


Chapter - Top of Cave

The prose name of Top of Cave is "the top of the underwater cave". The description of Top of Cave is "[topcavedesc].". To say topcavedesc: say "A small pool of seawater marks the bottom of this irregular shaft, rising haphazardly [up] towards a circle of [if night]stars[otherwise]sky[end if] high above. Twisted tree [o]roots[x], some thick, others just tips, break through the walls everywhere, even reaching to the edge of the pool [down] by your feet". The exits text of Top of Cave is "The pool lies [down] beneath your feet, while [up] above rises the shaft".

TopOfCave-stuff is stuff in Top of Cave. Understand "shaft/circle/edge" as TopOfCave-stuff when location is Top of Cave. 

Instead of sleeping in Top of Cave, say "It's too cramped and bumpy here to lie down, much less fall asleep.[sleepsuggest]".

Some tree roots are a setpiece in Top of Cave. Understand "twisted" as tree roots. The description is "The roots are [if night]black, only vague shadows in the dimness[otherwise if dawn or twilight]grey ghosts in the faint light that trickles down from above[otherwise]pale white and smooth, twisting strange contortions through the air before plunging into the rocky soil of the shaft's walls once again.". Instead of climbing or entering the tree roots, try going up. Instead of touching tree roots, say "You feel a faint, almost electrical tingling, but nothing more.". The dream-text of tree roots is "shadowy snarls of huge twisted tree roots".

The small pool of seawater is a setpiece in Top of Cave. The description is "[if rising uptide or falling uptide]The water sloshes rhythmically against the tree roots, rising and falling sometimes several feet at a time[otherwise if high tide]The surface of the pool is a frothy maelstrom, sometimes sucked more than a body length down before exploding upwards to splash you with seawater[otherwise]The surface of the pool is calm, and undisturbed; below, you can see the subsurface cave you swam in through[end if].". Instead of vague swimming in Top of Cave: try going down. Instead of swimming in or entering small pool of seawater, try going down.

Instead of going down in Top of Cave when tidein, say "Judging by the way the surface of the pool is moving, the tide must be in and the cave below must be a roiling mess of strong currents and tidal forces. You'll have to find another way out.". Instead of going down in Top of Cave when current episode is Earthquake or current episode is Water Works: say "The water is doing strange things; you could drown or be smashed to pieces. Better not.".

Report going from Top of Cave to Saddle: say "The roots provide easy handholds and footholds for your ascent, though you must sometimes twist your body awkwardly in the small space to get past them. You climb easily to the top of the shaft and emerge [if night]into the silvery night[otherwise]blinking into light[end if].[if Saddle is unvisited][section break][end if]". Report going from Top of Cave to Water Cave: say "Contorting awkwardly in the small space, you dive into the pool of seawater and kick your way down to the watery cave below.".

Chapter - Saddle

The prose name of Saddle is "on the saddle at the base of the huge windsigh". The printed name of Saddle is "On the Saddle". The description of Saddle is "[withindesc].". To say withindesc: say "On this narrow edge of land between the cliffs of the mountain[if dir] to the north[end if] and the badlands of the lava flow opposite is [windsigh phrase of tree3], the tallest you've seen, rising high into the tropical air. [if dir]To the west[otherwise]Opposite the ravine[end if], the land descends sharply to one end of the lagoon: you spot your tracks in the sand and the huge piece of driftwood below.[paragraph break]At your feet, "; say "[if withered vine is open]a loose vine descends to the [dr]beach[x] below[wvinit_bit][otherwise]a loose [o]vine[x], though still connected to its tree, lies unwrapped and loose in a twisted pile[tsunvinehint], browning towards its end[end if]. A tangle of other vines forms a soft [o]bed[x] near the tree's base. [exits]". The exits text of Saddle is "The natural tunnel [if former location is Top of Cave]back [end if][down] seems the only [if withered vine is open]other[else]sensible[end if] way to go". Understand "beach" as west when location is Saddle and withered vine is open.

Check jumping when location is Saddle or location is Atop: say "It's a long way down." instead.

Saddle-stuff is stuff in Saddle. Understand "edge/cliff/cliffs/badlands/tracks/driftwood/perch/tunnel" as Saddle-stuff when location is Saddle.

The withered vine is an undescribed door. It is closed, locked, not lockable, and unopenable. Understand "loose" as withered vine. It is west of Saddle and east of North Beach. Understand "tie [withered vine] to me/myself/waist" or "attach [withered vine] to me/myself/waist" as a mistake ("The vine is far too long to use for swinging, but [if open]you could climb it[otherwise]it might reach to the beach on the west side if you pushed it off the edge[end if]."). The dream-text of  withered vine is "looping coils of vine". Instead of examining by name tree3's treevines when location is Saddle, try examining withered vine. Instead of climbing withered vine, try entering withered vine. Instead of entering withered vine when withered vine is closed and location is Saddle, say "Interesting. Perhaps if you pushed the vine over the edge, it would reach far enough down towards the beach that you'd be able to climb it.". Understand "climb down [something]" or "climb [something] down" as climbing when location is Saddle. First Instead of taking withered vine: say "You lift a section of the long vine. Despite its withered appearance, it still seems quite strong.". Instead of going west in Saddle when withered vine is closed, say "The vine is in a long, loose coil, but perhaps if you pushed it over the edge, you'd be able to climb down to the beach.". Understand "uncoil [something]" as pushing when location is Saddle. Check attacking withered vine: say "It's probably more useful to leave it attached." instead. After examining withered vine: have the parser notice withered vine.

The description of withered vine is "[if location is North Beach]The vine rises up the cliff towards the windsigh on the saddle up above.[else if withered vine is open]The vine, still attached firmly to the tree, dangles over the side of the saddle and stretches in a line down to the beach below.[else]The vine still seems firmly attached to the tree near its base, but disease or age seem to have weakened its grip, and it lies in a long, tangled coil amidst the tree roots.[end if]".  To say tsunvinehint: if Tsunami Sequence has ended, say ", balanced precariously close to the edge of the dropoff to the beach".   To say wvinit_bit: say "[if dir] and to the [west][end if]". Does the player mean doing something with withered vine: it is very likely. First check dropping withered vine: try pushing withered vine instead. Does the player mean doing something with something part of tree3: it is unlikely. 

Understand "push [something] to/over/off edge/cliff/saddle/dropoff" as pushing when location is Saddle. Instead of using or pushing withered vine when withered vine is closed and location is Saddle: now withered vine is open; now withered vine is unlocked; say "Untangling the vine, you push it off the edge of the saddle towards the beach of the lagoon, and are delighted to see that it reaches nearly to the sand below." Instead of using or pushing withered vine when withered vine is open: say "The vine is already serving as a crude rope to the sands of the beach below.". Instead of taking or pulling withered vine when withered vine is open: say "It seems more useful to leave the vine the way it is, in case you need easy access to this spot in the future.". Instead of pulling withered vine when withered vine is closed, say "One end is firmly attached to the massive windsigh, while the other flops free at the end of a long coil."

Report going from Saddle to North Beach: say "Gripping the vine carefully, keeping your [if player is wounded]good foot[else]feet[end if] to the slope, you half walk, half lower yourself down the vine one step at a time, before finally dropping onto the smooth beach sand below."; pass 5 minutes of time. Report going from North Beach to Saddle: say "Stretching to grip a thick enough portion of the vine to support your weight, you painfully hoist yourself up high enough to where you can support some of your weight on the steep slope, and pull yourself slowly up to the top of the narrow ridge."; pass 10 minutes of time.

Tree3 is a windsigh tree in Saddle. The description is "This tree is the largest you've seen on the island, and from this vantage point it's clear why: the yellow leaves are in full sunshine every day from morn to night. [if location is Saddle or location is Atop]The smooth curves of the vines winding around the trunk would make for easy handholds and footholds[otherwise]It straddles a narrow saddle of land connecting the mountain with the lava flow[end if].".

The tree3-nook is a nook in Saddle. The printed name is "bed". Understand "bed" as tree3-nook. The description is "Perhaps the size of the tree means that more vines than usual have slumped and coiled near the base, but one particular set looks like it would be a soft place to sleep."  Instead of touching tree3-nook, say "The vines are springy and soft.". First report entering tree3-nook: say "You climb over one vine as wide as your torso and lie down on the coils. It takes you a moment of fiddling to get comfortable, but the springy vines mold to your back and after a few moments you feel very relaxed." instead. First report getting off when player was on tree3-nook: say "Reluctantly, you rise to your feet again." instead. The sleep message of Saddle is "Lulled by the rustling of the leaves above and the quiet sigh of the tree, you drift into a deep, bottomless sleep."

Instead of climbing or entering tree3, try going up. Report going from Saddle to Atop: say "Clutching the easy handholds offered by the spiraling vines, you begin a[if player is wounded] difficult[else]n easy[end if] ascent of the tree. Almost immediately the sense of vertigo is tremendous: balanced upon the knife edge of the ridge, the ground quickly becomes the far-below floor of the ravine on one side and the beach on the other. You look up instead, and before much longer arrive at a good standing spot where the main trunk finally splits into two wide branches."; pass 10 minutes of time. 

The ambience table of Saddle is Table of Saddle-Room ambience.

Table of Saddle-Room ambience
freq		start time	end time	text	table		trigger	flag
common	--		--		--	Table of Windsigh ambience
uncommon	--	--	--	Table of Lacuna Insect ambience
uncommon	--	--	--	Table of Seagull Air ambience


Chapter - Atop

The prose name of Atop is "atop the huge windsigh on the saddle". The printed name of Atop is "Atop the Highest Tree". The description of Atop is "[atopdesc].". To say atopdesc: say "Wind whips through your hair as you balance near the top of the tree, surrounded by branches splitting all around you until they become tiny twigs. The view of the island around you is tremendous, and above, the [if evening or sunset]yellows and pinks of the evening sky are vivid and stunning[otherwise if twilight]fading purples of the tropical sky make your fingers twitch for a brush[otherwise if dawn or sunrise]sky is scoured clean with the pastel colors of morning[otherwise]sun shines whitely down from a deep, blue sky[end if]. [exits][if night].[paragraph break]Above you, the [o]stars[x] shine bright and strong, twinkling only a little in the still night air[end if]". The exits text of Atop is "The narrow ridge [down] beneath your feet seems almost like another world".

Atop-stuff is stuff in Atop. Understand "twig/twigs/view/island" as Atop-stuff when location is Atop.

Instead of sleeping in Atop, say "Up here, you feel a bit too precarious for sleep, but perhaps down by the base of the tree you'd be able to drift off.[sleepsuggest]".

Report going down from Atop: say "Half reluctant and half grateful to reach ground again, you lower yourself down the trunk of the tree until you again stand on the knife-thin ridge.".

Check going to Atop: move tree3 to Atop. Check going to Saddle: move tree3 to Saddle.

The ambience table of Atop is Table of Atop ambience.

Table of Atop ambience
freq		start time	end time	text	table		trigger	flag
common	--		--		--	Table of Windsigh ambience
uncommon	--	--	--	Table of Lacuna Insect ambience
uncommon	--	--	--	Table of Seagull Air ambience


Book - Intelligent Hinting

A fast-forward rule for Finishing-the-Painting:
	move the player to Fork.

Lacuna-Sequence requires Meeting-Progue, The-Mysterious-Door, Getting-To-The-Lawn, Finding-the-Egg, Powering-Both-Devices, Opening-the-Pyramid, and Contacting-All-The-Trees.

Section - Meeting Progue

Meeting-Progue is a task. Definition: Meeting-Progue is complete: if Progue is attentive, yes; if Word Day is successful, yes.

Section - The Mysterious Door

The-Mysterious-Door is a puzzle. It requires Finding-The-Door, Door-Hints, Door-Action.

Finding-The-Door is a task. The venue is Back Room. Definition: Finding-The-Door is complete: if extended-hint-mode is false, yes; if Jumble is visited, yes; if Back Room is visited, yes.

Door-Hints is a not sequential puzzle. It requires Noticing-The-Colors, Finding-the-Berries, Finding-the-Tree-Leaves, Finding-the-Manta-Ink, Finding-the-Snails, Finding-the-Mussels, Finding-the-Somenium, and Learning-That-P-Writes-Right-To-Left.

Noticing-The-Colors is a task. Requirements for Noticing-The-Colors: do the action of examining small bands of vertical color. Definition: Noticing-The-Colors is complete: if extended-hint-mode is false, yes; if Jumble is visited, yes; if we have examined small bands of vertical color, yes. The apropos-list of Noticing-The-Colors is {lava tunnel door, lava wall, cobblestones, arc of small buttons}. 

Finding-the-Berries is a task. The venue is Sloping Meadow. Requirements for Finding-the-Berries: do the action of examining some berries. Definition: Finding-the-Berries is complete: if extended-hint-mode is false, yes; if Jumble is visited, yes; if we have examined some berries, yes. The apropos-list of Finding-the-Berries is {berry-bushes}.

Finding-the-Tree-Leaves is a task. The venue is Fork. Requirements for Finding-the-Tree-Leaves: do the action of examining lemon-yellow leaves. Definition: Finding-the-Tree-Leaves is complete: if extended-hint-mode is false, yes; if Jumble is visited, yes; if we have examined  lemon-yellow leaves, yes. The apropos-list of Finding-the-Tree-Leaves is {Tree1, Tree2}. 

Finding-the-Manta-Ink is a puzzle. It requires Waiting-Till-Night, Noticing-Ink.

Waiting-Till-Night is a reversible task. The venue is Center Beach. The command-sequence is {"wait till night"}. A red flag rule for Waiting-Till-Night: if not night, rule fails. Definition: Waiting-Till-Night is complete: if night, yes; if we have examined manta ink, yes; if extended-hint-mode is false, yes; if Jumble is visited, yes; no.

Noticing-Ink is a task. The venue is Ocean Waters. Requirements for Noticing-Ink: do the action of examining the rayfish; do the action of touching the rayfish; do the action of examining manta ink. Definition: Noticing-Ink is complete: if extended-hint-mode is false, yes; if Jumble is visited, yes; if we have examined manta ink, yes. The apropos-list of Noticing-Ink is {distant-rayfish}.

Finding-the-Snails is a task. The venue is Stumps. Requirements for Finding-the-Snails: do the action of examining white snail. Definition: Finding-the-Snails is complete: if extended-hint-mode is false, yes; if Jumble is visited, yes; if we have examined white snail, yes. The apropos-list of Finding-the-Snails is {Rise, Chairlift Base}.

Finding-the-Mussels is a task. The venue is Among the Boulders. Requirements for Finding-the-Mussels: do the action of examining some small blue mussels. Definition: Finding-the-Mussels is complete: if extended-hint-mode is false, yes; if Jumble is visited, yes; if we have examined small blue mussels, yes. The apropos-list of Finding-the-Mussels is {Tidepools}.

Finding-the-Somenium is a task. The venue is Hot Springs. Requirements for Finding-the-Somenium: do the action of examining sea-blue crystal. Definition: Finding-the-Somenium is complete: if extended-hint-mode is false, yes; if Jumble is visited, yes; if we have examined sea-blue crystal, yes.

Learning-That-P-Writes-Right-To-Left is a puzzle. It requires Opening-Cube, Reading-Inscription.

Opening-Cube is a reversible task. The venue is Hut. Requirements for Opening-Cube: do the action of examining cube; do the action of examining intricate carvings; do the action of examining oval indentations; do the action of touching oval indentations. Definition: Opening-Cube is complete: if extended-hint-mode is false, yes; if cube is open, yes; if we have examined handwritten inscription, yes; if Jumble is visited, yes; otherwise no.

Reading-Inscription is a task. The venue is Hut. Requirements for Reading-Inscription: do the action of examining sketchbook; do the action of examining handwritten inscription. Definition: Reading-Inscription is complete: if extended-hint-mode is false, yes; if Jumble is visited, yes; if we have examined handwritten inscription, yes.



Door-Action is a reversible task. The venue is Back Room. Requirements for The-Mysterious-Door: do the action of pushing crystal button; do the action of pushing mussel button; do the action of pushing snail button; do the action of pushing manta ray button; do the action of pushing windsigh tree button; do the action of pushing berry button. Definition: Door-Action is complete: if Jumble is visited, yes; if lava tunnel door is open, yes; no.


A fast-forward rule for The-Mysterious-Door:
	move the player to Back Room, without printing a room description; 
	try silently examining some smashed wood splinters;
	now the player is wearing the compass;
	now the compass is open;
	now lava tunnel door is open; 
	move the player to Jumble.


Section - Getting To The Lawn

[
Getting-To-The-Lawn is a puzzle. Getting-To-The-Lawn requires Finding The Power System, Finding The Ropeway, Manipulating The Power System, Noticing The Pipes, and Testing The Ropeway.

After exiting when location is Lawn: now everything required by Getting-To-The-Lawn is met; continue the action.

After going to Volcano Floor for the first time: solve Finding The Power System; continue the action.

After going to Chairlift Base for the first time: solve Finding The Ropeway; continue the action.

After adjusting the blue wheel for the first time: solve Manipulating The Power System; continue the action.

After examining blue pipe for the first time: solve Noticing The Pipes; continue the action.

After pushing ropeway lever for the first time: solve Testing The Ropeway; continue the action.

Doing something to the ropeway mechanism is PTR-solving. Doing something to the ropeway outlet vent is PTR-solving. Doing something to the ropeway pressure gauge is PTR-solving. Doing something to ropeway lever is PTR-solving. Doing something to bucket is PTR-solving. Doing something to boarded over steam vent is PTR-solving. Doing something to brick boiler is PTR-solving. Doing something to boiler pressure gauge is PTR-solving. Doing something to a pipe is PTR-solving. Doing something to a wheel is PTR-solving. Doing something to boiler outlet is PTR-solving.

After PTR-solving: fiddle with Getting-To-The-Lawn; continue the action.


]

Getting-To-The-Lawn is a puzzle. It requires Setting-Power-To-Chairlift, Summoning-Chairlift, Riding-Chairlift, Pushing-Boulder.

Setting-Power-To-Chairlift is a reversible task. The venue is Volcano Floor. The command-sequence of Setting-Power-To-Chairlift is { "turn yellow wheel 30 left", "turn red wheel 30 left", "turn blue wheel 30 right" }. Definition: Setting-Power-To-Chairlift is complete: if the mountain-spring is diverted, yes; if chairlift has power, yes; otherwise no. 

Summoning-Chairlift is a reversible task. The venue is Chairlift Base. Requirements for Summoning-Chairlift: do the action of pulling ropeway lever. Definition: Summoning-Chairlift is complete: if mountain-spring is diverted, yes; if player is in bucket and bucket is not in Chairlift Base, yes; if location is regionally in High Altitude, yes; if bucket is in Chairlift Base, yes; otherwise no.

Riding-Chairlift is a reversible task. The venue is Chairlift Base. Requirements for Riding-Chairlift: do the action of entering bucket; do the action of pushing ropeway lever. A red flag rule for Riding-Chairlift: if bucket is not in Chairlift Base, rule fails. Definition: Riding-Chairlift is complete: if player is in Lawn, yes; if player is enclosed by bucket and bucket is in Lawn, yes; if mountain-spring is diverted, yes; no.

Pushing-Boulder is a task. The venue is Lawn. Requirements for Pushing-Boulder: do the action of pushing overly energetic boulder. Definition: Pushing-Boulder is complete: if location is not Lawn or location is not Observatory Exterior, yes; if mountain-spring is diverted, yes. A red flag rule for Pushing-Boulder: if location is not Lawn, rule fails.


A fast-forward rule for Getting-To-The-Lawn:
	move bucket to Lawn;
	now the pressure of blue pipe is 7;
	now the pressure of yellow pipe is 10;
	now the pressure of red pipe is 1;
	move the player to Lawn.



Section - Finding The Egg

[Finding-The-Egg is a puzzle. Finding-The-Egg requires Hearing About The Forest Secret, Locating The Hive, Noticing The Bees, Observing The Dancer Bee, Exploring The Rain Forest, Claiming The Compass, Finding Most Of The Flowers, and Going That Funky Direction.

After going to Egg Room for the first time: now everything required by Finding-The-Egg is met; continue the action.

After reading the sketchbook for the third time: solve Hearing About The Forest Secret.

After going to Hive Room for the first time: solve Locating The Hive; continue the action.

Doing something to the hive bees is beenoticing. Doing something to the swarm of bees is beenoticing. After beenoticing for the first time: solve Noticing The Bees; continue the action.

After doing something to the dancer bee for the first time: solve Observing The Dancer Bee; continue the action.

After going to Forest3 for the first time: solve Exploring The Rain Forest; continue the action.

After taking the compass for the first time: solve Claiming The Compass; continue the action.

After going to Edge of Ravine when Crater Pond is visited: solve Finding Most Of The Flowers; continue the action.

Doing something to the hive bees is FTE-solving. Doing something to the swarm of bees is FTE-solving. Doing something to the dancer bee is FTE-solving. Doing something to the beehive is FTE-solving. Waiting in Hive Room is FTE-solving. Climbing the beehive is FTE-solving. Doing something to the wildflowers is FTE-solving. 

After FTE-solving: fiddle with Finding-The-Egg; continue the action.]

Finding-The-Egg is a puzzle. Finding-The-Egg requires [Noticing-Forest-Secret, Locating-Hive, Noticing-Dancer, Exploring-Rain-Forest,] Claiming-The-Compass, [Finding-Most-Flowers,] and Locating-Egg.

Claiming-The-Compass is a task. The venue is Back Room. Requirements for Claiming-The-Compass: do the action of examining smashed wood splinters; do the action of taking compass; do the action of opening compass. Definition: Claiming-The-Compass is complete: if compass is worn and compass is open, yes.

Locating-Egg is a task. The venue is Egg Room. Definition: Locating-Egg is complete: if Egg Room is visited, yes.

A fast-forward rule for Finding-The-Egg:
	now Chasm Edge is eastsided;
	adjust chasm bridges;
	move bucket to Chairlift Base;
	move player to Egg Room.

Section - Powering Both Devices

[Powering-Both-Devices is a puzzle. Powering-Both-Devices requires Noticing P Sculpture, Observing Rainfall, Shoving P Sculpture Once, Destroying P Sculpture, Observing Higher Power Levels, Finding The Crack, Trying To Climb Through Water, Reaching The Lawn, Noticing The Mountain Stream, Diverting The Mountain Stream, and Reaching Powered Pyramid.

After going to Observatory Exterior when pyramid has power: now everything required by Powering-Both-Devices is met; continue the action.

After going to Rim of Volcano for the first time: solve Noticing P Sculpture; continue the action.

After doing something to rain clouds for the first time: solve Observing Rainfall; continue the action.

After pushing volcano sculpture for the first time: solve Shoving P Sculpture Once; continue the action.

After doing something when volcano sculpture is off-stage: solve Destroying P Sculpture; continue the action.

Doing something to a pressure gauge is DSTPGing. Doing something to boiler pressure gauge is DSTPGing.

After DSTPGing when volcano sculpture is off-stage: solve Observing Higher Power Levels; continue the action.

After going to North Marsh for the first time: solve Finding The Crack; continue the action. 

After doing something when Cliffside is visited: solve Trying To Climb Through Water; continue the action.

After exiting when location is Lawn: solve Reaching The Lawn; continue the action.

After doing something to the mountain-spring: solve Noticing The Mountain Stream; continue the action.

After pushing the overly energetic boulder for the first time: solve Diverting The Mountain Stream; continue the action.

Doing something to the ropeway mechanism is PBD-solving. Doing something to the ropeway outlet vent is PBD-solving. Doing something to the ropeway pressure gauge is PBD-solving. Doing something to ropeway lever is PBD-solving. Doing something to bucket is PBD-solving. Doing something to boarded over steam vent is PBD-solving. Doing something to brick boiler is PBD-solving. Doing something to boiler pressure gauge is PBD-solving. Doing something to a pipe is PBD-solving. Doing something to a wheel is PBD-solving. Doing something to boiler outlet is PBD-solving. Doing something to volcano sculpture is PBD-solving. Doing something to the weather-worn crack is PBD-solving. Doing something to the mountain-spring is PBD-solving. Doing something to overly energetic boulder is PBD-solving.

After PBD-solving: fiddle with Powering-Both-Devices; continue the action.]

Powering-Both-Devices is a puzzle. It requires [Noticing P Sculpture, Observing Rainfall, Shoving P Sculpture Once, Destroying P Sculpture, Observing Higher Power Levels, Finding The Crack, Trying To Climb Through Water, Reaching The Lawn, Noticing The Mountain Stream, Diverting The Mountain Stream, and] Powering-Pyramid and Reaching-Powered-Pyramid.

Powering-Pyramid is a reversible task. The venue is Volcano Floor. The command-sequence of Powering-Pyramid is { "turn blue wheel 30 left", "turn red wheel 30 left", "turn yellow wheel 30 right" }. Definition: Powering-Pyramid is complete: if pyramid has power, yes; otherwise no. 

Reaching-Powered-Pyramid is a task. The venue is Observatory Exterior. Definition: Reaching-Powered-Pyramid is complete: if location is Observatory Exterior and pyramid has power, yes.

A fast-forward rule for Powering-Both-Devices:
	now Chasm Edge is westsided;
	adjust chasm bridges;
	now the mountain-spring is diverted;
	now the pressure of blue pipe is 7;
	move bucket to Lawn;
	now the pressure of yellow pipe is 22;
	move the player to Observatory Exterior.






Section - Opening The Pyramid

[Opening-The-Pyramid is a puzzle. Opening-The-Pyramid requires Noticing The Pyramid Symbols, Finding The Echo Chamber, Voicing The Right Words, Slouching In A Shape, Getting All Echo Hints, and Jumping Through The Hoops.

After entering the mind chair for the first time: now everything required by Opening-The-Pyramid is met; continue the action.

After doing something to the etchings for the first time: solve Noticing The Pyramid Symbols; continue the action.

After going to Echo Chamber for the first time: solve Finding The Echo Chamber; continue the action.

After entering an echo-shape: solve Slouching In A Shape; continue the action.

After going when every echo-keyword is uncovered and Getting All Echo Hints is unsolved: solve Getting All Echo Hints; continue the action.

Doing something to the pyramid is OTP-solving. Doing something to the etchings is OTP-solving. Doing something to the wire filaments is OTP-solving. Doing something to the metallic hoops is OTP-solving. Doing something to the yellow pipe is OTP-solving. Doing something to the yellow wheel is OTP-solving. Doing something in Echo Chamber is OTP-solving. Doing something to a ground-konokuk is OTP-solving. Doing something to the great galaxy is OTP-solving. 

After OTP-solving: fiddle with Opening-The-Pyramid; continue the action.]



Opening-The-Pyramid is a puzzle. It requires Jumping-Pyramid-Hoops.

Jumping-Pyramid-Hoops is a task. Requirements for Jumping-Pyramid-Hoops: do the action of thrice-knocking; do the action of clapping. Definition: Jumping-Pyramid-Hoops is complete: if pyramid is off-stage, yes.

A fast-forward rule for Opening-The-Pyramid:
	now wall to wall workbench is clean;
	remove the pyramid from play;
	move the mind chair to Observatory Exterior; 
	move the mind machinery to Observatory Exterior;
	move the player to Observatory Exterior.



Section - Contacting All The Trees

Contacting-All-The-Trees is a puzzle. It requires Calibrating-Machinery, Contacting-Trees, Prepping-Departure.

Calibrating-Machinery is a task with venue Observatory Exterior. Requirements for Calibrating-Machinery: do the action of entering mind chair; do the action of eye closing; do the action of touching firefly-icons; do the action of touching firefly-icons; do the action of touching red glow; do the action of touching green glow. Definition: Calibrating-Machinery is complete: if mind machinery is calibrated, yes. 

Contacting-Trees is a not sequential puzzle. It requires Contacting-Fork-Tree, Contacting-Treehouse-Tree, Contacting-Rockslide-Tree, Contacting-Caldera-Tree, Contacting-Egg-Tree, Contacting-Forest-Tree, Contacting-Saddle-Tree.

Contacting-Fork-Tree is a task with venue Fork. Requirements for Contacting-Fork-Tree: do the action of touching Tree1. Definition: Contacting-Fork-Tree is complete: if tree1 is contacted, yes.

Contacting-Treehouse-Tree is a task with venue Big Tree. Requirements for Contacting-Treehouse-Tree: do the action of touching Tree2. Definition: Contacting-Treehouse-Tree is complete: if tree2 is contacted, yes.

Contacting-Saddle-Tree is a puzzle. It requires Getting-To-Ravine-Bottom, Pushing-Vine, Touching-Tree3. 

Getting-To-Ravine-Bottom is a reversible task. The venue is Edge of Ravine. The command-sequence is { "down", "wait for two hours" }. Definition: Getting-To-Ravine-Bottom is complete: if tree3 is contacted, yes; if withered vine is open, yes; if location is regionally in Narrow Ravine or location is Top of Cave or location is Water Cave or location is Saddle or location is Atop, yes; no.

Pushing-Vine is a task with venue Saddle. Requirements for Pushing-Vine: do the action of pushing withered vine. Definition: Pushing-Vine is complete: if tree3 is contacted, yes; if withered vine is open, yes. 

Touching-Tree3 is a task with venue Saddle. Requirements for Touching-Tree3: do the action of touching Tree3. Definition: Touching-Tree3 is complete: if tree3 is contacted, yes.

Contacting-Caldera-Tree is a task with venue Cinder Cone. Requirements for Contacting-Caldera-Tree: do the action of touching Tree4. Definition: Contacting-Caldera-Tree is complete: if tree4 is contacted, yes.

Contacting-Forest-Tree is a task with venue Forest9. Requirements for Contacting-Forest-Tree: do the action of touching Tree5. Definition: Contacting-Forest-Tree is complete: if tree5 is contacted, yes.

Contacting-Egg-Tree is a task with venue Egg Room. Requirements for Contacting-Egg-Tree: do the action of touching Tree6. Definition: Contacting-Egg-Tree is complete: if tree6 is contacted, yes.

Contacting-Rockslide-Tree is a task with venue Rockslide. Requirements for Contacting-Rockslide-Tree: do the action of touching Tree7. Definition: Contacting-Rockslide-Tree is complete: if tree7 is contacted, yes.

Prepping-Departure is a task with venue Observatory Exterior. Requirements for Prepping-Departure: do the action of entering mind chair. Definition: Prepping-Departure is complete: if icon-case is open, yes.

A fast-forward rule for Contacting-All-The-Trees:
	now tree1 is contacted; now tree2 is contacted;
	now tree3 is contacted; now tree4 is contacted;
	now tree5 is contacted; now tree6 is contacted;
	now tree7 is contacted;
	if tree-password is blank, now tree-password is "swordfish";
	if rebel-password is blank, now rebel-password is "sesame";
	now withered vine is open;
	now icon-case is open;
	finish mindlink calibration;
	move the player to Observatory Exterior.


[
Contacting-All-The-Trees is a puzzle. Contacting-All-The-Trees requires Reaching The Ravine Bottom, Reaching The Highest Tree, Finding The Rain Forest One, Finding The Volcano One, Completing All The Dreams, and Not Being A Password Dumbass.

After going to Ravine Floor for the first time: solve Reaching The Ravine Bottom; continue the action.

After going to Saddle for the first time: solve Reaching The Highest Tree; continue the action.

After going to Forest9 for the first time: solve Finding The Rain Forest One; continue the action.

After going to Cinder Cone for the first time: solve Finding The Volcano One; continue the action.

After defining a password when the rebel-password is not the tree-password: solve Not Being A Password Dumbass; continue the action. After defining a password when the rebel-password is the tree-password: now Not Being A Password Dumbass is unmet; continue the action.

Doing something to a windsigh tree is CATT-solving. Doing something in Observatory Exterior when pyramid is off-stage is CATT-solving. Doing something in Water Cave is CATT-solving. Doing something in Top of Ravine is CATT-solving.

After CATT-solving: fiddle with Contacting-All-The-Trees; continue the action.

]


[
FF-Reaching-Rebelworld-Lacuna is a scene. FF-Reaching-Rebelworld-Lacuna begins when Reaching-Rebelworld is force solved. FF-Reaching-Rebelworld-Lacuna ends when 1 is 1.

When FF-Reaching-Rebelworld-Lacuna begins:
	now machinery-password is the rebel-password;
	now the mind machinery is projecting.

FF-Finishing-Rebelworld-Lacuna is a scene. FF-Finishing-Rebelworld-Lacuna begins when Finishing-Rebelworld is force solved. FF-Finishing-Rebelworld-Lacuna ends when 1 is 1.

When FF-Finishing-Rebelworld-Lacuna begins:
	now machinery-password is the rebel-password;
	now the mind machinery is idling.

FF-Reaching-Treeworld-Lacuna is a scene. FF-Reaching-Treeworld-Lacuna begins when Reaching-Treeworld is force solved. FF-Reaching-Treeworld-Lacuna ends when 1 is 1.

When FF-Reaching-Treeworld-Lacuna begins:
	now machinery-password is the tree-password;
	now the mind machinery is projecting.

FF-Finishing-Treeworld-Lacuna is a scene. FF-Finishing-Treeworld-Lacuna begins when Finishing-Treeworld is force solved. FF-Finishing-Treeworld-Lacuna ends when 1 is 1.

When FF-Finishing-Treeworld-Lacuna begins:
	now machinery-password is the tree-password;
	change the time of day to 9:00 PM;
	now the mind machinery is idling.

FF-Completing-Progue's-Character-Arc-Lacuna is a scene. FF-Completing-Progue's-Character-Arc-Lacuna begins when Completing-Progue's-Character-Arc is force solved. FF-Completing-Progue's-Character-Arc-Lacuna ends when 1 is 1.

When FF-Completing-Progue's-Character-Arc-Lacuna begins:
	say "Enter 1 for Rume epilogue (like Rume), 2 for Lethe epilogue (like Progue), or 3 for Dr. Quick epilogue (loner)> ";
	let inp be single-character - 48;
	if inp is 1, now Rume-tracker is 10;
	if inp is 2 begin; now Rume-tracker is 0; now affinity of Progue is 5; end if;
	if inp is 3 begin; now Rume-tracker is 0; now affinity of Progue is 0; end if;
	now ep-trigger is true.

FF-Finishing-The-Epilogue-Lacuna is a scene. FF-Finishing-The-Epilogue-Lacuna begins when Finishing-The-Epilogue is force solved. FF-Finishing-The-Epilogue-Lacuna ends when 1 is 1.

When FF-Finishing-The-Epilogue-Lacuna begins:
	now ep-trigger is true.]






Lacuna-Lacuna ends here.
