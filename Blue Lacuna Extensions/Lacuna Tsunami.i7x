Lacuna Tsunami by Blue Lacuna begins here.

Use authorial modesty.

Progue is either carried or uncarried. Progue is uncarried.

Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Water Works	"[if the animus of Progue is resting and Progue Rescue is happening]Progue lies amidst the slime, unconscious. It looks like he must have fallen from halfway down the ledge[otherwise if Progue Rescue is happening]Progue struggles to maintain consciousness[otherwise if Player Rescue is happening]Progue leans over you, desperately reaching a [o]hand[x] out for you[end if]."
--		The Conch Portends	"Progue stands on the beach, holding an enormous conch shell in his hands, clumps of wet sand still clinging to it."

Table of Progue's Description (continued)
animus	episode		desc
--	Water Works	"[if Player Rescue is happening]Soaked, scratched, with a bruise spreading across his face, Progue reaches out a firm hand towards you with a strength that defies his years[otherwise if the animus of progue is resting]You quickly examine him. He does not seem to be seriously injured, just knocked out[otherwise]Other than being a bit dazed, he seems fine[end if]."

Chapter - Tsunami

[ The tsunami is an event that is triggered by the player making progress along various fronts. It moves Progue to "uncertainty" and allows for dramatic shifts in his attitude towards the player. The Tsunami in turn provides more hints for moving the player along in the plot, such as the appearance of the left ear on the beach, allowing the player to decode various hints around the island.

1) The player hears a warbling horn noise coming from the beach one evening.

2) Investigating, you find Progue blowing on a huge conch shell which he says washed up. He says the tides are acting strange. He further mentions he's going to sleep up on the ledge.

3) The player awakens from sleep that night to an earthquake which lasts several turns.

-- During and after the earthquake, none of the power systems work, the springs stop flowing, the lava tunnel door swings shut (and can't be opened from the west side without light) and the bridge is stuck down. Also, the player is not allowed to go down into the ravine. So the only way to the west island is through the cabin on the beach. The player is not allowed to sleep on the North Island. If they were sleeping west of the cabin, there will be no way to go east, as it's too dark to open the door from that side.
-- Progue was sleeping on the Ledge. He tries to climb down during the quake but falls the last few feet and knocks himself unconcious.

4) A few rounds after the earthquake, the tides start going way, way, out. The player is  funneled towards Center Beach, at which point they receive a dramatic description of an onrushing tsunami. 

5) If after a certain amount of time the player has not gotten to Center Beach, or they did and then went back, a scene is triggered where they fall into a chasm or some other peril created by the earthquake. Progue appears after a few moments, offering to rescue. The player can free himself in a few rounds, or can accept Progue's help. In either case the two escape just in the nick of time.

6) If the player gets to Rise, we print another dramatic message mentioning Progue lying near the base of the cliff, and announce the water's imminent flooding of the marsh. If the player turns back here, scene 5 is triggered after a few rounds and we note that the player didn't try to rescue Progue. Otherwise, they can reach Progue, spend a few rounds reviving him, and then make it to the Rise or climb the pillar in the east marsh, all the while dogged by the rising tide. If they dally too long, they will be flooded, but manage to swim to safety; otherwise they make it to safety.

8) The next morning, we have a Debriefing Conversation with Progue, and then things return to normal (except:)

   -- The hurricane also has the result of washing the clockwork ear up on the beach, and subtly altering the landscape. 
   -- If the player had been to Saddle but not pushed the vine, it falls off the edge on its own.
   -- If the player did not solve the Secrets quest, the compass pops open on its own.
   -- Progue's psyche becomes uncertainty.
]

Tsunami Sequence is a scene.


Tsunami Sequence begins when
	( it is after 6:00 PM and
	it is before 6:50 PM and
	location is not regionally in Dreamlands and
	not exploring Progue's turf and
	tsun-conditions and
	the psyche of Progue is not denial ) or 
	tsun_tflag is 1.

To decide whether tsun-conditions:
	if The Conch Portends is completed, decide no;
	if the number of contacted windsigh trees >= 4, decide yes;
	if Egg Room is visited, decide yes;
	if there is a status of 0 in Table of Departure Quest begin; otherwise; decide yes; end if;
[	if desperate for excitement, decide yes;]
	decide no.

When Tsunami Sequence begins:
	now dont_describe_wakeup is true;
	now disposition of Progue is 0;
	begin The Conch Portends.

First condition for an episode (called ep) (this is the Tsunami prevents episodes rule):
	if Tsunami Sequence is happening and ( ep is not Earthquake and ep is not The Conch Portends and ep is not Water Works ) , rule fails.

Test tsunami with "ff / ff / ff / ff / debug drama manager / tsun / z / z / nw / n / odd / s / se / z / z / sleep / rume / alarmclock".

Tsunami-testing is an action applying to nothing. Understand "tsun" as tsunami-testing. Carry out tsunami-testing: now current episode is no-episode; now Building To Revelations is expired; now tsun_tflag is 1; change the time of day to 6:15 PM. tsun_tflag is a number that varies. tsun_tflag is 0.

Section - The Conch Portends

The Conch Portends is a guaranteed rendezvous episode. The meeting place is Center Beach. The expiration date is 4 hours. The icebreaker is tcp_greeting.

A finishing rule for The Conch Portends:
	if the player is asleep or it is after 10:30 PM, rule succeeds;
	if tcp_sleep is spoken, rule succeeds.

A commencement rule for The Conch Portends:
	Progue starts conch-blowing;
	now Progue is carrying the conch shell;
	say "Suddenly, your hair stands on end as an eerie sound reverberates around the island. You [o]listen[x] as the cry echoes through the hills, like the lonely wail of some mythical animal brought reluctantly to life.[paragraph break]The wind shifts, and the echoes fade. But you've got to find out what that was.";
	begin chapter 5;
	if the psyche of Progue is fear: [If we never managed to move Progue out of the fear stage but made it this far, we play catch-up by altering this conversation to contain the bulk of Suppression Revelations, where Progue reveals vital info about his past. We (painfully) miss the entire suppression psyche, since Progue transitions to uncertainty after the tsunami, but at least we maintain narrative coherence.]
		now the icebreaker of The Conch Portends is rev_makeupintro;
		now rev_call suggests tcp_temp;
		now rev_call is interstitial;
		now the psyche of Progue is suppression.

A completion rule for The Conch Portends:
	remove the conch shell from play.

Every turn when current episode is The Conch Portends:
	now the activity counter of Progue is 1;
	if Progue is fulfilling and the animus of Progue is conch-blowing and Progue is idle begin;
		if Progue is not visible begin; [add potential messages from the Table of Distant Progue Conch-Blowing; BUG: why doesn't this work?] fire one off by frequency from the Table of Distant Progue Conch-Blowing;
		end if;
	end if.

Instead of listening when current episode is The Conch Portends and Progue is not visible: say "The echoes of the low call reverberate around the island. [if location is regionally in Beachfront or location is regionally in Tiderooms or location is Rise or location is Tidepools]On the beach, you see Progue blowing into an enormous conch shell[else]You'd guess it is coming from the beach[end if]."

Table of Distant Progue Conch-Blowing
freq		start time	end time	text	table		trigger	flag	
common	--	--	"From [if location is regionally in Beachfront or location is regionally in Tiderooms or location is Rise or location is Tidepools]the center of the beach, Progue raises something to his mouth and unleashes[otherwise if location is regionally in West Forest]somewhere on the beach[otherwise]somewhere on the western side of the island drifts[end if] [one of]a sound like a long, low horn call[or]another deep horn call[or]another blast from the horn[cycling]. [one of]It echoes around the island[or]The sound reverberates in long, low waves around the island[or]The noise bounces around and around the island, only slowing fading away to silence[in random order]."

TCP is a thread. The escape clause is tcp_sleep.

tcp_greeting is a beat in TCP with reaction "[The Progue] raises the conch shell to his lips and gives another mighty blow. The great, long, horn sound explodes from the shell and bounces all around the island.[paragraph break]'Beautiful, eh?' he says, lowering the shell from his mouth. 'Found it just now. Tide must have washed it in.' He scratches his head. '[t]Odd[x], that, odd.'". tcp_greeting summons  tcp_temp. tcp_greeting suggests tcp_stall. Before discussing tcp_greeting: if we-are-landmark-going is true begin; tidy landmark-go; clean up landmark-go; end if; continue the action.

tcp_stall is a beat in TCP with reaction "He turns the shell over and over in his hands, running fingers along its delicate whorls and bumps.". tcp_stall suggests tcp_sleep.

Understand "tide/odd" as tcp_temp. tcp_temp is a beat in TCP with keyword name "odd" and fuse 4 and reaction "'Well,' he says, rubbing a finger over the delicate patterning in the shell, 'it shouldn't be high tide for another few hours, but the water's was high as I've ever seen it an hour ago. It's been strange lately out there.'[paragraph break]'There were thousands of silver jellyfish in the lagoon this morning,' he adds. 'Usually they're much farther out, much. Must be stirred up by the waves. Confused. Angry. Beautiful things, purple-hued silver suspended in ocean glass, long pillowing tentacles to quietly kiss you to death if you brushed too many of them. Years and fears ago I'd take long, long swims out to see them, my silent friends, and wonder. What would it be to just dive through that stinging forest, let their gentle touch surround and caress and carry me forward. To the next world. The last world.'[paragraph break]He shakes his head a little, turning the conch shell over and over in his hands.". tcp_temp suggests tcp_sleep.

tcp_sleep is a terminal beat in TCP with reaction "Progue yawns. 'This will be gushing fantastic for the Ledge,' he says, 'quite some addition to the collection. Think I'll pop up there to arrange it, maybe take a nap as well. Long day. Strange day too. But well then. Till morning, [animal-nickname], till morning.'". After discussing tcp_sleep: now the next animus of Progue is resting; Progue's life goes on; continue the action.

The conch shell is a prop. The description is "The beautiful shell is a creamy yellow with patches of orange, and about the size of your head. Bumpy whorls and ridges festoon its spiral shape.".

Section - Earthquake

Earthquake is a guaranteed instant triggered episode.

A condition for Earthquake:
	if Tsunami Sequence is happening and 
	( the player was regionally in Dreamlands or the time of day is after 11:45 PM ) and
	the player is regionally in Lacuna, rule succeeds.

A commencement rule for Earthquake:
	move Progue to Ledge;
	remove the rayfish from play;
	remove distant-rayfish from play;
	now the animus of Progue is resting;
	now ambience_on is 0;
	change the time of day to 11:45 PM;
	say "[if the player was regionally in Dreamlands]You are rudely awakened by[otherwise]You lurch unsteadily in[end if] a sudden, horrifying upheaval. The ground is shaking all around you in the darkness; distant crashes and the groaning of rock moving on rock slice through the night. You leap to your feet, staggering";
	if location is Saddle and withered vine is closed:
		now withered vine is open;
		say ".[paragraph break]The loose vine trembles in the earthquake and falls off the edge of the cliff, reaching nearly all the way down to the [dr]beach[x] below[if dir] and to the [west][end if]";
	say ".".

A finishing rule for Earthquake:
	if it is after 11:59 PM, rule succeeds;
	if location is North Beach or location is Saddle, rule succeeds;
	if location is South Beach or former location is South Beach, rule succeeds. [If we happened to be sleeping at Fork or Big Tree, end quake before gets to Center Beach, where we trigger Tsunami.]

A completion rule for Earthquake:
	say "As suddenly as it began, the quake stops, and the ground is blessedly still again. A million tiny crashes and rumbles and echoes slowly die down around you, as if the whole island sighs.";
	now lava tunnel door is closed;
	now bridge is lowered;
	now bridge-control is unlocked.

Every turn when current episode is Earthquake: [If the player happens to be in the right spot, let him witness these events (which happen anyway at the end.)]
	if lava tunnel door is open and ( location is Back Room or location is Jumble ) :
		now the lava tunnel door is closed;
		say "The lava tunnel [o]door[x] groans in the quake, swings freely for a moment, then slams loudly shut.";
	if bridge is raised and ( location is Chasm Floor or location is Chasm Edge ) :
		say "The [o]bridge[x] across the chasm creaks, and then collapses into its lowered state.";
		now bridge is lowered;
		now bridge-control is unlocked;
	if location is Edge of Ravine, say "The water in the ravine below you sways and crashes sickeningly.".

Instead of sleeping when current episode is Earthquake, say "The quake makes that highly unlikely.". Instead of touching a windsigh tree when current episode is Earthquake, say "The quake makes that highly unlikely." First Instead of landmark-going when current episode is Earthquake: say "It's all you can do right now to put one foot in front of the other.".

Pulling or pushing the ropeway lever is operating equipment. Pushing or pulling bridge-control is operating equipment. Entering the mind chair is operating equipment. Examining an outflow tube is operating equipment. Examining a pressure gauge is operating equipment. Turning or adjusting a wheel is operating equipment.

Instead of operating equipment when episodic status of Earthquake is completed and Tsunami Sequence is happening (this is the earthquake override rule): say "The quake seems to have played havoc with the natural steam vents; no steam at all is flowing from the pipes and none of the equipment seems to be functional."

Instead of going down in Edge of Ravine when current episode is Earthquake and tidein, say "The rope ladder is swinging sickeningly back and forth, the end snapping like a whip; there's no chance of climbing down it.". Instead of going down in Edge of Ravine when current episode is Earthquake and tideout, say "The rope ladder is swinging sickeningly back and forth, the end snapping like a whip; there's no chance of climbing down it.".  Instead of going down in Top of Ravine when current episode is Earthquake, say "The water is lurching crazily; you'd be smashed to pieces if you tried to dive down there now.". Instead of going down in Egg when current episode is Earthquake or current episode is Water Works: say "The ravine down is filled with oozing mud shaken loose from the rain forest by the quake; you can't get down it now.".

First Report going when current episode is Earthquake: say "Unsteadily, you stagger as best you can in that direction."; try looking instead.

Every turn when current episode is Earthquake: say "[one of]The ground[or]Everything[or]The island[in random order] [one of]rumbles and shakes[or]shudders sickeningly[or]keeps bucking and groaning[or]jerks violently[in random order] [one of]around you[or]at your feet[purely at random][if a random chance of 1 in 2 succeeds][one of], crashes above and deep, foot-rattling groans below[or] with a sound like the world ending[in random order][end if].".

Instead of sleeping when current episode is Earthquake: say "Not likely.". Check going up when location is Saddle and current episode is Earthquake: say "In this quake? Suicide." instead.

Instead of examining the surf when current episode is Earthquake: say "The waves slop sickeningly around, peaks and valleys colliding and disappearing at random.". Check examining lagoon when current episode is Earthquake: try examining surf instead.

Instead of taking shelter from when current episode is Earthquake or current episode is Water Works: say "You're not sure any place is safe right now.".


[ Lacuna-lacuna defines a number of environmental changes that take place during the Earthquake. ]

Section - Water Works

Water Works is a guaranteed instant triggered episode. ww_tracker is a number that varies.

Instead of going up in Volcano Slopes when current episode is Earthquake or current episode is Water Works: say "The quake has turned the slopes of the volcano into a shifting morass of sliding soil; climbing it right now would be suicide.". [Force the revelation of the tsunami to be at Center Beach.]

The no doors in earthquake rule is listed before the can't go through closed doors rule in the check going rules. Check going when current episode is Earthquake or current episode is Water Works (this is the no doors in earthquake rule): if door-trying and lava tunnel door is closed, say "The solid surface of the door brings you up short in the blackness. It must have swung shut in the earthquake." instead. To decide whether door-trying: if ( noun is east and location is Back Room ) or ( noun is west and location is Jumble ) , decide yes; decide no.

Instead of opening lava tunnel door when current episode is Water Works and location is Back Room: say "It's too dark to make out the buttons." Instead of opening lava tunnel door when current episode is Earthquake and location is Back Room: say "You're being shaken around too much to accurately press the buttons.".

Every turn when current episode is Water Works (this is the report on tsunami rule):
	if tsun_tracker >= 0, increase tsun_tracker by 1;
	if Drama Manager is being debugged, say "//Drama Manager: Tsunami: tsun_tracker: [tsun_tracker]; water_count: [water_count] / elevation of location: [elevation of location] / location: [if location is flooded]flooded[otherwise]dry[end if] / flooded rooms: [list of flooded rooms].";
	if tsun_tracker < 40 and location is Center Beach or location is North Beach:
		unless tsun_tracker is -1, say "Your blood runs cold at the sight before you. The whole [o]lagoon[x] has emptied, leaving a silty expanse of wet, glistening sand... but beyond it is a black wall of ocean water, moving towards you inexorably.";
		now tsun_tracker is 101;
	otherwise if location is Rise and tsun_tracker > 0:
		now tsun_tracker is -1;
		move distant-Progue to location;
		say "The marsh is drained into a muddy quagmire, but the sea is rapidly coming back. Near the cliff far on the other side, you think you can make out a [o]form[x] slumped against the ground.";
	otherwise if tsun_tracker is -1:
		say actualtsunamireport;
	otherwise if tsun_tracker < 10:
		fire one off by frequency from the Table of Post-Quake Noises;
	otherwise if tsun_tracker < 40:
		fire one off by frequency from the Table of Tide Retreating;
	otherwise:
		fire one off by frequency from the Table of Tide Approaching.

Instead of examining distant-Progue when current episode is Water Works, say "He's sprawled on the ground at the base of the cliff, not moving.".

Instead of listening when current episode is Water Works and tsun_tracker < 10: fire one off by frequency from the Table of Post-Quake Noises. Instead of listening when current episode is Water Works and tsun_tracker >= 10 and tsun_tracker < 40: fire one off by frequency from the Table of Tide Retreating. Instead of listening when current episode is Water Works and tsun_tracker >= 40: fire one off by frequency from the Table of Tide Approaching.

water_count is an elevation that varies. water_count is 0 feet. tsun_tracker is a number that varies.

A room is either flooded or dry. A room is usually dry.

To check for adjacent flooded rooms from (space - a room):
	if space is adjacent to location and location is dry [if it's wet, we have enough to worry about] begin; say "The rising, surging sea floods [prose name of space].";
	otherwise if space is adjacent to a room adjacent to location and location is dry; say "In the distance, you see the rising sea flood [prose name of space]."; end if.

A condition for Water Works:
	if Earthquake is completed, rule succeeds.

First finishing rule for Water Works:
	ignore the episodes usually end when conversation does rule.

Check examining lagoon when current episode is Water Works: try examining the surf instead. Instead of examining the surf when current episode is Water Works:
	if tsun_tracker < 10:
		say "The waves crash together dizzyingly, still turbulent from the quake.";
	otherwise if tsun_tracker < 40:
		say "The tide is rapidly retreating, already well past the low tide mark.";
	otherwise if tsun_tracker > 100:
		say "The distant tide is rapidly surging towards land with a sound like a thousand freight trains.".

Instead of going to Lower Beach when current episode is Water Works, say "[no-ww-water]". Instead of going to Ocean Waters when current episode is Water Works, say "[no-ww-water]". To say no-ww-water: say "That would be an extraordinarily bad idea.". Instead of going to Lower Beach when current episode is Earthquake, say "[no-eq-water]". Instead of going to Ocean Waters when current episode is Earthquake, say "[no-eq-water]". To say no-eq-water: say "The water sloshes drunkenly around, strange interference patterns causing crashes of surf stretching far above your head; you would be smashed and drowned.".

First Instead of landmark-going when current episode is Water Works: say "It would be better to move more carefully for the moment.".

Instead of going down in Edge of Ravine when current episode is Water Works and tidein, say "The [o]tide[x] seems to be doing strange things down there. Better to stay up here.". Instead of going down in Edge of Ravine when current episode is Water Works and tideout, say "The [o]tide[x] seems to be doing strange things down there. Better to stay up here.". Instead of going down in Top of Cave when current episode is Water Works, say "The tide is behaving strangely; ".

Instead of sleeping when current episode is Water Works: say "Something odd in the air prevents you from doing so." Instead of touching a windsigh tree when current episode is Water Works: say "The electric buzz is gone, as if the quake has momentarily stunned the trees.".


To say actualtsunamireport:
	increase water_count by 1 feet;
	repeat with space running through rooms regionally in Lacuna begin;
		if elevation of space <= 0 feet begin;
			now space is flooded;
			check for adjacent flooded rooms from space;
			if space is location, say "Water surges up to your ankles with relentless force.";
			if space is North Marsh and location is North Marsh and Progue Rescue is happening and the animus of Progue is resting, say "The cold seawater swirls around Progue and he awakens with a start. [pr_up]";
		end if;
	end repeat;
	repeat with space running through dry rooms regionally in Lacuna begin;
		if water_count >= elevation of space begin;
			now space is flooded;
			if space is adjacent to location begin; say "The rising, surging sea floods [prose name of space].";
			otherwise if ( location is Lawn or location is Observatory Exterior or location is Ledge or location is Rim of Volcano or location is Saddle or location is Atop or location is Rise ) and space is outdoorsy and space is visited; say "Below you, you see the rising tide flood [prose name of space].";
			otherwise if space is adjacent to a room adjacent to location and space is not location; say "In the distance, you see the rising sea flood [prose name of space]."; end if;
		end if;
	end repeat;
	let floodnum be water_count - elevation of location;
	if floodnum >= 8 feet or ( floodnum >= 6 feet and Progue is uncarried ) begin;
		say "[submergedmsg].";
		now we-were-submerged is true;
		complete Water Works;
	otherwise if floodnum >= 6 feet; say "The rising water is almost to your head.";
	otherwise if floodnum >= 5 feet; say "The water surges above your waist, rising up your torso.";
	otherwise if floodnum >= 4 feet; say "The water keeps surging higher, reaching almost to your waist.";
	otherwise if floodnum >= 3 feet; say "The water rushes past your thighs, still rising.";
	otherwise if floodnum >= 2 feet; say "The water level rises, reaching past your knees.";
	otherwise if floodnum >= 1 feet; say "Water sloshes up your calves towards your knees, moving with relentless force.";
	otherwise if floodnum >= 0 feet; say "The water surges forward, flooding your feet.";
	otherwise if floodnum >= -2 feet; say "A trickle of water surges past you, wetting your feet; a rising flood of water on its heels.";
	otherwise if floodnum >= -4 feet; let targ be closest floodwater; say "A churning current of seawater approaches from [prose name of targ], rising towards you inexorably."; 
	otherwise;
		do nothing;
	end if.

To say submergedmsg: say "The water [if Progue is visible]rips you apart from Progue, [end if]lifts you off your feet and carries you along with it. You are surged forward through the blackness on the terrible wave, losing all sense of direction and orientation, fighting with every ounce of energy to keep your head above the surface. Finally you smash into something hard and unyielding; crying out in pain, your grasp it and claw your way higher, out of the water, until you collapse in exhaustion and know no more".

To decide which room is closest floodwater:
	let hr be UnRoom;
	let sl be 0 feet;
	repeat with rm running through nearby flooded rooms begin;
		if elevation of rm > sl begin;
			let sl be ( elevation of rm ) ; 
			now hr is rm;
		end if; 
	end repeat;
	decide on hr. The prose name of UnRoom is "nearby".

Definition: a room is nearby if it is adjacent to location.

First instead of climbing or entering spire when current episode is Water Works: say "You eye the spire desperately, but it's not that high; at the rate the water's coming in, you'd better find higher ground than that.".

First Report going from a dry room to a flooded room: say "Against your better judgement, you step into the path of the flood."; try looking instead. First report going from a flooded room to a dry room: say "Mercifully, you climb up out of the water towards higher ground."; try looking instead. First Report going from a flooded room (called src) to a flooded room (called dst): say "You slog through the rising water as fast as you are able, [if elevation of src < elevation of dst]gaining some elevation, but not enough[otherwise if elevation of src > elevation of dst]losing elevation as the water rages higher[otherwise]staying relatively level[end if][if Progue is carried], carrying Progue[end if]."; try looking instead.[aar] First Report going when current episode is Water Works: say "[if tsun_tracker > 100]You hurry forward[else]You move cautiously forward in the uneasy darkness[end if]."; try looking instead.[aar]

Instead of going to a submerged room (called dst): say "Water has completely filled [prose name of dst]; you would be drowned.". Definition: a room is submerged if water_count - elevation of location > 6 feet.
	
Instead of sleeping when current episode is Water Works, say "Your heart is still racing; you are far too keyed up to sleep."

Table of Post-Quake Noises
freq		text	table		trigger	flag	
frequent	"[one of]An eerie silence hangs over the island[or]The silence seems almost dangerous, like a vacuum waiting for some dreadful event to fill it[or]The night is still as a tomb[or]You can hear your own breathing in the unnaturally still night air[or]A tree falls somewhere, the sound splitting the total silence like a gunshot[in random order]."

Table of Tide Retreating
freq		start time	end time	text	table		trigger	flag	
guaranteed	--	--	"[one of]Sounds of[or]The sound of[or]A noise like[in random order] [one of]retreating water[or]disturbed waves[or]huge surf[in random order] and [one of]an odd sucking noise[or]a deep, subterranean gurgling[at random] [one of]tremor through the ground[or]reverberate around you[or]echo through the night[or]fill the air[in random order]."

Table of Tide Pause
freq		text	table		trigger	flag	
guaranteed	"[one of]The sea has retreated so far you can barely hear it[or]The distant ocean has gone completely silent[or]It's like the whole island is holding its breath[in random order]."

Table of Tide Approaching
freq		start time	end time	text	table		trigger	flag	
guaranteed	--	--	"[one of]An ominous rush of water steadily grows in volume from all sides[or][tsunami-drama][stopping]."

To say tsunami-drama: say "[one of]The wall of water surges inexorably forward[or]The growl of the approaching tsunami is deafening[or]The black tide rushes closer and closer[or]Trees split and earth rends as the unstoppable sea advances[or]The wall of water is almost upon you[or]Hot spray blows in your face as the roaring tide nips at your heels[or]The tsunami is seconds away[cycling]".


Section - Progue Rescue

Progue Rescue is a scene.

Progue Rescue begins when
	current episode is Water Works and
	location is Rise.

When Progue Rescue begins:
	move Progue to North Marsh;
	now the animus of Progue is resting.

Instead of going up in North Marsh when Progue Rescue is happening: say "[if Progue is carried]Not a chance, carrying Progue like this[otherwise]Progue is in no condition for climbing right now[end if]."

First Instead of waking, pushing, greeting, or touching Progue during Progue Rescue: say "[if the animus of Progue is resting]You shake Progue vigorously. He moans, but his eyes do not open[otherwise]He grips your hand tightly, eyes wide with fear[end if].".

First Instead of attacking Progue during Progue Rescue: say "You give Progue a quick slap across the face. His eyes spring open.[paragraph break][pr_up]".

To say pr_up: say "'What did I miss?' Progue mutters vaguely. He's in no state to walk by himself, so with a grunt you grab his bony frame and sling him over your shoulder."; setup Progue for rescue.

To setup Progue for rescue: now Progue is carried; now Progue-was-carried is true; if water_count < the elevation of location - 4 feet, now water_count is the elevation of location - 4 feet.

Instead of taking Progue when Progue Rescue is happening and Progue is uncarried: say "With a grunt, you lift Progue and position him over your shoulder. His eyes open blearily, but unfocused; he must have hit his head hard."; setup Progue for rescue.

Instead of taking Progue when Progue Rescue is happening, say "You've already got him." Instead of dropping Progue when Progue Rescue is happening and location is not safe: say "You can't put him down here; the water's still rising.". First instead of greeting Progue when Progue Rescue is happening: say "'Just get us out of here,' he mutters vaguely.". Instead of inserting Progue into the bucket when Progue Rescue is happening, try pushing the ropeway lever. Instead of entering the bucket when Progue Rescue is happening, try pushing the ropeway lever.

To decide whether (place - a room) is safe: if the elevation of place >= 25 feet, decide yes; decide no. To decide whether (place - a room) is not safe: if place is safe, decide no; decide yes.

Progue Rescue ends successfully when
	the location of Progue is safe.

When Progue Rescue ends successfully:
	now Progue is uncarried;
	say "You can't go any farther. [if Progue is carried]You collapse to your knees, setting Progue gently down[otherwise]You both collapse to the ground, panting[end if], and wait.[paragraph break]But the water seems to have reached its high point. It swirls and flows below you, but stops rising.[paragraph break]Finally, you both drift off into a long, uneasy, dreamless sleep.";
	Progue is more submissive, silently;
	Progue likes you more, silently;
	Progue likes you more, silently;
	if romance of Progue > 0, Progue is aroused, silently.

To decide whether completely submerged:
	if water_count - elevation of location >= 6 feet, decide yes;
	if water_count >= 25 feet, decide yes;
	decide no.

we-were-submerged is a truth state that varies. Progue-was-carried is a truth state that varies.

Progue Rescue ends nobly but unsuccessfully when [aar]
	( we-were-submerged is true or completely submerged ) and
	Progue-was-carried is true.

When Progue Rescue ends nobly but unsuccessfully:
	[ carrying/with Progue but didn't make it to high ground ]
	Progue likes you more, silently.
	
Progue Rescue ends unsuccessfully when
	Player Rescue begins.

Progue Rescue ends unsuccessfully when
	Progue-was-carried is false and 
	( completely submerged or we-were-submerged is true ) .

When Progue Rescue ends unsuccessfully:
	[ never found Progue ]
	do nothing.

Section - Player Rescue
	
Player Rescue is a scene.

Player Rescue begins when conditions_for_PR is true.

To decide whether conditions_for_PR is true:
	if Progue Rescue has ended, decide no;
	if current episode is not Water Works, decide no;
	if location is Fork and tsun_tracker > 100, decide yes;
	if tsun_tracker > 40 and tsun_tracker <= 100, decide yes;
	if tsun_tracker > 110, decide yes;
	if completely submerged and Progue Rescue is not happening, decide yes;
	decide no.

Test dangling with "ff / ff / ff / ff / ff / ff / tp hive room / tsun / z / z / z / z / z / sleep / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / z / open compass / nw / se".

When Player Rescue begins:
	now water_count is water_count - 6 feet;
	now player_imperiled is true;
	if we are going, say "You move cautiously forward in the darkness, but suddenly "; otherwise say "Suddenly ";
	if location is Edge of Ravine or location is Viewpoint or location is Backside or location is Saddle begin;
		say "the ground gives way beneath your feet and you are falling, sliding in a torrent of wet earth and stones off the drop-off. You scrabble desperately for something and finally your hands grasp a thick tree [o]root[x]; you grip it with all your strength as the ground crumbles away beneath you, falling far down towards the [o]ravine[x] floor below, leaving you dangling over the precipice.";
		move quake tree root to location;
	otherwise if location is Rockslide or location is regionally in Volcano Slopes or location is Rim of Volcano;
		say "the loose rock gives way beneath your feet, and the whole hillside is sliding. You try desperately to maintain your balance and jump clear of the slide, but rocks twist and grab your ankles and you fall to the ground, throwing your arms up to your head to protect it. Mercifully, the rockslide stops moments later; but your feet and lower legs are caught under a [o]boulder[x], wedged tight against another.";
		move slide to location;
	otherwise if location is flooded or elevation of location - water_count is at most 4 feet;
		say "the water surges around you and lifts you off your feet. Desperately you try to ride the wave, but then something glances against your head leaving your ears ringing, and you are twisted around and pulled under.[paragraph break]After a long, horrible moment, you manage to break the surface again; but your foot has caught on some hard [o]foothold[x], and the water continues to rise.";
		move foothold to location;
	otherwise;
		say "the ground beneath your foot steepens and then, horribly, disappears, and  you fall forward into a sudden blackness. You throw your arms backwards and grab for purchase; they painfully catch on what seems to be the edge of some new [o]crack[x] opened in the quake; frantically, you grasp for a handhold as you slip farther and farther into the maw. Finally you manage to stop your slide, though you are dangling over a pitch black hole of unknown depth.";
		move the giant crack to location; 
	end if.

Check going when player_imperiled is true: say "You wish you could." instead. 

[ Dangling over ravine ]

The quake tree root is set dressing. The printed name is "slippery root". The description is "It bends dangerously under your weight." Instead of climbing quake tree root, try going up. Instead of taking quake tree root, say "You are already gripping it as tightly as you can." Does the player mean doing something with quake tree root: it is very likely.

Instead of going when player_imperiled is true and ( quake tree root is in location or giant crack is in location or slide is in location ) (this is the tsungd1 rule): say "You can't go anywhere until you get out of this mess." instead. The tsungd1 rule is listed first in the instead rules.

Instead of going down when player_imperiled is true and ( quake tree root is in location or giant crack is in location ) (this is the tsungd2 rule): say "Suicide." instead. The tsungd2 rule is listed first in the instead rules.

Instead of going up when ( quake tree root is in location or giant crack is in location ) and player_imperiled is true (this is the first earthquake rule): say "You try to struggle upwards, but your handhold is slippery and your feet can't get any purchase. You almost lose your grip and grab desperately with your other hand to tighten your hold.". The first earthquake rule is listed first in the Instead rules.

Instead of jumping when player_imperiled is true: say "[if giant crack is enclosed by location or quake tree root is enclosed by location]Suicide[otherwise]You desperately try to leap free, but you can't work yourself free from the crushing grip on your lower body[end if].".

First check climbing when player_imperiled is true and ( quake tree root is in location or giant crack is in location ) : try going up instead.

[ Dangling over crack ]

The giant crack is an unopenable open fixed in place container. Understand "hole" or "maw" or "chasm" or "handhold" as giant crack. The description is "[if player_imperiled is true]You have no sense of its dimensions or depth; but you can't touch the other side and you can't see the bottom.[otherwise]The crack, rimmed by wrinkles of recently disturbed soil and dying plants, is narrow enough to jump over, just, and a dozen paces long. It seems to go down quite a ways.". The initial appearance is "A [o]crack[x] has opened up in the earth here, slicing unpleasantly through the [surface-material].". Instead of exiting when giant crack is in location: try going up. Instead of entering giant crack: say "Without the proper equipment, it would be too dangerous.". Instead of entering giant crack when player_imperiled is true: try going down. Instead of climbing giant crack when current episode is Water Works and Progue is not enclosed by location: say "You struggle to pull yourself up, but the ground is loose and each handhold gives under increased weight. You feel yourself slipping slowly backwards.". Instead of taking giant crack, try climbing giant crack.

[ Stuck in rockslide ]

The slide is set dressing. Understand "rock" or "rocks" or "rockslide" or "boulder" as slide. The printed name is "rockslide". The description is "The whole hillside slipped loose, only to tentatively, piece by piece, grab onto the slope and hold still again, no matter how precariously.". Instead of going when player_imperiled is true and slide is in location: say "You struggle to free yourself, but you are stuck tight.". Instead of taking or pushing or pulling slide: say "You shift a few stones, but the larger ones are too heavy for you to get a good grip on.". Instead of attacking slide: say "You rail at the stones trapping you, but only manage to wedge yourself in more tightly.".

[ Trapped in rising water ]

The foothold is set dressing. Understand "foot" or "hold" or "foot hold" or "obstruction" or "snare" as foothold. The description is "You can't see it beneath the surging waves; all you can feel is that it's something hard and unyielding, and your foot is definitely stuck in it.". Instead of taking or pushing or pulling the foothold: say "You take a breath and pull yourself under to tug at the snare, but the water is surging around you so savagely that you can't get a grip. You surface again, gasping, and see that the water has risen even higher.". Instead of attacking the foothold: say "You kick savagely at the obstruction, but only succeed in wedging your foot in more tightly.". Instead of vague swimming while player_imperiled is true (this is the tsunswim2 rule): say "You kick your free leg and paddle frantically with your hands, but your other foot is held tight." instead. The tsunswim2 rule is listed first in the instead rules. Instead of going down when player_imperiled is true and foothold is in location (this is the tsunswim1 rule): try taking foothold. The tsunswim1 rule is listed first in the instead rules. Instead of going when player_imperiled is true and foothold is in location (this is the tsungo1 rule): say "You kick your free leg and paddle frantically with your hands, but your other foot is held tight.". The tsungo1 rule is listed first in the instead rules. Vague swimming is fighting for life. Instead of attacking surf when foothold is visible, try attacking foothold.

Going somewhere is fighting for life. Climbing is fighting for life. Doing something to the rockslide is fighting for life. Doing something to the foothold is fighting for life. Doing something to the giant crack is fighting for life.  Doing something to the quake tree root is fighting for life. 

survival_count is a number that varies. survival_count is 0.

After fighting for life when Player Rescue is happening and Progue is visible: increase survival_count by 1; if Drama Manager is being debugged, say "//Drama Manager: Tsunami: **fighting for life**"; continue the action.

Every turn when Player Rescue is happening and survival_count >= 2: say "Struggling furiously, you [if foothold is visible or slide is visible]twist your foot free, scraping it badly[otherwise]grab for a desperate handhold and pull yourself to safety[end if]. Progue grabs you and hauls you forward, muttering something about heroics, and the two of you [if location is flooded]struggle towards dry land and higher ground[otherwise if elevation of location < 30 feet]struggle towards higher ground in the terror of night[otherwise]collapse in exhaustion to wait out the long night[end if]."; now player_imperiled is false.

Every turn during Player Rescue:
	now water_count is water_count - 2 feet; [ once this event has been triggered we don't want the player to drown in the middle of it. ]
	if the time since Player Rescue began is at least ( 2 times time factor ) minutes and Progue is not enclosed by location begin;
		summon Progue to location;
		now Progue is idle;
		say "Progue appears and in a flash, reaches out a [o]hand[x] to you.[paragraph break]'Take it!' he shouts, glancing nervously behind him, 'hurry!'";
	end if.

Instead of greeting Progue during Player Rescue: say "'No time,' he shouts, 'grab my hand!'". First Instead of attacking, pushing, hugging, or kissing Progue during Player Rescue: say "This is hardly the time for that.".

Understand "hand" as Progue when Player Rescue is happening. Instead of taking Progue when Player Rescue is happening (this is the earthquake 2 rule): now pr_coop is true; say "You grasp Progue's hand gratefully, and feel it [if slide is in location]pull you free of the rockslide[otherwise]pull you forward[end if] with surprising strength.[paragraph break]'Gotcha gotcha,' he shouts against the roar of the waves[if romance of Progue >= 4], then plants a quick, desperate kiss on your lips[end if]. 'Now let's move!'[paragraph break][tsun-outtro]." instead. The earthquake 2 rule is listed before the hug not take Progue rule in the Instead rules.

Instead of examining Progue when Player Rescue is happening, say "Soaked, scratched, with a bruise spreading across his face, Progue reaches out a firm hand towards you with a strength that defies his years."

Instead of getting bored during Player Rescue: do nothing.

To say tsun-outtro: say "Together, you struggle up towards higher ground, the water rising inexorably in the darkness below and around you with a roar like a beast the size of an island. Finally, you collapse, exhausted, and slowly wait out the long night"; now player_imperiled is false.

Player Rescue ends cooperatively when pr_coop is true. pr_coop is a truth state that varies.

When Player Rescue ends cooperatively:
	Progue feels more like a father, silently;
	Progue likes you more, silently.

Player Rescue ends individualisticly when player_imperiled is false and pr_coop is false.

When Player Rescue ends individualisticly:
	Progue feels more like a father, silently;
	Progue likes you less, silently.

Every turn when player_imperiled is true: increase peril factor by 1. peril factor is a number that varies. peril factor is 0.

Player Rescue ends sourly when peril factor is at least 5.

When Player Rescue ends sourly:
	Progue feels more like a father, silently;
	Progue feels more like a father, silently;
	Progue likes you less, silently;
	Progue likes you less, silently;
	say "Suddenly, you slip and begin falling backwards, but Progue dives forward and grabs your hand fiercely. With strength you didn't know he had, he pulls you slowly out, till the two of collapse.[paragraph break][tsun-outtro].";
	complete Water Works.
	

[from Viewpoint or Edge of Ravine, the ground gives way leaving the player dangling; from Forest or Frozen Hell or West Forest, the player steps into a hidden opened crack; from Rockslide or Volcano Slopes, the player is half-buried in rockfall; if the player is hit by the tsunami, they are pulled from their feet and bash their head and end up drifting to a spot where their foot is caught and the water is rising.]

Section - Finishing Up

washed_out is a number that varies. washed_out is 0.

A finishing rule for Water Works:
	if Player Rescue has ended, rule succeeds;
	if Progue Rescue has ended and Player Rescue is not happening, rule succeeds;
	if completely submerged and Player Rescue is not happening, rule succeeds.[aar]

A completion rule for Water Works:
	if completely submerged and Player Rescue is not happening and we-were-submerged is false, say "[submergedmsg].";
	if Drama Manager is being debugged, say "// Drama Manager: Tsunami: **Player rescue has ended: [if player rescue has ended]T[otherwise]F[end if]; Progue Rescue has ended: [if Progue Rescue has ended]T[otherwise]F[end if]; Progue Rescue is not happening: [if Progue Rescue is not happening]T[otherwise]F[end if]**";
	tidy up the flood.

To tidy up the flood:
	now the time of day is 9:45 AM;
	now player_imperiled is false;
	now water_count is 0 feet;
	move the player to Rise, without printing a room description;
	move Progue to Center Beach;
	now the animus of Progue is ruminating;
[	now the posture of the player is reclining;]
	now the psyche of Progue is uncertainty;
	now Progue is fulfilling;
	move the left ear to North Beach;
	move fallen trees to Rise;
	now volcano sculpture is loosened;
	if Saddle is visited and withered vine is closed:
		now withered vine is open;	
	move shallow puddles to Volcano Floor;
	move clockwork head to Treehouse; [?]
	now time-for-shark-scene is true;
	now the ambience table of Crater Pond is Table of Geyser Ambience;
	remove pond-birds from play;
	remove water lilies from play;
	move sketchbook to Hut;
	remove wooden cube from play;
	now the activity counter of Progue is -50;
	now every room is dry;
	print a section break;
	if compass is unmolested and compass is worn and puzzle mode:
		now compass is revealed;
		say "Something scrapes roughly against your chest. You groggily open your eyes to morning light and sit up, rubbing the [o]compass[x] absently; something seems to have popped open on the back side in the chaos";
	otherwise:
		if compass is not worn:
			if puzzle mode, now compass is revealed;
			now compass is described;
			change the initial appearance of the compass to "Half-buried in the sand, a gleaming round [o]compass[x] catches the light.";
			move compass to Center Beach;
		say "You groggily open your eyes to morning light";
	say ".[paragraph break]You stand slowly, shakily to your feet, and look around. It seems you've survived.";
	begin chapter 6;
	now only-look-once is false;
	try looking;
	move distant-Progue to location;
	say "Off near the center of the [d]beach[x], you see Progue, sitting with knees hunched up staring out at the tide.".


Section - Post-Storm Conversation

Post-Storm Conversation is a guaranteed triggered serendipitous episode. The icebreaker is psc_intro. 

First condition for Post-Storm Conversation:
	ignore the Progue is chattier the more he likes you rule;
	rule succeeds.

A completion rule for Post-Storm Conversation:
	now the activity counter of Progue is 5.

PSC is a thread. The escape clause of PSC is psc_headinjury.

[1. Player makes no effort to rescue Progue. Progue tries to rescue player and player refuses his help. (Player Rescue ended individualisticly)
2. Player makes no effort to rescue Progue. Progue tries to rescue player and player accepts his help. (Player Rescue ended cooperatively)
3. Player gets to Rise or farther, then turns back without reviving Progue. (Leading to 1 or 2 above) (Progue Rescue ended unsuccessfully)
4. Player revives Progue but does not make it to safety. (Progue Rescue ended nobly but unsuccessfully)
4. Player revives Progue and takes him to safety. (Progue Rescue ended successfully.)]

psc_intro is a beat in PSC with reaction "'Well oh well oh, quite a night,' he says. 'But Something Further, we're both still alive, [']twould seem leastways. Won't be forgetting that very soon, I don't expect. That's my Lacuna for you; just when you get used to her she throws a tsunami at you.'".

[]

After discussing psc_intro: 
	if ( Progue Rescue ended successfully or Progue Rescue ended nobly but unsuccessfully ) and affinity of Progue > 0 begin; force discuss psc_savedmeinchar;
	otherwise if ( Progue Rescue ended successfully or Progue Rescue ended nobly but unsuccessfully ) ; force discuss psc_savedmeoutchar;
	otherwise if Player Rescue ended cooperatively ; force discuss psc_savedyou;
	otherwise if Player Rescue ended individualisticly or Player Rescue ended sourly; force discuss psc_playthehero;
	otherwise if Progue Rescue ended unsuccessfully; force discuss psc_abandoned;
	otherwise; if final release mode is false, say "//ERROR: none of the Post-Storm Conversation templates fit."; force discuss psc_savedyou;
	end if;
	continue the action.

psc_savedmeinchar is a beat in PSC with reaction "He regards you seriously. 'Thanks are deserved for you,' he says. 'You grabbed my life by the scruff and kept me falling from the brink. [if Progue Rescue ended nobly but unsuccessfully]Didn't quite make it but that last shock of submersion finally sprung me to wake; I swam and climbed and somehow made it to dry land. [end if]Why I reasoned I could or should climb down from my ledge plum in the midst of earthquakes...' he shakes his head. 'Would have been swept to sea and sunk with the sharks without you, friend. Infinitudes of thanks and respect.'". psc_savedmeinchar summons psc_welcome. psc_savedmeinchar suggests psc_headinjury.

Understand "welcome" as psc_welcome when last beat is in PSC. psc_welcome is a beat in PSC with keyword name "welcome" and reaction "[if romance of Progue > 2]He hugs you, holding you tight, before letting you go[otherwise]He clasps your hand firmly[end if]. 'Mayhaps someday the favor can be boxed up and returned,' he says.". psc_welcome enqueues psc_headinjury.

psc_savedmeoutchar is a beat in PSC with reaction "He frowns at you. 'We haven't always heard ear to ear since you've arrived,' he says. 'But still you went ratherly out of your way to save me. You grabbed my life by the scruff and kept me falling from the brink. I'm willing to sheath the past and let it be past, if you are. Find a new spring between us. What do you say? Agree?'". The yes-beat of psc_savedmeoutchar is psc_yesfriends. The no-beat of psc_savedmeoutchar is psc_nofriends. psc_savedmeoutchar suggests psc_nofriends. 

psc_nofriends is a submissive beat in PSC with keyword name "no" and reaction "He furrows his brow and folds his arms. 'Very well,' he says. 'Won't forget what you did for me, too true, but if you don't want changes in spaces between, then so it will be.'". psc_nofriends enqueues psc_headinjury.

psc_yesfriends is a beat in PSC with keyword name "yes" and reaction "He clasps your hand, a real smiling breaking out across his face. 'Very well and welly ver,' he says. 'I hope this time I make better impressions.'". psc_yesfriends enqueues psc_headinjury. After discussing psc_yesfriends: if affinity of Progue < 1, now affinity of Progue is 1; continue the action.

psc_savedyou is a beat in PSC with reaction "'It's a trickling good thing I found you when I found you,' he says, 'since when I found you the water was black madness rising. That quake shocked the moisty hells from me, have my words, up on that carious mountain ledge. I came right down spying for you afterwards. Good thing, too true, true too, or you might be sunk with the sharks instead of breathing in the morning.'". psc_savedyou summons psc_thanks. psc_savedyou suggests psc_headinjury.

Understand "thanks" as psc_thanks when last beat is in PSC. psc_thanks is a beat in PSC with keyword name "thanks" and reaction "'Well and [']twas only my nature,' he says modestly. 'Mayhaps someday you'll  grab my life by the scruff and keep me from falling off the brink.'". psc_thanks enqueues psc_headinjury. Instead of thanking Progue when psc_thanks is available: try discussing psc_thanks.

psc_playthehero is a beat in PSC with reaction "He regards you with annoyance. 'You don't play a gushing convincing hero,' he says. 'The ground quivering like a planet of gel, the waves black madness rising, and here I venture through life and strife to find you and you don't seem keen for aid. Got me a bit upended, [animal-nickname]. Some sound of [psc_sorry] is mayhaps overdue, unless of course of course I insulted the brave and lonely [psc_solo]?'". psc_playthehero suggests psc_headinjury.

Understand "sorry" as psc_sorry when last beat is in PSC. psc_sorry is an affinitive beat in PSC with keyword name "sorry" and reaction "His expression softens a little. 'Well, it's over now and regardless,' he says. 'What's done is done, and neither sunk with the sharks. Could have turned gushing worse.'". psc_sorry enqueues psc_headinjury.

Understand "hero" as psc_solo when last beat is in PSC. psc_solo is an unaffinitive submissive beat in PSC with keyword name "hero" and reaction "'Well and I hope you enjoyed yourself,' he says sourly. 'Next time you can play your games when someone else's life is on the brink.'". psc_solo enqueues psc_headinjury.

psc_abandoned is a beat in PSC with reaction "'I saw you on the rise last night,' Progue says slowly, not meeting your eye, 'after I fell from my climb down the cliff. You saw me, watched for a span, and then you turned, back and away. I was dizzy, hurt, choking...' He swallows. 'Well and mayhaps you solely did what it was you thought you needed to [psc_unintentional]. Or mayhaps, mayhaps what you did was entire your [psc_intentional], eh? I wonder, [animal-nickname]. I wonder.'". psc_abandoned suggests psc_unintentional.

Understand "survive" as psc_unintentional when last beat is in PSC. psc_unintentional is a beat in PSC with keyword name "survive" and reaction "'Well,' he says in a kind tone but still not meeting your eye, 'ground quivering like a planet of gel; the waves black madness rising, chaos encircling confusion. Mayhaps thoughts and thoughts weren't finishing the race. It's past now; we'll forget it or something thatwise, yes? I suppose we will.'". psc_unintentional enqueues psc_headinjury.

Understand "intentional" as psc_intentional when last beat is in PSC. psc_intentional is an unaffinitive terminal beat in PSC with keyword name "intentional" and reaction "'Then and then,' he says darkly, 'Nothing Further to you, [animal-nickname]. I'll busy myself with prepping your departure; we needn't speak again. Worsebyes and farepoors.'". After discussing psc_intentional: now the affinity of Progue is -6; if romance of Progue > 0, Progue is heartbroken; Progue's life goes on; continue the action.

psc_headinjury is a beat in PSC with reaction "'Hit the nog trickling hard when I fell,' he says, rubbing the purple goose egg on his forehead, 'feels like avalanches in there just now. Avalanches of [psc_Memories] trickling, cascading, triggering others, overcoming angles of repose, reaching points of no return...' he trails off, clutching his head as if to somehow stabilize it. 'Anyway,' he continues after a long moment, 'my beach is a sad and sad [psc_mess]. Don't know how I'll keep it in clean.' He seems on the verge of tears, but takes a few deep breaths and calms down.". psc_headinjury suggests psc_memories. psc_memories replaces psc_headinjury.

Understand "memories" as psc_memories when last beat is in PSC. psc_memories is a beat in PSC with keyword name "memories" and reaction "'I remember... more now,' he says, carefully. 'Still not everything, not by mountains, but more and more bits, pieces of puzzles in pieces. And I'm sure, but not sure why, that that pyramid contraption up on the mountaintop is a terrible danger. I know you've [if Lawn is visited]been up there and fiddled[otherwise]been trying to get up there and fiddle[end if], but you've got to trust and believe: Stop. Leave it be. The best and best thing for you is to help me prep your departure, so you can leave this place, wayfare away and move on and forget about me and Lacuna and all that's here.'[paragraph break]'Oh,' he says, 'and I'd stop sleeping under those windsigh trees, too, were I you. You'll sleep gushing more peacefully out on the beach, I promise.'". psc_memories enqueues psc_outtro. psc_outtro replaces psc_memories.

Understand "mess" as psc_mess when last beat is in PSC. psc_mess is a beat in PSC with keyword name "mess" and reaction "'Jotsam and fletsam sloshing up everywhere,' he says, waving towards the beach with a hopeless hand. 'Be working overtime for a span. The beach has to stay clean, [animal-nickname], has to has to.'". psc_mess suggests psc_memories.

psc_outtro is a terminal beat in PSC with reaction "'That's all I wanted to say,' he says. 'Oh and just to keep your eyes unglued-- seems a few things may have changed around here. Till the future.' He nods to you and turns back to his inner thoughts, a glum, pensive expression heavy on his face.".



Tsunami Sequence ends when the episodic status of Water Works is completed.

When Tsunami Sequence ends: now dont_describe_wakeup is false.


Lacuna Tsunami ends here.
