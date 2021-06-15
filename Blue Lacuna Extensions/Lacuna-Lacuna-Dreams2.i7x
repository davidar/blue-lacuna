Lacuna-Lacuna-Dreams2 by Blue Lacuna begins here.

Use authorial modesty.

Book - Not for release

Understand "dtrack" as dtracking. Dtracking is an action out of world applying to nothing.

Carry out dtracking:
	if dream-window is g-present, shut down dream-window;
	otherwise open up dream-window.

The dream-window is a g-window with type g-text-buffer. The main-window spawns the dream-window. The position of the dream-window is g-placeabove. The scale method of dream-window is g-fixed-size. The measurement of the dream-window is 5.

Before reading a command when dream-window is g-present: follow the draw dw rule.

This is the draw dw rule:
	move focus to dream-window, clearing the window;
	let lucky be a random windsigh tree in saved location;
	if lucky is not a thing and saved location is Saddle, let lucky be tree3;
	if lucky is not a thing and saved location is Treehouse, let lucky be tree2;
	say "player: [if player is asleep]asleep[else]awake[end if] / contctd. trees: [the number of contacted windsigh trees] / psuedo: [if pseudo-dream is 1]yes[else]no[end if] / tree: [location of lucky] ([if lucky is contacted]contacted[else]uncontacted[end if])[line break]";
	say "act. pres.: [if active presence is dream1-presence]1[else if active presence is dream2-presence]2[else if active presence is dream3-presence]3[else if active presence is dream4-presence]4[else if active presence is dream5-presence]5[else if active presence is dream6-presence]6[else if active presence is dream7-presence]7[else][active presence][end if]";
	say " ([if active presence is enclosed by location]here[else]gone[end if] & [if active presence is attentive]attentive[else]idle[end if]) / last beat: [last beat] / saved lb: [saved last beat][line break]";
	say "door locked: [if dream-door-locked is true]yes[else]no[end if] / esc track: [escape tracker] ";
	return to main screen.

Book - Dream Related Stuff


Emergency waking is an action applying to nothing. Understand "alarmclock" as emergency waking.

Check emergency waking: if yourself is awake, say "You're awake.". Carry out emergency waking: now player is yourself; now yourself is awake; now time factor is 3; let lucky be a random windsigh tree in saved location;
	if lucky is not a thing and saved location is Saddle, let lucky be tree3;
	if lucky is not a thing and saved location is Treehouse, let lucky be tree2;
	now lucky is contacted.

Check vague discussing when location is regionally in Dreamlands: say "The conversation seems to move inexorably forward, despite your attempts to direct it." instead. 

Check requesting the exits text when location is regionally in Dreamlands: say "You can't seem to get your bearings here." instead.

Definition: a room is treecontacted: if it encloses a contacted windsigh, yes; if it is Treehouse and tree2 is contacted, yes; no.

To say sleepsuggest: [ If the player has tried to sleep somewhere inappropriate, we suggest a place for them, subtly encouraging them to sleep near a windsigh tree. ]
	say "[line break]";
	let the tree room list be {Treehouse, Fork, Forest9, Cinder Cone, Egg Room, Saddle, Rockslide};
	remove the list of unvisited rooms from the tree room list;
	remove the list of treecontacted rooms from the tree room list;
	if the number of entries in the tree room list is 0:
		say "There's got to be someplace to sleep around here.";
		stop;
	let nmb be a random number from 1 to the number of entries in the tree room list;
	let selection be entry nmb of the tree room list;
	if selection is Treehouse:
		say "The hammock in that treehouse you found looked like a nice place for a night's sleep.";
	else if selection is Fork:
		say "The leafy nook at the foot of the tree you painted to reach this place springs to mind. It might be comfortable enough for sleep.";
	else if selection is Forest9:
		say "The [tree5] in the rain forest had that mossy boulder at its base-- that might be a good place to drop off.";
	else if selection is Cinder Cone:
		say "The smooth slopes of the small cinder cone in the volcano near the [tree4] might be a smooth and warm place to sleep.";
	else if selection is Egg Room:
		say "The hidden hollow by the egg shape in the rain forest might be a soft place to get some sleep.";
	else if selection is Saddle:
		say "That high saddle at the top of the water cave might be a good place to sleep, and there would definitely be a spectacular view of the sunrise in the morning.";
	else if selection is Rockslide:
		say "The mossy hollow up by the [tree7] on the rockslide might be a good place to sleep.".

Book - Dream Infrastructure

Section - General

Dreamlands is a region. [All dream rooms are in Dreamlands.]

Having a Dream is a recurring scene.

Having a Dream begins when
	the player is asleep for the first turn.

Having a Dream ends when
	yourself is awake. 

Table of Dream Stuff
order	nexus			presence
1		Dream1Nexus	dream1-presence
2		Dream2Nexus	dream2-presence
3		Dream3Nexus	dream3-presence
4		Dream4Nexus	dream4-presence
5		Dream5Nexus	dream5-presence
6		Dream6Nexus	dream6-presence
7		Dream7Nexus	dream7-presence

When Having a Dream begins:
	if dreams are being debugged, say "// Dreams: Having a Dream begins.";
	print a section break;
	strip the player;	
	if good place to dream begin; [ we're sleeping near a windsigh ]
	[figure out which dream to have]
		now d_ctr is 0;
		now d1_ctr is 0;
		let lucky be a random visible windsigh tree;
		if lucky is not a thing and location is Saddle, let lucky be tree3;
		if lucky is not a thing and location is Treehouse, let lucky be tree2;
		if dreams are being debugged, say "// Dreams: good place to dream because near [lucky].";
		if the number of contacted windsigh trees is 7 begin; [after the 7th dream, always get the last one (to let you change passwords.)]
			now active presence is dream7-presence;
			unless pseudo-dream is 1, now pseudo-dream is 0; [If we're touching the tree, wake up immediately; else sleep through the night.]
		otherwise if the scene_order of lucky is 0; [Assign the next dream to the sequence.]
			let tkr be 0;
			repeat with ctr running through windsigh trees begin;
				if scene_order of ctr > tkr, now tkr is scene_order of ctr;
			end repeat;
			now the scene_order of lucky is tkr + 1;
			if dreams are being debugged, say "// Dreams: never dreamed under this tree: assigning scene order [tkr + 1].";
		otherwise;  [Before you've gotten to the 7th dream, remind you to find more trees.]
			if dreams are being debugged, say "// Dreams: already dreamed under this tree: summoning dream-presence-rerun.";
			now active presence is dream-presence-rerun;
			choose row scene_order of lucky in Table of Dream Stuff;
			move active presence to nexus entry;
			now pseudo-dream is 2; [Will wake up early so we don't miss a night.]
		end if;
		if dreams are being debugged, say "// Dreams: selecting dream [scene_order of lucky].";
		if the number of contacted windsigh trees is 7, choose row 7 in Table of Dream Stuff;
		otherwise choose row scene_order of lucky in Table of Dream Stuff;
		move player to nexus entry;
		if pseudo-dream is not 2, now active presence is presence entry;
	otherwise;
		move player to GenericDream; [quick message and immediate wake up.][aar]
	end if.

To decide whether good place to dream: 
	if a windsigh tree is enclosed by location or location is Saddle or location is Treehouse, decide yes;
	decide no.


A windsigh tree has a number called scene_order. [ Our dreams are given a chronological sequence of settings, regardless of what order trees are found in, and once a setting is assigned to a tree, it stays assigned to it in future dreams. ]

Saved location is a room that varies. Locker is a container. Wardrobe is a container. [ This stores the player's stuff while they're dreaming. ]

To strip the player: 
    now every thing carried by yourself is in the locker; 
    now every thing worn by yourself is in the wardrobe; 
    change saved location to location.

To restore the player:
	now every thing carried by yourself is in the location; 
	now every thing in the locker is carried by yourself; 
	now every thing in the wardrobe is worn by yourself;
	if Tsunami Sequence is happening:
		move the player to saved location, without printing a room description;
		say "[bold type][location][roman type][line break]";
	otherwise:
		move the player to saved location.

[pseudo-dream is a number that varies. pseudo-dream is 0.] [Defined in main. After we've powered the mindlink, we can just touch trees instead of having to sleep under them.]

dont_describe_wakeup is a truth state that varies. 

When Having a Dream ends:
	if dreams are being debugged, say "// Dreams: Scene Having a Dream ends.";
	if pseudo-dream is 0 begin; [regular dream.]
		print a section break;
		if dont_describe_wakeup is false, say "[if notrefreshed is true]You rise to your feet[otherwise]Blinking and yawning, you rise to your feet and stretch. [one of]If it wasn't the most restful night, you at least feel ready to face another day[or]The strange dreams don't seem to fade, but linger hazily in the back of your mind[or]You feel rested, despite the strange dreams[in random order][end if].";
		now notrefreshed is false;
	otherwise if pseudo-dream is 2; [wake up without passing time; all 7 trees are already contacted, or special Tsunami override.][aar]
		unless night and Tsunami Sequence is happening, say "You're awake, but hardly any time seems to have passed[if night]. It's still dark and you're still sleepy[end if].";
	otherwise; [1: touching a windsigh.]
		say "The vision seems to have passed. You shake yourself off and look around. [one of]The leaves kicked up by the wind are just now settling, as if no time has passed at all[or]Again, it's as if no time has passed[stopping].";
	end if;
	now pseudo-dream is 0;
	let lucky be a random windsigh tree in saved location;
	if lucky is not a thing and ( saved location is Atop or saved location is Saddle ) , let lucky be tree3;
	if lucky is not a thing and ( saved location is Treehouse or saved location is Big Tree ) , let lucky be tree2;
[	if lucky is not contacted [i.e. we failed to adequately finish this dream] , move active presence to location; [so we'll try again next time.]]
	if lucky is a windsigh tree, now lucky is contacted; [ensure this tree gets marked as finished.]
	post-conversation processing;
	manually reference d1-door;
	wake up now;
	restore the player;	
	now escape tracker is 0;
	truncate list of remembered stuff to 0 entries.

Rule for asking which do you mean while remembering and location is regionally in Dreamlands: say "It fades away when you try to look too closely.".


Section - Generic Dream

GenericDream is a room in Dreamlands. The printed name of GenericDream is "".

Having a Generic Dream is a recurring scene.

Having a Generic Dream begins when
	the player is in GenericDream and
	the player is asleep.

Having a Generic Dream ends when
	the player is awake. 

notrefreshed is a truth state that varies.

When Having a Generic Dream begins:
	if Tsunami Sequence is happening:
		say "You stretch out on the [surface-material], but you find that sleep will not come. Finally, you stand to your feet again.[wakeupearly]";
	otherwise if the number of contacted windsigh trees is at least 7:
		say "Stretching out on the [surface-material], you close your eyes and finally drift off into a deep, unbroken sleep.[paragraph break]You do not dream.";
	otherwise:
		say "[one of]You sleep fitfully. Strange, half-grasped images and tableaus drift vaguely: Rume and [the Progue] locked in some tiring cyclical debate, incomprehensible; [remembered thing] and [remembered thing]; ticklings of worry with no quantifiable origin.[paragraph break]But above and inside, omnipresent, some distant presence clings to the edge of consciousness, almost lost yet naggingly present, like whispers heard from a muffling distance that hobbles any vestige of meaning to a syncopated susurrus, alternating white noises and silence.[or]Again, your dreams are unsettling, filled with images of [remembered thing] and [remembered thing]. You feel as if ideas are on the verge of bubbling to mind's surface, and again have the sensation of whispers, or perhaps just voices, but so far away that you cannot hear what they are saying.[paragraph break]You awake with a start, covered in a sheen of sweat. It is still dark. Though you still feel tired, you find you cannot stay in this spot; sleep will not come.[wakeupearly][stopping]";
	wake up now. 

To say wakeupearly:
	now the time of day is three hours before the time of day;
	say sleepsuggest;
	summon Progue to Ledge;
	Progue starts resting;
	now notrefreshed is true.



Section - Dream Nexus

A nexus-room is a kind of room.  [ This is the central hub for each dream. ]

Before printing the name of a room when location is a nexus-room: say "~-~-~". After printing the name of a room when location is a nexus-room: say "~-~-~".

Instead of examining yourself when location is a nexus-room: say "Your traveling clothes are as new and clean as the day you finished stitching them.".

[The player is not allowed to wake up if active presence is visible. We carry out waking up by simply making the player awake.]

Section - Active Presence

A dream presence is a kind of person. A dream presence is always undescribed. The printed name of a dream presence is usually "the presence". A dream presence has a beat called the icebreaker. The icebreaker of a dream presence is usually Silence. [ Beginning of their conversation. ] [ A dream presence should be assigned to the nexus-room they're associated with. ] Check examining a dream presence: try discussing icebreaker of noun instead.

First Before getting bored when noun is a dream presence: do nothing instead.

Active presence is a thing that varies. [ The current dream presence. ] 

Every turn when active presence is a dream presence and active presence is enclosed by location: 
	if active presence is idle and icebreaker of active presence is not silence begin;
		if dreams are being debugged, say "// Dreams: wake up active presence ([active presence]) and force discuss icebreaker ([icebreaker of active presence]); last beat is [last beat].";
		now active presence is attentive;
		if last beat is silence or ( last beat is not in FirstDT and last beat is not in SecondDT and last beat is not in ThirdDT and last beat is not in FourthDT and last beat is not in FifthDT and last beat is not in SixthDT and last beat is not in D7 ) begin;
			force discuss icebreaker of active presence;
		otherwise;
			if last beat suggests a beat, force discuss a random beat suggested by last beat;
		end if;
	end if.

Instead of saying farewell to someone when active presence is a dream presence and an active presence is in the location: say "You're not entirely sure if they're even here, and less sure how you would go about saying goodbye to them.".

Saved last beat is a beat that varies.  [ Allows us to interrupt a dream presence conversation and resume it. ]

convo-delay is a repeatable exciting beat. convo-delay suggests convo-delay2. convo-delay2 is a repeatable exciting beat. [ Useful for starting a conversation a move after a certain point, by letting convo-delay2 suggest things. ]

After discussing a terminal beat when location is a nexus-room and Completing-Progue's-Character-Arc is unsolved: becontact lucky windsigh. [ Terminal beats mean the tree has gotten its point across, and this dream can be considered a success. ]

To becontact lucky windsigh:
	if drama manager is being debugged, say "// Drama manager: becontact lucky windsigh.";
	let lucky be a random windsigh tree in saved location;
	if lucky is not a thing and saved location is Saddle, let lucky be tree3;
	if lucky is not a thing and saved location is Treehouse, let lucky be tree2;
	now lucky is contacted;
	if active presence is a dream presence, remove active presence from play.

Instead of exhausting a beat when a dream presence is attentive: do nothing.

To decide whether dream-door-locked is true:
	if nexus-counter >= 25, decide no;
	if escape tracker > 3, decide no;
	if active presence is dream-presence-rerun, decide no;
	if conversation fuse < 2, decide yes;
	if active presence is enclosed by location, decide yes;
[	if the number of spoken terminal beats in a random thread that encloses the icebreaker of active presence is 0, decide yes;]
	let lucky be a random windsigh tree enclosed by saved location;
	if lucky is not a thing and saved location is Saddle, let lucky be tree3;
	if lucky is not a thing and saved location is Treehouse, let lucky be tree2;
	if the number of visited flashback-rooms < scene_order of lucky, decide yes;
	decide no.

To say escapeattempt:
	increase escape tracker by 1.

escape tracker is a number that varies.

nexus-counter is a number that varies. After waiting when location is a nexus-room and the number of attentive people enclosed by location is 0: increase nexus-counter by 1; continue the action. Every turn when location is regionally in Lacuna and nexus-counter is not 0: now nexus-counter is 0.

Every turn when location is a nexus-room and yourself is asleep: increase nexus-counter by 1; if nexus-counter >= 25, say "[one of][closingtimemsg][or][cycling]". To say closingtimemsg: if location is Dream7Nexus begin; say  "High [d]up[x] above you, a shaft of colorless light streams down from the broken skylight."; otherwise if location is Dream6Nexus; say "Currents shift around you, shifting from directionless eddies to a powerful force impelling you [d]up[x]."; otherwise if location is Dream5Nexus; say "Curtains flutter on the french [o]doors[x], which suddenly seem closer than ever."; otherwise if location is Dream4Nexus; say "The bird in its [o]cage[x] looks at you quizzically, and flutters its wings in an anxious twitch."; otherwise if location is  Dream1Nexus; say "With a clunk of wood on wood, something behind the front [o]door[x] shifts."; otherwise if location is  Dream2Nexus; say "The steam and heat stop spewing from the dark [d]hole[x]; perhaps this is your chance to escape."; otherwise if location is Dream3Nexus; say "Your eye is drawn to the canvas; it just needs one touch of [o]paint[x] and it will be complete..."; end if. 

First instead of doing anything other than discussing or waiting or defining a password or saying yes or saying no when active presence is in location and active presence is attentive and last beat is not exciting: say "Everything but the presence has become faded and grey for the moment." instead. 

Section - Flashbacks

A flashback-room is a kind of room.

Before printing the name of a room when location is a flashback-room: say "{-(*".  After printing the name of a room when location is a flashback-room: say "*)-}". 

To begin-flashback-sequence:
	if last beat is not silence, now saved last beat is last beat;
	post-conversation processing;
	if saved location is Treehouse or saved location is Big Tree begin;
		now player is DB-Progue;
	otherwise if saved location is Fork;
		now player is DF-Lethe;
	otherwise if saved location is Cinder Cone;
		now player is DC-Phoebe;
	otherwise if saved location is Rockslide;
		now player is DR-Progue;
	otherwise if saved location is Forest9;
		now player is D9-Lethe;
	otherwise if saved location is Egg;
		now player is DE-Progue;
	otherwise if saved location is Saddle or saved location is Atop;
		now player is DA-Progue;
	otherwise;
		say "Error: dream for this location not yet written.";
	end if;
	change the command prompt to "{(*[printed name of player]*)}>"; 
	try looking.

A person-trigger is a kind of thing. A person-trigger is undescribed. Instead of doing something other than examining to a person-trigger (called pt) (this is the person triggers are weird rule), try examining pt. A person-trigger has a thing called target. [ This defines our ability to move between different people in a flashback. ]

Carry out examining a person-trigger (called pt):
	if player is target of pt, try examining player instead;
	ignore the report other people examining rule;
	let former player be player;
	say "       {(*[printed name of player]*)(*[target of pt]*)}|";
	now player is target of pt;
	say "{(*[printed name of player]*)(*[printed name of former player]*)}[line break]";
	change the command prompt to "{(*[printed name of player]*)}>";
	try looking instead.

After examining a person-trigger: do nothing.

A dream-lethe is a kind of woman. Understand "Laylay/sister" as a dream-lethe when player is a dream-phoebe. Understand "laylay/daughter" as a dream-lethe when player is a dream-progue. The printed name is "[if player is a dream-phoebe]Laylay[otherwise if player is a dream-lethe]Lethe[otherwise]your daughter Lethe[end if]". 

A dream-phoebe is a kind of woman. Understand "sister" as a dream-phoebe when player is a dream-lethe. Understand "daughter" as a dream-phoebe when player is a dream-progue. The printed name is "[if player is a dream-phoebe]Phoebe[otherwise if player is a dream-progue]your daughter Phoebe[otherwise]your sister Phoebe[end if]". 

A dream-progue is a kind of man. Understand "dad/daddy/father" as a dream-progue when player is a dream-lethe or player is a dream-phoebe.  The printed name is "[if player is a dream-progue]Progue[otherwise]dad[end if]". 

To say end-flashback: [When we've finished a flashback.]
	now player is yourself;
	change the command prompt to ">";
	try looking;
	if location is Dream5Nexus begin; say "Scratched film flickers through the projector; the catch reel is almost full. Something clunks within the cavernous metal interior, and the reels blur as film is fast-wound back, growing on the back reel like time-lapse footage. After a few moments of whirring there is another clunk, and the machine shuts off again."; now movie projector is switched off;
	otherwise; say "[one of]You start back, astonished. It was as if for those few minutes you had completely forgotten your own identity, as if it had been subsumed, submerged in the mind and memory of another, no signs of you even rippling the surface.[or]Again, you almost stagger as you abruptly become yourself again. You sink into these memories or dreams or visions so completely, you don't remember who you are until they end.[or][stopping]"; end if;
	if a dream presence is enclosed by location begin;
		now a random dream presence enclosed by location is attentive;
		now last beat is convo-delay;
		if saved last beat is not silence, now convo-delay2 suggests saved last beat;
		if dreams are being debugged, say "// Dreams: now ([a random dream presence enclosed by location]) is attentive; now convo-delay2 suggests [saved last beat].";
	otherwise;
		post-conversation processing; [clean up convos in flashback dreams.]
	end if. 



Section - Details and Implementation

Check landmark-listing when Having a Dream is happening: say "Everything here is a disorienting jumble." instead.

Report remembering when location of noun is regionally in Dreamlands: say "But that was just a dream." instead. Report remembering when location is regionally in Dreamlands: say "You can't see any such thing." instead.

Instead of going nowhere when location is a room in Dreamlands: say "You can't go that way.".

Instead of taking inventory when location is a room in Dreamlands, say "You can't quite seem to focus on what, if anything, you're holding."

Check waking up when location is regionally in Dreamlands (this is the can't wake up while dreaming rule): say "[if location is a flashback-room]But you're not asleep. At least, you don't think you are.[otherwise]You can't seem to wake yourself up.[end if]" instead.

Instead of doing anything to stuff when location is a room in Dreamlands, say "[one of]It seems somehow less real when you look at it directly[or]Every time you look away, it changes[or]Now that you look more closely, you realize it's actually [remembered thing][or]You can't seem to focus on it[or]It seems pale and unimportant[in random order].".

To say dream thing: say "[one of]stacks of fur hides[or]boxes of sand[or]crates and crates of paintbrushes[or]stacked easels[or]cans of paint[or]a row of glass dolls[or]forests of pine trees[or]stacks of cookware[or]stacks of tiny empty boxes[or]empty fish tanks[or]rows of empty shelves[or]stacks of folded clothes[at random]". [[or]miles and miles of books]

dream-thing-scenery is a backdrop. It is in Dreamlands. Understand "fur/hides/boxes/sand/crates/paintbrushes/easels/cans/row/glass/dolls/doll/forests/pine/trees/stacks/cookware/boxes/fishtanks/shelves/clothes" as dream-thing-scenery when location is regionally in Dreamlands. Does the player mean doing anything to dream-thing-scenery: it is very unlikely. Instead of doing anything other than examining or examining by name dream-thing-scenery, try examining dream-thing-scenery. The description of dream-thing-scenery is "It fades away when you try to look too closely.".

To say remembered thing:
	let stop-flag be false;
	while stop-flag is false and the number of entries of list of remembered stuff > 0 begin;
		let choice be number of entries of list of remembered stuff;
		if dream-text of entry choice of list of remembered stuff is not "" begin;
			say dream-text of entry choice of list of remembered stuff;
			now stop-flag is true;
		end if;
		remove entry choice from list of remembered stuff;
	end while;
	if stop-flag is false, say "[dream thing]".

Understand "dreamstuff" as saying-remem. Saying-remem is an action out of world applying to nothing. Carry out saying-remem: say remembered thing.

Understand "[greeting word] phoebe/lethe/dad/progue/sister" as greeting when location is a flashback-room. [We can normally do this, but since this matches the triggers, the "greet [a person]" grammar line doesn't work.]

Check sleeping: if location is regionally in Dreamlands, say "You feel wide awake." instead.


Book - Dream Rooms

Chapter - Dream 1

Section - Nexus 1

Dream1Nexus is a nexus-room in Dreamlands. The printed name of Dream1Nexus is "the tumble, studio". The description of Dream1Nexus is "The fire roars, stoked high with fresh-chopped wood, its bass growl mingling with the laughing soprano crinkles of the stream. Living pines form the great beams of the ceiling, their boughs swaying gently in invisible breezes and smelling of home and winter. But your canvases are gone, replaced by haphazard stacks of [remembered thing] and [remembered thing], floor to ceiling.[paragraph break]The front [d]door[x] of the lodge is shut tight. Vague premonitions hint at danger outside, some looming responsibility.[paragraph break]One [o]canvas[x] remains, huge, suspended in the center of the room and alive with motion[if d1-rebletter is in location][d1ltrapp][end if].".

Dream1Nexus-stuff is stuff in Dream1Nexus. Understand "fire/wood/growl/crinkles/stream/pine/pines/living/great/beams/boughs/breeze/breezes/canvases/stack" as Dream1Nexus-stuff when location is Dream1Nexus.

The d1-portal-canvas is an undescribed setpiece in Dream1Nexus. The printed name is "canvas". Understand "canvas" as d1-portal-canvas when location is Dream1Nexus. The description is "It twitches and moves, distorted and curling at the edges, more grain than image, a signal warped back on itself, degraded, dancing with particles of noise. But inside the chaos are forms, shapes, things, people.[if d1-portal-trigger is on-stage][paragraph break]You wonder what paints the artist used to produce the effect. Perhaps if you stepped [d]closer[x]...[end if]". Instead of entering or touching or taking d1-portal-canvas when d1-portal-trigger is on-stage, try examining d1-portal-trigger. 

d1-portal-trigger is part of d1-portal-canvas. Understand "closer" or "step closer" as d1-portal-trigger when location is Dream1Nexus.

Instead of examining d1-portal-trigger: say "You step towards the painting in wonder. The swirling image fills your field of vision, swarming past the surface of your eyes and into your optic nerves, into your brain, and inside that, your mind...[paragraph break]{(*mind*)}[line break]"; begin-flashback-sequence; remove d1-portal-trigger from play. 


The d1-door is an undescribed setpiece in Dream1Nexus. The printed name is "front door". Understand "door" as d1-door when location is Dream1Nexus.  [Instead of doing anything other than examining or examining by name or opening the d1-door, try examining d1-door.] Instead of opening d1-door when dream-door-locked is true, say "The door is stuck fast.[escapeattempt]". Instead of opening d1-door: say "The door swings wide, and behind it sears a burst of blazing light..."; wake up now. Instead of examining d1-door, try opening d1-door. 

The mail slot is part of d1-door. The description is "Strange, you never noticed it before. Perhaps Rume had it put in while you were gone.".

Section - Presence Convo 1

dream1-presence is a dream presence in Dream1Nexus. The icebreaker of dream1-presence is fd_preattention.

FirstDT is a thread. 

fd_preattention is an exciting beat in FirstDT. fd_preattention suggests fd_attention. fd_attention replaces fd_preattention.

fd_attention is an exciting repeatable beat in FirstDT with reaction "[d1_attention][unless d1_ctr > 6 and d1_ctr < 11].[end if]". fd_attention summons fd_presence. fd_attention suggests fd_attention. fd_presence replaces fd_attention.

d1_ctr is a number that varies.

To say d1_attention:
	increase d1_ctr by 1;
	if d1_ctr is 1, now pr-hack is false;
	if d1_ctr is 1, say "Something tickles the back of your neck, as if someone stands next to you. When you turn to look there is nothing, but the feeling of [o]presence[x] lingers, strengthens";
	if d1_ctr is 2, say "The sensation of [o]presence[x] swells. You can see and hear nothing, but know nonetheless it is there";
	if d1_ctr is 3, say "The [o]presence[x] fades, receding like a wave from your consciousness, then seeps and surges back again, as if with great difficulty";
	if d1_ctr is 4, say "The strange [o]presence[x] lingers on the edge of your consciousness, fading, like a sound you aren't quite sure comes from the world and not your head";
	if d1_ctr is 5, say "The sensation of [o]presence[x] ebbs, fades slowly away till it almost merges with the static of your mind, only a sliver of identity separating the two";
	if d1_ctr is 6 begin; say "The presence is gone"; remove a random visible dream presence from play; now pr1-hack is true; end if;
	if d1_ctr > 10 begin; say "Slowly, you feel the [o]presence[x] return"; move active presence to location; now active presence is attentive; now tempfuse of icebreaker of active presence is 5; now d1_ctr is 0; end if.

pr1-hack is a truth state that varies.

Every turn when pr1-hack is true:
	if active presence is enclosed by location:
		now pr1-hack is false;
	else if player is in a nexus-room:
		say "[d1_attention][unless d1_ctr > 6 and d1_ctr < 11].[end if]";
	else if the player is not regionally in Dreamlands:
		now pr1-hack is false.


Understand "presence/presences/they/them" as fd_presence. fd_presence is a beat in FirstDT with fuse 99 and reaction "You concentrate on the sensation, probe it delicately, curiously. And feel it probe back.[paragraph break]A [o]mind[x].". fd_minds replaces fd_presence. fd_presence suggests fd_minds.

Understand "mind" as fd_minds when last beat is in FirstDT. fd_minds is a beat in FirstDT. The reaction is "You recognize the mind as such only basely, innately through some whiff, strange but familiar, of consciousness. Overwhelmingly alien currents whirl through it, patterns and structures you have no way of matching to your own mind's contours, but after a moment you detect hints of emotions, faint yet certainly distinct from your own: [t]relief[x], [t]curiosity[x], [t]impatience[x]. You sense you could probe any of these feelings, like memory, but also sense inevitable reciprocity: doing so will reveal more of yourself in return.". fd_minds suggests fd_dreamhint. fd_minds summons fd_relief, fd_curiosity, fd_impatience. fd_dreamhint replaces fd_minds.

fd_dreamhint is a beat in FirstDT with reaction "In a charge of insight you are at once sure, with the surety that comes only in dreams, both that you are dreaming now and that this [o]presence[x] exists outside your dream. It has the same intrusive heaviness of a sound slowly pulling you up to wakefulness, or a light in darkness, flashing against closed lids.". fd_dreamhint suggests fd_minds. fd_dreamhint2 replaces fd_dreamhint.

fd_dreamhint2 is a beat in FirstDT with reaction "You wonder now whether the weave of this dream, its set and props, are not random noise but somehow shaped by this presence, sculpted, as if trying to help you make connections, realizations, come to insights unexplainable in waking language.[paragraph break]You wonder next if that thought was your own.". fd_endyes replaces fd_dreamhint2. fd_dreamhint2 suggests fd_endyes.

Understand "relief" as fd_relief when last beat is in FirstDT. fd_relief is a beat in FirstDT with fuse 9 and reaction "[psychic link line]. The relief, you sense, covers a long feeling of frustration, tempered despair, the impotence of a job almost done but unable to be finished. Now something has changed for the better, sudden, unexpected, trailing long after abandoned hopes. And that change, unsettlingly, is you.". fd_relief suggests fd_dreamhint. fd_dreamhint replaces fd_relief.

Understand "curiosity" as fd_curiosity when last beat is in FirstDT. fd_curiosity is a beat in FirstDT with fuse 9 and reaction "[psychic link line]. The curiosity is intense, as if you're the first of your kind the presence has ever encountered.[paragraph break]But no, that isn't right. You struggle to sieve the alien thoughts, distill them into something you can process. Not the first, you realize after long moments. No. The... fourth?". fd_curiosity suggests fd_dreamhint. fd_dreamhint replaces fd_curiosity.

Understand "impatience" as fd_impatience when last beat is in FirstDT. fd_impatience is a beat in FirstDT with fuse 9 and reaction "[psychic link line]. Impatience, yes; you sense more, much more the presence wants to tell you. But each of you have much to learn about the other before enough understanding has kindled to say it.". fd_impatience suggests fd_dreamhint. fd_dreamhint replaces fd_curiosity.

To say psychic link line: say "[one of]Thoughts trickle into your head as you prod delicately at the emotion, like juice from an overripe fruit[or]More thoughts, more emotion[or]You prod further[summonendyes][stopping]".

To say summonendyes: now fd_endyes is exciting; now tempfuse of fd_endyes is 5.

fd_endyes is a terminal beat in FirstDT. The reaction is "Some current of thought stirs, obscured, and slowly, slowly begins to clear. Finally you think you have it. Sleeping near the tree you painted-- and the others like it-- allow this connection with the presence, this alien mind. As if it is a receiver--? But no, you only speculate; the complexities running under and through this simple message cannot bridge the gap between the differences in your minds.[paragraph break]All you are sure is that it wants you to find them. Find them all.[paragraph break]The presence ebbs away, loses itself in the static of your mind, and is gone.". 




Section - Rebel Convo 1

Every turn when location is Dream1Nexus and d1-rebletter is off-stage and the player has been in Dream1Nexus for at least 2 turns and conversation fuse >= 1 and active presence is not in location and yourself is asleep:
	move d1-rebletter to location;
	move gloved hand to location;
	say "Out of the corner of your eye, you spot a gloved hand push a [o]letter[x] through the mail slot in the front door. It falls with a tiny crinkle to the wooden floorboards.";

The gloved hand is set dressing. The description is "Already vanished.".

[The letter can be open or closed. (And is uncloseable once opened). When it is closed we understand "seal" as letter. ]

The d1-rebletter is an undescribed container. It is closed and openable. Understand "letter/seal" as d1-rebletter. The printed name is "letter". The description is "[if d1-rebletter is open][d1rebmsg][otherwise]The fine parchment, a rich and creamy brown with flecks of texture, is neatly folded into thirds and closed with a red wax seal, adorned with a stylized symbol of a bare foot pulling itself free of entangling vines.[end if]".  To say d1ltrapp: say ". A[if d1-rebletter is closed]n unopened[end if] [o]letter[x] lies near the door".

To say d1rebmsg: say "Written immaculately in dark ink on the inside, in a fine, cursive hand, are the words:[paragraph break][i]Testing, test, test, test.[paragraph break]One two three. How are--- are we---[paragraph break]Testing. Testing. Te---[paragraph break]I don't think it's working.[r]".

First report opening d1-rebletter: now d1-rebletter is unopenable; say "You break the seal on the letter and unfold it, parchment crinkling heavily under your fingers. [d1rebmsg]" instead. Instead of opening d1-rebletter when d1-rebletter is open, try examining d1-rebletter. Instead of reading d1-rebletter, try opening d1-rebletter. Instead of closing d1-rebletter when d1-rebletter is open, say "You've already broken the seal.". Instead of attacking d1-rebletter when d1-rebletter is open: move d1-rebletter to Your Bedroom; say "You rip the letter into tiny shreds, which fall to the ground and sink into the gaps in the floorboards and vanish.". Instead of attacking d1-rebletter: try opening d1-rebletter. Instead of burning d1-rebletter: move d1-rebletter to Your Bedroom; say "You toss the letter into the fire, where it immediately catches as if made of gasoline and in moments has disintegrated." 







Chapter - Dream 2

[Inside the volcano. Rebels carve a message into the wall. Scene is a pool of boiling lava. Exit is crack up towards light. Trees explain concept of hive mind.]


Section - Nexus 2

Dream2Nexus is a nexus-room in Dreamlands. The printed name of Dream2Nexus is "inside the volcano". The description of Dream2Nexus is "You stand in the center of some huge cavern, miles below the island in the fiery roots of the volcano. Waterfalls of lava and explosions of steam fill the superheated air with deep red glows and burning chaos. Strange shadows dance on the walls, [if d2-message is in location][o]shapes[x] that look curiously like writing[otherwise]that sometimes remind you of [remembered thing] and sometimes look like [remembered thing][end if]. From your precarious ledge there is no sane way up or down, except perhaps for a dark [o]hole[x] near your feet spouting breaths of sulfuric steam.[paragraph break]A river of [o]lava[x] churns slowly past you, bubbling and steaming like an ancient fire demon, real and alive.".

Dream2Nexus-stuff is stuff in Dream2Nexus. Understand "center/cavern/island/roots/volcano/waterfall/waterfalls/explosions/steam/glows/chaos/shadows/ledge" as Dream2Nexus-stuff when location is Dream2Nexus.

A river of lava is an undescribed setpiece in Dream2Nexus. The description is "The surface of the lava twitches and dances, fragments of black dissolving into cracks of red, yellow, and gold, which slowly fade again to blackness[if d2-portal-trigger is on-stage]. But as you watch the process speeds up, faster and faster, until it becomes a multihued blur of fire, so complex you almost think you can see [d]patterns[x] in the chaos[end if].".

d2-portal-trigger is part of river of lava. Understand "pattern/patterns" as d2-portal-trigger when location is Dream2Nexus.

Instead of examining d2-portal-trigger: say "Despite the heat, you find yourself drawn closer and closer to the lava. The patterns become more and more distinct. You reach out a hand and suddenly they pull you in, under the surface, heat stabbing into your eyes and straight back into your memory...[paragraph break]{(*memory*)}[line break]"; begin-flashback-sequence; remove d2-portal-trigger from play. 

The dark-hole is an undescribed setpiece in Dream2Nexus. Understand "dark/hole" as dark-hole when location is Dream2Nexus. The printed name is "dark hole". The description is "The hole, just wide enough for you to enter, heads steeply [down] and immediately vanishes into solid black heat.". First instead of going down when location is Dream2Nexus: try entering dark-hole. Instead of entering dark-hole when dream-door-locked is true, say "A belch of burning steam explodes from the hole, and you draw back, afraid.". Instead of entering dark-hole: say "Fighting hot fear, you put your feet into the hole and push off down the chute. Instantly blackness and choking, unbearable heat surround you. Faster and faster you slide down the chute until suddenly it vanishes and you are falling, falling into infinite blackness, falling to the center of the earth...[paragraph break]You snap your eyes open and gasp, trembling, covered in sweat."; wake up now. 

Section - Presence Convo 2

dream2-presence is a dream presence in Dream2Nexus. The icebreaker of dream2-presence is d2_icebreaker.

SecondDT is a thread.

d2_icebreaker is an exciting repeatable beat in SecondDT with reaction "[d1_attention][unless d1_ctr > 6 and d1_ctr < 11].[end if]". d2_icebreaker summons d2_1. d2_icebreaker suggests d2_icebreaker. d2_1 replaces d2_icebreaker.

Understand "presence/presences/mind/minds" as d2_1 when last beat is in SecondDT. d2_1 is a beat in SecondDT with reaction "The presence is satisfied. You do wish to listen, to hear and learn more. You sense it gather itself, concentration crinkling the ridges of thought as it tries with smoldering intensity to communicate.[paragraph break]Slowly, a concept takes place in your mind, like a long-forgotten word on the tip of your tongue, before finally breaking through, and as soon as it does you sense its truth.[paragraph break]There is not one presence, but [o]many[x].". d2_1 summons d2_2. d2_1 suggests d2_2. d2_2 replaces d2_1.

Understand "many" as d2_2 when last beat is in SecondDT. d2_2 is a beat in SecondDT with reaction "Now that you concentrate it seems obvious: yes, many minds, many small whispers, each distinct, but speaking together, all collaborating in their attempt to reach you. A handful are nearby, but behind them are the shadows of countless more, and some hidden sense suggests that distance is very far indeed.". d2_2 suggests d2_3. d2_3 replaces d2_2.

d2_3 is a beat in SecondDT with reaction "It is so terribly slow, this communication, but another concept begins to come to you, a bubble rising through cold molasses.[paragraph break]These minds speak to each other in the same way they speak to you. The reason it is so difficult to reach you is that...[paragraph break]No, you can't quite grasp it. It's too hard. As if their minds are so different from yours that even the simplest...[paragraph break]Ah. That's it. That's it exactly. Only in dreams, when your mind is open to the slightest hint of suggestion, can they reach you now. Slowly your mind and theirs are learning to sense each other, to communicate.". d2_3 suggests d2_4. d2_4 replaces d2_3.

d2_4 is a terminal beat in SecondDT with reaction "And slowly you become aware of something else. These minds exist only as minds, in some abstract civilization of pure thought. The first one like you they tried to reach...[paragraph break]The first?[paragraph break]But already the minds fade, and moments later, they are gone.".


Section - Rebel Convo 2

Every turn when location is Dream2Nexus and d2-message is off-stage and the player has been in Dream2Nexus for at least 3 turns and active presence is not in location and conversation fuse >= 1 and yourself is asleep:
	move d2-message to location;
	say "On a nearby wall of polished black lava, you notice the steam coalescing into strange [o]shapes[x].".

The d2-message is a setpiece. Understand "shape/shapes" as d2-message when location is Dream2Nexus. The printed name is "shapes on the wall". The description is "As you stare at the shapes, you realize the steam [one of]is condensing[or]has condensed[stopping] onto the black surface in the shape of [o]letters[x], some script unknown to you, but strangely you find you can understand it."

The d2-letters is part of the d2-message. Understand "letters/writing/message/shadows" as d2-letters. The printed name is "message". The description is "You step closer and read the message:[paragraph break][i]What? Yes, we're transmitting. Shh. Hello? Ah. Fantastic. The Beast still works after all these years, it would seem. Well, there's not much time. We can only hack the signal for so long before... but listen to me, dithering. Greetings. Sincerest of greetings, whoever you are.[paragraph break]Let me be brief. These dreams you're having are dangerous. Don't believe everything you hear and see. There may be, well, motives at play, ulterior and otherwise. They may not have your best interests in mind.[paragraph break]Don't trust them. They've been using people like you for thousands of years. Yes, yes, who are 'they' and all that... there's no time to get into details, but soon we'll be able[r][paragraph break][one of]You watch for a long moment, but no further letters appear[or]And there the message on the wall stops[stopping].".



Chapter - Dream 3


Section - Nexus 3

Dream3Nexus is a nexus-room in Dreamlands. The printed name of Dream3Nexus is "the windowed veranda". The description of Dream3Nexus is "Sunlight streams through the [o]windows[x], brightening the warm interior of the porch and the nicknacks and curios that line its walls: [dream thing] and [remembered thing] and [remembered thing] and [dream thing]. Yes, you remember this place. This was home, for a time. Wrinkled relatives with forgotten names and faces had taken you in, and gave you this place to paint in. Before it happened. Before you could wayfare.[paragraph break]An old easel stands in the center of the room, your [o]landscape[x] atop it, almost finished. Beside, atop an old hope chest, is a yellow plastic box of [o]watercolors[x]."

Dream3Nexus-stuff is stuff in Dream3Nexus. Understand "sunlight/porch/nicknacks/curios/home/relatives" as Dream3Nexus-stuff when location is Dream3Nexus.

A dn3-canvas is an undescribed setpiece in Dream3Nexus. The printed name is "easel and canvas". Understand "canvas/painting/landscape" as dn3-canvas when location is Dream3Nexus. The description of dn3-canvas is "Ah, you remember this one. You started to [d]paint[x] it years ago. Though it might look done to an untrained eye, you remember there are still hours of work to do. It's an epic tropical landscape, showing a [if player is female]wo[end if]man sleeping [if saved location is Fork]near a fork in an overgrown forest path[otherwise if saved location is Big Tree or saved location is Treehouse]in an overgrown treehouse draped with vines[otherwise if saved location is Cinder Cone]at the base of a strange tree growing within a volcano caldera[otherwise if saved location is Forest9]at the base of a strange tree in a sprawling rain forest[otherwise if saved location is Saddle or saved location is Atop]at the base of a huge tree growing on a ridge of a tropical island[otherwise if saved location is Egg]in a crater buried inside rain forest[otherwise]in a mossy hollow among a tumbling rockslide[end if].". Instead of vague painting when location is Dream3Nexus: try painting dn3-canvas. Instead of touching dn3-canvas: try painting dn3-canvas. Instead of painting dn3-canvas when dream-door-locked is true, say "Your thoughts are muddled; you can't decide what still needs to be done on the painting.". Instead of painting dn3-canvas: say "Finally, you see what needs to be done. Just a touch up on the sleeping [if player is female]wo[end if]man. You reach out your brush to retouch the head...[paragraph break]Something tickles you, and you awaken."; wake up now. Instead of taking dn3-canvas: say "It's small and light, but you have nowhere else to be but here.". Instead of touching or entering dn3-canvas, say "No, this is just a regular painting; you won't leave this world for another year yet.".

Some veranda-windows are a setpiece in Dream3Nexus. Understand "window/windows" as veranda-windows when location is Dream3Nexus. The printed name is "windows".  The description is "The windows admit warm rays of summer light, but through them a static grainland gyrates instead of a view, a fuzz-blur where strange [if d3-portal-trigger is on-stage][d]images[x][otherwise]images[end if] flicker and die and flicker again, their motions jerky, leaving trails of compression artifacts behind.". Check opening veranda-windows when d3-portal-trigger is on-stage: try examining d3-portal-trigger instead. Check opening veranda-windows: say "Somehow now the windows cannot be opened; they seem in fact to be painted over, as if they haven't opened in years and years." instead.

d3-portal-trigger is part of veranda-windows. Understand "images" as d3-portal-trigger when location is Dream3Nexus.

Instead of examining d3-portal-trigger: say "You step up to the windows, the golden sunlight piercing your skin with a translucent glow, and throw them wide, letting the static in to tune your mind...[paragraph break]{(*mind*)}[line break]"; begin-flashback-sequence; remove d3-portal-trigger from play.


Section - Presence Convo 3

dream3-presence is a dream presence in Dream3Nexus. The icebreaker of dream3-presence is d3_icebreaker. Understand "presence/presences/mind/minds" as d3_1 when last beat is in ThirdDT.

ThirdDT is a thread.

d3_icebreaker is an exciting repeatable beat in ThirdDT with reaction "[d_attention].". d3_icebreaker summons d3_1. d3_icebreaker suggests d3_icebreaker. d3_1 replaces d3_icebreaker.

d_ctr is a number that varies.

To say d_attention:
	increase d_ctr by 1;
	if d_ctr is 1, now pr-hack is false;
	if d_ctr is 1, say "[one of]The [o]minds[x][or]The [o]presences[x][at random] [one of]return[or]come back[or]trickle into your thoughts[or]become separate from your mind's background noise[in random order][one of] again[or][at random], [one of]hovering patiently in no-space, here and not here, waiting for your attention[or]silent and respectful, eager to tell you more[in random order]";
	if d_ctr is 2, say "The [o]presences[x] fade for a moment, gradually, receding like a wave from your consciousness. Then, in some strange peristaltic contraction, the sensation returns, as if with great difficulty";
	if d_ctr is 3, say "The strange [o]presence[x] on the edge of your consciousness lingers, like a sound you aren't quite sure you can hear";
	if d_ctr is 4, say "The sensation of [o]presence[x] begins to ebb, fading away, losing itself in the static of your mind";
	if d_ctr is 5, say "The [o]minds[x] have nearly faded away";
	if d_ctr is 6 begin; say "The minds are gone"; remove a random visible dream presence from play; now pr-hack is true; end if;
	if d_ctr > 10 begin; say "Slowly, you feel the [o]presences[x] return"; move active presence to location; now active presence is attentive; now tempfuse of icebreaker of active presence is 5; now d_ctr is 0; end if.

pr-hack is a truth state that varies.

Every turn when pr-hack is true:
	if active presence is enclosed by location:
		now pr-hack is false;
	else if player is in a nexus-room:
		say "[d_attention][unless d_ctr > 6 and d_ctr < 11].[end if]";
	else if the player is not regionally in Dreamlands:
		now pr-hack is false.

d3_1 is a beat in ThirdDT with reaction "The presences swirl turgidly, ready, eager to resume. But for long moments only vaguely portentous thoughts drift, and do not coalesce.[paragraph break]Finally, you realize they do not try to tell you something, but ask a question, and the question is simple: How did you get here?[paragraph break]How. You could try to [t]explain[x] wayfaring to these alien minds, you suppose, but could they understand or believe? And perhaps you should stay [t]silent[x], anyway, at least for now.". d3_1 summons d3_explain, d3_silent. d3_1 suggests d3_silent. d3_silent replaces d3_1.

Understand "explain" as d3_explain when last beat is in ThirdDT. d3_explain is a beat in ThirdDT with reaction "You explain without words, awkward and uncertain, struggling to summon concepts and images that tell the story, and finally settle on your first conceptualization of the experience, all those years ago. First you are somewhere. Then you are somewhere else.[paragraph break]The minds churn, processing silently, sedate and inscrutable.[paragraph break]Finally a conclusion breaks through mental fog. They do not understand how this can be, but they agree it is possible. And it may be [t]related[x] to their civilization's greatest gift.". d3_explain summons d3_related. d3_related replaces d3_explain. d3_explain suggests d3_related.

Understand "related" as d3_related when last beat is in ThirdDT. d3_related is a terminal beat in ThirdDT with reaction "They struggle to explain-- but does it come quicker this time? Are they learning more of how your brain is wired, how your neurons function to retrieve image, memory, abstractions?[paragraph break]You begin to know the scale of their civilization: not hundreds or thousands of minds but billions, spread across vast interstellar distances. And yet they are all together, and always, the concept of distance mere abstraction. Like wayfaring, perhaps.[paragraph break]But the effort fades them, and in moments, they are gone.".

Understand "silent" as d3_silent when last beat is in ThirdDT. d3_silent is a beat in ThirdDT with reaction "You do not offer explanation, and you sense that the medium of thought between you is still murky enough they will only think they cannot understand.[paragraph break]After long moments of searching, questioning, mental muscles relax, probing fades. They do not understand how you arrived. But nor did they understand the arrival of the [t]first[x]. Mysteries, they think.". d3_silent summons d3_first. d3_silent suggests d3_first.

Understand "first" as d3_first when last beat is in ThirdDT. d3_first is a terminal beat in ThirdDT with reaction "Confusion roils, obscuring meaning, and little becomes clear except that you are not the first of your kind they have communed with. They fade again, tired, slowly slipping away, but struggle before they vanish to send to you a piece of stored knowledge, a pattern in the other's brain that connected to your strange physiology to produce a sound, a word. A name.[paragraph break]Progue.[paragraph break]And they are gone.". 

Section - Rebel Convo 3

A box of watercolors is an undescribed container in Dream3Nexus. It is closed and openable and fixed in place. Understand "watercolor" as box of watercolors. The description is "No, that's wrong: you'd long since moved past this cheap dime store set by now, bright primary colors stamped into the plastic case. But here it is[if closed], lying closed atop the hope chest. You wonder if the tiny ovals with their congealing powdery paint are still inside[end if].". A folded note is inside box of watercolors. The description is "You carefully unfold the note, written on large-ruled paper in pencil, and recognize your own handwriting.[paragraph break][i]I still haven't explained who we are. Sorry for that. So much to explain, so little bandwidth. For now just know that I am here to present an opposing viewpoint. At tremendous expense to an entire government, I might add if it will pique your interest.[paragraph break]We're still working out some kinks with the Beast. It's my hope we'll soon be able to talk directly, if all goes well. In the meantime, I certainly hope you've realized these aren't just dreams. They're not. Rather important things hang in the balance. So do try to pay attention.[paragraph break]Time's up. Oh well. I like you better than the last one, at any rate.[r]". Instead of taking box of watercolors: say "For some reason, it is nailed to the hope chest; but it looks like you could still open it.". Report opening box of watercolors: say "You swing the flimsy plastic lid open, but the row of colored ovals inside is gone; only a small folded [o]note[x] fills the space." instead. 

The hope chest is a closed locked undescribed container in Dream3Nexus. 



Chapter - Dream 4

[Library on Keros. Rebel message in book (turn to a page?). Scene is on the cover. Exit is staircase out. Trees explain that something went wrong and they were cut off.]


Section - Nexus 4

Dream4Nexus is a nexus-room in Dreamlands. The printed name is "great library on keros". The description of Dream4Nexus is "Yes, you remember this place. For a time, you studied here, before moving on. Huge alabaster columns flecked with gold lift a domed ceiling high, high above, letting the cavernous space beneath burn pink and gold in slanting arcs of sunlight. Rows and rows of desks filled with black-robed scholars line the floor, the sounds of squeaking chairs and scribbling quills vanishing into swirling sunlit dust above.[paragraph break]You sit at one of the hundreds of desks, age-blackened wood in elegant straining curves, immaculately polished, resting on the marbled floor.[paragraph break]On the desk sits a dusty [o]tome[x][one of][or], [if dusty-tome is open]open[else]closed[end if][stopping]. Atop the hutch is a silver [o]birdcage[x] containing a sleeping yellow canary.".

Dream4Nexus-stuff is stuff in Dream4Nexus. Understand "library/alabaster/columns/gold/dome/domed/space/arcs/sunlight/row/rows/desks/scholar/scholars/chair/chairs/quill/quills/dust" as Dream4Nexus-stuff when location is Dream4Nexus.

The desk is an undescribed supporter in Dream4Nexus. 

The dusty-tome is a container on the desk. It is openable and closed. Understand "book/volume/page/dusty/tome" as dusty-tome. The printed name is "dusty tome". The description is "It must be one of the thirty million volumes held by the Great Library. It looks ancient but in good condition, [if dusty-tome is closed]unopened[otherwise]opened to a yellowed page[end if], the binding solid, the page edges yellow and musty[if dusty-tome is closed and d4-portal-trigger is on-stage].[paragraph break]There is something wrong with the [o]front[x], though.[else if dusty-tome is closed and page_num of dusty-tome is not -1]. You wonder what its mouldering pages contain.[else], the text reading:[line break][tryreadingtome]". The book-cover is part of the dusty-tome. Understand "front" as book-cover when location is Dream4Nexus. The printed name of book-cover is "front of the book". The description of book-cover is "The cover is carved in intricate relief, and edged with a design so busy it seems as if it moves[if d4-portal-trigger is on-stage]. In fact, the whole book seems to crawl with [d]detail[x][end if], millions of particles of ancient leather and embossed metals twitching and swirling around one another, as if alive.". Check taking dusty-tome: say "It's so heavy, you can hardly lift it." instead.

d4-portal-trigger is part of dusty-tome. Understand "detail/details" as d4-portal-trigger when location is Dream4Nexus. Instead of examining d4-portal-trigger: say "You place your hand on the swirling cover, mesmerized by its intricate motion, and suddenly the design leaps past your hand, spirals up your arm and plunges straight into your heart...[paragraph break]{(*heart*)}[line break]"; begin-flashback-sequence; remove d4-portal-trigger from play.

[Instead of examining dusty-tome when dusty-tome is closed, try examining book-cover.] Instead of reading dusty-tome when dusty-tome is closed, try opening dusty-tome. 

First Instead of exiting when location is Dream4Nexus: say "Curiously, you seem to be chained to the desk.". First Instead of going nowhere when location is Dream4Nexus: try exiting. Some chains are a minor setpiece in Dream4Nexus. Understand "chain" as chains. The description is "Thick and solid.". 

A silver birdcage is a transparent undescribed container in Dream4Nexus. It is fixed in place. Understand "cage" or "bird cage" as birdcage. A silver birdcage is closed, openable. The description is "Finely wrought from tiny strands of silver, the cage holds a brilliant lemon-yellow canary, sleeping fitfully with head under one wing.". Instead of opening birdcage when dream-door-locked is true, say "A tall, gaunt librarian walks by just as you reach for the cage, trailing a long black cape that whispers on the marble, and frowns at you. You hastily pull your hand back.". Instead of opening birdcage: say "You reach forward and open the cage. Inside, the bird stirs. Then, suddenly, it throws back its head and lets out a piercing call that echoes crazily around the huge library hall. Hundreds of heads look up and stare as you frantically try to silence the bird, but it just keeps chirping and chirping...[paragraph break]You awaken to the sound of birds."; wake up now. Instead of taking silver birdcage: say "It seems impossibly heavy, or perhaps it is attached to the top of the desk.".

A yellow canary is an animal in silver birdcage. Understand "bird" as canary. The description is "The bird's color is beautiful. It sleeps fitfully, one wing tucked under its arm.". 

The scholars are an undescribed setpiece in Dream4Nexus. The printed name is "black-robed scholars". The librarian is an undescribed setpiece in Dream4Nexus.





Section - Presence Convo 4

dream4-presence is a dream presence in Dream4Nexus.  The icebreaker of dream4-presence is d4_icebreaker. 

FourthDT is a thread.

d4_icebreaker is an exciting repeatable beat in FourthDT with reaction "[d_attention].". d4_icebreaker summons d4_1. d4_icebreaker suggests d4_icebreaker. d4_1 replaces d4_icebreaker.

Understand "mind/minds/presence/presences" as d4_1 when last beat is in FourthDT. d4_1 is a beat in FourthDT with reaction "They are glad you wish to hear.[paragraph break]The concepts come more quickly now. An image takes shape in your mind, and very quickly you are able to identify it as Progue. A strange mixture of emotions swirls around their conception of him: unalloyed joy and [t]surprise[x], at first, but then great [t]frustration[x].". d4_1 suggests d4_2. d4_1 summons d4_frustration, d4_surprise. d4_2 replaces d4_1.

Understand "frustration" as d4_frustration when last beat is in FourthDT. d4_frustration is a beat in FourthDT with reaction "You sense that their communication with you is vastly easier than it was with him, that, for a long time, he did not even realize their soft whispers were different from his own subconscious urges-- and acted accordingly.". d4_frustration enqueues d4_2.

Understand "surprise" as d4_surprise when last beat is in FourthDT. d4_surprise is a beat in FourthDT with reaction "They had been alone. They had expected to always be alone. And then there was another. Progue. Their astonishment and joy were limitless. For another meant friend, and friend meant help. And help meant a chance to finally realize their abandoned dreams.". d4_surprise enqueues d4_2.

d4_2 is a beat in FourthDT with reaction "Another image takes shape in your mind: a great device, glowing, egg-shaped, atop the mountain on Lacuna. It came with them but was broken. Progue helped them repair it.". d4_2 suggests d4_3. d4_3 replaces d4_2. d4_3 replaces d4_2.

d4_3 is a beat in FourthDT with reaction "It takes a long time for the next concept to become clear. They are trying to explain to you what the egg device does, why it is so important to them. Finally you think you have it: it connects them to the millions of other minds, the community, their civilization. Without it they have only each other. Without it they are stranded on Lacuna. Once Progue fixed it, they could rejoin their kind, and for that they are eternally grateful.". d4_3 suggests d4_4. d4_4 replaces d4_3.

d4_4 is a terminal beat in FourthDT with reaction "You sense there is an unfinished part of the story, something else they asked of Progue. But the minds have grown weary from communicating so much, and already they are receding again, slipping back into the static of memory. Moments later, they are gone.".

[The presence returns, as if some sinewy tall librarian is standing behind you, observing. ]

Section - Rebel Convo 4

The dusty-tome has a number called page_num. The page_num of dusty-tome is 1.

First Report opening dusty-tome: say "You open the book[one of], turning past a beautiful frontispiece showing a woodcut of sinewy feet pulling free of entangling roots, and reach the first page, which[or] to the page you were on before, which[stopping] reads: [line break][tryreadingtome]" instead. To say tryreadingtome: try reading dusty-tome.

Instead of reading or opening dusty-tome when page_num of dusty-tome is -1, say "You open the book again, but the strange messages are gone, and all you see now are page after page of thousand-year-old poetry, inscrutable, encrusted with crumbling layers of footnotes.".

Instead of reading dusty-tome:
	if dusty-tome is closed, try opening dusty-tome;
	let pn be page_num of dusty-tome;
	if pn is 1 begin; say "[i]Pleasant dreams. So it looks as if they're telling you about Progue. That was years ago. I was still young. Ish. How strange to have it all start up again, now... because of you.[paragraph break]So I'm curious... have you worked out who *they* are yet?[r][line break]Below that, in a different, elegant font, is printed:[paragraph break][i]If yes, please consult page [t]472[x][i]. Otherwise, kindly refer to page [t]916[x].[r]";
	otherwise if pn is 472; say "[i]I thought you might have. You do seem sharper than the last fellow. Well, who are they then?[r][line break]In a smaller font below is the text:[paragraph break][i]Please look up your guess in the index.[r]"; now index_looking is true; 
	otherwise if pn is 916; say "[i]No? It's really not that hard to figure out. Although I suppose for someone from another world... well, it's best if you work it out for yourself.[paragraph break]But we were talking about your friend Progue. You see, this is our second time round. We tried to reach him, many years ago, but were unsuccessful.[r][line break]Below:[paragraph break][i]Continue on page [t]760[x][i], if you please.[r][x]"; now index_looking is false;
	otherwise if pn is 227; say "[i]Very good. You have some sense, then. Yes, the minds you hear speaking to you live within the strange trees on your island. Windsigh, I think Progue called them. Poetic. We have quite a different name for them, you understand. Not natives, you may have gathered, though they want to be. But we were talking about Progue.[r][line break]Below, in another font:[paragraph break][i]To inquire about Progue, consult page [t]760[x][i]. To converse about the windsigh, please turn to page [t]308[x].[r]"; now index_looking is false; now guessed_trees is true; 
	otherwise if pn is 855; say "[i]Who, us? No, we're not the same as the other voices. I thought you'd realized that by now. Try again.[r][line break]Below:[paragraph break][i]Or, turn to page [t]916[x][i] to give up.[r]";
	otherwise if pn is 869; say "[i]How poetic. Appearing in your dreams to give some cry for help he cannot give when awake? No, a good theory, but it makes no sense. Try again.[r][line break]Below:[paragraph break][i]Or, turn to page [t]916[x][i] to give up.[r]";
	otherwise if pn is 893; say "[i]Oh, what a white-knuckled hold we sentients keep on our sanity. So much so we'd rather believe we're talking to ourselves than hearing voices without explanation. But which is the saner? No; you're wrong. Guess again.[r][line break]Below:[paragraph break][i]Or, turn to page [t]916[x][i] to give up.[r]";
	otherwise if pn is 151; say "[i]Come on now, you can do better than that. I hope so, at least. Well. Want to guess again?[r][line break]Below that, in a different, elegant font, is printed:[paragraph break][i]If yes, please consult page [t]472[x][i]. Otherwise, kindly refer to page [t]916[x].[r]";
	otherwise if pn is 760; say "[i]The Beast was still a prototype then... meltdowns and overloads every time we tried to use her. So they had Progue more or less to themselves. We could hack in often enough to get a quick idea of what was going on, but that was about all. If only we'd managed to get the kinks out in a more timely... well, it's all in the past now. Who could have known we'd have a second chance?[r][line break]Below:[paragraph break][i]To inquire further as to the meaning of 'second chance,' kindly consult page [t]97[r][i]. To pursue the enigmatic phrase 'beast,' refer to page [t]692[x].";
	otherwise if pn is 97 or pn is 692; say "[i][if pn is 97]Yes. You, of course[else]It's the device, the machine I built, the somenium transceiver that's letting us contact you[end if].[paragraph break]Sorry, time's almost out. Suffice to say at the last minute we did succeed. In fact we were the ones who helped him finally figure out what was going on. One would think he'd have been more grateful, instead of---[r][paragraph break]Below this, centered and in small caps, it simply reads:[paragraph break][i]FIN[r][paragraph break]Thoughtfully, you close the book again."; now dusty-tome is closed; now page_num of dusty-tome is -1;
	otherwise if pn is 308; say "[i]My people have a long history with them. Long and not entirely pleasant. Have they told you yet that they are symbiotes? That's how they would think of it, at least. Know this, though: in nature, it is very rare when two species truly coexist, neither getting the best of the other. There are few who---[r][paragraph break]Below this, centered and in small caps, it simply reads:[paragraph break][i]FIN[r][paragraph break]Thoughtfully, you close the book again."; now dusty-tome is closed; now page_num of dusty-tome is -1;
	otherwise; say "[i]This page intentionally left blank.[r]";
	end if.

index_looking is a truth state that varies. guessed_trees is a truth state that varies.

To index_bit with p_t (pt - an indexed text) and real_word (wd - an indexed text) and p_num (pnum - a number):
	say "You look it up in the index, where the entry reads '[pt in upper case]";
	if pt is not wd in lower case, say ": see [wd].' Referring to that entry you are directed to page [pnum].";
	otherwise say ": see page [pnum].'";
	now page_num of dusty-tome is pnum.

After reading a command when index_looking is true:
	let p_text be indexed text;
	let p_text be the player's command;
	replace the regular expression "(consult tome about|look up|in index|consult index about|consult book about|consult page|consult)" in p_text with "";
	replace the regular expression "^\s*(.*)\s*$" in p_text with "\1";
	replace the regular expression " " in p_text with "";
	if p_text matches the regular expression "(trees?|windsighs?)" begin;
		index_bit with p_t p_text and real_word "WINDSIGH" and p_num 227;
		replace the player's command with "227";
	otherwise if p_text matches the regular expression "progue";
		index_bit with p_t p_text and real_word "PROGUE" and p_num 869;
		replace the player's command with "869";
	otherwise if p_text matches the regular expression "\b(subconscious|unconscious|myself|mind|brain|me)\b";
		index_bit with p_t p_text and real_word "SUBCONSCIOUS" and p_num 893;
		replace the player's command with "893";
	otherwise if p_text matches the regular expression "(dont know|give up|guess|no)";
		index_bit with p_t p_text and real_word "THEY, WHO ARE (giving up)" and p_num 916;
		replace the player's command with "916";
	otherwise if p_text matches the regular expression "\b(voice|book|you)\b";
		index_bit with p_t p_text and real_word "MYSTERIOUS VOICE, THE" and p_num 855;
		replace the player's command with "855";
	otherwise if p_text matches the regular expression "\b(rume|rengin|bevan|god|aaron|reed|aaronreed|aaronareed|aarona.reed|phoebe|lethe)\b";
		index_bit with p_t p_text and real_word "GUESSES, WILD" and p_num 151;
		replace the player's command with "151";
	end if.


Understand "[a number]" or "turn to page [a number]" or "turn to [a number]" or "look at page [a number]" or "examine page [a number]" or "x page [a number]" or "examine [a number]" or "x [a number]" or "page [a number]" or "consult page [a number]" or "consult [a number]" or "read [a number]" or "read on [a number]" or "go to [a number]" or "turn to page [a number]" as book-setting when location is Dream4Nexus. Book-setting is an action applying to one number. Check book-setting: if page_num of dusty-tome is -1, try opening dusty-tome instead. Carry out book-setting: now page_num of dusty-tome is the number understood; say "You turn to page [the number understood]. On it is printed:[line break]"; try reading dusty-tome instead.




Chapter - Dream 5

[In a Parlor. Rebels call on antique telephone. Scene is projected from an old movie projector. Exit is french doors. Trees explain that the pyramid lets them communicate, and Progue helped them build it.]


Section - Nexus 5

Dream5Nexus is a nexus-room in Dreamlands. The printed name is "in the parlour". The description of Dream5Nexus is "Stylishly patterned wallpaper, brick fireplace with a mantel topped with expensive trinkets, the smell of ancient wood furniture polished weekly by obsequious servants. You don't remember this place, specifically, but you suppose you've been places like this before. Several fine wooden doorways are completely jammed full of [remembered thing], blocking any movement in those directions, but an unobstructed set of french [d]doors[x] leads into a bright exterior.[paragraph break]Two antique curios occupy prominent positions among the parlour's decor: a black wall-mounted [o]telephone[x] and a lumbering movie [o]projector[x][if projector is switched on] (projecting a strange film on a discreetly hidden [o]screen[x])[end if].".

Dream5Nexus-stuff is stuff in Dream5Nexus. Understand "wallpaper/fireplace/mantle/trinkets/wood/furniture/servants/doorways/exterior" as Dream5Nexus-stuff when location is Dream5Nexus.

A movie projector is an undescribed device in Dream5Nexus. The description is "This great metal giant, pointing at a discreet screen on a wall between two bookcases, is already threaded with a large full reel of film, and an empty catch reel. A gleaming [o]toggle[x] is the only control you can understand.". First report switching on projector: say "The toggle flips with a satisfying snap, turning on a brilliant lamp inside the projector which casts distorted shadows across the parlour through the fluted vents on its sides. A whir of fans and deeper hum spring from the depths of the machine, and with a clattering jerk, the reel begins to rotate.[paragraph break]After a countdown from 5 and a few seconds of blackness, a phantasmagoric scene of shifting [d]imagery[x] appears on the movie screen, like some flurry of activity filmed with a lens extremely out of focus, but dense with grain, as if the grain itself is in focus while the image is not." instead. First report switching off projector: say "You flip the toggle with a solid thud. The lamp dies, the fans and humming throb fade away, and the image dissolves, the reel of film slowing to a stop." instead. A large full reel of film is part of movie projector. Instead of taking reel, say "The film is threaded through the projector, and you can't find any control to rewind it.". The description of reel is "Thirty-five millimeter." The projector-switch is part of movie projector. Understand "toggle" as projector-switch. The printed name of projector-switch is "toggle on the projector". The description is "The toggle looks like it can be switched on or switched off.". Instead of pushing or using or switching on projector-switch when projector is switched off: try switching on projector. Instead of pushing or pulling or using or switching off projector-switch when projector is switched on: try switching off projector.
 
The screen is a setpiece in Dream5Nexus. The description is "[if projector is switched on]The screen shows a frenetic smudge of shifting [imagerybit], constantly changing, never quite resolving into recognizable forms or figures[otherwise]Nothing is being projected onto the small white screen[end if].". To say imagerybit: say "[if d5-portal-trigger is on-stage][d]imagery[x][otherwise]imagery[end if]".

d5-portal-trigger is part of the screen. Understand "imagery" as d5-portal-trigger when location is Dream5Nexus. Instead of examining d5-portal-trigger: say "You stare at the strange film being projected onto the screen, and suddenly notice the space between screen and projector, a three dimensional volume of dancing dust motes brilliantly illuminated by the images. You realize that the image is being projected upon every invisible particle in that space, that the real image is not what is on the screen at the end, but in between...[paragraph break]{(*between*)}[line break]"; begin-flashback-sequence; remove d5-portal-trigger from play.

A set of french doors is a setpiece in Dream5Nexus. Understand "door/curtain/curtains" as set of french doors when location is Dream5Nexus. The description is "The doors, made of some rich red-brown wood, are elegantly curtained.". Instead of opening french doors when dream-door-locked is true: say "Strangely, though you keep walking towards the doors, you find you can never quite reach them.". Instead of opening french doors: say "You pull open the doors, and incredibly bright sunlight stabs into your eyes..."; wake up now. Instead of examining french doors, try opening french doors.



Section - Presence Convo 5

dream5-presence is a dream presence in Dream5Nexus. The icebreaker of dream5-presence is d5_icebreaker.

FifthDT is a thread.

d5_icebreaker is an exciting repeatable beat in FifthDT with reaction "[d_attention].". d5_icebreaker summons d5_1. d5_icebreaker suggests d5_icebreaker. d5_1 replaces d5_icebreaker.

Understand "mind/minds/presence/presences" as d5_1 when last beat is in FifthDT. d5_1 is a beat in FifthDT with reaction "The minds retreat for a moment, gathering their thoughts to explain one last chapter in their story, then return, ready.". d5_1 suggests d5_2. d5_2 replaces d5_1.

d5_2 is a beat in FifthDT with reaction "There were two favors they asked of Progue. The first, repairing the egg device and restoring them to their great community of thought, was done by him before he even realized they existed. As they whispered in his mind, guiding him first to find the device, then teaching him how to repair it, he took their images for intuition, gut feelings, a sixth sense. Only at the moment of completion did he realize there was an Other in his mind.". d5_2 suggests d5_3. d5_3 replaces d5_2.

d5_3 is a beat in FifthDT with reaction "They asked Progue to do something else for them, something, you sense, even more important. Though they try for long, long moments to explain, you cannot grasp what this second favor was.". d5_3 suggests d5_4. d5_4 replaces d5_3.

d5_4 is a beat in FifthDT with reaction "Eventually they stop trying to explain, and seem content that you understand it was an important request. They seemed to think Progue would fulfill it. But, unexpectedly, in the end he did not. He was angry, and they did not know why. He stopped talking to them, stayed away, and they do not know why. They are confused. But they have a theory.". d5_4 suggests d5_5. d5_5 replaces d5_4.

d5_5 is a beat in FifthDT with reaction "Another concept forms in your mind: the notion of another 'they,' distinct from the minds you've been speaking to, not exactly enemies, or opposed, but different, unknown, perhaps threatening. The minds think this other group influenced Progue, misled him, convinced him not to help them. They warn you this group might still exist.[paragraph break]A question forms. Have they tried to contact you?". Instead of saying yes or saying maybe when last beat is d5_5, force discuss d5_yes. Instead of saying no when last beat is d5_5, force discuss d5_no. d5_5 suggests d5_no. d5_no replaces d5_5.

d5_yes is a terminal beat in FifthDT with reaction "They are troubled by this, and you sense ripples of discontent stretching back into the shadowed millions in their great distant civilization of minds. Finally, when the ripples fade and the surface is calm enough for unity again, you can sense their ponderous thoughts.[paragraph break]They convey to you a simple warning. The others may be false. They may not have your best interests in mind. Be careful what you believe. Be on your guard.[paragraph break]They fade into a general foreboding sense of paranoia, and when it fades, are gone.".

d5_no is a terminal beat in FifthDT with reaction "Contentment. They convey to you that this is good. Perhaps the others no longer wish to meddle. Perhaps they have forgotten the tricks they used to interfere before.[paragraph break]Perhaps you will help us, though Progue did not.[paragraph break]They fade into a general hum of contentment, and when it fades, are gone.".



Section - Rebel Convo 5

An antique telephone is an undescribed device in Dream5Nexus. Understand "phone/microphone/earpiece/hook" as telephone. The description of telephone is "Made of finely polished brass and black wood, the telephone features a large mounted microphone and a separate earpiece, hanging on a delicate hook. There are no numbers.". Instead of taking telephone, try switching on telephone.  [Instead of answering that telephone, try taking telephone.] Understand "answer [telephone]" as switching on when location is Dream5Nexus. Understand "hang up [telephone]" as switching off when location is Dream5Nexus. Instead of switching on telephone when D5-Phone-Rings is not happening, say "You pick up the earpiece and hold it to your ear, but can hear nothing other than distant, almost imperceptible hissing and clicks.". First Report switching on telephone: say "You lift the receiver and hold it to your ear." instead. First report switching off telephone: say "You replace the receiver." instead. Instead of switching off telephone when reb-presence-5 is enclosed by location: say "You don't want to miss the end of such an important call.". Instead of using telephone, try switching on telephone. Understand "dial [telephone]" as switching on.

The reb-presence-5 is a person with printed name "reedy voice".

D5-Phone-Rings is a recurring scene. D5-Phone-Rings begins when location is Dream5Nexus and D5-Phone-Rings-hack and the player has been in Dream5Nexus for at least 2 turns and conversation fuse >= 1 and yourself is asleep and D5-Phone-Rings is not happening and active presence is not in location. To decide whether D5-Phone-Rings-hack: if D5-Phone-Rings ended successfully, decide no; decide yes.

Every turn during D5-Phone-Rings: say "[one of]The telephone rings loudly, a tiny hammer striking the brass bell, startling you.[or]The telephone rings again, shrill and insistent.[or]The telephone rings again.[or]The telephone falls silent.[cycling]".

D5-Phone-Rings ends when location is not Dream5Nexus.

D5-Phone-Rings ends successfully when telephone is switched on.

When D5-Phone-Rings ends successfully:
	say "Out of weird whorls and eddies of static, you hear a tinny voice clear its throat, then begin to speak. It is a [if player is female]wo[end if]man's voice, reedy, sarcastic, but confident.";
	remove dream5-presence from play;
	now dream5-presence is idle;
	now saved last beat is last beat;
	move reb-presence-5 to location;
	now reb-presence-5 is attentive;
	now last beat is RC5-pre.

Instead of switching off telephone when reb-presence-5 is in location: say "It would be rude to hang up in the middle of the call.". Instead of opening french doors when reb-presence-5 is in location: say "But you're on the telephone." Instead of examining d5-portal-trigger when reb-presence-5 is in location: say "But you're on the telephone.". Instead of exhausting when last beat is in RC5: force discuss rc5_notime. 

RC5 is a thread with escape clause Rc5-1. RC5-pre is an exciting beat in RC5. RC5-pre suggests RC5-1. rc5_notime is an ephemeral repeatable beat in RC5 with reaction "'There's no time,' the voice says hurriedly.".

RC5-1 is a beat in RC5 with reaction "'Hello,' it says dryly, 'at last we meet face to face, or ear to ear, as it were. Builder thank the [rc5_hackers], though we're still pressed for time if we don't wish to be caught. I'm Doctor [rc5_quick], and it is a pleasure to finally speak.'". rc5-1 suggests rc5_2. rc5_2 replaces rc5-1.

Understand "mindlisteners" as rc5_hackers. rc5_hackers is a beat in rc5 with keyword name "mindlisteners" and reaction "'You've no idea the work it takes to keep our little chats going,' the doctor says with a little yawn. 'I've been up all night recalibrating new protocols--- but never mind that now.'". rc5_hackers suggests rc5_2. 

Understand "doctor/quick" as rc5_quick. rc5_quick is a beat in rc5 with keyword name "Quick" and reaction "'Just an old proper name, of course,' the voice says. 'No time to get into the naming conventions of my [rc5_people], but it has proved to be remarkably accurate, I suppose.'". rc5_quick suggests rc5_2. rc5_quick summons rc5_people.

Understand "people/race" as rc5_people. rc5_people is a beat in rc5 with keyword name "[if last beat is rc5_2]race[otherwise]people" and reaction "'We're the underdogs,' the voice says wryly, 'the upstarts, nipping at the heels of the great old order, who can't even understand why we'd want to nip. But they're learning, if slowly. They're learning.'". rc5_people enqueues rc5_2. rc5_people2 replaces rc5_people. rc5_people2 is a beat in rc5 with reaction "'There's no time,' the voice says, 'I'm sorry.'". rc5_people2 enqueues rc5_3.

rc5_2 is a beat in rc5 with reaction "'We expect they're telling you all about how they used [rc5_progue] to further their own ends,' the voice says. 'Oh, of course [rc5_they] wouldn't characterize it that way, but I hope you can see through their shallow rationalizations. It's what they've always done to our [rc5_people], capable of so much more than them. But I digress.'". rc5_2 suggests rc5_3. rc5_3 replaces rc5_2.

Understand "progue" as rc5_progue when last beat is in RC5. rc5_progue is a beat in rc5 with keyword name "Progue" and reaction "'We didn't get to talk to him like this, of course,' the voice says regretfully. 'The connection was too weak, the equipment too new. It was only at the end that we finally broke through.'". rc5_progue enqueues rc5_3.

Understand "they" as rc5_they when last beat is in RC5. rc5_they is a beat in RC5 with keyword name "they" and reaction "'[if guessed_trees is true]The windsigh[otherwise]They[end if] are arrogant and proud,' the voice says tiredly, 'and from a purely academic perspective, of course, one could almost sympathize--- but no. Life is not purely academic. They are the enemy. And I think you have more in common with us than with them.'". rc5_they enqueues rc5_3.

rc5_3 is a beat in rc5 with reaction "'The truth is,' the voice says, 'we profited from their use of Progue as much as they, perhaps more so. The [rc5_device] he repaired for them, atop the mountain on Lacuna, is the only way we're reaching you to have these little chats. So I can't complain too much.'". rc5_3 suggests rc5_4. rc5_3 summons rc5_device. rc5_4 replaces rc5_3.

Understand "device" as rc5_device when last beat is in rc5. rc5_device is a beat in rc5 with keyword name "device" and reaction "'It's called a somenium actuating wave transceiver, if you want the technical name,' the voice says. 'Seiver, we say for short. Or at least that's what ours would be called, I should say, if we could build any more. Suffice to say it's what connects them to the collective mind, and is the conduit that allows us to speak to you, as well.". rc5_device enqueues rc5_4.

rc5_4 is a beat in rc5 with reaction "'Are you wondering now why these two forces, two sides, are trying so desperately to befriend you?' the voice asks dryly. 'I'm not revealing anything when I tell you this little tidbit of human nature: those who want to be your friends upon no provocation want something from you. Be warned.'[paragraph break][if player is male]He[otherwise]She[end if] sounds as if [if player is female]s[end if]he is about to say something further, but then the line goes dead, and all you can hear are faint clicking taps, echoing through some spaceless void at the other end of the line.".

After discussing rc5_4:
	remove reb-presence-5 from play;
	now reb-presence-5 is idle;
	if the number of terminal beats in FifthDT is 0:
		move dream5-presence to location;
		now dream5-presence is attentive;
		now last beat is saved last beat.


Chapter - Dream 6

[Under the lagoon. Rebels communicate through a seashell. Scene arrives from touch of sandy bottom. Exit is swimming down into crack. Trees explain that they asked Progue a favor, but he did not complete it.]


Section - Nexus 6

Dream6Nexus is a nexus-room in Dreamlands. The printed name is "at the bottom of the sea". The description of Dream6Nexus is "Deep blue water surrounds you in all directions. Faint shafts of distant sunlight darkle particles caught in the indistinct surge and ebb of undersea currents. Huge sea creatures swim through the void around you, distant enough to be more phantasm than physical reality, close enough to make you ever so slightly unnerved.[paragraph break]A huge, twisting column of [o]silt[x] rises from the unseen ocean floor below, twisting and swirling, disturbed perhaps by one of the massive creatures[if d6-shell is enclosed by location or d6-shell is enclosed by player].[paragraph break]A beautiful [o]seashell[x], pearl white with intricate bumps and whorls spiraling into a delicate interior, floats nearby, emitting a strange tone[end if].".

Dream6Nexus-stuff is stuff in Dream6Nexus. Understand "water/shafts/sunlight/particles/surge/ebb/currents/void/phantasm" as Dream6Nexus-stuff when location is Dream6Nexus.

A huge column of silt is an undescribed setpiece in Dream6Nexus. The description is "The silt billows and sways like summer clouds, the twisted shape a product of inconceivably complex forces and equations-- fluid dynamics, buoyancy, gravity, centripetal and chemical and electromagnetic forces, that it seems almost a miracle its evolving shape is so graceful, so peaceful. Your mind sees strange forms in the patterns: [remembered thing] and [remembered thing][if d6-portal-trigger is on-stage]. Yet somewhere deeper in the dark [d]interior[x] of the column, something strange and massive stirs, some swirling image you cannot quite focus on[end if].".

d6-portal-trigger is part of silt. Understand "interior" as d6-portal-trigger when location is Dream6Nexus. Instead of examining d6-portal-trigger: say "You swim towards the great pillar of silty water, or strange chaotic patterns billow it towards you, and within a moment the cloud has surrounded you, millions of particles of ancient sea bottom passing over and through you, rubbing you smooth...[paragraph break]{(*smooth*)}[line break]"; begin-flashback-sequence; remove d6-portal-trigger from play.

Some huge sea creatures are an undescribed animal in Dream6Nexus. Understand "creature/monster" as sea creatures when location is Dream6Nexus. The description is "They are mere shadows in the infinite deep of the ocean, black on blue-black smudges, distant and unreal.". Instead of doing anything other than examining or examining by name huge sea creatures, try examining huge sea creatures.

First Instead of going nowhere when location is Dream6Nexus: try vague swimming. Instead of vague swimming when location is Dream6Nexus and dream-door-locked is true: say "You paddle and stroke against the thick water, but your movements are ineffectual, and you seem to make no progress in any direction.". Instead of vague swimming when location is Dream6Nexus: say "You kick forward, struggling against a sudden terrible realization that whatever force suspended your need for air has vanished now, if it ever existed. A fire grows slowly in your lungs, but you cannot seem to pull any closer to the source of the distant shafts of sunlight; the billowing bulk of the sea creatures or the obscuring column of silt eclipses your view of the surface, and you are sure you are about to drown...[paragraph break]With a sudden gasp, you break the surface of your dream and open your eyes."; wake up now. 

Section - Presence Convo 6

dream6-presence is a dream presence in Dream6Nexus. The icebreaker of dream6-presence is d6_icebreaker.

SixthDT is a thread.

d6_icebreaker is an exciting repeatable beat in SixthDT with reaction "[d_attention].". d6_icebreaker summons d6_1. d6_icebreaker suggests d6_icebreaker. d6_1 replaces d6_icebreaker.

Understand "mind/minds/presence/presences" as d6_1 when last beat is in SixthDT. d6_1 is a beat in SixthDT with reaction "You sense a growing rise of finality, of importance. They are almost completely tuned to you now. They are ready to explain the most complex part of their story to you.". d6_1 suggests d6_2. d6_2 replaces d6_1.

d6_2 is a beat in SixthDT with reaction "A new concept gathers in your mind, difficult, but at last you begin to grasp it. The minds have told you of their great civilization. But they are only half of it. They are symbionts, partners, with another species. Another species, you finally realize, like yourself.". d6_2 suggests d6_3. d6_3 replaces d6_2.

d6_3 is a beat in SixthDT with reaction "The minds exist in a world of pure abstract thoughts. But their partners, creatures with arms and legs and eyes and ears, exist in the physical world. Together, both species have achieved greatness; great thinkers and great doers, brought together.". d6_3 suggests d6_4. d6_4 replaces d6_3.

d6_4 is a beat in SixthDT with reaction "Together, they set out to colonize the stars. But on this world there was an accident. Their symbiont race died in a disaster, leaving only the minds, trapped without eyes or hands or feet, with no way to carry on the great mission their homeworld expected of them, to spread their civilization across this world and make of it a new home. Trapped.[paragraph break]Trapped in trees.". d6_4 suggests d6_5. d6_5 replaces d6_4.

d6_5 is a terminal beat in SixthDT with reaction "An image of the windsigh you sleep under forms in your mind, potent and intense, and you realize that this is one of the minds you've been speaking with. Within each windsigh tree is a mind, divorced from external sensation but connected through the device on the top of the mountain to their brothers on their homeworld. Connected, but impotent, powerless to affect the world around them, without their symbiont race to do things, move things, build things.[paragraph break]There is only one more of them to find. And when you do, the mental tuning will be complete.[paragraph break]The minds-- the trees-- fade away, leaving behind only a faint glow of satisfaction... and anticipation.".

Section - Rebel Convo 6

A d6-shell is an undescribed thing. Understand "shell/seashell" or "sea shell" as d6-shell when location is Dream6Nexus. The printed name is "seashell". Every turn when location is Dream6Nexus and d6-shell is off-stage and we have discussed d6_5 and conversation fuse >= 1 and yourself is asleep and active presence is not in location and rc6_1 is unspoken: move d6-shell to Dream6Nexus; say "A beautiful spiral [o]seashell[x] floats past in the current.". [When taking, trees are suppressed.] The description is "The shell is a thing of beauty, perfectly shaped and textured. It floats near your hand[if rc6_1 is unspoken], the odd, high-pitched tone seeming to come from its interior[end if].". Instead of listening when location is Dream6Nexus and d6-shell is enclosed by location and d6-shell is not held, try taking d6-shell. Instead of listening to d6-shell, try taking d6-shell. First Report taking d6-shell: move reb-6 to location; now reb-6 is attentive; now last beat is rc6_0; say "You grab the shell and hold it to your ear. The strange tone grows in volume as you do so, until, just as the bumpy shell touches your ear, it dies, giving way to a remarkably clear voice-- reedy and familiar." instead. First report dropping d6-shell: if rc6_5 is spoken, remove d6-shell from play; say "You release the shell, and it slips away into the blue void around you." instead. Instead of dropping d6-shell when reb-6 is in location: say "You should wait until the conversation is over.". Instead of examining d6-portal-trigger when reb-6 is in location: say "You should wait until the conversation is over." Instead of listening to d6-shell when reb-6 is in location: say "You keep the shell held to your ear, listening intently.". Instead of listening to d6-shell when rc6_5 is spoken, say "All you hear now is the sound of the ocean.".

reb-6 is an undescribed person with printed name "voice". Understand "voice/man/woman" as reb-6. Instead of saying farewell to reb-6: say "You can't seem to speak.".

RC6 is a thread. rc6_0 is an exciting beat in RC6. rc6_0 suggests rc6_1.

Instead of exhausting when last beat is in RC6: force discuss rc6_exhaust instead. rc6_exhaust is an ephemeral repeatable beat in RC6 with reaction "Only air bubbles come out from your mouth.".

rc6_1 is a beat in RC6 with reaction "'I've been instructed,' the [if player is female]wo[end if]man's voice says dryly, 'to be less casual with you, to-- how was it put? Make better use of [t]government[x] time. Apologies. Perhaps a less cynical and opinionated [t]scientist[x] can be found to make future breakthroughs. I shall come straight to the point.'". rc6_1 suggests rc6_2. rc6_1 summons rc6_canthear.

Understand "government/scientist" as rc6_canthear when last beat is in RC6. rc6_canthear is a beat in RC6 with keyword name "government and scientist" and reaction "You open your mouth to respond, but all that comes out is bubbles, expanding silver spheres which rise and fade into the blue distance.[paragraph break]'Hmm,' the voice says, 'I'm not receiving you. Looks like the Beast is playing tricks with the uplink seiver again. Never mind, this will have to be one-way only. Please listen.'". rc6_canthear enqueues rc6_2.

rc6_2 is a beat in rc6 with reaction "[if guessed_trees is true]'They've told you who they are now, even though you'd already guessed, of course[otherwise]'You know who they are now[end if], so I can explain who we are as well. Long overdue, from your perspective, I'm sure. Bear with me.'[paragraph break]'We are the symbionts, you see. Their other halves. At least a few of them. Strange cosmic irony: our world is like a mirror image of your Lacuna, for here, when the seed ship crashed, it was the trees, the windsigh who died, while the people survived.'". rc6_2 suggests rc6_3.

rc6_3 is a beat in rc6 with reaction "'And so for the first time in our race's history, we had to think for ourselves, step away from the protective shell, the fog of false kinship that had clouded our minds. We saw we had been used. And we wish for all our brothers and sisters, still serving their blind masters, to see now what we do.'[paragraph break]A chuckle. 'Oh, how noble, how heroic. Dripping with pathos. I should have been a speechwriter.'". rc6_3 suggests rc6_4.

rc6_4 is a beat in rc6 with reaction "'A nervous tech is already pointing at the clock,' the voice says quickly, 'but one last thing. I tend to think it's your own business, but higher-ups higher than I have requested, or perhaps demanded is a better term, that I ask. You can just nod [rc6_yes] or shake your head [rc6_no], we've still got the kinesthetic feed running. Here it is: have you told them that we've been contacting you?'". The yes-beat of rc6_4 is rc6_yes. The maybe-beat of rc6_4 is rc6_yes. The no-beat of rc6_4 is rc6_no. rc6_4 suggests rc6_yes.

rc6_yes is a beat in rc6 with keyword name "yes" and reaction "'Oh dear,' the voice says, and you hear what sounds like fingers drumming on a metal surface. 'Well, that explains the difficulties with the feed, I suppose. They know so much more about the network than us. Hopefully the mindlisteners still have a few tricks up their sleeves...'". rc6_yes enqueues rc6_5.

rc6_no is a beat in rc6 with keyword name "no" and reaction "'Good,' the voice says, 'that will make my superiors happy, I suppose.'". rc6_no enqueues rc6_5.

rc6_5 is a beat in rc6 with reaction "'They've almost finished with their calibration,' the voice says quickly, 'and so have we. The next time we speak we'll be ready to a---'[paragraph break]The voice cuts off mid-word, and all you can hear from the shell now is the sound of the sea.". After discussing rc6_5: remove reb-6 from play; now reb-6 is idle; continue the action.



Chapter - Dream 7

[In the Tumble again. Rebels appear as shadow from bedroom. Scene is completed canvas with your picture. Exit is jumping into fire. Trees explain that they need a password and then need you to "visit" them. Rebels ask you to visit.]


Section - Nexus 7

Dream7Nexus is a nexus-room in Dreamlands. The printed name is "the tumble, studio". The description of Dream7Nexus is "Once again you stand in your old studio, before the fireplace in the lodge, the chatter of the stream and the smell of pine boughs somehow more vibrant and real than in the months you lived among them. But entropy has reigned while you were gone; the once-roomy interior is now overrun with thousands and thousands of things: [dream thing] and [remembered thing] and [remembered thing] and [dream thing], in great stacks rising to the ceiling and beyond, covered in grey cobwebs and dirt and tiny shriveled insect carcasses. Stairs and doorways are entirely overrun; only by clambering on top of the piles towards a broken skylight [up] above could you hope to get out.[paragraph break]Two shadowy forms stand on the balcony above you, but neither is Rume. One is [o]tall[x] and moves gracefully, the other is [o]short[x] and moves quickly.[paragraph break]Your [o]painting[x] of the windsigh by the fork, the one that brought you here, stands in the center of the room, exactly as you left it, the one thing untouched by dust and age.". First Instead of going nowhere when location is Dream7Nexus or location is Dream1Nexus: say "You move towards the stairs, but as you put your foot on the bottom steps it rips in half: paper. Looking up, you see the rest of the Tumble is merely a hastily-constructed stage set, designed to seem real only from the right angle.".

Dream7Nexus-stuff is stuff in Dream7Nexus. Understand "studio/fireplace/lodge/stream/interior/things/cobwebs/dirt/insect/insects/carcass/carcasses/stairs/doorways" as Dream7Nexus-stuff when location is Dream7Nexus.

The tree-figure is an undescribed setpiece in Dream7Nexus. Understand "shadowy/form/shadow/figure/forms/tall/graceful/gracefully" as tree-figure when location is Dream7Nexus. The printed name is "tall, graceful shadow". The description of tree-figure is "The faint light from the fire is swallowed up by grayness long before it reaches the figure, but as you turn your attention to it, you realize it is an embodiment of the presences, the minds you have been communicating with in your dreams.". After examining tree-figure: move dream7-presence to location; now dream7-presence is attentive; now last beat is d7_icebreaker. Instead of examining tree-figure when reb-7 is in location: say "Your attention is captivated by the other figure.".

The rebel-figure is an undescribed setpiece in Dream7Nexus. Understand "shadowy/form/shadow/forms/figure/short/quick/quickly" as rebel-figure when location is Dream7Nexus. The printed name is "short, quick shadow". The description of rebel-figure is "The faint light from the fire is swallowed up by grayness long before it reaches the figure, but as you turn your attention to it, you realize it embodies the dissenter, the cynical voice you've been hearing.". After examining rebel-figure: move reb-7 to location; now reb-7 is attentive; now last beat is d7r_0. Instead of examining rebel-figure when dream7-presence is attentive: say "Your attention is captivated by the other figure."

The d7-canvas is an undescribed setpiece in Dream7Nexus. Understand "canvas/painting/tree/windsigh" as d7-canvas. The printed name is "painting". The description is "You think at first that the painting is exactly as you left it, but something is odd. Peering closer, you see [if saved location is not Fork]it is not the same tree: the painting now shows [d7-which-tree]. The[otherwise]the[end if] paint seems to [if d7-portal-trigger is on-stage][d]shimmer[x][otherwise]shimmer[end if] and twitch as if somehow alive, writhing and scintillating like millions of tiny invisible worms, paintforms alive on the canvas.". To say d7-which-tree: say "[if saved location is Big Tree or saved location is Treehouse]the windsigh with the treehouse[otherwise if saved location is Cinder Cone]the windsigh atop the volcano cinder cone[otherwise if saved location is Rockslide]the windsigh atop the rockslide[otherwise if saved location is Forest9]the windsigh deep within the rain forest[otherwise if saved location is Egg]the young windsigh near the Egg[otherwise]the huge windsigh atop the ridge above the ravine[end if]". d7-portal-trigger is part of d7-canvas. Understand "shimmer" as d7-portal-trigger when location is Dream7Nexus. Instead of examining d7-portal-trigger: say "You reach out to touch the wet paint and it tingles your finger, and suddenly you realize in a moment of terror that it is not the painting that is made of shimmering worms, but you...[paragraph break]{(*you*)}[line break]"; begin-flashback-sequence; remove d7-portal-trigger from play. Instead of touching or taking or entering d7-canvas, try examining d7-portal-trigger.

First instead of going up in Dream7Nexus: [ This has to be a "first instead" because of the earlier rule blocking "going nowhere." ]
	if dream-door-locked is true, say "You try to clamber onto a dusty crate, but it collapses under your weight, sending clouds of billowing gray dust in all directions." instead;[aar]
	if tree-password is unset or rebel-password is unset, say "Your curiosity will not allow you to wake until you've spoken to each of the figures." instead;
	say "Finally finding a steady base, you work your way up to the faint light creeping through the broken skylight, balancing ever more precariously as you climb higher and higher, far higher than the ceiling of the lodge should be. Just as you reach for the edge the unstable stack of detritus beneath you shifts and tumbles; you grab the edge frantically and hang suspended in midair for a long, stomach-churning moment before pulling yourself up into the light...";
	wake up now. 

The stacks of stuff are a setpiece in Dream7Nexus. The description is "The stacks of mouldering crates and mementos rise in a precarious profusion towards the ceiling." Instead of climbing, entering, or using stacks of stuff: try going up. 

A skylight is a setpiece in Dream7Nexus. The description is "Pale grey light seeps murkily through the skylight high above, the only source of illumination here." Instead of entering or opening or touching skylight, try going up.

Section - Presence Convo 7

dream7-presence is a dream presence in Dream7Nexus. [ The icebreaker of dream7-presence is d7_icebreaker.] [We don't want this convo to start automatically.]

D7 is a thread.

d7_icebreaker is an exciting beat in D7. d7_icebreaker suggests d7_1. d7_1 replaces d7_icebreaker.

Understand "mind/minds/presence/presences" as d7_1 when last beat is in D7. d7_1 is a beat in D7. The reaction is "The tall figure steps forward and the shorter figure fades into transparency.[paragraph break]You have found them all. Together, they have learned enough about your mind for full communication. They thank you.[paragraph break][if mind machinery is calibrated]The [d7_2] is calibrated. You are ready.[otherwise]All that remains is for the [d7_2], inside the pyramid atop the mountain, to be calibrated, and you will be ready.[end if]". d7_1 suggests d7_2. d7_rerun replaces d7_1.

Understand "mindlink" as d7_2 when last beat is in D7. d7_2 is a beat in D7 with keyword name "mindlink" and reaction "The trees have only before hinted at the great collective of minds that makes up their galactic civilization, called Forest. Now they tell you of a great mind on the Heart of Forest, their home world, who wishes to speak with you. The favor that was once asked of Progue is still vital, and only you can perform it. This great mind requests the honor of your presence, to ask this favor in person. Somehow the mindlink will allow you to do this.". d7_2 suggests d7_3. d7_3 replaces d7_2.

d7_3 is a repeatable beat in D7 with reaction "[one of]But there are trillions of minds in the network. For yours to be successfully picked up by the Heart, you will need to choose a sigil, a code, that, when combined with your unique neural patterns, will make a unique trace. The trees make it simple: say any single and memorable word. Say it now.[or]They are content. You sense that it is a very simple process to change the trace word. Say your new word now.[stopping]". After discussing d7_3: change the command prompt to ">>"; continue the action.

d7_rerun is a repeatable beat in D7 with reaction "The minds stir, anxious, eager.[paragraph break]They remind you of the code word you selected, '[tree-password].' All you must do is set the seiver on the mountaintop with that code word, and you will be able to visit them.[paragraph break]They ask if you would like to change your code word.". The no-beat of d7_rerun is d7_rerunno. The yes-beat of d7_rerun is d7_3.

d7_rerunno is a repeatable beat in D7 with reaction "They are content. And they await.[paragraph break]The presences fade away, and the tall figure steps back and becomes still.". After discussing d7_rerunno: remove dream7-presence from play; now dream7-presence is idle.

After reading a command when last beat is d7_3:
	let testtext be indexed text;
	let testtext be the player's command;
	if testtext is an invalid password begin;
		reject the player's command;
	otherwise if testtext exactly matches the text rebel-password;
		say "You lick your lips nervously. Somehow you sense that giving each side the same word might cause unforeseen difficulties.";
		reject the player's command;
	otherwise;
		replace the player's command with "setkey tree1pw [the player's command]";
	end if.

After defining a password when last beat is d7_3:
	change the command prompt to ">";
	force discuss d7_4.

d7_4 is a repeatable beat in D7 with reaction "It is done. [one of]The trees tell you to remember this word. Use it to set the mindlink, and all will be prepared for your visit.[paragraph break]There is one last concept to explain. The dissenters they warned you about[if we have discussed d5_yes], the ones you said were trying to contact you,[end if] may also try to get a sigil from you, persuade you to speak with them in the same fashion. They warn you to exercise caution. They say these dissenters would offer you false information, would seek to mislead you for their own gain, the same way they fear Progue was misled. They say they are dangerous.[or]Use this word to set the seiver, and all will be prepared for your visit.[stopping][paragraph break]Forest awaits your coming.".  After discussing d7_4:  remove dream7-presence from play; now dream7-presence is idle; if d7r_3 is spoken, becontact lucky windsigh.


Section - Rebel Convo 7

d7r is a thread. reb-7 is an undescribed person. d7r_0 is a beat in d7r. d7r_0 suggests d7r_1. Instead of saying farewell to reb-7: say "'Just a minute,' the voice says, 'we're almost finished.".


d7r_1 is a beat in D7R with reaction "The short figure steps forward and speaks while the tall figure fades into transparency, that now-familiar reedy voice echoing around the lodge, but you still cannot see [if player is male]his[otherwise]her[end if] face.[paragraph break]'The tuning is complete,' [if player is female]s[end if]he says, wry but with a touch of pride. 'Now all that remains is for you to complete the twin calibration in the pyramid on the mountain, and everything will be ready for your [d7r_2].'". d7r_1 suggests d7r_2. d7r_1 summons d7r_2. d7r_rerun replaces d7r_1.

d7r_rerun is a repeatable beat in D7R with reaction "There is a long pause, then the short figure steps forward. 'Hello?' you hear the familiar cynical voice after a moment. 'Caught us unprepared. We're hoping for your visit soon. Remember, just set the seiver on the mountain to '[rebel-password]' and everything will be ready. Or did you want to use a different password?'". The yes-beat of d7r_rerun is d7r_2. The no-beat of d7r_rerun is d7r_rerunno.

d7r_rerunno is a repeatable beat in D7R with reaction "'Fine then,' the voice says. 'We're awaiting you with the highest of expectations.'[paragraph break]'Until we meet,' the voice says, and the short figure steps back and becomes silent.". After discussing d7r_rerunno: remove reb-7 from play; now reb-7 is idle.

Understand "visit" as d7r_2 when last beat is in D7R. d7r_2 is a repeatable beat in D7R with keyword name "visit" and reaction "[one of]'All we've been able to do so far,' the voice explains, 'is send suggestions, teases, tiny parcels of information, which your brain has been receiving as dreams. Builder knows what strange forms it's been taking. But now we're ready to communicate in a much more direct, straightforward fashion. You'll like it, I think. It's quite an experience.'[paragraph break]'To do this, however,' it says, 'we'll need you to give us a password. This will allow us to isolate your station on Lacuna from the billions of other nodes on the network. We've been broadcasting in a wide beam until now, you see, and-- well, but never mind. If you enter the password into the seiver on the mountaintop before activating it, your signal will come only to us, encrypted against any possible snooping by others.'[paragraph break]'So, pick a word now, if you please. Hopefully something you'll be able to remember.'[or]'Very well. We can easily recalibrate our search patterns here on our end. Do try to remember this one, though. Say your word now, please.'[stopping]". After discussing d7r_2: change the command prompt to ">>"; continue the action.

After reading a command when last beat is d7r_2:
	let testtext be indexed text;
	let testtext be the player's command;
	if testtext is an invalid password begin;
		reject the player's command;
	otherwise if testtext exactly matches the text tree-password;
		say "You lick your lips nervously. Somehow you sense that giving each side the same word might cause unforeseen difficulties.";
		reject the player's command;
	otherwise;
		replace the player's command with "setkey verjpw [the player's command]";
	end if.

After defining a password when last beat is d7r_2:
	change the command prompt to ">";
	force discuss d7r_3.

d7r_3 is a beat in D7R with reaction "'That will do,' the voice says. 'Again, just set the seiver to that word-- please don't forget it-- and you'll be able to get a better idea what our world is like. My, eh, employer is looking forward to meeting you.'[paragraph break]'Snide remarks aside,' the voice adds after a moment, 'please do come. Things aren't well here. You've appeared from nowhere, and in the nick of time. It would be a shame to ignore such serendipity. Please. Help us.'". d7r_3 suggests d7r_4. d7r_4 replaces d7r_3. After discussing d7r_3: if d7_4 is spoken, becontact lucky windsigh; continue the action.[aar]

d7r_4 is a repeatable beat in D7R with reaction "[one of]'One other thing,' the voice adds. 'The windsigh will invite you to do the same thing; choose a password and punch it into the seiver and connect directly to their world. Be very careful. They have thousands of years of experience at whispering into unsuspecting minds, brainwashing them to make them do whatever they want. Don't step into any traps.[or]'Done,' the voice says. 'It will take just a few minutes, but then you should be able to set the seiver with that word to contact us, and close our meddlesome friends out of the loop.'[stopping][paragraph break]'Until we meet,' the voice says, and the figure steps back and becomes still.". After discussing d7r_4: remove reb-7 from play; now reb-7 is idle.


Chapter - Reruns

dream-presence-rerun is a dream presence. The printed name is "dp-r". The icebreaker of dream-presence-rerun is dr_icebreaker.

DR is a thread.[aar]

dr_icebreaker is an exciting repeatable beat in DR with reaction "You feel a faint surge of sentience from the presences, somewhere distant and asleep. You must find a different tree, it reminds you, one that you haven't dreamt under before. Otherwise they cannot learn. Each tree helps reveal a different face of your mind... their minds? ...that one alone could not see[unless pseudo-dream is 1].[paragraph break]The presences fade, but offer you a choice: they can help you sleep through the [dr_night], or wake you up [dr_now], while it's still night[end if].". dr_icebreaker suggests dr_bye. [Only offer the choice to wake up early if we're not touching the tree.]

dr_bye is a repeatable terminal beat in DR with reaction "The presences fade away, and are gone.".

Understand "night" as dr_night when last beat is in DR. dr_night is a repeatable beat in DR with keyword name "night" and reaction "It is done. You will not wake until morning.". dr_night enqueues dr_bye. After discussing dr_night: now pseudo-dream is 0; continue the action.

Understand "now" as dr_now when last beat is in DR. dr_now is a repeatable beat in DR with keyword name "now" and reaction "It is done. When you wake, it will be as if no time has passed at all.". dr_now enqueues dr_bye. After discussing dr_now: now pseudo-dream is 2; continue the action.




Book - Flashbacks


Chapter - Fork Flashback

[The girls debate whether to disobey Progue and sneak through the door.]

Dream-Fork is a flashback-room in Dreamlands.

The printed name of Dream-Fork is " Forest  Path[if player is df-lethe],  Mid  Morning[else],  The  Crack  Of  Dawn[end if] ".  

The description of Dream-Fork is "[dforkdesc].". To say dforkdesc:
	if player is DF-Lethe, say "The familiar forest path seems as fresh and exciting in the morning light as the first time you saw it. You are beyond excited to carry out the plan: finally getting to explore again in the forbidden parts of the island[unless df_intro is spoken and df-phoebe is idle]! You've stopped (again) in the clearing by the [o]windsigh[x] tree because your sister is complaining about something (again).[paragraph break][else]![paragraph break][end if]The path runs down to the [d]beach[x] or over to the treehouse in the [d]forest[x]";
	otherwise say "You're not really awake yet, the bright morning light stabbing past the leaves of the [o]windsigh[x] and making you even more nervous. You don't usually get up this early, but Laylay was insistent. You've got to convince her this is a bad idea.[paragraph break]The path runs down to the [d]beach[x] or across to the [d]meadow[x], and your treehouse is visible through the trees deeper in the [d]forest[x]".

Dream-Fork-stuff is stuff in Dream-Fork. Understand "path/clearing/treehouse/leaves" as Dream-Fork-stuff when location is Dream-Fork.

DF-Lethe is a dream-lethe in Dream-Fork. "[if df_phoebewins is spoken or df_phoebeloses is spoken or df_lethewins is spoken or df_letheloses is spoken]Your sister has vanished from sight[otherwise][o]Laylay[x] stands near the path down to the beach, with that familiar impatient, bossy look on her face[end if].". The description of DF-Lethe is "[if player is DF-Lethe]Your heart is pounding in your chest. You've been waiting for this ever since you peeked over the rim of the volcano into the black fantasyland inside, like an alien planet waiting for the first explorers to set foot there. Dad thinks it's too dangerous, but you're not a little kid any more, and since mom died he's been too overprotective anyway.[otherwise]Laylay  {(*[d]lethe[x]*)}  never stops to think about what she's doing, never thinks about what dad would feel like if something happened to one of his girls so soon after... after you all came here. She's so irresponsible.". 

DF-Phoebe is a dream-phoebe in Dream-Fork. "[if df_phoebewins is spoken or df_phoebeloses is spoken or df_lethewins is spoken or df_letheloses is spoken]Your sister has vanished from sight[otherwise]Your [o]sister[x] [one of]stops[or]is stopped[stopping] nearby, looking worried[end if].". The description of DF-Phoebe is "[if player is DF-Phoebe]You're still sleepy, annoyed at Laylay for having woken you up so early. And you really don't think running around in a dormant (maybe) volcano is such a good idea.[otherwise]Your sister  {(*[d]phoebe[x]*)}  doesn't like to go exploring half as much as you do, so it's always a chore to get her to come along.".

The df-windsigh is a setpiece in Dream-Fork. Understand "windsigh/tree/tree9" as df-windsigh. The printed name is "windsigh". The description is "[if player is df-lethe]This tree is pretty good for climbing, and there's a good view of the volcano and the beach, but since dad picked the other one to build the treehouse in, you usually do your climbing over there[else]You've never really liked these creepy trees. The noise they make seems to always be trying to get inside your head[end if].". Instead of climbing df-windsigh: say "Not now. You're talking to your sister."

Instead of greeting when location is Dream-Fork: pre-conversation processing; force discuss df_intro.

DF-convo is a thread. The escape clause of DF-convo is df_girl_concludes. Instead of exhausting when last beat is in DF-convo, force discuss df_girl_concludes. Instead of getting bored when last beat is in DF-convo, force discuss df_girl_concludes.

df_ctr is a number that varies. Every turn when location is Dream-Fork and df_intro is unspoken:
	increase df_ctr by 1;
	if df_ctr > 3 and a random chance of 1 in 3 succeeds, say "[if player is DF-Lethe]'Laylay,' your [o]sister[x] says, 'let's [t]talk[x] about this before we do something stupid.'[else]'Hey, are we going to just stand here or [t]talk[x]?' Laylay says.[end if]".

Instead of vague discussing when last beat is in DF-convo: say "[if player is DF-Lethe]'Stop it, Laylay,' she says angrily, 'don't try to change the subject.'[else]'Come on, Phoebe,' she says in annoyance, 'that's not what we're talking about.". Instead of saying farewell to when last beat is in DF-convo: say "Your sister would kill you if you tried to get out of this conversation.".

df_intro is an exciting beat in DF-convo with reaction "[if player is DF-Lethe]Phoebe crosses her arms with that unattractive look she always gets when she's trying to act like the big sister.[paragraph break]'I've already told you, Laylay,' she pouts, 'I just really don't think this is a good [df_idea]. We're just going to make [df_dad] upset again and we promised not to.'[else]'Come on, Phoebe,' your sister whines impatiently. 'We've got to get this [df_idea] finished up early, before [df_dad] wakes up, or it's never going to work.'". df_intro suggests df_intro2.

df_intro2 is a beat in DF-convo with reaction "'I know you love exploring. I do too,' she says (you try not to roll your eyes). 'But dad's right, it's [df_dangerous] over there. We're only twelve years old.' (Okay, that time you actually do roll them). 'We could get hurt or fall into a pit or something. That's why he built the door in the first place, isn't it? Don't you think we should at least try to be good?'". df_intro2 suggests df_girl_concludes. The no-beat of df_intro2 is df_girl_concludes. The yes-beat of df_intro2 is df_phoebeloses. df_intro2 summons df_girl_concludes.

df_girl_waits is a beat in DF-convo with reaction "[if player is DF-Lethe]Your sister waits for a response, crossing her arms haughtily.[otherwise]Laylay glances anxiously in the direction of the beach, then looks back at you impatiently.[end if]". df_girl_waits suggests df_girl_waits2.

df_girl_waits2 is a beat in DF-convo with reaction "[if player is DF-Lethe]Your sister twirls her black hair impatiently, waiting for your response.[otherwise]Laylay taps her foot and folds her arms, glaring at you as she waits for a response.[end if]". df_girl_waits2 suggests df_phoebewins. [BUG]

df_girl_concludes is a repeatable insistent beat in DF-convo with keyword name "no" and reaction "[if player is DF-Lethe][one of]'Look, Laylay,' Phoebe says in her best bossy tone. 'This is all aside the point. You know how messed up [df_dad] is right now just like I do. We're all that's keeping him together. The best thing we can do is just trust that he knows what's best for us. Agree?'[or]'Come on,' she says, 'just answer. We can't let down dad. Do you agree?'[stopping][otherwise][one of]'Look, Phoebe,' your sister says patiently, 'I think dad found something over there in the rain forest. He was acting all secretive last night and you saw how distracted he was. If he's not even going to trust us then we have to find it too. Because we're here too, not just him, and we deserve to know what's going on.' Laylay looks on the verge of crying, fists balled, breathing quickly. 'So are you coming with me?'[or]'Just answer,' Laylay says hotly. 'Are you coming with me?'[stopping][end if]". Instead of saying yes when last beat is df_girl_concludes and player is DF-Lethe, force discuss df_phoebewins. Instead of saying no or saying maybe when last beat is df_girl_concludes and player is DF-Lethe, force discuss df_phoebeloses. Instead of saying yes when last beat is df_girl_concludes and player is DF-Phoebe, force discuss df_lethewins. Instead of saying no or saying maybe when last beat is df_girl_concludes and player is DF-Phoebe, force discuss df_letheloses. df_girl_concludes summons df_phoebewins, df_phoebeloses. df_girl_concludes suggests df_phoebewins.

df_phoebewins is a terminal beat in DF-convo with keyword name "no" and reaction "'I'm going back to the treehouse,' Phoebe says with a tone of superiority. 'You can do whatever you want, but I'm not going to be the one who makes things worse for dad. Maybe you should grow up and learn how to be responsible too.' She turns and leaves.". After discussing df_phoebewins: if player is DF-Lethe, now DF-Phoebe is idle; otherwise now DF-Lethe is idle; post-conversation processing; continue the action.

df_phoebeloses is a terminal beat in DF-convo with keyword name "yes" and reaction "Phoebe folds her arms and sighs, looking at you in that obnoxious way, like she's trying to be mom.[paragraph break]'Okay,' she says finally, 'I did my best. I guess if I can't convince you, I'd better come with you, so if something happens at least one of us might be able to go for help. Come on, let's go.' She heads towards the [d]beach[x], brushing past you as if the whole thing was her idea all along. Sisters.". After discussing df_phoebeloses: now df-phoebe is idle; continue the action.

df_lethewins is a terminal beat in DF-convo with reaction "'Good,' Laylay says, 'then it's decided. We're doing it. Come on.' And she turns and steps lightly down the path toward the bright [d]beach[x] below, leaving you furious but also sure you'll follow her. Moisty hells.". After discussing df_lethewins: now DF-Lethe is idle; continue the action.

df_letheloses is a terminal beat in DF-convo with reaction "'Fine,' Laylay says angrily, 'then I'm going alone. And you can just stay in your stupid treehouse until you're a gray haired old lady and die of boredom after living on this stupid island forever.' And she turns around and stomps off towards the [d]beach[x].". After discussing df_letheloses: now DF-Lethe is idle; continue the action.

Understand "idea" as df_idea when last beat is in DF-convo. df_idea is a repeatable beat in DF-convo with keyword name "idea" and reaction "[if player is DF-Lethe]'Yes, we've been over the plan,' she says in exasperation. 'You put in the [df_combination] and opened the door last night and propped it open with a stick. We sneak past dad's hammock and go through the door and explore the volcano more. I know we can do it, I'm just asking [t]yes[x] or [t]no[x], do you think we should.'[otherwise]'What are you talking about?' Laylay says in an exasperated tone. 'I told you. [df_dad] won't wake up for hours. We just have to sneak past his hammock in the cabin. I already opened the door last night with the [df_combination] while he was out fishing and propped it open with a rock, so it won't make any noise. What's the problem?'[end if]". df_idea suggests df_morals. df_idea summons df_combination, df_something, df_phoebewins. The yes-beat of df_idea is df_something. The no-beat of df_idea is df_phoebewins. df_girl_concludes replaces df_idea. 

Understand "combination" as df_combination when last beat is in DF-convo. df_combination is a beat in DF-convo with keyword name "combination" and reaction "[if player is DF-Lethe]'Don't brag to me about how smart you are,' Phoebe says, tossing her hair. 'I figured it out before you did, remember? You just have to keep your eyes open while walking around this place. [df_dad] didn't make it that hard because he assumed we wouldn't try to disobey him.'[otherwise]'Look,' Laylay says firmly, 'if [df_dad] really didn't want us to figure it out, he would have made it a lot harder. I mean, anyone who keeps their eyes open while walking around the island could figure it out.'". df_combination suggests df_girl_concludes. df_combination cancels df_something, df_phoebewins.

Understand "dad" as df_dad when last beat is in DF-convo. df_dad is a beat in DF-convo with keyword name "Dad" and reaction "[if player is DF-Lethe]'Oh come on, Laylay,' she says, rolling her eyes, 'don't be stupid. We're all that's keeping dad together. If [df_something] happened to one of us, what do you think he'd do?'[otherwise]'[df_dad] can take care of himself,' Laylay says almost angrily, pulling her black hair back from over her eyes. 'And if he, or you think I'm going to be [df_stranded] on a stupid desert island and not even get to do any [df_explore], you're being denser than usual.'". df_dad suggests df_intro2. df_girl_concludes replaces df_dad.

Understand "something" as df_something when last beat is in DF-convo. df_something is an insistent beat in DF-convo with keyword name "[if last beat is df_idea]yes[otherwise]something" and reaction "[if player is DF-Lethe]'Yeah,' Phoebe says angrily, 'anything could happen. You could fall in a chasm, or step on some flimsy lava shelf that's not even supported by anything. You could get burned by steam. Or maybe there's weird wild animals down there, who knows.' She shudders. 'Aren't you scared?'[otherwise]'Oh, don't be a baby,' Laylay says. 'We're not kids any more. We're not going to fall into holes or do anything stupid. We're big enough to take care of ourselves. You're not scared, are you?[end if]". The yes-beat of df_something is df_scared. The maybe-beat of df_something is df_scared. The no-beat of df_something is df_notscared. df_something suggests df_girl_concludes. df_something summons df_scared, df_notscared.

df_notscared is a beat in DF-convo with keyword name "no" and reaction "[if player is df-lethe]'Well, I'm not either,' Phoebe lies. 'But that's no reason to go around doing stupid things and acting on every weird [df_idea] that comes into your head.'[otherwise]'Good,' Laylay says, 'then what's the problem? My [df_idea] is totally foolproof and it's not really even that dangerous, anyway, if you were thinking and not being such a baby about it.'". df_notscared suggests df_girl_concludes.

df_scared is a beat in DF-convo with keyword name "yes" and reaction "[if player is df-lethe]'Well you should be,' Phoebe says haughtily, 'so why don't we forget this whole stupid [df_idea] and try to do something that won't give dad a heart attack for a change?'[otherwise]'Well I wish you wouldn't be such a baby,' Laylay says, without a hint of sympathy. 'My [df_idea] isn't all that dangerous anyway. You're acting like an *eight* year old.'[end if]". df_scared suggests df_girl_concludes.

Understand "stranded" as df_stranded when last beat is in DF-convo. df_stranded is a beat in DF-convo with keyword name "stranded" and reaction "[if player is DF-Lethe]'We're not stranded,' Phoebe says angrily, pushing a lock of black hair behind her ear. 'Dad can take us somewhere else with his [df_magic] whenever we want, the same way we came here in the first place.'[otherwise]'Stranded,' Laylay says again firmly. 'Why else would he build a house here if he didn't think we were going to stay here a long time?' She stands a little taller, but her lip quivers. 'I think his [df_magic]'s gone,' she says. 'I think he doesn't know how to use it any more, or something. We're not going anywhere, so we might as well get to know this place.'". df_stranded suggests df_girl_concludes. 

Understand "magic/magics" as df_magic when last beat is in DF-convo. df_magic is a beat in DF-convo with keyword name "magic" and reaction "[if player is DF-Lethe]'Yeah,' she says, 'all he has to do is sculpt something from somewhere else and as long as we're both holding on to him real tight, we'll go there with him, because we're his children. He told us.'[otherwise]'We only know what he says,' Laylay responds skeptically. 'That he can sculpt something from another world and then be there, and us too if we hold on to him real tight when he does it. But we only ever saw him do that the time we came here, and he never mentioned it before mom died. How do we know he can do it again?'". df_magic suggests df_girl_concludes.

Understand "exploring" as df_explore when last beat is in DF-convo. df_explore is a beat in DF-convo with keyword name "exploring" and reaction "'We've explored every inch of this side,' Laylay reiterates, tossing her hair. 'The marsh, the lagoon, the forest, everything. But dad's never even let us go into the crack and the volcano, or set foot on the other side, like [df_something] terrible would happen to us if we did. It's not fair. We're old enough to explore, and if he can't see that, then we'll have to show him. I'd rather get in trouble than die of boredom.'". df_explore suggests df_girl_concludes. 

df_plan is a beat in DF-convo with reaction "[if player is DF-Phoebe][otherwise]". df_plan suggests df_girl_waits. df_plan summons df_dad. [BUG]

Understand "dangerous" as df_dangerous when last beat is in DF-convo. df_dangerous is a beat in DF-convo with keyword name "dangerous" and reaction "'Well, obviously,' she says, rolling her eyes. 'A volcano's not exactly the safest place in the world, is it? And [df_dad] says there's some sort of wild animals in the rain forest. Your [df_idea] doesn't really seem like a nice flowery picnic to me.'". df_dangerous suggests df_girl_concludes. 

df_morals is a beat in DF-convo with keyword name "morals" and reaction "'Look,' your sister says in exasperation. 'I know we can do it. I'm just saying I don't think we should. [df_dad]'s been through enough lately, right? Don't you think we should try to be good?'". df_morals suggests df_girl_concludes. 

f-lethe-trigger is a person-trigger in Dream-Fork with target DF-Lethe. Understand "lethe" as f-lethe-trigger when location is Dream-Fork. Before examining f-lethe-trigger: if dreams are being debugged, say "// Dreams: adjusting conversation for being Lethe."; now df_intro suggests df_intro2;  now df_idea suggests df_morals; now df_dad suggests df_intro2; now df_girl_concludes suggests df_phoebewins; if DF-Lethe is attentive, now DF-Phoebe is attentive; continue the action. Before examining f-lethe-trigger when DF-Lethe is idle and df_intro is spoken: say "    {(*Phoebe*)(*your sister Lethe*)}|[line break]    {(*too far*)}[paragraph break]" instead.

f-phoebe-trigger is a person-trigger in Dream-Fork with target DF-Phoebe. Understand "phoebe" as f-phoebe-trigger when location is Dream-Fork. Before examining f-phoebe-trigger: if dreams are being debugged, say "// Dreams: adjusting conversation for being Phoebe."; now df_intro suggests df_idea; now df_intro2 suggests df_dad; now df_dad suggests df_explore; now df_idea suggests df_explore; now df_girl_concludes suggests df_lethewins; if DF-Phoebe is attentive, now DF-Lethe is attentive; continue the action. Before examining f-phoebe-trigger when DF-Phoebe is idle and df_intro is spoken: say "    {(*Lethe*)(*your sister Phoebe*)}|[line break]    {(*too far*)}[paragraph break]" instead.

[Fake-beach is down from Dreak-Fork. Understand "beach" as fake-beach when location is Dream-Fork. Fake-meadow is east of Dream-Fork. Understand "meadow" as Fake-meadow when location is Dream-Fork. Fake-forest is south of Dream-Fork. Understand "forest" as fake-forest when location is Dream-Fork.]

Understand "beach/patch" as down when location is Dream-Fork. Understand "meadow/forest/treehouse" as east when location is Dream-Fork.

[NOTE: The following instead rules need to be in the order listed to function correctly.]

First Instead of going down when player is df-lethe: say "You turn back towards the lagoon, bright and blue in the early morning light[if df_lethewins is spoken or df_phoebeloses is spoken], following Phoebe eagerly[end if]...[paragraph break]{(*you*)}[line break][end-flashback]". First Instead of going down when player is df-phoebe: say "You walk off down towards the beach, following Laylay after all...[line break]{(*you*)}[line break][end-flashback]". First Instead of going down when player is df-lethe and ( df_intro is unspoken or df-phoebe is attentive ) : say "You suppose you'd better find out what Phoebe wants, first. You'll need her help to make this plan work.". 

First Instead of going east when player is df-phoebe: say "You walk off away from the beach, imagining Laylay waiting in disappointment on the beach below, going back to safer places...[line break]{(*back*)}[line break][end-flashback]". First Instead of going east when player is df-lethe: say "No; you need to get to the cabin down on the beach if you're going to explore.". 

First Instead of going when player is df-phoebe and ( df_intro is unspoken or df-lethe is attentive ) : say "You should finish talking to Laylay first. You've got to convince her this is a dumb idea.".



 

First instead of hugging when player is df-phoebe or player is df-lethe  (this is the reject sisterly affection2 rule): if noun is a person-trigger or noun is a dream-lethe or noun is a dream-phoebe, say "You're way too mad at her for that." instead. The reject sisterly affection2 rule is listed first in the Check rules. 


Instead of greeting df-lethe when df-lethe is idle and df_intro is spoken: say "[dfnotalk]". Instead of greeting df-phoebe when df-phoebe is idle and df_intro is spoken: say "[dfnotalk]". To say dfnotalk: say "You've said all you want to say to her right now.".

Instead of following f-phoebe-trigger when df-phoebe is attentive or following f-lethe-trigger when df-lethe is attentive or following df-lethe when df-lethe is attentive or following df-phoebe when df-phoebe is attentive: try going down.

Instead of following when location is Dream-Fork (this is the redirect df follow rule): if df_phoebewins is spoken, try going east instead; otherwise try going down instead.  The redirect df follow rule is listed before the person triggers are weird rule in the Instead rules.

First Check exiting when location is Dream-Fork (this is the exit from dream fork rule): try going down instead. [The exit from dream fork rule is listed before the guessing which way is out rule in the Check rules.]

Chapter - Big Tree Flashback


Dream-BigTree is a flashback-room in Dreamlands. 

The printed name of Dream-BigTree is " [if player is DB-Progue]Big  Tree,  In  The  Branches[otherwise]Underneath  The  Big  Tree[end if] ".

The description of Dream-BigTree is "[dbigtreedesc]". To say dbigtreedesc:
	if player is DB-Progue begin; say "The hammer in your hand sends jolts up your arm as you pound the next board carefully into place. The [o]treehouse[x] is slowly taking shape around you, and not even an afternoon rain shower will keep you from finishing it. [one of]A place for the girls to come for a span, when they need time alone. Or you do.[paragraph break][or][stopping]Around you, water drips down from leaves, the remnants of the rain shower, and wet breezes rustle the yellow leaves of the [o]windsigh[x], harmonic tones singing something strange, and so much the pleasant[one of]. No, this [o]island[x] is not what you trickling expected. But mayhaps you and the couplets can find healing here.[run paragraph on][stopping]"; end if;
	if player is DB-Phoebe, say "You are lost in thought, lying on your back on a carpet of wet leaves, watching hundreds of water droplets fall from them towards and around you, imagining you are floating through space, some infinite lemon-yellow space. You are not thinking about mother, for a change, or about your friends and house and school that you'll never see again. It's just that lying in this spot, letting your mind wander, you find a strange sensation sometimes creeps over you. Like someone trying very hard to speak to you, only they don't know how to talk.[run paragraph on]";
	if player is DB-Lethe, say "Your sister doesn't want to do anything, and you're getting bored, watching the rain spiral down the windsigh as you try to decide what to do next. You can't really go exploring without Phoebe, and dad won't let you go swimming alone either, and it's too rainy to go [down] to the beach. You hate this place sometimes. You wish mom were here.[run paragraph on]". 

Dream-BigTree-stuff is stuff in Dream-Fork. Understand "hammer/board/water/leaves/curtains" as Dream-BigTree-stuff when location is Dream-BigTree.

 First instead of going nowhere when location is Dream-BigTree and player is DB-Progue: say "You'd have to get [down] from the tree first.". First instead of exiting when location is Dream-BigTree: try going down.

First instead of going down when location is Dream-BigTree and player is DB-Progue: say "[one of]You hesitate. For a ment, here in swaying branches and sighing trees and gent as gentle ocean breezes peeking through the forest, you're almost happy. It could last forever, languid, timeless, but fragile; the slightest twist will shatter it.[or]You set down your hammer and climb quick down from the tree. The couplets look up silently as you approach, their smiles vanishing, and your idyll is gone.[paragraph break]You're the one who brought them here. You're responsible.[paragraph break]'Come on, angels,' you say, trying to keep your tone cheerful, 'let's go see if we can catch some dinner.'[paragraph break]{(*mind*)}[line break][end-flashback][stopping]".

First instead of going up when location is Dream-BigTree and player is not DB-Progue: say "The spiral-wrapped vines create channels for rainwater to drizzle down the tree, making the vines wet and slick. You kind of think it would be fun to make some dam high in the branches, letting the vines dry out and making the tree easier to climb, but daddy...".

First instead of going down when location is Dream-BigTree and player is not DB-Progue: if player is DB-Phoebe begin; say "[one of]You want to, but for a minute longer you stay nestled in the roots, letting the feeling of comfort and safety surround you.[or]You get up, brushing the soil and leaves off your clothes, and look down at Laylay skeptically.[paragraph break]'Well? Are you coming down?'[line break]{(*down*)}[line break][end-flashback][stopping]"; otherwise if player is DB-Lethe; say "[one of]Yeah, you guess you might as well. But now you've gotten lazy, and it'll take you a minute or two to work up the energy.[or]You jump to your feet, unable to bear the boredom any longer.[paragraph break]'I'm going to go look at the tide pools,' you say boldly to your sister. 'Are you coming down?'[paragraph break]Phoebe opens one baleful eye at you, but then gets to her feet.[paragraph break]{(*down*)}[line break][end-flashback][stopping]"; end if.

DB-Progue is a dream-progue in Dream-BigTree. The description is "[if player is DB-Phoebe]He tries so hard to pretend to be happy. He fools Laylay, of course, but you know he really misses mom. You watched him  {(*[d]progue[x]*)}  cry last night, wading out in the surf, letting the sound of the waves mask his sobs. It scares you. He scares you now.[otherwise if player is DB-Progue]Are you still whole, gander? Or have you burst, all those memories spilling out in fractured pieces? Are you still awake, or has everything since then been scattered dreaming? You can't tell. You can't tell. The hammer, rough wood callousing your palms, seems realer than the universe.[otherwise]Your daddy  {(*[d]progue[x]*)}  tries so hard to make you and Phoebe feel loved, but you know something you will never tell either of them. He loved mom more than either of you, and always will.[end if]".

Instead of attacking anything when player is DB-Progue, say "Yes, some spans you lash out, destroy things. You always have. But in front of the girls you must keep control of yourself, act like a father.". 

Check hugging when we are hugging and ( player is db-phoebe or player is db-lethe ) (this is the reject sisterly affection rule): if noun is a person-trigger or noun is a dream-lethe or noun is a dream-phoebe, say "Yuck." instead. The reject sisterly affection rule is listed first in the Check rules. Instead of kissing db-phoebe when player is db-lethe: try hugging db-phoebe. Instead of kissing db-lethe when player is db-phoebe: try hugging db-lethe. Instead of kissing bt-lethe-trigger when player is db-phoebe: try hugging db-lethe. Instead of kissing bt-phoebe-trigger when player is db-lethe: try hugging db-phoebe.

The dream-treehouse is a setpiece in Dream-BigTree. Understand "treehouse/board" as dream-treehouse. The printed name is "treehouse." The description is "[if player is DB-Phoebe]During the day dad keeps busy with all his projects-- first the cabin, then making paints for you and Laylay, now this stupid treehouse. You wonder when he'll use his magic again. You want to go somewhere new. Somewhere else.[otherwise if player is DB-Progue]You have always thought and membered with your hands. In the past few weeks it is as if you've been trying to drown out all other thoughts: first the cabin, then the safety door, now this treehouse. And you have. Drowned them out. So far.[otherwise]Dad's building pretty quick, but you're still impatient. You've already decided it will be an important forest outpost, and you'll have to stand guard keeping a watch out for the angry volcano people if they decide to invade.[end if]".

A dream-hammer is held by DB-Progue. The printed name is "crude hammer". Understand "crude/hammer" as dream-hammer when location is Dream-BigTree. The description is "A crude thing, more a mallet than a hammer, cobbled together from local materials. You'll make a more precise instrument later, maybe, when the time comes to leave this [o]island[x].". Instead of dropping dream-hammer: say "No. You must keep working, keep your hands busy, or you might start to remember. To grieve. To cry.". Instead of using dream-hammer, say "You hammer another board into place, easing the carefully shaped wooden notches together and forcing them into place in an interlocking pattern.". Understand "build [dream-treehouse]" or "construct [dream-treehouse]" or "make [dream-treehouse]" as using. Instead of using dream-treehouse, try using dream-hammer.

dream-lacuna is a setpiece in Dream-BigTree. Understand "island" as dream-lacuna when location is Dream-BigTree. The printed name is "the island". The description is "Gushing strange how your magic works, and cruel. At the end of that black week when you lost Rengin, you gathered and gathered your tools and girls and began to sculpt, wishing only to find a place your family would be needed, wanted, somewhere you wouldn't be powerless as you watched the one you love slowly die. The image of the [o]windsigh[x] came to mind something shocking, clear, and you sculpted as quick as quick and quick while the couplets watched, wide-eyed and silent.[paragraph break]But there is no one here. No one who needs you. No community to join. Just a deserted island. Empty and alone.".

dream-windsigh is a setpiece in Dream-BigTree. Understand "windsigh/tree9" as dream-windsigh when location is Dream-BigTree. The printed name is "windsigh". The description is "It's a good tree for a treehouse.". Instead of climbing dream-windsigh, try going up.

Understand "girls/daughters" as D1-both-girls when location is Dream-BigTree. D1-both-girls is a setpiece in Dream-BigTree. The description is "Your daughters are on the ground beneath you, playing quietly near the writhing roots of the windsigh. You wish you could hear them laugh again, like they used to before you came here.

Phoebe   {(*[d]phoebe[x]*)}   and Lethe   {(*[d]lethe[x]*)}  -- your beautiful girls. And now when you look all you see is their mother.". Instead of hugging or kissing D1-both-girls, try hugging db-lethe.

First Instead of greeting or hugging or kissing when player is DB-Progue: say "It seems like you never know what to say to them, any more.". Instead of greeting DB-Progue when location is Dream-BigTree and player is not DB-Progue: try going up. Instead of greeting DB-Lethe when player is DB-Phoebe: say "You don't really feel like talking right now.". Instead of greeting DB-Phoebe when player is DB-Lethe: say "You think about trying to convince Phoebe to go exploring again, but keep your mouth shut.".

DB-Phoebe is a dream-phoebe in Dream-BigTree. The description of DB-Phoebe is "[if player is DB-Lethe]You have given up trying to get Phoebe  {(*[d]phoebe[x]*)}  to go frog hunting with you in the marsh today. Who cares about getting dirty when there's no one around to see, anyway?[otherwise]You feel strange lately, though it's not just the funny feeling under the tree, or because mom died, or because dad took you to this empty island. It feels like something is starting to wake up inside you, or maybe grow up, that all the strange changes in your life are somehow triggering another, more important change, some power or unnamed creature you'll wake up one day and possess or become.[paragraph break]You really have to stop lying under this tree. It's making you weird.[end if]". Instead of examining db-phoebe when player is db-progue, try examining D1-both-girls.

Instead of attacking DB-Lethe when player is DB-Phoebe: say "[girlsfight]". Instead of attacking DB-Phoebe when player is DB-Lethe: say "[girlsfight]". To say girlsfight: say "You give your sister a quick jab to the arm.[paragraph break]'Stop it,' she says, 'I'll tell dad.' But you know she won't. Both of you know not to fight in front of dad any more. Neither of you want to see him cry again.". Instead of pushing someone (called bullee) when location is regionally in Dreamlands, try attacking bullee.

DB-Lethe is a dream-lethe in Dream-BigTree. The description is "[if player is DB-Phoebe]Laylay is the same age as you, but it's never felt like it. She is so fanciful, so immature. It's why she always wanted a nickname and you never did. Phoebe is a perfectly good name, and so is Lethe   {(*[d]lethe[x]*)}   , though you'd never know it from talking to her.[otherwise if player is DB-Lethe]Though of course you've been sad since mother died, you think you're the only one who actually likes it here. It's your own private island to explore and adventure in. You just wish dad wouldn't be so overprotective. You're old enough not to fall into any chasms or steam vents without having to have some stupid door to protect you.[paragraph break]Although you know how to get through the door anyway.[end if]". Instead of examining db-lethe when player is db-progue, try examining D1-both-girls.


Rule for writing a paragraph about DB-Lethe: say "[if player is DB-Progue]The [o]girls[x] are playing some game down on the ground, dimly visible through the branches and yellow leaves.[otherwise][o]Dad[x] is up in the tree working on the stupid treehouse, and your [o]sister[x] fidgets restlessly near the path [down] to the beach.[paragraph break]Lying abandoned on its side near the base of the tree is the old teaching [o]head[x].[end if]"; now DB-Phoebe is mentioned; now DB-Progue is mentioned.

The dream-head is an undescribed thing in Dream-BigTree. The printed name is "teaching head". Understand "teaching/clockwork/head/eye/eyes/mouth" as dream-head. The description is "[if player is DB-Phoebe]Dad keeps telling you to take better care of it. It's one of the few things that came with you when you came here, since dad made it, you guess. You and Laylay both learned your letters years ago, so it doesn't get much use any more.[otherwise if player is DB-Lethe]Dad keeps telling you to take better care of it. It's one of the few things that came with you when you came here, since dad made it, you guess.[otherwise]Oh, the girls probably have it somewhere, you expect.". Understand "play with [something]" as using when location is Dream-BigTree. Report taking dream-head: say "You pick it up idly, bored, running your fingers along its eyes, its ears." instead.

The dream-ear is part of dream-head. Understand "ear/ears/right/key/hleft/hright" as dream-ear. The printed name is "ear". The description is "The ears look exactly like a person's, except made from wood. You suppose it's impressive, but you've been around your dad's sculptures all your life, so it's hard to work up much enthusiasm.". Instead of taking or attacking or pulling or pushing or turning dream-ear, try attacking dream-head. Instead of attacking the dream-head: say "[one of]In a sudden moment of anger, you grab the wooden head, twist an ear off till it yanks free from its socket, and hurl it into the trees towards the drop-off into the sea. Laylay's eyes open wide in shock, but you know she won't tell.[paragraph break]And you know, too, that dad will never notice. Maybe you were secretly hoping to get his attention. But you're finding more and more that you've forgotten how, or maybe he's forgotten how to give it[or]You've lost all interest in the stupid old head[stopping]."; remove dream-ear from play. [Instead of turning or pushing dream-ear: say "You're not in the mood to play with the old head right now.".] Instead of headsetting when location is Dream-BigTree: try attacking dream-ear. Instead of setting dream-ear to anything: try attacking dream-ear. Check headsetting when location is Dream-BigTree: try attacking dream-ear instead.

Rule for writing a paragraph about DB-Phoebe: say "[if player is DB-Lethe][o]Dad[x] is up in the branches above, still working on your treehouse, and your [o]sister[x] is lying on the ground nearby, pretending to ignore you.[end if]"; now DB-Progue is mentioned.



bt-lethe-trigger is a person-trigger in Dream-BigTree with target DB-Lethe. Understand "lethe" as bt-lethe-trigger when location is Dream-BigTree.

bt-phoebe-trigger is a person-trigger in Dream-BigTree with target DB-Phoebe. Understand "phoebe" as bt-phoebe-trigger when location is Dream-BigTree. 

bt-progue-trigger is a person-trigger in Dream-BigTree with target DB-Progue. Understand "progue" as bt-Progue-trigger when location is Dream-BigTree. 


Chapter - Rockslide Flashback

[ Progue yells at the trees, saying he won't do it, he won't choose, and vows never to come back. The girls watch, but they are too far away to jump to. Progue sees them and yells at them.]
[puzzles: any but mysterious door.
Getting to lawn / Powering Both: Progue thinks about cutting off power to pyramid, or reducing power in the system, mentions numbers.
Finding the Egg: Progue wishes he'd never found the egg, never followed the bees.
Opening the Pyramid: Progue thinks about locking off the pyramid, preventing anyone from getting in.
Contacting All: Progue angrily rattles through a list of trees on the island, thinking about burning them.
]

[the ridiculousness of it... you're yelling at them as if they can hear you, but they can only hear you through your own ears...]

[To setup Dream-Rockslide-hints: 
	let active puzzle be preeminent puzzle;
	if active puzzle is Getting-To-The-Lawn or active puzzle is Powering-Both-Devices begin;
		now dr-idea is 1;
	otherwise if active puzzle is Finding-The-Egg;
		now dr-idea is 2;
	otherwise if active puzzle is Opening-The-Pyramid;
		now dr-idea is 3;
	otherwise if active puzzle is Contacting-All-The-Trees;
		now dr-idea is 4;
	end if.]

dr-idea is a number that varies.

Instead of sleeping when location is Dream-Rockslide: say "Not here. First you must climb [down]...".

Dream-Rockslide is a flashback-room in Dreamlands. The printed name is " Boulder  Pile ". The description of Dream-Rockslide is "[one of]You navigate the boulder field reckless, jumping from loose to loose rock until finally one shifts under your foot and you stumble, cracking your chin against a corner of rock. You collapse, panting, your hands gripping grass, and finally look up to see you are at the base of a windsigh. Of course.[or]Moss and tufts of grass cling to patches of dirt on the boulder field. The rain forest, its interior only a haze of shadows and bird cries from here, stretches across this side of the island.[stopping]".

Dream-Rockslide-stuff is stuff in Dream-Rockslide. Understand "boulder/field/rock/corner/base/tufts/patches/dirt/rain/forest/interior/haze/shadows/bird" as Dream-Rockslide-stuff when location is Dream-Rockslide.

A dr-windsigh is a described setpiece in Dream-Rockslide. Understand "tree9/tree/windsigh" as dr-windsigh when location is Dream-Rockslide. The printed name is "windsigh". Rule for writing a paragraph about dr-windsigh: say "The [o]windsigh[x] towers over you, drinking in the morning light (is it morning?) while around you, the only way to go is [down][if dr-ctr > 4]. By the chasm somewhere, one of your [o]girls[x] is hiding[end if].". The description of dr-windsigh is "You look up at its vine-wrapped trunk, its punctured branches, its quivering yellow leaves, and suddenly imagine [o]them[x] looking through your eyes, hearing these thoughts, remembering them years later, sharing them with others...[paragraph break]'Leave me alone!' you shout, pounding fists in frustration at the hard roots clutching the rocks, and realize even as you do the ridiculous irony. You're yelling as if they can hear, but they only hear with your ears, only know you exist because of your own thoughts...". After examining dr-windsigh: have the parser notice dr-presences. Instead of attacking a dr-windsigh: say "You beat your fists weakly against the trunk of the tree, the vines absorbing the blows with a strange fleshy thud, but there is no strength left in you. You feel like a week of sleep, a month, a year.". Instead of climbing dr-windsigh, say "You can barely move, let alone climb trees.".

The dr-rockslide is a setpiece in Dream-Rockslide. Understand "rock/rocks/rockslide" as dr-rockslide. The printed name is "rockslide". Instead of entering or climbing dr-rockslide, try going down. The description is "You have no memory of climbing up here.".

Some dr-presences are a setpiece in Dream-Rockslide. Understand "them/they" as dr-presences when location is Dream-Rockslide. The printed name is "them". The description is "How strange that you did not hear them speaking to you for so long, how strange you did not recognize the strangeness of your behavior, your obsession. How did you believe so in the power of your own ingenuity, cleverness, creativity, that all those little puzzles and problems in repairing the seiver could all have been discovered by you?".

dr-ctr is a number that varies. Every turn when location is Dream-Rockslide: increase dr-ctr by 1.

spying-lethe is an undescribed woman. Every turn when location is Dream-Rockslide and spying-lethe is off-stage and dr-ctr is 4: move spying-lethe to location; say "Out of the corner of your eye, down by the bridge across the chasm, you spot a furtive [o]motion[x].". Understand "girl/girls/daughter/motion" as spying-lethe. The printed name of spying-lethe is "your daughter Lethe". The description is "[one of]Whirling to look, you just catch sight of a raven-black head of hair, ducking behind the lip of the chasm. One of the girls  {(*[d]lethe[x]*)}  . How did they get into the chasm?[or]A sudden anger rises in you, a fury. They've been disobeying you this whole time. You told them the volcano and the forest were dangerous, even before you knew the real danger, and they ignored you. You were so careful to protect them, to build the door, the bridge, and they flaunted your hard work. How dare they? After all you've been through, how can they do this to you?[paragraph break]'Dad,' you hear a small voice call out-- Lethe's, you think, or is it Phoebe's?-- 'Dad, what's [t]wrong[x]? Did you finish the [t]project[x]? What happened?'[paragraph break]Questions, questions, you can't answer any more questions. Why do they keep asking, what do they want?[or][trygreetingspyinglethe][stopping]". Instead of hugging or kissing spying-lethe: say "Oh you want to, you want to gather both your daughters in your arms like when they were girls, and Rengin beside you, laughing, but they're too old now, they don't want your hugs, they haven't let you hug them since you took them here, and why did you? Why did you bring them to this empty place, because you thought it wouldn't be empty, and it wasn't, it wasn't... oh Phoebe, Lethe, your girls, how can they ever forgive you?". Instead of greeting spying-lethe: say "What can you say? You can't think of how to say, what to speak. What does a father say when he's been a miserable father? What do children say when their parents have abandoned them? What is there to say, to do? How can you begin?". To say trygreetingspyinglethe: try greeting spying-lethe.

fake-lethe-trigger is an undescribed thing in Dream-Rockslide. Understand "lethe" as fake-lethe-trigger when location is Dream-Rockslide. The description is "    {(*Progue*)(*your daughter Lethe*)}|[line break]    {(*too far*)}". After examining fake-lethe-trigger: try examining spying-lethe. First Instead of hugging or kissing fake-lethe-trigger: try hugging spying-lethe. Instead of greeting fake-lethe-trigger: try greeting spying-lethe.

dr-wrong is a setpiece in Dream-Rockslide. Understand "wrong" as dr-wrong when location is Dream-Rockslide. The description is "What's wrong. What's wrong?[paragraph break]What a question. What a trick. How could they? Could they ask... what, in your condition. To decide? How are you meant... supposed to... and what can you say, tell the girls? How to explain? No, no you can't explain... there's nothing you... nothing you can...". After examining dr-project: say "[lethe-responds]".

dr-project is a setpiece in Dream-Rockslide. Understand "project" as dr-project when location is Dream-Rockslide. The description is "The project. Yes, the project. First the seiver in the forest, then the boiler, endless bamboo, hollowing quartz tubes, the ropeway, the ropeway till your fingers bled weaving fibers, the terrifying climb up the mountain with all that weight threatening to pull you backwards and down... the mountaintop, digging, burying, tuning, cursing, never sleeping, never trying...". After examining dr-project: say "[lethe-responds]".

To say lethe-responds: say "[one of]'Dad?' the voice calls again, so sad, so wanting your help, and why won't she stop bothering you? Why do they all want your help? Why does everyone want your help when you can help no one, no one, no one, no one...[or]She's stopped, oh, she's stopped. You can't bear any more responsibility. Rengin was always the responsible one and where is she? Dead in another universe and she can never help you again. Dead and gone and alone. Oh, Rengin...[stopping]".

DR-Progue is a dream-progue in Dream-Rockslide. Understand "progue" as dr-progue when location is Dream-Rockslide. The printed name is "Progue". The description is "You have lost a frightening amount of weight in the past weeks and months, you realize as you look down at your bony form, and when you saw your reflection in the tide pools catching mussels earlier today you saw your beard hairs have begun to go white. What is happening to you?".


Understand "chasm/edge/chute/pond" as down when location is Dream-Rockslide.

First Instead of going down when location is Dream-Rockslide: say "[one of]Your head spins. The rockslide suddenly seems dangerous, precarious, impossibly high. How will you get down?[or]Carefully, you lower yourself down the gauntlet of boulders, all dangerously balanced against each other, waiting for the slightest touch to send them all spiraling down to crush anything in their way between and underneath them into nothingness. The girls, maybe you should punish them for disobeying you, or maybe they should punish you for disobeying them or disobey you for punishing them.... all you can think of now is sleep...[paragraph break]{(*sleep*)}[line break][end-flashback][stopping]".



Chapter - Cinder Cone Flashback

[Progue is working feverishly on egg machinery while the girls, hungry and fearful, watch.
puzzles: any but mysterious door.
lethe has chotchkie.
]

Dream-CinderCone is a flashback-room in Dreamlands. The printed name is " Inside  Caldera,  At  The  [if player is DC-Progue]Collapse[otherwise]Cinder  Cone[end if] ". 

[To setup Dream-CinderCone-hints:
	let loc be Dream-CinderCone;
	let active puzzle be preeminent puzzle;
	if active puzzle is Getting-To-The-Lawn begin;
		do nothing;
	otherwise if active puzzle is Finding-The-Egg and dream-bee is off-stage;
		now dream-chotchkie is dream-bee;
		move dream-chotchkie to DC-Lethe;
	otherwise if active puzzle is Powering-Both-Devices and dream-rain-rock is off-stage;
		now dream-chotchkie is dream-rain-rock;
		move dream-rain to loc;
		move dream-chotchkie to loc;
	otherwise if active puzzle is Opening-The-Pyramid;
[		now dream-chotchkie is dream-konokuk;
		move dream-chotchkie to DB-Lethe;]
	otherwise if active puzzle is Contacting-All-The-Trees;
[		now dream-chotchkie is dream-dirt-map;
		move dream-chotchkie to loc;]
	end if.]

The description of Dream-CinderCone is "[dreamcinderconedesc]". To say dreamcinderconedesc:
	if player is DC-Progue begin; say "Steam scalds your hand, sleep claws at your eyes, but you feel more awake and alive than you have in months.[paragraph break]Before you is the crystal [o]egg[x], the beautiful piece of alien technology you rescued from the crash, and surrounding it are your experimental attempts to activate it. The [o]boiler[x] nearby funnels the steam power of the volcano into the device, which glows dimly, though you're still not sure quite what it does.[run paragraph on]";
	otherwise if player is DC-Phoebe; say "The vines of the windsigh on the cinder cone, where you and your sister have crept to spy on dad, feel tingly and warm under your hands, while the rest of your flesh rises in goosebumps. It's not that it's cold, even though it's long after sunset. It's what dad is doing. It's that he hasn't slept in days. It's that he seems to have forgotten all about his children.[run paragraph on]";
	otherwise if player is DC-Lethe; say "Your head spins. Maybe it's [if dc-lethe is unfed]because you're so hungry, or maybe it's from being up so late. Or from [end if]the weird shadows the moonlight makes on the black lava. Exploring down here was a lot more fun when you were scared of getting caught. Now you almost wish you would be.[run paragraph on]";
	end if.

Dream-CinderCone-stuff is stuff in Dream-CinderCone. Understand "steam/experimental/attempts/volcano/vines/goosebumps/shadows/moonlight/lava" as Dream-CinderCone-stuff when location is Dream-CinderCone.



The d-crystal is a setpiece in Dream-CinderCone. The printed name is "crystalline egg". Understand "crystal/crystalline/egg/technology" as d-crystal when location is Dream-CinderCone. The description of d-crystal is "[if player is dc-progue]The beautiful crystal egg is attached to a nest of wires and cables as you attempt to troubleshoot it.[paragraph break][egg-details].[otherwise]You haven't been able to see it up close. It looks very pretty, but you have no idea what it could be.". To say egg-details: say "[if the number of plugged on-stage d-wires > 0]Running out of the serial interface [is-are] [the list of plugged on-stage d-wires][otherwise]The serial interface of the egg is momentarily unattached[end if]. [if the number of unplugged on-stage d-wires > 0]You hold [a list of unplugged on-stage d-wires] in your hand[otherwise]Your hands are momentarily empty[end if].[paragraph break]The steam outflow gauge reads [38 - crys-power]. The egg [eggglow]". Instead of taking d-crystal: say "[if player is dc-progue]It's heavy, and connected to a rat's nest of cables and machinery right now at any rate.[otherwise]It's too far away.[end if]". Check attacking d-crystal: say "What, smash the most exciting thing you've ever seen in your life? Advanced technology from some other world, a mystery, your mystery? Gushing unlikely." instead.

To say eggglow:
	let temp be correct crystal power - crys-power; 
	if temp < 0, now temp is temp * -1;
	if temp < 5 begin; say "glows intensely bright";
	otherwise if temp < 10; say "glows moderately bright";
	otherwise if temp < 15; say "glows slightly bright";
	otherwise if temp < 20; say "glows dimly";
	otherwise if temp < 25; say "glows almost imperceptibly";
	otherwise; say "is dark";
	end if.

The serial interface is part of d-crystal. The description is "This is one of over a dozen input/output points along the fractal surface of the egg, and seems to be some sort of power regulator designed to deliver the correct amount of power to the circuitry inside.".

The dream-gauge is part of d-crystal. Understand "steam/outflow/gauge" as dream-gauge when location is Dream-CinderCone. The printed name is "outflow gauge". The description is "You quickly rigged this up by hollowing out a piece of quartz and attaching it to the main steam pipe running into the power regulator. The ferocity of boiling water trapped inside gives you a rough idea the amount of energy being transfered to the egg.".

A d-wire is a kind of thing. A d-wire is always undescribed. A d-wire has a number called strength. A d-wire is either plugged or unplugged. A d-wire is usually unplugged. A d-wire has some text called key-name. Rule for printing the name of a d-wire (called dw): say key-name of dw. Instead of taking a plugged d-wire (called dw): try examining dw. Instead of taking an unplugged d-wire: say "You're already holding it." Understand "plug [a d-wire] in/into/to [d-crystal]" or "plug [a d-wire]" or "plug in [a d-wire]" as a mistake ("[tryexaminingdwire"). To say tryexaminingdwire: try examining noun. Instead of inserting a d-wire (called dw) into something, try examining dw. Instead of tying a d-wire to something: try examining noun.

d-wire-ctr is a number that varies.

Instead of examining a d-wire (called wr):
	increase d-wire-ctr by 1;
	if wr is plugged begin;
		now wr is unplugged;
		say "You unplug [the wr] from the egg.";
	otherwise;
		now wr is plugged;
		say "You plug [the wr] into the egg.";
	end if;
	unless crys-power is correct crystal power begin;
		if d-wire-ctr > 26 and thick cable is on-stage begin;
			say "[line break]You're sure now the thick cable isn't needed either. You rip it out too and discard it.";
			remove thick cable from play;
		otherwise if d-wire-ctr > 13 and sticky wire is on-stage;
			say "[line break]You're sure the sticky wire is redundant. Impatiently, you rip is out and toss it aside.";
			remove sticky wire from play;
		end if;
	end unless;
	if crys-power is correct crystal power, say "[line break]With a sudden surge, something inside the egg flares into life and begins to rotate. A beam of light flares from the top of the egg, shooting up into the sky...But suddenly everything dies down again.[paragraph break]You slam your hands onto the top of the boiler in frustration. What did you do wrong? Everything was calibrated, the power was finally right, and then... you stare up into the tendrils of steam whirling up into the night sky above you, obscuring the stars. A thought trickles into your mind...[paragraph break]Obscuring the stars. That's it. You've had a gut feeling the egg is designed to send or receive some sort of signal, ever since you laid eyes on it. Here in the volcano, there are too many fumes and too much obscuring mist for it to get a good signal. But the island is plagued with that: morning fog, afternoon rain showers, steam vents...[paragraph break]Your hand reaches for your sketchbook almost unconsciously. You'll have to somehow find a way to get the egg and all this machinery up to the top of the mountain, high above the haze and with a clear line of sight to any point on the horizon. You'll have to get the power up there, and the heavy materials. You start to sketch, frantically, blinking away sleepy crumbs in the corners of your eyes. This is too important to wait until morning. Too important...[paragraph break]{(*important*)}[end-flashback]";
	otherwise say "[line break][egg-details].".

Correct crystal power is a number that varies. Correct crystal power is 22. [Because that's how much power it has back in the waking world. We expect most players will just get this by trial and error, but this may allow one or two to feel exceedingly clever.]

To decide what number is crys-power:
	let tot be 0;
	repeat with wire running through plugged on-stage d-wires begin;
		increase tot by strength of wire;
	end repeat;
	decide on tot.

A braided wire is a d-wire in Dream-CinderCone with strength 12 and key-name "[o]braided[x] wire". A silver wire is a plugged d-wire in Dream-CinderCone with strength 2 and key-name "[o]silver[x] wire". A coarse wire is a d-wire in Dream-CinderCone with strength 4 and key-name "[o]coarse[x] wire". A sticky wire is a plugged d-wire in Dream-CinderCone with strength -17 and key-name "[o]sticky[x] wire". A copper tube is a plugged d-wire in Dream-CinderCone with strength 20 and key-name "[o]copper[x] tube". A thick cable is a d-wire in Dream-CinderCone with strength -3 and key-name "[o]thick[x] cable". 

Instead of doing anything to a d-wire when player is not dc-progue: say "You can't really make out the individual parts of the experiment from this far away.".

Instead of taking inventory when location is Dream-CinderCone and player is dc-progue: say "You are holding [the list of unplugged on-stage d-wires]."

The dream-boiler is a setpiece in Dream-CinderCone. Understand "boiler" as dream-boiler when location is Dream-CinderCone. The printed name is "boiler". The description is "Over the past few days, you've built this boiler over one of the larger steam vents to capture the tremendous thermal energy boiling up from the depths of the volcano. The egg, you've learned, seems to require a significant amount of power to do whatever it is that it does.".

Understand "cluster/cone/chasm/entrance" as up when location is Dream-CinderCone. Understand "cave" as down when location is Dream-CinderCone.

First Instead of going up when location is Dream-CinderCone: say "[if player is dc-progue]No, no, no. You have to get the egg working.[otherwise]No, you can't risk it. If dad sees either of you down here, he'll know you figured out the code to the door, and maybe he'll change it, and then you might never be able to figure out what's happening to him...". First instead of going down when location is Dream-CinderCone: say "[if player is dc-progue]You don't know of any caves in this part of the island.[otherwise][one of]You hesitate for a moment. You aren't sleepy at all, but there's no way to sneak past dad without him seeing you. Maybe you and your sister should just try to get some sleep.[or]'Come on,' you whisper to your sister, tugging her sleeve. Together, the two of you turn away and tread lightly down the slope of the cinder cone's smooth slope, crawling into the darkness of your secret cave. Maybe in the morning things will change...[paragraph break]{(*change*)}[line break][end-flashback][stopping]".


The dc-windsigh is a setpiece in Dream-CinderCone. Understand "tree9/windsigh/vine/vines" as dc-windsigh. The printed name is "windsigh on the cinder cone". The description is "[if player is dc-progue]You can't really be bothered to do more than glance at it right now.[otherwise]The tree provides good cover for the two of you to sneak up behind it and watch dad. Not that you get the idea he'd notice you if it weren't there, anyway. Or remember that you're absolutely forbidden to be here in the first place.". Instead of climbing dc-windsigh: if player is dc-progue, try examining dc-windsigh; otherwise say "There's no reason to; you can see just fine from here.". Instead of touching dc-windsigh: if player is dc-progue, try examining dc-windsigh; otherwise say "You run your fingers idly along the vines and trunk of the windsigh distractedly.".

[Rule for supplying a missing noun when greeting and location is Dream-CinderCone (this is the vague greeting at Dream-CinderCone rule): if player is dc-lethe, change noun to dc-phoebe; if player is dc-phoebe, change noun to dc-lethe; if player is dc-progue, say "There's no one here to greet." ] Does the player mean greeting dc-progue when the player is dc-lethe or the player is dc-phoebe: it is very unlikely. First instead of greeting when player is dc-progue: say "There's no one here to greet."

Instead of greeting when player is dc-progue: say "There's no one here to greet." Instead of greeting dc-lethe, say "You open your mouth to whisper something to Laylay, but she holds up a finger to her lips and shakes her head.". Instead of greeting dc-phoebe, say "You try to get Phoebe's attention, but her gaze is fixed on dad, chewing a frowning lower lip in frustration.".

DC-Progue is a dream-progue in Dream-CinderCone. The description is "[if player is dc-progue]Your hair is disheveled, your clothes a mess, and you feel like you've been up for days, probably because you have. The egg has become an obsession; have you ever had so important a task, so exciting a mandate? Solving the mystery of what you found in the rain forest is up to you and you alone.[otherwise]Dimly illuminated in the rising and fading red glow of the weird glass egg thing he found in the rain forest, your father  {(*[d]progue[x]*)}  hunches obsessively over the strange contraptions he has built around it, tinkering. He looks thin and hungry and half-dead, but what's scary is that he looks like he doesn't even realize it.".

DC-Lethe is a dream-lethe in Dream-CinderCone. Rule for writing a paragraph about dc-lethe: if player is dc-progue, say "The collapse stretches towards the [d]chasm[x], and dimly in the moonlight you spot the [d]cluster[x] of steam vents and the cinder [d]cone[x][if a random chance of 1 in 2 succeeds]. For a moment, you think you catch a glimpse of movement  {(*[d]phoebe[x]*)}    {(*[d]lethe[x]*)}  in that direction. Probably birds[end if]."; if player is dc-phoebe, say "Your [o]sister[x] crouches near your feet, peeking around the trunk of the tree with wide eyes at [o]dad[x], halfway across the volcano floor by the chasm [d]entrance[x]. Behind you, the entrance to your secret [d]cave[x] is barely visible in the moonlight."; now dc-phoebe is mentioned; now dc-progue is mentioned. The description of dc-lethe is "[if player is dc-progue]You can't see any such thing.[otherwise if player is dc-phoebe]Laylay  {(*[d]lethe[x]*)}  looks scared, and you can't really blame her. You put your hand on your shoulder and she hugs your leg fiercely.[otherwise]You're tired and hungry. But more than that, you want to know what's happening to dad." DC-Lethe can be fed or unfed. dc-lethe is unfed.

Instead of sleeping when location is Dream-CinderCone: say "[if player is dc-progue]Your body needs it, but your mind is still racing, and you know if you lay down right now you'd never be able to sleep.[otherwise]You're worried, but tired too. Curling up the [d]cave[x] for a nap might not be too bad an idea. You have an idea dad will still be here and working in the morning...[end if]".

Instead of greeting DC-Progue: say "You open your mouth to shout something, but your sister grabs your mouth and pulls you down. She shakes her head.".

DC-Phoebe is a dream-phoebe in Dream-CinderCone. The description is "[if player is dc-progue]You can't see any such thing.[otherwise if player is dc-lethe]Phoebe  {(*[d]phoebe[x]*)}  stands next to you, and you're so glad to have her here now. It almost feels like the two of you are all that's left of the family.[otherwise]Your heart is racing and you feel sweaty, even though you've been standing here for almost half an hour.". Rule for writing a paragraph about DC-Phoebe: say "Your [o]sister[x] stands next to you, gripping the trunk of the windsigh, while you sit just to the side of it, watching [o]dad[x]'s weird experiments across the volcano. The secret [d]cave[x] is behind you both."; now dc-progue is mentioned.

DC-Phoebe holds a d-berries. The printed name of d-berries is "handful of berries". Understand "berry/berries" as d-berries when location is Dream-CinderCone. The description of d-berries is "Your last handful of berries, shoved into the pocket of your exploring pants.". Instead of eating d-berries, say "You munch a few of the berries[if dc-lethe is unfed]. Laylay looks up at you hungrily[end if].". Instead of giving d-berries to dc-lethe: say "You give half of your berries to your sister, who gratefully begins to munch on them."; now dc-lethe is fed.

c-progue-trigger is a person-trigger in Dream-CinderCone with target DC-Progue. Understand "progue" as c-Progue-trigger when location is Dream-CinderCone. 

c-lethe-trigger is a person-trigger in Dream-CinderCone with target DC-Lethe. Understand "lethe" as c-lethe-trigger when location is Dream-CinderCone. 

c-phoebe-trigger is a person-trigger in Dream-CinderCone with target DC-phoebe. Understand "phoebe" as c-phoebe-trigger when location is Dream-CinderCone.

Chapter - Forest9 Flashback

[Phoebe and Lethe hunt for boar, ready to paint their way out of this world.]

Dream-Forest9 is a flashback-room in Dreamlands. The printed name is "  In  The  Rain  Forest ".

The description of Dream-Forest9 is "[dforest9desc].". To say dforest9desc:
	if boar is enraged or dead-boar is enclosed by location:
		say "Everything else fades away";
	else if player is D9-Phoebe:
		say "The forest is still in the twilight, and your muscles are sore from staying frozen in one position for so long. No matter how many times you dry your sweaty palms the [o]spear[x] still feels slippery, your grip loose. But this must be done, or you will stay here forever. And neither of you want that";
	else:
		say "The villagers will wear blue. You nod to yourself as you decide this, trying to ignore the quivering cramps in your thighs, the droplets of leftover rainwater spilling down your neck from some high mountain branch. The [o]spear[x] feels awkward in your hand as you crouch behind the [o]windsigh[x]. As evening seeps in to the forest around you, you try to forget it".

Dream-Forest9-stuff is stuff in Dream-Forest9. Understand "forest/twilight/muscles/sweat/cramps" as Dream-Forest9-stuff when location is Dream-Forest9.


The d9-windsigh is a setpiece in Dream-Forest9. Understand "tree9/windsigh" as d9-windsigh when location is Dream-Forest9. The printed name is "windsigh". The description of d9-windsigh is "The wind breathes through the gaps in its branches faintly, a ringing wail that ebbs and flows in pitch and volume, cyclical alien music.". Instead of climbing d9-windsigh, try greeting a random other person enclosed by location.

D9-Lethe is a dream-lethe in Dream-Forest9. Understand "sister" as D9-lethe when location is Dream-Forest9 and player is d9-phoebe. The printed name of D9-lethe is "[if player is D9-Phoebe]your sister Lethe[otherwise]Lethe". Rule for writing a paragraph about D9-Lethe: say "[if boar is enraged and player is boar_victim][otherwise if boar is enraged and dead-boar is not on-stage]Your [o]sister[x] stands paralyzed, directly in the [o]boar[x]'s path.[otherwise]Your [o]sister[x] crouches on the other side of the clearing, near the windsigh, only barely visible under her camouflage.". The description is "[if boar is enraged]The boar's attack has flushed your system with adrenaline; all else is irrelevant.[otherwise if player is d9-phoebe]She  {(*[d]lethe[x]*)}  has grown up a lot, in the past year. She is starting to become a woman. You both are, you suppose. Not just physically, but mentally as well. Learning to look after yourselves. Watching over dad, making sure he doesn't hurt himself when he has his fits. Yet at the same time, Lethe has become even more lost in fantasy, in dreams. She spends hours staring at her fantastical paintings, as if lost in them, and the rare times you have conversations these days she speaks only about the worlds in her mind, never about this place. Never about dad.[otherwise]You have it all planned out, the world you will go to. Hot meals, warm beds. A large family who will be overjoyed to adopt a friendly orphan girl into their brightly-colored, thatched-roof houses. The warm flabby arms of aunts, the scent of cinnamon and fruit pies. Mountains to explore, people to return to. A home.[paragraph break]You will miss Phoebe. But it is time to move on.".

D9-Phoebe is a dream-phoebe in Dream-Forest9. Understand "sister" as d9-phoebe when location is Dream-Forest9 and player is d9-lethe. The printed name of d9-phoebe is "[if player is d9-lethe]your sister Phoebe[otherwise]Phoebe". Rule for writing a paragraph about D9-Phoebe: say "[if boar is enraged and player is boar_victim][otherwise if boar is enraged and dead-boar is not on-stage]Your [o]sister[x] stands paralyzed, directly in the [o]boar[x]'s path.[otherwise]Somewhere on the other side of the clearing is your [o]sister[x], although she's holding so still and the light is fading so fast you've momentarily lost sight of her.". The description is "[if boar is enraged]The boar's attack has flushed your system with adrenaline; all else is irrelevant.[otherwise if player is d9-phoebe]You are trembling, exhausted, you suppose. Last night the two of you heard dad crying out in his sleep, and you went to him while Lethe slept. He either didn't remember who you were, or pretended not to. You tended to him as best you could, but you have long since lost hope that he would get better.[otherwise]This was Phoebe's  {(*[d]phoebe[x]*)}  idea, really, but of course the same thought has been running through your mind for weeks. The old canvases dad had made for the two of you, back before his breakdown, before those endless months in the echo cave on the secret island, sculpting, always sculpting... has it been a year ago? ...the canvases have long since been painted and repainted and worn to nothing, but the urge in both of you to paint more, more has only grown. You both know how to make the paints. But this is your first time trying to get the hide.". 

A d-spear is a kind of thing. A d-spear is always undescribed. The printed name of a d-spear is always "spear". Understand "spear" as a d-spear. The description of a d-spear is always "Bamboo, sharpened stone, konokuk husk. You hope it works.". Instead of dropping a d-spear when boar is not enclosed by location: say "You're too nervous to put it down, even for a moment.". Instead of dropping a d-spear: try attacking boar. Instead of throwing a d-spear at something (called attackee): try attacking attackee. D9-Phoebe holds a d-spear. D9-Lethe holds a d-spear. Does the player mean doing something to a d-spear held by player: it is likely. First report taking a d-spear: say "You grab it frantically from the ground, tightening your grip around the muddy, slippery sides." instead.

df9-ctr is a number that varies. boar_victim is a person that varies.

To say d9-yoursister: if player is d9-phoebe, say "Lethe"; otherwise say "Phoebe".

Every turn when location is Dream-Forest9:
	increase df9-ctr by 1;
	if df9-ctr is 5 begin;
		move boar to location;
		say "Suddenly, you stiffen. Something moves off to the [if player is D9-Lethe]right[otherwise]left[end if] side of the clearing, a large shape in the darkness. A boar, and a big one. You grip the spear tightly, and across the clearing see your sister do the same. This is what you've been waiting for.";
	otherwise if df9-ctr is 100;
		say "The boar screams, staring straight into [if player is boar_victim]your[otherwise][d9-yoursister][']s[end if] eyes, pawing at the ground, lowering its head and its two sickly yellow tusks for a charge, blood oozing from the wound in its side.[if player is boar_victim] Its eyes are tiny circles of black on pale white circles, somehow pinning you motionless, huge and commanding.[paragraph break][d9-yoursister] lunges for her spear, scrabbling to grasp it in the dark and the mud.[end if]";
		if player is boar_victim begin; if player is d9-phoebe, move a random d-spear in the location to d9-lethe; otherwise move a random d-spear in the location to d9-phoebe; end if;
	otherwise if df9-ctr is 101;
		say "The boar rears back and then charges [if player is boar_victim]straight towards you[else]straight for your sister[end if].";
	otherwise if df9-ctr is 102;
		say "The boar leaps forward[if player is not boar_victim] towards [d9-yoursister][end if], snarling, enraged and swelled with the strength of death. [if player is boar_victim]But you cannot move, somehow cannot command your muscles; even your lungs, your heart have stopped...[paragraph break][end if][if player is boar_victim]Some primal instinct jerks you aside, but too late; the boar's tusk rips along the stomach, grazing you with a hot flash of pain, and you cry out, a terrible, animal cry that you finally realize is your own mingled with that of the boar. [d9-yoursister] stands over it, the spear skewered into its hairy flank, and finally, it[otherwise]Just as the terrible creature is almost upon her, she suddenly comes to her senses and twists aside, jabbing down with the spear just as the boar's tusk grazes her side. Both of them let out one piercing, terrible scream... the boar[end if] slumps to the ground, twitching, lifeblood draining into the rainforest floor.";
		remove boar from play;
		now boar is docile;
		move dead-boar to location;
		increase df9-ctr by 1;
	otherwise if df9-ctr is 104;
		say "The world seems to stagger in its strange spin for a long, vertiginous moment, and then you fall into your sister's arms, and she is sobbing or you are, tears and hair running together, hot rainwater soaking through the knees of your fraying clothes or maybe the blood of the boar, and you cry not [if player is boar_victim]from the pain of your wound[else]for your sister's wound[end if], which is light and will easily heal, but from the sudden weight of how you and she came to this moment, crying in the mud, motherless and more or less fatherless and stranded on a deserted island, forced to kill wild animals in the hope of escape.[paragraph break]And the weight, too, that soon you will not even have each other. There is no going together when you leave this place. Only going.[paragraph break]But as you stroke [if player is D9-Phoebe]Lethe[else]Phoebe[end if]'s hair you are not afraid. Something else murmurs that somehow you will always be together.[paragraph break]{(*somehow*)}[line break][end-flashback]";
	end if.

Instead of taking d9-lethe when boar is enraged: save-sister-from-boar. Instead of taking d9-phoebe when boar is enraged: save-sister-from-boar. Instead of pushing d9-lethe when d9-lethe is boar_victim and boar is enraged: save-sister-from-boar. Instead of pushing d9-phoebe when d9-phoebe is boar_victim and boar is enraged: save-sister-from-boar. To save-sister-from-boar: say "Charging forward, you slam into your paralyzed sister and push her to the ground just as the boar charges forward. It grazes her side and stomps on your hand as it crashes through the muddy underbrush, scrambling to turn for another pass.[paragraph break][boardiesconclusion]."; remove boar from play; now boar is docile; move dead-boar to location; now df9-ctr is 103.

To say boardiesconclusion: say "Faster than thinking you are on your feet and gripping the spear, and as the terrible creature leaps for you, you drive the weapon deep into its flank. A monstrous squealing scream echoes through the forest, and it is a long moment before you realize it is your own mingled with that of the boar.[paragraph break]It slumps to the ground, twitching, lifeblood draining into the forest floor".

Instead of jumping when boar is enraged and location is Dream-Forest9: save-sister-by-chutzpah. Instead of entering or pushing boar when location is Dream-Forest9: save-sister-by-chutzpah. To save-sister-by-chutzpah: say "Charging forward, you jump on the back of the wild boar, not thinking, only hoping to save your sister, and only as you touch its hideous skin and it shudders and squeals under your grasp do you realize the terrible danger... but your sister suddenly finds her courage too and throws her spear right at the creature's head. The blow glances, the wild animal bucks and throws you off, but the distraction gives you time to grasp your spear again.[paragraph break][boardiesconclusion]."; remove boar from play; now boar is docile; move dead-boar to location; now df9-ctr is 103.

The boar is an undescribed animal. It is either enraged or docile. It is docile. The description is "[if docile]There were pigs back home, but nothing at all like these huge forest creatures, which come up almost to your waist and have thick, yellowed tusks. But their hides, when dried and prepared, will provide canvas. And canvas is what you need to leave this place. If you have your father's magic, that is.[otherwise]The boar is in a maddened frenzy.".

Every turn when the boar is in location and boar is docile: say "[boardesc]". 

Instead of attacking the boar when location is Dream-Forest9 and player is not holding a d-spear: say "The [o]spear[x] was pulled from your grasp; it lies on the ground nearby, dripping with the creature's blood.".

Instead of attacking the boar:
	if boar is docile begin;
		say "With a shout, you leap from your hiding place, [if player is D9-Phoebe]Lethe[otherwise]Phoebe[end if] following a moment later, and stab your spear into the boar's side. A terrible squeal rises from its slimy throat, and it twists away, pulling the spear from your sweat-slicked grip as your heart slams into overdrive.[paragraph break]The animal veers away from you to escape, directly into the path of your sister. But she is paralyzed, white hands gripping the spear, eyes wide, as the creature snarls at her.";
		if player is D9-Phoebe, now boar_victim is d9-lethe;
		otherwise now boar_victim is d9-phoebe;
		now boar is enraged;
		if player holds a d-spear (called weapon), move weapon to location;
		now df9-ctr is 98;
	otherwise;
		if player is boar_victim, say "The boar leaps forward, snarling, enraged and swelled with the strength of death. But your instincts return, and with some hidden strength you thrust the spear forward and skewer the horrible creature right through the neck. It crashes into you, one tusk grazing a sharp hot flash down your side, and lets out one piercing, terrible scream... then slumps to the ground, twitching, lifeblood draining into the rainforest floor.";
		otherwise say "The boar leaps forward towards [d9-yoursister], snarling, enraged and swelled with the strength of death. You stab forward viciously with every ounce of strength you have, and skewer the creature through its hairy flank, just as its hideous tusk grazes your sister's side... then lets out a piercing, terrible scream and slumps to the ground, twitching, lifeblood draining into the rainforest floor.";
		remove boar from play;
		move dead-boar to location;
		now df9-ctr is 103;
	end if.

Instead of hugging someone when dead-boar is enclosed by location: say "Yes. Yes, that's best.". Instead of attacking dead-boar, say "It's dead now. It's over.".

The dead-boar is a setpiece. Understand "boar" as dead-boar. The printed name is "dead boar". Instead of attacking the boar: say "It's already dead.". The description is "It lies in a pool of blood, twitching, in its last moments of life.".

Instead of greeting when location is Dream-Forest9: say "Only if you stay silent can you hope to make a kill.".

Instead of going when location is Dream-Forest9: say "This is your third day in the forest stalking the boar; grim determination says you won't give up until the last shred of light is gone.".



9-lethe-trigger is a person-trigger in Dream-Forest9 with target D9-Lethe. Understand "lethe" as 9-lethe-trigger when location is Dream-Forest9. Instead of pushing 9-lethe-trigger: try pushing d9-lethe.

9-phoebe-trigger is a person-trigger in Dream-Forest9 with target D9-phoebe. Understand "phoebe" as 9-phoebe-trigger when location is Dream-Forest9. Instead of pushing 9-phoebe-trigger: try pushing d9-phoebe.

Chapter - Egg Flashback

[In old windsigh, now dead. Workbench not built. He's holding the cylinder. Progue discovers the Egg. We learn his mental state: there is a reason they came here after all. In despair/loss, this gives him a purpose.]
[puzzles: any but mysterious door, finding the Egg.
getting to lawn: progue thinks about design of power systems.
opening pyramid: thinks about echo chamber.
powering both: thinks about ways to increase power to system. intuits will need to be high up.
contacting all: reels off trees he's seen. (they all came from here!)
]

Dream-Egg is a flashback-room in Dreamlands. The printed name is " The  Egg ". 

[To setup Dream-Egg-hints: 
	let active puzzle be preeminent puzzle;
	if active puzzle is Getting-To-The-Lawn or active puzzle is Powering-Both-Devices begin;
		now de-idea is 1;
	otherwise if active puzzle is Opening-The-Pyramid;
		now de-idea is 3;
	otherwise if active puzzle is Contacting-All-The-Trees;
		now de-idea is 4;
	end if.]

de-idea is a number that varies.

[Every turn when location is Dream-Egg and a random chance of 1 in 3 succeeds and dr-idea > 0 and we have not examined de-hint-thought:
	say "A [o]thought[x] struggles around the end of your consciousness, trying to find a way in.".

The de-hint-thought is a setpiece in Dream-Egg. Understand "thought/thoughts" as de-hint-thought. The description is "[dehint]".

To say dehint:
	if dr-idea is 1, say "{hint not yet written.}";
	if dr-idea is 3, say "{hint not yet written.}";
	if dr-idea is 4, say "{hint not yet written.}"; [bug]]

DE-Progue is a dream-progue in Dream-Egg.

The description of Dream-Egg is "Rising from the ground of this hidden hollow, walled in by dense jungle on all sides, is your discovery: a massive rounded shape, perfectly smooth, a giant [o]egg[x] with one side smashed and crumbling. A [d]gash[x] in its side is completely filled in with jungle overgrowth. Near the gash is a tall and ancient [o]windsigh[x], its yellow leaves fading to burnt tones of copper, its vines growing withered and sickly[one of].[paragraph break]You lean against the side of the egg for a moment, nearly trembling with sudden exhaustion. You can't explain why this discovery has so thrilled you, unless it is because it validates your existence here, provides some hint of purpose at why you brought your shattered, mourning family to this empty place. Perhaps it is not so empty[or][stopping].[paragraph break][exits].". The exits text of Dream-Egg is "The slope [down] to the beach with those noisy seals, or the climb back [up] out of the crater seem your only ways out".

Dream-Egg-stuff is stuff in Dream-Egg. Understand "hollow/jungle/leaves/vines/cave/crater" as Dream-Egg-stuff when location is Dream-Egg.


[Every turn when location is Dream-Egg and a random chance of 1 in 4 succeeds: fire one off by frequency from Table of Really Sleepy Messages, definitely selecting.]

The d-egg is a setpiece in Dream-Egg. Understand "egg/discovery" as d-egg. The printed name is "Egg". The description is "What does it mean? Is it a spaceship? Was there a crew? What happened to them? Thoughts whirl through your head. Yes, you think, it must have had a crew. It's a colonization ship, it must be. Somehow you're sure of it.[paragraph break]But if it had a crew, where are they?".

The egg-gash is part of the d-egg. The printed name is "gash". Understand "gash/side/overgrowth/mound/silt" as egg-gash. Instead of examining or entering egg-gash, say "It will take you days to excavate all the silt and jungle growth that has filled the interior of the egg. For now, you will have to be content with studying its exterior[if d-eggtube is in Dream-Egg].[paragraph break]As you take another look at the mound of slit blocking the gash, however, you spot something strange: a silver [o]tube[x], just poking up from the dirt[end if].". Instead of entering d-egg: try entering egg-gash. First instead of going inside when location is Dream-Egg: try entering egg-gash. Check digging when location is Dream-Egg: if d-eggtube is not held, try taking d-eggtube instead; else say "You don't have the energy to start excavating right now." instead.

The d-eggtube is an undescribed container in Dream-Egg. It is closed and openable. Understand "silver/tube/cap/cylinder" as d-eggtube. The printed name is "silver tube". First report taking d-eggtube: say "You grip the slippery end of the metal tube and pull. It is deeply embedded in the caked soil, but as you wriggle, it begins to give, and finally bursts free in a torrent of moist earth and roots." instead. Instead of dropping d-eggtube: say "You have no idea what secrets this small thing might unearth. You're going to hold on to it for now.". The description of d-eggtube is "[if player holds d-eggtube][one of]Brushing clumps of soil from the tube, y[or]Y[stopping]ou marvel at it, some unknown piece of alien technology, perfectly molded. As you rotate it lightly in your hands you can feel something tumbling around inside it[one of], and looking, spot a metal cap almost perfectly flush with one end of the cylinder[or][stopping][otherwise]You can only see one end, poking out from the mound of dirt[end if].". Instead of opening d-eggtube when player is not holding d-eggtube, say "If it's openable, you can't tell while it's still buried in the mound of dirt.". First Report opening d-eggtube: move d-seedpod to player; say "Gripping the cap firmly, you rotate it until it suddenly gives way, as if attached magnetically. Some pointy spherical [o]pod[x] falls from the end; you instinctually snatch it from the air with your hand and bounce it there lightly." instead. First Report closing d-eggtube: say "You reattach the cap." instead.

A d-seedpod is a thing. Understand "seed/pod/seedpod" or "seed pod" as d-seedpod when location is Dream-Egg. The printed name is "seed pod". The description is "Incredibly light, the seed pod is filled with a myriad of tiny holes, complex vortices of negative space.". Understand "plant [d-seedpod]" or "bury [d-seedpod]" as a mistake ("Perhaps later. You want to study it first, figure out as much as you can. Maybe you can build a workbench, right here, so you don't have to cart things across half the island."). Instead of dropping d-seedpod: say "You shouldn't leave this just lying around. Who knows what might grow from it.". 

The ancient-windsigh is a setpiece in Dream-Egg. Understand "windsigh/ancient/tree9" as ancient-windsigh when location is Dream-Egg. The printed name is "ancient windsigh". The description is "The tree is undoubtedly old and near the end of its life. Its roots twine around and through the mound of earth near the gash in the side of the smashed Egg, and it rises high above it, like some lonely sentinel.". Instead of climbing ancient-windsigh: say "You're too exhausted to think about doing that right now.". Instead of touching ancient-windsigh: say "You press your palm against the trunk of the ancient tree, and for a moment almost think you can feel a faint tingling.". Instead of greeting ancient-windsigh: say "It's just a tree."

First Instead of going up when location is Dream-Egg: say "You're too exhausted to climb back out of the crater right now. Later, you'll need to bring your tools, clean out the interior of the ship, study what you find... but now, all you can think about is sleep." 

First Instead of going down when location is Dream-Egg: say "You just finished investigating the cave down there on the hidden island, and your mind is whirling with ideas. Such beautiful echoes, and those fluted shapes... you wonder if, with a bit of sculpting, you could create something rather interesting. But at the moment, the Egg and its contents push all artistic concerns from your mind.".

Instead of sleeping when location is Dream-Egg: say "Too tired to make the trek back through the rain forest to the cabin on the beach, you find a bank of dry leaves at the base of the ancient windsigh and curl up on your side. Your mind is racing with ideas, plans, speculations, but above all, a single, almost overpowering urge.[paragraph break]You must get inside the Egg. You must find out what's inside...[line break]{(*inside*)}[line break][end-flashback]".



Chapter - Atop Flashback

[This flashback was recorded by a tree that used to be in Stumps. Progue realizes the girls are gone. He tries to sculpt, but fails, realizes he can no longer wayfare. Smashes pipe in frustration. Chops down windsigh. 
[proposal: move block of stone to Stumps. Add windsigh stump to Stumps.]
puzzles: any but mysterious door.
Progue finds lethe's dream-chotchkie.
]

Dream-Atop is a flashback-room in Dreamlands. The printed name is " Among  The  Stumps ". The description of Dream-Atop is "The [o]block[x] of rough-hewn stone before you is cast into sharp relief by the sun setting over the lagoon behind it, picking out the newly-formed edges and stone fragments scattered at its base in detailed relief. Your breathing is heavy, though you haven't lifted the heavy [o]pickaxe[x] in your hand for hours, since the now-setting sun was high in the sky.".

Dream-Atop-stuff is stuff in Dream-Atop. Understand "sun/lagoon/fragments" as Dream-Atop-stuff when location is Dream-Atop.


The da-windsigh is a described setpiece in Dream-Atop. Understand "tree9/windsigh" as da-windsigh when location is Dream-Atop. The printed name is "windsigh". Rule for writing a paragraph about da-windsigh: say "A [o]windsigh[x] watches over the grove of [o]stumps[x], the blue [o]pipe[x] running past its roots towards the base of the [d]ropeway[x], while behind you the [d]marsh[x] breathes throaty evening cries."; now da-bluepipe is mentioned. The description of da-windsigh is "The wind breathes through the gaps in its branches faintly, a ringing wail that ebbs and flows in pitch and volume, cyclical alien music.". Instead of climbing da-windsigh: say "You're too exhausted, mentally and physically, to even contemplate it.".

The da-bluepipe is a setpiece in Dream-Atop. Understand "blue/pipe" as da-bluepipe when location is Dream-Atop. The printed name is "blue pipe". The description is "You stare at it in disgust, a baleful reminder of every failing you've made since arriving here. How could you have allowed yourself to become so obsessed, so driven to repair the egg, install it on top of the mountain, when your own children needed you more? Then months of work, sculpting and tweaking and refining the shapes in the echo cave, to protect what you'd made, but you realize now it was only to protect yourself. Now your daughters are gone, and all you have left are their paintings, and a network of efficient, useless pipes and machinery.". Instead of attacking da-bluepipe: say "Rage fills you as you stare at the smooth sides of the pipe, so neat and orderly, and without a second thought you lift the crushing pickaxe up above your head and bring it down in a furious blow on the pipe. The bamboo cracks easily, a long split running down the side of the tube, and you suddenly tremble through your whole body as if from the shock of the blow.[paragraph break][pa-suicide].". To say pa-suicide: say "How easy it would be to destroy it all, everything you built, everything your daughters left behind, every shred of your existence here in this too-perfect tropical paradise. Then, when only you were left, to destroy yourself as well.[paragraph break]But you won't". Instead of attacking da-progue, say "[pa-suicide].".

Every turn when location is Dream-Atop and a random chance of 1 in 2 succeeds, say "The [o]block[x] of stone stands resolutely in the setting sun's light, mocking you.".

A heavy pickaxe is held by DA-Progue. Understand "axe" or "pick axe" or "pickaxe/pickax" as pickaxe. The description is "A blunt tool: a solid heavy wood handle strapped tightly to a sharpened chunk of the dense stone from the east island. It served to shape this outcrop of rock into an empty medium. But it is more a tool for destruction than creation.". Instead of dropping heavy pickaxe: say "Your hands are locked on it in a death grip, and you cannot loosen them.".

The dream-block is a setpiece in Dream-Atop. Understand "block/stone" as dream-block. The printed name is "block of stone". The description is "You've hewn the outcrop of rock that once stood here into a tall rough cube, ready to be sculpted into something, anything, that would finally take you from this empty place. You started as soon as you recovered from your long depression, as soon as the shock of discovering the paintings your girls, your beautiful girls, left behind when they finally escaped you, abandoned you as they should have, after you abandoned them. You are ready to leave this place now, too. All you must do is [d]sculpt[x].".

Understand "sculpt" or "make sculpture" as attacking when location is Dream-Atop. Rule for supplying a missing noun when attacking and location is Dream-Atop: change noun to dream-block.

Instead of attacking dream-block: say "You lift the pickaxe again to make the first rough inroads into that cursed block, becoming more and more solid every hour, then slowly lower it.[paragraph break]It's no use. Nothing will come.[paragraph break]Ever since you first learned of your gift-- before-- never once did you not know what to sculpt. Your mind always brimmed with images, ideas, forms that you desperately needed to make real, until one day the universe took you literally. Even when you first came here with the girls, all those dark months ago, overwhelmed at the loss of your love, the tree came immediately into your thoughts, and you began sculpting it the moment your hand touched the chisel.[paragraph break]But now nothing will come at all. And a seething finality grows in you with every passing moment. Your gift is gone, taken from you as punishment, mayhaps, for your failings, as a husband, a father, a friend in need. Or mayhaps withered and died with the rest of your spirit in these dark months behind you.[paragraph break]Mayhaps you will never sculpt again. Mayhaps you will die on this island, alone. Alone.".

Some dream-stumps are a setpiece in Dream-Atop. Understand "stump/stumps" as dream-stumps. The printed name is "stumps". The description is "Here on this spot was one of the first marks you made on this island, in the days after you and the girls arrived, chopping down the grove of konokuk trees that once grew here to build the cabin on the beach, fulfill your desperate need for home, for shelter, even if you couldn't say from what. Now you've returned to make your last mark on this place. If you can.".

First Instead of going down when location is Dream-Atop: say "[one of]You hesitate. Somehow you sense that giving up now will forfeit your last chance at sculpting your way into a new a world, at ever leaving this island full of memories and whispering minds.[or][da-end-windsigh][stopping]". Instead of attacking da-windsigh: try going down. To say da-end-windsigh: say "You turn away at last from the block of stone. Tiny fractures shatter inside you, like the delicate line of snow and ice around a thing left out in the cold, splintering under the slightest force as a person comes to move it. And as you turn, you see the tree.[paragraph break]The windsigh stands at the edge of the rise, yellow leaves fluttering in the breeze[if guessed_trees is true]. And you know they're watching you. Every time you see the tree you'll know they're watching. Wondering. Judging[end if].[paragraph break]You heft the pickaxe in your hand, and step forward. It has to be done, you think to yourself. You have to have your own space. Alone. You need to be alone.[paragraph break]You're sorry.[paragraph break]Hefting the axe, you swing with all your might and {(*s-.&6P}{,e*-.*0**{}{)}[line break][end-flashback]".

Understand "marsh/ropeway" as down when location is Dream-Atop.

Some fragments of stone are a setpiece in Dream-Atop.

To setup Dream-Atop-hints: do nothing.

DA-Progue is a dream-progue in Dream-Atop.


Lacuna-Lacuna-Dreams2 ends here.
