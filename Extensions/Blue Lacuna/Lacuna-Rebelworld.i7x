Lacuna-Rebelworld by Blue Lacuna begins here.

Use authorial modesty.

Test reb with "ff / ff / ff / ff / ff / ff / ff / ff / ff / ff / ff / ff".

Visiting Rebelworld is a recurring scene. Visiting Rebelworld begins when the mind machinery is projecting and the machinery-password exactly matches the text rebel-password and Visiting Rebelworld is not happening. 

When Visiting Rebelworld begins:
	if the player is male, now DrQuick is male;
	otherwise now DrQuick is female;
	change the player to DrQuick;
	change the time of day to 12:01 PM;
	now yourself is asleep; [helps out various rules.]
	try looking. 

Visiting Rebelworld ends nominally when the player is yourself. Visiting Rebelworld ends successfully when cl_story7 is spoken and the player is yourself. 

When Visiting Rebelworld ends nominally:
	move DrQuick to Memorial Park;
	now DrQuick wears the cap;
	unless Visiting Treeworld ended successfully, set up the endgame storm.

When Visiting Rebelworld ends successfully:
	if rap sheet of DrQuick < 5, move DrQuick to Cafeteria;
	now DrQuick wears the cap;
	move Cloudeye to Cafeteria;
[	now Ditching The Rebs is met;]
	remove leader from play;
	if Visiting Treeworld ended successfully, set up the endgame afterstorm;
	else set up the endgame storm.

Check taking off when the player is regionally in Rebelworld and noun is cap and StraightTalkWithRebelLeader is not happening (this is the remove cap to leave Rebelworld rule): 
	say "You remove the cap from your head. Within a second your surroundings become fuzzy and indistinct-- a sudden moment of vertigo--";
	now yourself is awake; 
	change the player to yourself;
	print a section break;
	say "[bold type][location][roman type][line break][description of location]" instead. [We do this instead of looking because we want to show the description of the area, not the chair controls, to emphasize we've returned to Lacuna.]

Carry out landmark-listing when location is regionally in Rebelworld: say "This place is so different and strange, it's hard to get your bearings."

Instead of sleeping when location is regionally in Rebelworld: say "You're far too keyed up to sleep right now.".

Check examining DrQuick: try taking inventory instead.
[
	say "The landmarks you can go to are: ";
	repeat with locale running through visited landmarked rooms regionally in Rebelworld begin;
		say "[line break]  ";
		if the landmark name of locale is not "null", say the landmark name of locale; otherwise say locale;
	end repeat.]

[Plaza and Space Museum are landmarked.]

Memorial Park is inside from Plaza. Rebelworld-Outdoors is a region. Plaza, Room1, Room2, Room3, Room4, Room5 are in Rebelworld-Outdoors. Rebelworld-Outdoors, Lab, Memorial Park, Library-Room, Space Museum, Room6, and Room7 are in Rebelworld.

DrQuick is a person. DrQuick is in Lab. The printed name is "Quick".

DrQuick wears a passcard. The description of a passcard is "It's a small rectangle of baked stone, with an intricate series of notches and holes running along one side, attached to a chain around your neck.". Instead of taking off passcard, say "The rectangle does not seem able to detach from the chain, and the chain in turn loops so closely around your neck you could not pass it over your head." Understand "pass/card" as passcard.

DrQuick wears a cap. The description of the cap is "The cap seems to be part of the uniform, but running your hands around it you can feel all sorts of wires and protuberances woven into the inner lining. A cable snakes down your neck and back to a bulky transmitter unit attached to your belt.". Understand "hat" as cap.

A coin is a kind of thing. DrQuick carries three coins. The description of a coin is "A small disc of some lightweight silver metal, embossed with the image of a stern-looking elderly woman.".  Understand "coins/money" as a coin.

DrQuick wears a uniform. The description of uniform is "Stiff, uncomfortable, made of coarse fabric dyed deep charcoal-grey. But something about the large buttons rising up the left-hand side to the shoulder, and the cut of the collar, implies a degree of respect may be given to the wearer.". Instead of taking off uniform, say "But you have nothing else to wear." Understand "jacket" as uniform.

Check eye closing during Visiting Rebelworld: say "You close your eyes deliberately for a long moment, but nothing happens." instead.


Chapter  - Lab



The Lab is a room in Rebelworld. The description of Lab is "[if unvisited][lab_opening_scene][otherwise]Coils of multi-colored wire, huge hot conduits of metal and glass, and a dusty bank of flashing lights and unlabeled controls fill this small windowless room, stuffy and filled with the smell of ozone. The curves of a great [o]behemoth[x] of a machine fill the room. [exits].[end if]".

To say lab_opening_scene: say "Coils of wire, the tang of ozone, blurry red lights flashing in your face. Before you [if Being-In-Treeworld is solved]can get your bearings in this second world[otherwise]can even begin to wonder what's happened to you[end if] a klaxon sounds and a jet of chilly mist arcs across the room[if Being-In-Treeworld is unsolved]-- room? Yes; you're somewhere entirely different now: but there are none of the tingling aftershocks of wayfaring. What is happening?[else].[end if]". 

The exits text of Lab is "A small white [d]door[x] [if we have discussed osm_leaderresults]and a smaller [d]platform[x] squeezed into one corner seem to be the only exits[otherwise]seems to be the only exit[end if]".

A small white door is a door. It is east of Lab. It is undescribed, locked and closed. The description is "The door's white metal surface is broken only by a wheel and a small round porthole.". Instead of opening or vague unlocking or going the small white door: say "You move to the door and try turning the wheel in its center, but it doesn't budge."; if Cloudeye is not attentive, now Cloudeye is attentive; force discuss osm_doorout. [A procedural rule while going in Lab: ignore the can't go through undescribed doors rule.] Instead of doing something to the small white door when we have not discussed osm_welcome, say "You're still too disoriented to really get your bearings.".

A metal wheel and a small round porthole are part of the small white door. Instead of turning or pushing or pulling metal wheel, try opening white door. The description of the porthole is "Peering through the porthole's thick glass, you see a white clean room with another console filled with blinking lights.".

An elevator is down from Memorial Park and up from Lab. The elevator is a door. The elevator is undescribed, unopenable, and not lockable. Instead of examining elevator when location is Memorial Park, try examining shed. The description of elevator is "The small platform is in a corner of the room above a square black hole in the ceiling; gears and a track run up the walls.". Understand "platform" as up when location is Lab. 

TheBeast is a setpiece in Lab. Understand "machine" or "machinery" or "behemoth/coil/coils/wire/conduit/conduits/metal/glass/dusty/bank/lights/controls/tube/tubes/steel/columns/light/systems/cooling/control/dial/switch/wiring/keyboard/monitor" as theBeast. The description of TheBeast is "It's truly a monster; this room is actually quite large, though the machine takes up nearly all of it, making the remaining space feel quite cramped. Burnished steel tubes, glowing columns of orange light, massive rounded cooling systems, and a control bank of dials and switches make up the bulk of the content. A seemingly infinite amount of wiring fills the room like a gut full of intestines.".

Opening Scientist Monologue is a scene. Opening Scientist Monologue begins when the player is in Lab for the first time. Opening Scientist Monologue ends when Cloudeye is idle.

When Opening Scientist Monologue begins: now Cloudeye is attentive; force discuss osm_opening.

Cloudeye is an undescribed man in the Lab. "[if osm_postreflection is spoken]Cloudeye[else]The man in the lab coat[end if] stands a few paces away, trying to pretend he isn't staring at you in fascination." Understand "face" or "figure" or "man" or "scientist" as Cloudeye. The description is "[if we have not discussed osm_noticedoctor]His back is to you; all you can see is his distinctive white coat[otherwise][Cloudeyedesc][end if]." To say Cloudeyedesc: say "[if we have not examined Cloudeye and skeletons_bit is 0]His facial features are not quite human, but close enough, and you immediately recognize the basic shape: that of the skeletons from the Egg ship on Lacuna. [otherwise if we have not examined Cloudeye]Again, you recognize the distinct facial features of those almost-human skeletons from the egg ship. [end if]He is short, stooped a little though he seems young, with oval spectacles and an irregular pink birthmark that covers a third of his face. Straight hair pulled straight back makes thousands of brown-grey arcs down to his shoulders". After examining Cloudeye: now skeletons_bit is 1. The printed name of Cloudeye is "[if osm_postreflection is spoken]Doctor Cloudeye[else]the man in the lab coat".

OSM is a thread. First check vague discussing when last beat is in OSM: say "You're too disoriented to get a grip on the conversation." instead.

osm_doorout is a repeatable ephemeral beat in OSM with reaction "[one of]'Oh,' Cloudeye says, looking up, 'that's to the clean room and the [osm_somenium] crucible. It locks automatically whenever the [osm_beast] is running. Good thing, too; it's hot enough to melt your skin off.'[or][paragraph break]'The elevator's the only way out while the [osm_beast] is running, doctor,' Cloudeye says again, distractedly.[or][stopping]". osm_doorout summons osm_somenium, osm_beast. Understand "somenium" as osm_somenium.

osm_somenium is a beat in OSM with keyword name "somenium" and reaction "'Yes,' Cloudeye says, nodding eagerly, 'terribly rare. It's the material that allows for us to communicate across interstellar distances. All the somenium on the entire planet is through that door; all that came from Egg. Your Lacuna has a lot more, according to the last [osm_Progue]: a blue hexagonal crystal, in its natural state.'[paragraph break]'I think Doctor Quick reserved a book about it for you at the city library,' he adds, 'if you're interested in learning more.'".

Carry out getting bored when Cloudeye is enclosed by location: say "[cloudeyefinish]." instead. Report saying farewell to when location is lab: say "[cloudeyefinish]." instead. To say cloudeyefinish: say "'I'll just get back to these figures,' Cloudeye says, turning distractedly back to the console".

osm_opening is a beat in OSM with reaction "'Primary overload, doctor!' a voice shouts, and you spot a blurry [o]figure[x] in a lab coat through the mist, back to you, turning dials and pulling levers. 'Give me a minute to localize and then I'll [osm_voicenotice] her back down.'". osm_opening suggests osm_prattle1. osm_opening summons osm_voicenotice. After discussing osm_opening: now Cloudeye is described; continue the action.

osm_prattle1 is a beat in OSM with reaction "'Must have blown one of the somenium channel conduits again,' the figure mutters, still flipping switches frantically. 'I keep telling you it's a mistake to run that much bandwidth through an HR-7 connector.'". osm_prattle1 suggests osm_prattle2.

osm_prattle2 is a beat in OSM with reaction "'Just a few more moments and I'll have it shut down, doctor,' he continues, pressing a series of glowing red buttons.". osm_prattle2 suggests osm_noticedoctor.

Understand "phase" as osm_voicenotice. osm_voicenotice is a beat in OSM with fuse 10 and keyword name "phase" and reaction "[voice_notice_bit][line break]'What's that, doctor?' the figure says, and turns towards you. [if Being-In-Treeworld is solved]He's another of the windsigh's people, like the ones on their world and the skeletons on Lacuna[otherwise]Again, a shock: his features are not quite human, but familiar. After a moment you realize what you are seeing looks like one of the skeletons from the crashed egg ship on Lacuna, if it were given flesh and life again[end if].". osm_voicenotice enqueues osm_noticedoctor.

To say voice_notice_bit: say "[one of]You begin to speak, but after just a few words you falter in shock. The voice that comes from your lips is instantly recognizable, though you've heard it only in dreams. Reedy. Cynical. Sardonic.[or][stopping]".

osm_noticedoctor is an insistent beat in OSM with reaction "The man seems to have disabled most of the alarms and warning lights. His hand on a massive switch, he turns to you, but stops short as he notices your expression. 'Doctor?' he says. 'Is everything all right?'". osm_noticedoctor summons osm_allright, osm_notallright.  Instead of saying yes when last beat is osm_noticedoctor, force discuss osm_allright. Instead of saying no when last beat is osm_noticedoctor, force discuss osm_notallright. osm_noticedoctor suggests osm_silence. osm_silence replaces osm_noticedoctor.

osm_silence is a beat in OSM with reaction "The man takes a few steps closer. 'Doctor Quick?' he says. Then he gasps. 'By the Builder. It's you, isn't it? The one from the island? From Lacuna?'". osm_silence enqueues osm_waitforanswer.

osm_notallright is a beat in OSM with keyword name "no" and reaction "Uncertainty ripples across the strange features. 'Then-- did we-- is it-- you're the one from the island? From Lacuna?'". osm_notallright enqueues osm_waitforanswer. 

osm_waitforanswer is an insistent beat in OSM with reaction "He watches you intently.". osm_waitforanswer summons osm_welcome, osm_faking. Instead of saying yes when last beat is osm_waitforanswer, force discuss osm_welcome. Instead of saying no when last beat is osm_waitforanswer, force discuss osm_faking. osm_waitforanswer suggests osm_welcome.

osm_faking is a beat in OSM with keyword name "no" and reaction "But the man is shaking his head. 'No, I can tell. Your face, it's... someone else behind... I mean... it's... we did it!'". osm_faking enqueues osm_welcome.

osm_allright is a beat in OSM with keyword name "yes" and reaction "He nods, relief crossing his features only to be followed by more uncertainty. 'It's just that the band reader says we have link, that we're transmitting, and... and receiving...'[paragraph break]He squints, peering closer at you. 'By the Builder. Is... is it you? The one from the island? From Lacuna?'". osm_allright enqueues osm_waitforanswer.

osm_welcome is a beat in OSM with keyword name "yes" and reaction "The man gives a little yell of excitement and punches the air, then slaps a metal conduit which clangs resoundingly. 'The Beast did it!' he says. 'She worked! We've brought you here... how exciting... I'll need to call the G's office... so many things...' [paragraph break]He runs a hand through his hair, and seems to physically calm himself down. 'But you're confused,' he says. 'You don't know...' He casts about helplessly, as if looking for something. At last he spots the side of a dusty boxy conduit of silvery metal, and quickly rubs away some dust and grime with the sleeve of his lab coat, revealing a murky [o]reflection[x].[paragraph break]'Look,' he says, 'it'll explain. I hope.'". osm_welcome suggests osm_waitforlook.

osm_waitforlook is a beat in OSM with reaction "The man in the lab coat shifts impatiently from foot to foot.". osm_waitforlook suggests osm_explainnolook.

osm_explainnolook is a beat in OSM with reaction "'Well, I'll just explain, I guess,' the man says finally. 'You're in the body of Doctor Quick.'". osm_explainnolook enqueues osm_postreflection.

The murky reflection is a setpiece in Lab. The description is "[one of]You peer at the murky reflection and feel yourself growing faint. Peering back at you is an alien face-- like the nervous assistant[if DrQuick is female] except in gender, and[otherwise], but[end if] older, greying. It is a face etched with lines of concentration and disappointment, [if DrQuick is male]framing bushy white eyebrows[otherwise]round, ruddy cheeks[end if] guarding intense, piercing eyes. An intelligent face. A cynical face. And for the moment, yours.[or]The reflection of Doctor Quick is still unsettling, but you are slowly growing used to occupying this strange body.[stopping]".

After examining murky reflection when we have not discussed osm_postreflection, force discuss osm_postreflection.

osm_postreflection is a beat in OSM with reaction "'[if DrQuick is male]He's lent you his[otherwise]She's lent you her[end if] body while you're here,' the scientist says. 'Although technically speaking you're not actually here, of course. We're tapping the entire planetary bandwidth to send [if player is male]his[else]her[end if] sensory data through the Link back to Lacuna, and bring your motor impulses here to [if DrQuick is male]him[otherwise]her[end if]. All encrypted with your password. Terribly complex. Doctor [osm_quick]'s life work. Been years since we've done it. Didn't know if the [osm_beast] still had it in her.' He gives the conduit a loving pat.[paragraph break]'Oh!' he suddenly adds with a start. 'Cloudeye. Doctor Cloudeye is my name, Doctor Quick's [osm_Cloudeye]. Sorry, so easy to forget I'm not talking to... er, well, a pleasure to meet you.' He bows. 'And oh. Welcome to [osm_city].'". osm_postreflection summons osm_city, osm_Cloudeye, osm_beast, osm_Quick, osm_callleader. After discussing osm_postreflection: notice language translation; continue the action. Understand "beast/machine" as osm_beast. osm_postreflection suggests osm_callleader

osm_beast is a beat in OSM with keyword name "Beast" and reaction "'Brilliant design,' Cloudeye says fondly, patting its dusty bulk again. 'Technology's a bit antiquated nowadays, but Doctor [osm_Quick]'s theories are just as sound. Been mothballed for decades. We brought it back up to speed in record time, once our mindlisteners monitoring Lacuna notified us there might be a new passenger.'".

Understand "city" as osm_city. osm_city is a beat in OSM with keyword name "City" and reaction "'Yes, the City, or First City if you want the, er, full name,' Cloudeye explains, licking his lips nervously. 'We're actually on almost the exact spot where [osm_egg] crashed. Egg brought the ancestors here. Like on your Lacuna. This [osm_lab] was built around it, actually.' He runs a nervous hand through his hair, then laughs weakly.". osm_city summons osm_egg, osm_lab. 

Understand "lab" as osm_lab. osm_lab is a beat in OSM with keyword name "lab" and reaction "'This is Somenium Research Laboratory Number One,' Cloudeye says. 'One and only, actually. We're underneath City now; it's a top secret facility.'".

Understand "egg" as osm_egg. osm_egg is a beat in OSM with keyword name "Egg" and reaction "'It's fascinating,' Cloudeye says, nodding his head, 'Lacuna and our world are a kind of opposite. You see, here, when the ship crashed, it was the humans who survived, while the trees did not. So our ancestors had to learn to think for the themselves, to survive without the help of their masters.' He laughs nervously. 'And, well, here we are.'".

Understand "Cloudeye/assistant/doctor" as osm_Cloudeye when last beat is in OSM. osm_Cloudeye is a beat in OSM with keyword name "assistant" and reaction "'Well, chief assistant, really,' he blurts nervously. 'Your, er, Doctor [osm_quick]'s assistant, so lucky, really, to get the job... the [osm_hours] are rather strange, but to work with such a prominent scientist!' He wrings his hands together. 'Really, you don't know what an honor this is for you.'". osm_Cloudeye summons osm_hours. Understand "hour/hours" as osm_hours.

osm_hours is a beat in OSM with keyword name "hours" and reaction "He runs a hand through his hair. 'Yes, well, just dreams for you, but long wakeful nights and days for us here in [osm_City]. Keeping your signal phased in, scrambling frequencies to keep our transmissions undetected, cycling venting systems to keep the [osm_Beast] from overheating... and you-- Doctor [osm_quick], I mean-- always sitting there, speaking into the microphone, hoping [if DrQuick is male]his[otherwise]her[end if] words would somehow make it across the stars...'[paragraph break]A dreamy look comes into his eyes as he stares fondly at a battered chair in front of the console. 'Such a great [if DrQuick is female]wo[end if]man,' he murmurs.".

Understand  "Quick" as osm_Quick when last beat is in OSM. osm_Quick is a beat in OSM with keyword name "Quick" and reaction "'A genius,' he says, '[if DrQuick is female]s[end if]he's reverse engineered so much from the wreckage of the egg ship... the [osm_Beast] is [if DrQuick is male]his[otherwise]her[end if] baby, of course.'[paragraph break]He looks at you sidelong, hesitant. 'Doctor Quick was the one who met with the first [osm_Progue],' he adds, 'twenty years ago.'". osm_Quick summons osm_progue.

Understand "progue/first/visitor" as osm_Progue when last beat is in OSM. osm_Progue is a beat in OSM with keyword name "visitor" and reaction "He reddens. 'I really should leave explanations to the G.,' he says.". osm_Progue enqueues osm_callleader.

osm_callleader is an exciting terminal beat in OSM with fuse 99 and reaction "'Excuse me,' Cloudeye says with a start, 'I have instructions to summon the Governor General the moment you'd arrived. So much excitement it slipped my mind.' He hurries to a monitor in the control bank with a one-handed keyboard and begins punching keys at a dizzying rate.".  osm_leaderresults replaces osm_callleader. After discussing osm_callleader: Cloudeye concludes in 3 turns from now; continue the action.

At the time when Cloudeye concludes: pre-conversation processing; force discuss osm_leaderresults.

osm_leaderresults is an exciting terminal beat in OSM with fuse 99 and reaction "Cloudeye reads something off the monitor then looks up at you. 'The G is en route,' he says solemnly. 'I'm to give you his warmest welcome to City, and say that he has a great favor to ask of you when he arrives. The uh, fate of our people may depend on it.' He smiles weakly.[paragraph break]Cloudeye pushes some hanging cables out of the way and points towards a small [d]platform[x] in the corner. 'It may be a while, though,' he says. 'We're right below City center and the traffic's a nightmare. This elevator will take you up. You should have some coins in your pocket. Feel free to look around, although I wouldn't head too far down Planter Avenue if I were you.'[paragraph break]He comes back towards you and touches the [o]cap[x] you wear. 'This transmitter should let you stay connected anywhere within six blocks,' he says, 'but don't take it off or you'll spoil the link. I'll be here if you have any questions.' Cloudeye smiles, then turns to a control console and pretends to study it thoughtfully.". osm_lr2 replaces osm_leaderresults. After discussing osm_leaderresults: now elevator is open; continue the action.

Instead of saying farewell to Cloudeye when osm_leaderresults is unspoken: say "'Just a minute,' he says.".

Understand "governor" as osm_lr2 when last beat is in OSM. osm_lr2 is a repeatable beat in OSM with keyword name "governor" and reaction "'He's still quite a ways from here,' says Cloudeye, glancing at a monitor. 'Some sort of security issue, it sounds like. Feel free to go [up] and explore, if you like.'".

Instead of exhausting when location is Lab: say "'Terribly sorry,' Cloudeye says nervously, 'I really should get back to these numbers.'".

Return-To-Lab is a recurring scene. Return-To-Lab begins when Memorial Park is visited and location is Lab.

When Return-To-Lab begins: say "Doctor Cloudeye looks up nervously from a display as your elevator descends. 'Still waiting, then?' he asks. 'Well, feel free to wait here, if you like.'".

Instead of greeting Cloudeye when location is Lab and Cloudeye is idle: pre-conversation processing; force discuss ce_greet.

ce_greet is a repeatable beat in OSM with reaction "'[one of]Er, yes[or]Who, me[or]Oh, uh, yes[at random]?' he says nervously. 'What can I tell you? More about the [osm_lr2], or [osm_city], or the [osm_beast] maybe?'". 

Return-To-Lab ends when location is not Lab.

Chapter  - Memorial Park

Memorial Park is a room.

Report going from Lab to Memorial Park: say "You step onto the platform, and it immediately begins to rise towards a dark square in the ceiling. Cloudeye gives you a small wave as he vanishes from sight. A few moments later the elevator rises into a small wooden enclosure with one door. You push through into the city[if Memorial Park is unvisited].[paragraph break]The sudden, overwhelming rush of noises, strange smells, bustling vehicles, and a cold grey sky convince you, more than anything, that this really is a whole other world. The air is acrid, tinged with smells of unfamiliar food and sweat, and the wind that whips through your hair is chill, but dense. After a moment's vertigo, you finally look around and get your bearings[end if].".

Report going from Memorial Park to Lab: say "You insert your passcard into the slot near the door of the tiny shed. A light flashes green and the door unlatches. You step inside and descend on the elevator back to the lab.".

The description of Memorial Park is "Though this small park is surrounded on all sides by urban [o]chaos[x], something sacred is in the unassuming bushes here, neatly trimmed, and the simple, cobbled [o]paths[x] that wind between them, undisturbed but for a rare bench or straight black lamppost.[paragraph break]A [o]statue[x] of black-smudged bronze stands tall and silent at both the physical, and, you imagine, spiritual center of the park.[paragraph break][exits].". The exits text of Memorial Park is "Small gates on all four sides lead out to the [d]city[x], while an unassuming tool shed conceals the entrance back [down] to the lab". Understand "city" as outside when location is Memorial Park.

The shed is a setpiece in Memorial Park. Understand "door" as shed. The description is "Half-hidden behind a well-tended shrub, the simple wood hut looks like a simple gardener's tool shed from the outside.". Instead of opening or entering shed, try going down. Instead of going inside in Memorial Park, try going down.

The freedom statue is a setpiece in Memorial Park. The description is "Bold, powerful, the statue depicts a single man, herculean but not overwhelmingly so, in the act of stepping clear of a shattered eggshell at his feet. Amidst the wreckage are dozens of tree roots snarling about the man's foot and back leg, snake-like, but he rips free of them as he steps forward into some metaphorical boldness. Cast from some dull copper-colored medium, angles and edges have turned to black due to some age-provoked interaction with the elements. [paragraph break]At the base of the statue is a [o]plaque[x] with an inscription in some unfamiliar language.". Check climbing freedom statue: say "It seems like that would be immensely disrespectful." instead.

The freedom statue plaque is part of the freedom statue. The description is "At first the symbols mean nothing to you, but then some part of your borrowed brain whispers meaning to your consciousness: [paragraph break]'...and of that toil undertaken alone, with none to coddle or mitigate or direct or repurpose, of that toil alone is man made free.' --Builder Tall".

The chaos is a backdrop with printed name "city chaos". It is in Memorial Park and Plaza. The description is "The noises, smells, and constant movement of a city overwhelm you; it has been a long time since you've been in such a heavy urban area.".

The simple cobbled paths are a setpiece in Memorial Park. The description is "Though you have little to compare it to, the paths and quaint little benches feel as if they come from some earlier part of this world's history, slowly weakening while the city gains strength and presses in from all sides.". Understand "path" as simple cobbled paths.

Instead of going down from Memorial Park when Islander Bombing has happened: say "You insert your passcard into the door, but a light flashes red, and the readout displays 'SECURITY LOCKDOWN: ALL ACCESS REVOKED.'". First instead of exiting when location is Memorial Park: try going outside instead. 

Report going from Memorial Park to Plaza: say "[if Plaza is unvisited]Nervously, y[otherwise]Y[end if]ou walk down the cobbled paths towards a wrought-iron archway, and pass through into the swirling center of First City.". Report going from Plaza to Memorial Park: say "You find one of the black iron archways and duck back into the secluded park at the center of the plaza, the city's noise gradually fading away.".

MemorialPark-stuff is stuff in Memorial Park. Understand "park/bush/bushes/bench/lamppost/gate/gates" as MemorialPark-stuff when location is Memorial Park. Understand "park" as inside when location is Plaza.

Chapter  - Plaza

Section - Moving

Table of Cardinal Directions
dir			street		fullstreet			flag
a direction	
north		"Planter"		"Planter Avenue"	0
south		"Teacher"		"Teacher Avenue"	0
east		"Builder"		"Builder Avenue"	0
west		"Mother"		"Mother Avenue"	0

Table of Rebworld Map
dir		depth	room
a direction	a number	an objects
with six blank rows.

The list of rebstreet rooms is a list of objects that varies. The list of rebstreet rooms is {Room1, Room2, Room3, Room4, Room5}.

The rebstreet depth is a number that varies. The rebstreet cardinality is a direction that varies. The rebstreet cardinality is down.

Before going a direction (called way) when location is Plaza or location is a rebelcity-room or location is Room6 (this is the going on rebel streets rule): 
	if way is northeast or way is northwest or way is southeast or way is southwest or way is inside or way is up or way is down, continue the action; [ only dealing with cardinals here. ]
	if the drama manager is being debugged:
		repeat through Table of Rebworld Map:
			say "dir: [dir entry]; depth: [depth entry]; room: [room entry][line break]";
	[going back to plaza]
	if rebstreet depth is 1 and way is the opposite of rebstreet cardinality:
		now rebstreet cardinality is down;
		now rebstreet depth is 0;
		rebmove player to Plaza;
		stop the action;
	[If the direction we're trying to move is at angles to the street we're on, prevent.]
	if location is a rebelcity-room and moving at angles:
		say "The path that direction is blocked by buildings." instead;
	[If we've already assigned this room, move there.]
	repeat through Table of Rebworld Map:
		if ( rebstreet cardinality is dir entry or location is not a rebelcity-room ) and dir entry is way and depth entry is ( rebstreet depth + 1 ) :
			now rebstreet cardinality is way;
			increase rebstreet depth by 1;
			rebmove player to room entry;
			stop the action;
		if ( rebstreet cardinality is the opposite of way or location is not a rebelcity-room ) and dir entry is the opposite of way and depth entry is ( rebstreet depth - 1 ) :
			now rebstreet cardinality is the opposite of way;
			decrease rebstreet depth by 1;
			rebmove player to room entry;
			stop the action;	
	[otherwise, assign.]
	if the number of entries in the list of rebstreet rooms is 0: [bombing]
		if Islander Bombing is happening:[aar]
			if location is crime scene, say "The smoking crater completely blocks further progress down the avenue." instead;
			else say "Heavy barricades block access to that avenue." instead;
		else:
			say "ERROR: no more rooms to assign." instead;
	choose a blank row in Table of Rebworld Map;
	change dir entry to way;
	change depth entry to rebstreet depth + 1;
	change room entry to entry 1 of list of rebstreet rooms;
	remove entry 1 from list of rebstreet rooms;
	let newroom be room entry;
	choose row with a dir of way in Table of Cardinal Directions;
	now the printed name of newroom is fullstreet entry;
	now rebstreet cardinality is way;
	now rebstreet depth is rebstreet depth + 1;
	rebmove player to newroom;
	stop the action.

To decide whether moving at angles:
	if the drama manager is being debugged, say "**rc: [rebstreet cardinality]; n: [noun]**";
	if ( rebstreet cardinality is north or rebstreet cardinality is south ) and ( noun is east or noun is west ) , decide yes;
	if ( rebstreet cardinality is east or rebstreet cardinality is west ) and ( noun is north or noun is south ) , decide yes;
	decide no.


To rebmove player to (loc - a room):
	if loc is Plaza begin;
		say "You return to the [if Islander Bombing is happening]plaza, now eerily deserted, distant wailing sirens echoing around the urban canyon[otherwise]noise and bustle of the City Plaza[end if].";
	otherwise if location is Plaza and Islander Bombing is not happening;
		say "[if Islander Bombing has happened]Walking quickly across the mostly deserted streets[otherwise]Carefully crossing a busy street with a cluster of other pedestrians[end if], you leave the plaza behind and head down the broad avenue.";
	otherwise;
		say "[one of]You continue down the avenue[or]You keep walking along the broad avenue[or]You walk another block down the avenue[or]You keep moving down the street[or]You pass by a dense cluster of squat brown buildings into another block of the avenue[in random order]";
		if a random chance of 2 in 3 succeeds begin;
			if Islander Bombing is happening, say "[one of], the streets empty save for a few figures running into houses and pulling doors tight behind them[or], footsteps strangely loud in the sudden silence[or], passing a smoking piece of concrete incongruously in the middle of the street[in random order]";
			otherwise say "[one of], trailing a clump of shoppers with heavy brown bags[or] under the shadowless light of the overcast sky[or], crossing a small side street after carefully checking for vehicles[or], stepping carefully around a cluster of children playing some complicated game on the sidewalk[or], dodging a stinking pile of garbage overflowing from a wire-mesh cage[or], eyes wide open[or] slowly, stuck behind two men pushing a huge metal box on a tiny wheeled cart[or], after narrowly avoiding one of the boxy cars making a sharp turn into a tiny side street[or], passing a half-block of cobblestone sidewalk that abruptly returns to grey-smeared cement[or], moving faster than the boxy cars on the road which seem to be backed up before some indefinable accident[in random order]";
		end if;
		say ".";
	end if;
	move player to loc.

After printing the name of a rebelcity-room, say "[if Room1], At the Oratorium[otherwise if Room2], At the Library[otherwise if Room3], At the Market[otherwise if Room4], Near the Street Art[otherwise if Room5], Residential District[end if]". After printing the name of Room6, say ", Warehouse District".



The pseudo-plaza is a backdrop. It is in Room1, Room2, Room3, Room4, Room5, Room6, and Room7. Understand "plaza" as the pseudo-plaza. Instead of examining or entering the pseudo-plaza: try going the opposite of rebstreet cardinality.


Section - ambience

The ambience table of Rebelworld-Outdoors is the Table of Plaza ambience.

Table of Plaza ambience
freq		start time	end time	text	table		trigger	flag
frequent	--	--	"With an enormous rumbling, a smoke-spewing train pulling six windowless metal cars flies past on elevated trestles."	--	train
common	--	--	"One of the boxy grey cars comes to a halt, and [one of]two[or]three[or]four[at random] people quickly get out, leaving the hatchway open[if a random chance of 1 in 2 succeeds]. A moment later a pedestrian hops in and, with a cough, the vehicle speeds away[end if]."
common	--	--	"[one of]Muffled shouting come from inside one of the indistinct buildings[or]The sound of children floats down from an open window on an upper story[or]Smells of sizzling meat waft through some window a story above[or]An unpleasant odor lingers for a moment, then is swallowed up again in the general city scent[in random order]."
uncommon	--	--	"[one of]Somewhere a percussive alarm bell rings for a moment, echoing across the plaza before vanishing into silence again.[or]The crowd of pedestrians swells as a group pours out of a nearby building.[or]The boxy vehicles pull to the side as some armored behemoth trundles by.[or]A deep rumbling thrums through the ground for a moment, before being swallowed up by the other noise.[or]A group of children dodge through the pedestrians, the expression on their faces unfamiliar to you, then disappear into the crowd.[or]An old man passes slowly through the crowd, piling discarded litter into a small wheeled cart tugged behind him.[or]Walking slowly, a woman dressed in a great fur coat despite the heat speaks loudly words that your borrowed mind don't bother to translate. Most of the passers-by ignore her.[or]A dozen people in matching red outfits pass quickly by in formation, their gait a strange skipping hop.[in random order]"
rare	--	--	"From a high window above, an old woman throws handfuls of tiny purple squares, which flutter through the air before settling on the ground around you."
rare	--	--	"Two men wearing strange stilt-shoes walk by, frowns on their faces as they scan the crowd warily."
rare	--	--	"A long car drives slowly by, some incomprehensible noise being broadcast from megaphones extending on all sides."

[BUG: Make City ambience happen more often than Lacuna ambience.]

The pedestrians are a backdrop. They are in Plaza, Room1, Room2, Room3, Room4 and Room5. Understand "people/person/pedestrian/crowd/passers-by/passersby/children/man/woman" as pedestrians. The description is "[if Islander Bombing is happening]Only a few people are in the streets now, rushing hurriedly indoors while glancing in fear at the skies[else]Seas of faces, each intent on some important and personal endeavor, passing by almost too quickly to take in: old faces, young faces, angry, oblivious, crafty, annoyed; frightened faces and weary faces and cynical faces and contented faces. They are the faces of all crowds in all cities. In that, at least, this world seems no different from any other you've found[end if].". Instead of attacking pedestrians: say "You [one of]lash out viciously at the crowd[or]strike out a random face[in random order], and cries and gasps ring out. People back away from you nervously."; increase the rap sheet of DrQuick by 3. 

To vague greet pedestrians: say "You approach a[one of]n old woman wrapped in gray, but she[or] tall man in a charcoal suit, but he[or] well-dressed older gentleman, but he[or] woman in a fiery red gown, but she[or] schoolboy in uniform, but he[or] woman dressed in thick green wool, but she[in random order] [one of]ignores you and continues walking[or]ducks into a passing vehicle and doesn't see you[or]walks into a crumbling brick building before you catch up[or]vanishes into the crowd before you can say hello[or]points apologetically to a brass timepiece and hurries on[or]turns to argue angrily with a companion and you pull back awkwardly[in random order].".

The boxy vehicles are a backdrop. They are in Plaza, Room1, Room2, Room3, Room4, and Room5. Understand "car/cars/vehicle" as boxy vehicles. The description of boxy vehicles is "The grey cars are all sharp edges and angles, touched with rust and rumbling with internal vibrations. Tendrils of acrid smoke whisper out from underneath their large textured wheels." Check entering boxy vehicles: say "You approach one of the boxy vehicles, but it speeds noisily away before you reach it." instead.

The train is a set dressing. Understand "windowless" or "metal" or "cars" or "elevated" or "trestles" or "trestle" or "trains" as the train. The description is "The long boxcars are made of hammered metal dulled to a sooty black, covered in dents and rusty seams.". Instead of doing anything other than examining to the train, say "It has already disappeared down a long, narrow avenue."


Section - Scenes

[
A boxy-car is an enterable open undescribed vehicle. It is fixed in place and not openable. The printed name is "boxy vehicle". Understand "boxy/vehicle/car/hatch/hatchway" as boxy-car. The description is "The short, stubby vehicle shudders and grind as it idle, a thin trail of grey-black smoke seeping out from underneath it. The hatchway is open.". Instead of opening boxy-car, try entering boxy-car. Instead of closing boxy-car: say "You rotate the hatchway shut with a squeaking of metal on metal.". After going: remove boxy-car from play.

Report entering boxy-car: say "You duck through the circular hatchway and enter the strange-smelling interior.".

An access slot is in boxy-car. "".

The car interior rule is listed before the room description body text rule in the carry out looking rules. This is the car interior rule: if the player is in boxy-car

]

Table of Panic Plaza ambience
freq		start time	end time	text	table		trigger	flag
common	--	--	"People hurry through the mostly deserted streets, expressions of fear on their faces."
common	--	--	"A group of blue-clad soldiers jog through the streets, heavy weapons on their arms."
common	--	--	"A woman pulls two crying children quickly into an underground shelter."
common	--	--	"Distant shouts and whistles drift through the smoke from some other part of the city."
common	--	--	"The wail of sirens and screams floats through the emptying streets."
common	--	--	"A man stuffs jewelry from a broken store window into his coat pockets, but then turns and flees when he notices you."


The description of Plaza is "[if Islander Bombing is happening]A few military and emergency vehicles gun noisily through the abandoned streets of the plaza, and a few people hurry quickly through the streets, but the plaza is mostly silent now[otherwise]Noise and chaos fill this large circular plaza, ringed with eight- or nine-story [o]buildings[x] and a double set of busy roadways clogged with boxy, smoke-spouting [o]vehicles[x]. [A sentence about the Plaza][end if].[paragraph break][exits]." The exits text of Plaza is "The [d]park[x], half hidden in the center of the plaza, seems like part of another, more peaceful world. [etplaza2]". To say etplaza2: say "[if Islander Bombing has not happened]Four broad avenues run off from the edges of the plaza: signs label them [d]Builder[x], [d]Teacher[x], [d]Mother[x], and [d]Planter[x][otherwise][post bombing streets][end if]". Understand "Builder" as east when location is in Rebelworld and location is not Space Museum. Understand "Teacher" as south when location is in Rebelworld. Understand "Mother" as west when location is in Rebelworld. Understand "Planter" as north when location is in Rebelworld. [This does double duty: both establishes the direction out of the plaza and allows the player to continue along that street/direction.]

To say a sentence about the Plaza: say "[one of][o]People[x] scurry in every direction down sidewalks, up steps, and in and out of buildings[or]The dull roar of urban life washes up and down the concrete and brick of the plaza like a human tide[or]Steam rises from vents in the gutters and vendors call out to oblivious [o]pedestrians[x][or]Electric traffic lights make sharp buzzing hisses as they switch clunkily from one signal to another[or]Dirt and debris swirl in invisible eddies as the wind gutters through the plaza[in random order]".

To say post bombing streets:
	say "Heavy barricades block ";
	let myctr be 0;
	repeat through Table of Cardinal Directions:
		if flag entry is 0:
			if myctr is 0:
				say "[street entry] and ";
				now myctr is 1;
			else:
				say "[street entry] Avenue";
	say ", while ";
	now myctr is 0;
	repeat through Table of Cardinal Directions:
		if flag entry is 1:
			if myctr is 0:
				say "[d][street entry][x] Avenue and ";
				now myctr is 1;
			else:
				say "[d][street entry][x] Avenue";
	say " remain open".

To say shortrebname of (loc - a room):
	if the printed name of loc is "Builder Avenue" begin; say "Builder";
	otherwise if the printed name of loc is "Teacher Avenue"; say "Teacher";
	otherwise if the printed name of loc is "Planter Avenue"; say "Planter";
	otherwise if the printed name of loc is "Mother Avenue"; say "Mother";
	end if.

Some barricades are a setpiece. The description is "Temporary military barricades bristling with barbed wire and sharply worded 'Keep out' signs.". Instead of climbing or pushing or attacking barricades, say "They are bristling with barbed wire; in this borrowed body, you'd better not.".

[TODO: Add cross-street workings. ] [TODO: Add "arbitrary" north/south.]

A rebelcity-room is a kind of room. The exits text of a rebelcity-room is usually "[etrcr]".

To say etrcr:
	if Islander Bombing has happened and location is crime scene, say "Progress farther down the avenue is blocked by a flaming crater; only the way back towards the [d]plaza[x] is clear";
	otherwise say "[if rebstreet depth is 1]The [d]plaza[x] is visible a short distance away, while opposite, [keyword-name-reb-location] continues[otherwise][keyword-name-reb-location] continues further into the city, away from the distant [d]plaza[x][end if]". 

To say keyword-name-reb-location:
	repeat through Table of Cardinal Directions begin;
	if fullstreet entry is printed name of location, say "[d][street entry][x] Avenue";
	end repeat.




Section - Buildings

The buildings are a backdrop. They are in Plaza, Room1, Room2, Room3, and Room4. Understand "building" as buildings. The description is "Mostly brick, mostly eight or nine stories high, and mostly grey or tan, the buildings crowd together closely against the wide streets with few windows but many entrances. Narrow alleyways strewn with rubbish stretch back into dimness beside each one; many have steep concrete steps with wrought-iron railings running up to [o]doors[x] on the second or even third level up.". Check climbing buildings: say "You wouldn't be able to get a grip on the grimy concrete." instead. Check going up when buildings are enclosed by location: try entering buildings instead.

The reb-doors are a backdrop. They are in Plaza, Room1, Room2, Room3, and Room4. Understand "door/doors/entrance/entrances/window/windows/lock/locks" as reb-doors. Does the player mean doing something to reb-doors: it is unlikely. The description is "The buildings have more doors than it seems they strictly need, of all shapes and sizes.". Instead of entering or opening or using reb-doors: try entering buildings. Check closing reb-doors: say "Already shut." instead. Instead of attacking reb-doors: try attacking buildings. Instead of knocking reb-doors: try knocking buildings. Instead of vague unlocking reb-doors: try vague unlocking buildings.

To pick a random rebel door: 
	say "You pick a [one of]small[or]mid-sized[or]large[or]older-looking[or]newer-looking[at random] [one of]grey[or]tan[or]soot-black[or]darkish yellow[or]beige[as decreasingly likely outcomes] [one of]brick[or]concrete[as decreasingly likely outcomes] ";
	say "building, [one of]walk up a set of narrow steps[or]walk down a few flat stairs[or]step up[or]step up a single large stair[or]pass through a tiny covered foyer[at random] to a [one of]tiny[or]paint-drowned[or]elegant old[or]graffiti-strewn[or]splintered[or]double-wide[or]tall[at random] door".

Instead of going or entering buildings:
	pick a random rebel door;
	say ", and try the handle. ";
	say "[one of][noonehome][or][noonehome][or][papersscene][or][noonehome][stopping].".

To say noonehome: say "It's locked. [one of]You move back to the sidewalk[or]You jiggle the handle once again before heading back to the street[or]From a window above you, you see a [random voyeur] scowling down at you, so you beat a hasty retreat back to the street[or]You are about to try again when you spot a uniformed man down the street heading your direction; quickly, you step away from the door[as decreasingly likely outcomes]".

To say papersscene: say "The door opens on a cramped apartment, and a frightened old woman hovering over a stove with a saucepan in her hands.[paragraph break]'What do you want?' she mutters fearfully, then catches sight of your uniform. 'Papers? You need to see my papers?' Her hand trembles, the pungent sauce in the pot shaking crazily as she sets in back on the counter. She quickly rummages through a door and comes up with a handful of documents, which she thrusts into your hands. But some uniformed guards are coming down the street in your direction, so you quickly return the papers to the old woman and shut the door".

To say random voyeur: say "[one of]suspicious old woman[or]wide-eyed young girl[or]bearded man[or]frightened young woman[or]blank pudgy face[in random order]".

[To say burglarcaughtscene: say "A burly uniformed man stands behind you, gripping your arm tightly. 'I've been watching you,' he says unpleasantly, 'and even though you've got a fancy uniform, I don't think you're cleared to bother random citizens. You're going to have to come with me."; print a section break; move player to Holding-Cell.]

Instead of knocking buildings, try vague knocking. Instead of vague knocking when buildings are visible:
	pick a random rebel door;
	say ", and knock [one of]sharply[or]three times[or]twice[at random]. ";
	if a random chance of 10 in 10 succeeds or Islander Bombing has happened begin;
		say "You wait for some time, but there is no answer.";
	otherwise;
		do nothing;
		[ UNFINISHED: Write a scene or two here. ]
	end if.

Instead of opening buildings, try entering buildings. Instead of vague unlocking buildings, say "The lock seems quite solid, but the door itself seems weak and would probably give easily to a solid attack.".

Instead of attacking buildings for the first time:
	increase the rap sheet of DrQuick by 2;	
	say "Glancing cautiously around to be sure no one is paying attention, you step back and then smash the door with your shoulder. The wood splinters and the door gives. Reaching inside, you slide open the lock and slip quickly inside.";
	now former location is location;
	move player to Apartment.

Instead of attacking buildings for at least the second time: say "Some black-suited police types are strolling nearby, keeping an eye on you. You'd better not.".

Apartment is a room in Rebelworld. The description of Apartment is "Colorless light filters through a single small paned window into this tiny apartment, odors of distant mildew and unwashed dishes hovering faintly in the air like ghosts.[paragraph break]A large wooden [o]cabinet[x] with dials and a pull cord is placed prominently in the room, in front of a faded, frayed [o]rug[x]. Tucked in a corner is a small [o]fireplace[x], a [o]pad[x] of paper hanging next to it on the wall. [exits].". The exits text of Apartment is "The only way out is [d]back[x] to the street". First Instead of exiting when location is Apartment: try retreating.

The radio is an undescribed device in Apartment. It is fixed in place. The printed name is "wooden cabinet". Understand "wood/wooden/cabinet/radio" as radio when location is Apartment. The description is "Almost as tall as you are, the imposing wooden cabinet is ornately stained and decorated. Three silver [o]dials[x] on the front are set to inscrutable numbers running around their edges, while a chain pull [o]cord[x] extends from the side.". First Report switching on the radio: say "You pull the chain until something plunks inside the wooden cabinet. A whir, a hum, and then pulsating static echo inside the cabinet, before finally resolving into recognizable sound." instead. First Report switching off the radio: say "You pull the chain again. The music fades slowly into muffled silence, a high-pitched whir from inside the cabinet winding down through subsonic tones and then away." instead. Instead of listening when location is Apartment: try waiting. The examine described devices rule is not listed in any rulebook.

Every turn when the radio is switched on and location is Apartment: say "[one of]The cabinet emits a strange tinny sound which finally resolves in your mind to a strange form of music. Frenetic, chaotic, it uses such a wide variety of instruments and contradictory tonal patterns that at first it is overwhelmingly incomprehensible.[or]Gradually, you begin to adapt to the strange music. You can start to pick out a melody line that, despite the chaos around it, is surprising in its simplicity.[or]The strange symphony continues, building in ululating runs and crescendos towards a climax.[or]The music reaches a cacophonous climax, holding an imbalanced chord before abruptly falling silent.[or]'Summer grass summer weed, within the summer sun,' a tinny voice from the cabinet says thrillingly. 'Teacher Frosthair. Once again, once again.'[or]Two discordant notes sound mutedly from the cabinet, twining gently around each other, sustaining.[or]The two notes are joined by others, one strange instrument at a time adding its voice to the musical palette.[or]The strange music continues to blare tinnily from the cabinet.[stopping]".

The three silver dials are part of the radio. They are minor. The description is "You are hesitant to adjust the dials without knowing what they are for.".

The chain pull cord is part of the radio. Instead of pulling chain pull cord when radio is switched off, try switching on the radio. Instead of pulling chain pull cord when radio is switched on, try switching off the radio.

A faded rug is a setpiece in Apartment. The description is "Though well-worn and threadbare, you can still faintly make out a stylized pattern on the rug, showing a foot pulling itself free from vicious entangling roots.".

The apartment-fireplace is a setpiece in Apartment. Understand "fire/fireplace" as apartment-fireplace when location is Apartment. The printed name is "small fireplace". The description is "The fireplace is built into the wall, but seems too small to be used for heat or cooking. On a hook next to it is a small [o]pad[x] of newsprint and a stubby pencil. You notice burnt [o]scraps[x] of paper scattered in the ashes of the fireplace". Understand "light [apartment-fireplace]" as a mistake ("Probably best not to make yourself too at home.").

Some burnt scraps of paper are a minor prop in Apartment. The description is "Kneeling to the ground, you peer at a few of the burnt scraps curiously. Most are completely incinerated, but you can catch a few scraps of writing here and there: '...tell me what to...' '...can't choose oh help...' '...mother were here she...' '...be strong I must be...' '...my mind. Who can I...'". 

A pad of newsprint is a minor prop in Apartment. Understand "stubby/pencil/paper/hook" as pad of newsprint. The description is "The small pad rests from the wall on a ceremonial hook; about half the pages are gone. The stubby pencil is attached to it by a looped piece of black string.".

Instead of retreating when location is Apartment: say "You slip back outside into the city streets."; move player to former location.

Breaking-And-Entering is a scene. Breaking-And-Entering begins when location is Apartment. Breaking-And-Entering ends when location is not Apartment.

BAE-fate is a number that varies. BAE-fate is -3.

Every turn during Breaking-And-Entering:
	increase BAE-fate by 1;
	if BAE-fate > 0 and a random chance of BAE-fate in 12 succeeds and Burglar-Busted has not happened begin;
		move angry renter to location;
		say "Suddenly the door swings open, and a middle-aged [o]man[x] wearing wire-rim spectacles and a furious frown barges in.";
	end if.

Burglar-Busted is a scene. Burglar-Busted begins when angry renter is in location. Burglar-Busted ends when location is not Apartment or angry renter is not in Apartment.

When Burglar-Busted begins: try greeting angry renter.

The angry renter is a man. "An angry [o]man[x] in a dull red sweater stands near the door, furiously staring you down." Report greeting angry renter: force discuss bbust-intro instead. Understand "man" as angry renter.

BBUST is a thread. bbust-intro is a beat in BBUST with reaction "'What are you doing, in Builder's sight?' he shouts in a reedy, high-pitched wail. 'Who do you think you are, coming in here? What...' He catches sight of your uniform and trails off. 'What is this?' he says, more weakly. 'I haven't done anything wrong. Am I-- are you with the Force?'". Instead of saying yes or saying maybe when last beat is bbust-intro: force discuss bbust_force. Instead of saying no when last beat is bbust-intro: force discuss bbust_noreply2. bbust-intro suggests bbust_noreply. bbust-intro summons bbust_force, bbust_noreply2. bbust-intro summons bbust_force, bbust_noreply2.

bbust_force is a beat in BBUST with keyword name "yes" and reaction "His eyes widen, and he takes a half-step back, putting a hand to his chest. 'I've done nothing!' he cries, 'nothing! What, is this because I went to hear that Greeneyes [t]sympathizer[x] speak last winter? I didn't like him, didn't want to go. Wrote a letter to the Spirit denouncing him afterwards. I'm not a sympathizer, not!'". bbust_force summons bbust_sympathizer. bbust_force suggests bbust_noreply. bbust_force cancels bbust_dontbelieve.

Understand "greeneye/greeneyes/sympathizer" as bbust_sympathizer when last beat is in BBUST. bbust_sympathizer is a beat in BBUST with keyword name "sympathizer" and reaction "'Abhorrent philosophy,' the man says, nodding vigorously, 'we can't survive without leaders. It's different, can't they see that? Not the leaders that are bad but that we weren't them; the Forest were leaders, not us. Now we lead ourselves. Don't they see? Greeneyes, bah,' he spits. 'Not for me! Not for me! Please, you believe me, don't you?'". The yes-beat of bbust_sympathizer is bbust_believe. The no-beat of bbust_sympathizer is bbust_dontbelieve. bbust_sympathizer suggests bbust_dontbelieve. bbust_sympathizer summons bbust_believe, bbust_dontbelieve.

bbust_dontbelieve is a beat in BBUST with keyword name "no" and reaction "He pales for a moment, then straightens a bit, thought not quite out of a cower. 'Then please, I need to see your [bbust_passcard],' he says. 'My rights.'". bbust_dontbelieve enqueues bbust_noreply. bbust_dontbelieve cancels bbust_force.

bbust_believe is a beat in BBUST with keyword name "yes" and reaction "He smiles, tension fading from his shoulders. 'Oh, yes, oh, of course yes. Thank you. Yes. Then you'll go, if you don't mind. Or if not I'll need to see your [bbust_passcard]. My rights.'". bbust_believe suggests bbust_noreply. bbust_believe summons bbust_passcard.

Instead of showing passcard to angry renter, force discuss bbust_passcard. Instead of giving passcard to angry renter, force discuss bbust_passcard. Understand "credentials" as bbust_passcard when last beat is in BBUST. bbust_passcard is a beat in BBUST with keyword name "credentials" and reaction "You hold out the passcard around your neck to the small man's squinting eyes. He studies it for a moment, then shoves his spectacles back up your nose with a sniff. 'Top scientist,' he says, 'no Force privileges. You can't be here, then. Not your right. I should report you. You'd best [bbust_leave] now, before, before I get angry.'". bbust_passcard suggests bbust_noreply2.

bbust_noreply is a beat in BBUST with reaction "'Now, now, answer me!' the man says, stepping forward [if radio is switched on]and switching off the radio[otherwise]timidly into the room[end if]. 'I'm entitled. Under Builder's Law I'm entitled if you're with the Force, to know your letters and see your [bbust_passcard]. I'm entitled, entitled!' He quivers indignantly before you.". bbust_noreply suggests bbust_noreply2. bbust_noreply2 replaces bbust_noreply. After discussing bbust_noreply: now radio is switched off. bbust_noreply summons bbust_passcard.

bbust_noreply2 is a beat in BBUST with keyword name "no" and reaction "'Now, well that's it,' the man says, his voice rising to a high-pitched squeal. 'I'm calling the Force. You can't do this, can't. I'm entitled.' He backs fearfully up to the door and calls 'Help! Help! Burglary, help!'". bbust_noreply3 replaces bbust_noreply2. bbust_noreply2 suggests bbust_noreply3.

bbust_noreply3 is a terminal beat in BBUST with reaction "'Help!' the man continues to cry. 'A burglary, burglary, help!'". After discussing bbust_noreply3: now the rap sheet of DrQuick is 10.

Instead of attacking angry renter: say "You tackle the man, who collapses feebly to the ground, crying 'Help, help!' He batters at you ineffectually, eyes rolling back in his head as he appears to go into some sort of panic attack."; now rap sheet of DrQuick is 10.

Instead of retreating when Burglar-Busted is happening and ( we have not discussed bbust_passcard and we have not discussed bbust_noreply2 and we have not discussed bbust_noreply3 ) : force discuss bbust_leaveearly. bbust_leaveearly is an ephemeral beat in BBUST with reaction "'Wait now just a slim there,' the man says, stepping in your path and holding out a hand. 'I have explanations to hear.". bbust_leaveearly2 replaces bbust_leaveearly. bbust_leaveearly2 is a terminal beat in BBUST. After discussing bbust_leaveearly2: force discuss bbust_leave; remove angry renter from play; try exiting. Before retreating when location is Apartment and we have not discussed bbust_leaveearly2: force discuss bbust_leave; continue the action.

bbust_leave is a terminal beat in BBUST with reaction "'Your superiors will be hearing about this!' the man cries weakly after you as you slip past him and out into the street.".




Section - The Oratorium

To say a sentence about a rebelcity room: say "[one of]A hot wind blows down the street, loose papers and flecks of debris swirling in its wake[or]Lines of laundry stretch from building to building across dim cramped alleyways[or]Chalk drawings run down the sidewalk[or]The buildings here are covered with inscrutable graffiti[or]Tiny well-tended flowerpots fill the windows of the endless row houses[in random order]".

Room1 is a rebelcity-room. The description of Room1 is "A large civic building adjoins the street here, fading letters inscribed above its high doorways: 'CITY ORATORIUM.' A printed [o]notice[x] stands near the doorway leading [d]in[x]. [paragraph break][exits].".

The printed notice is a setpiece in Room1. The description is "The notice is set in a heavy, official typeface. It reads as follows:

---------------------[line break]
Schedule of Discussions for the CITY ORATORIUM

TO-DAY[line break]
Closed for cleaning

TO-MORROW[line break]
Hour the 1st -- Builder Strongarm -- 'Is Beauty Definable?'[line break]
Hour the 2nd -- Planter Feathertouch -- 'Dealing with Authority Addiction'[line break]
Hour the 3rd -- Builder Longleg -- 'How should we better prepare for a greeneyes attack?'[line break]
Hour the 4th -- Farmer Grace -- 'An Idea for Safer Electric Streetlights'[line break]
Hour the 5th -- Thinker Blackhair -- 'Nature of Man v. Beast, part 3'[line break]
Hour the 6th -- Planter Thinblood -- 'Should we form a committee opposed to tree sympathizers?'[line break]
Hour the 7th -- CANCELLED -- Curfew[line break]
Hour the 8th -- CANCELLED -- Curfew[line break]
Hour the 9th -- CANCELLED -- Curfew

Orators will please yield the floor at the end of the assigned hour and move your discussions to the foyer. Requests for usage must be received at City Office by Hour the 3rd the day prior to your discussion.[line break]
---------------------".

Instead of going inside when location is Room1, say "The large doors are barred shut. Peering inside, you can see a large circular amphitheater, surrounded by empty benches, empty save for a few cleaners and their supplies.".

The Oratorium is a minor setpiece in Room1. Understand "building/large/civic/doorway/doorways/door" as the Oratorium. The description is "The building looks old, yet grand.". Instead of entering or opening Oratorium, try going inside. First instead of vague knocking when location is Room1: say "You knock on the heavy stone doors, but there is no response." instead. Does the player mean doing something to Oratorium: it is likely.


Section - The Library

[ {The library. Here, upon entering, the player is recognized as the famous scientist and given the books he had reserved. One is on the emerald crystals, and their fantastic property to communicate even over impossibly great distances. The Treeworld used up their entire supply. The book also mentions that the crystals are somewhat radioactive, and prolonged exposure to them produces identical symptoms to those suffered by Progue.} ]

Room2 is a rebelcity-room. The description of Room2 is "The avenue is well kept here, outside an old stone building lined with fluted columns. A short flight of [d]steps[x] leads up to its entrance, and a chiseled [o]inscription[x] runs along the top of the building.[paragraph break][exits].". Understand "steps" as library-room when location is Room2.

Report going from Room2 to library-room: say "You crest the worn stone steps and pass through a set of heavy wrought-iron doors into a dim, cool, airy interior.". Report going from library-room to Room2: say "You push the heavy doors open and emerge into the noise and chaos of the city.".

The library-facade is a setpiece in Room2. The printed name is "library". Understand "steps/library/building" as library-facade when location is Room2. Instead of doing anything to library-facade, try going inside.

The chiseled inscription is a setpiece in Room2. The description is "TO THOSE WHO NAMELESS FOUND NAMES, HOMELESS MADE HOMES, AND TREELESS, GREW.[paragraph break]BUILDER TALL[line break]COUNTER QUICK[line break]\/\/\/\/\/\/\/\/\[line break]MOTHER ROSEHAIR[line break]PLANTER LONGSTRIDE[line break]HUNTER KEENSIGHT[line break]TEACHER GRACE[line break]HEALER GOLD[line break]SPEAKER SWIFTTONGUE[line break]TENDER SHARPEARS[line break]AND TWO WHO DIED CHILDLESS AND NAMELESS[paragraph break]There is a gap in the list of names, as if one has been removed." Understand "gap/list/names/missing/name" as chiseled inscription.

Instead of going inside from Room2 when Islander Bombing is happening: say "The doors to the library are shut and barred.".

The Library-room is a room. The Library-room is inside from Room2. The printed name of Library-room is "Library". The description of Library-room is "Light filters in through high windows, illuminating shelves of books and rows of wood tables. The sounds of the city are muffled in this space.[paragraph break]An elderly [o]man[x] with spectacles sits reading behind a desk, next to a wooden table[if the number of things supported by wooden table > 0], on which rests [a list of things on wooden table][end if].[paragraph break][exits].". The exits text of library-room is "Dust motes dance in a beam of grey light pouring through the wrought-iron doors leading [d]back[x] outside".

A wooden table is an undescribed supporter in Library-room. Understand "tables" as wooden table. 

A reb-librarian is an undescribed man in the library-room. Understand "man/librarian/elderly" as reb-librarian. The printed name of reb-librarian is "elderly librarian". The description is "Perched on a high, straight-backed chair, he slowly scans through an enormous grey tome, squinting through spectacles on a long brass chain.". Understand "elderly" or "man" as the reb-librarian. After greeting a reb-librarian: say "[one of]The old librarian looks up at you. 'Oh, Doctor Quick,' he says, 'your books are ready.' He retrieves a stack of [o]books[x] and sets them on a wooden table, as well as a small green [o]slip[x]. The last he taps with a pained sigh. 'One of them was confiscated just this morning,' he says sadly, 'apologies.'[or]He looks up in distraction. 'Sorry, doctor,' he says, 'can't chat right now... I've got reams of paperwork to handle.'[stopping]"; post-conversation processing; move the crystal-book to the wooden table; move the green slip to the wooden table; move other-book to wooden table; move stack-of-books to location; now wooden table is described. 

A stack-of-books is a prop with printed name "stack of books". Understand "stack of books" or "stack/books" as stack-of-books. The description is "A large, well-bound [o]textbook[x], a bound [o]periodical[x], and a small green [o]slip[x] are stacked on the table.". Check taking stack-of-books: say "You're not sure if you're allowed to take them with you. Better read them here." instead. Instead of doing something other than examining or examining by name to stack-of-books: say "[as the parser]You'll need to specify what book to do that to[as normal].".

Instead of attacking reb-librarian: increase the rap sheet of DrQuick by 3; say "The librarian staggers back under your attack, gives out a cry, then darts from the room in a panic."; remove reb-librarian from play.

The green slip is a prop. The description is "The small green slip is a form, which indicates that a book called 'The Testimony of Weaver Greeneyes' was removed from the library on today's date for 'containing seditious and treasonable material aiding the enemy.'".

Instead of taking a book when location is Library-room, say "You're not sure where you'll be heading next, so you may as well read them here.".

A crystal-book is a book. The printed name is "large, well-bound textbook". Understand "textbook" or "large" as crystal-book. The description is "The book is titled 'A Scientific, Technical, and Medical Analysis of Somenium Carcerate Six, Based on Original Research and Data Stolen From the Great Forest Link, by Hunter Smoothfaced.'". The contents of crystal-book is Table of Crystal-book Contents.

An other-book is a book. The printed name is "bound periodical". Understand "bound" or "periodical" as other-book. The description is "This small volume is bound with a cardboard cover stenciled in black ink. The cover contains an ornately decorated title taking up half the page reading 'Spirit Of City' in a bold and elegant script, surrounded by curved fabric banners and stone columns and a noble woman in drapery peering off into the distance. Underneath the title in smaller print it says 'Year 21 Issue 4,' and beneath that, 'Why We Are Right: Tender Frosthair On The Folly Of The Greeneyes.'". The contents of other-book is Table of Art-Book Contents.

Table of Art-Book Contents
desc
"The interior of the magazine consists mostly of small, blurred type in narrow columns, with few illustrations. The title story is a massive essay which seems to be justifying the actions of City's government in some sort of open-ended war. A representative paragraph:[paragraph break]'But this is precisely where Leader Greeneyes and his deluded followers have always been wrong. They know as much as we how precious a commodity is land on our world; what a narrow strip of equatorial ground deigns to support life and crops here. The subcontinent they have claimed for their perverted society is not theirs by right, as their diplomats would claim, and nor is their occupation of it justified. For where are our grandchildren to live, once our lands are filled?'"
"A full-page message in an officious font runs below a bold heading reading 'Important Information About The Curfew':[paragraph break]Citizens-- In this time of warfare and uncertainty, there are certain sacrifices we all must make. As you are no doubt aware, I have recently signed a Will extending the temporary curfew beginning nightly at Hour the 7th indefinitely. This gives me no great pleasure, and were there any other method to secure the safety of our City, I would pursue it. But my intelligence officers inform me that Greeneye agents are at large in the city, holding secret meetings and plotting to overthrow our government and invade our territory. I cannot and will not allow this to happen. Please do your part and abide by the curfew. I have full confidence in our soldiers and Force, and know in my heart we will prevail in this struggle. Thank you.  ----Leader Tall."
"A series of articles under the banner 'Thought and Counter-Thought' argue two sides of various issues, including 'Are street games a Detriment to our Children's Education?', 'Should more be Spent on Greeneyes protection?', 'Should our Artists be Subsidized?' and 'Does Leader Tall deserve Another Term of Office?'"
"A section entitled 'Dramaturgical Review' contains passionate, long-winded reviews about a series of 'enactions' playing at City Theatre:[paragraph break]'The Long Night of Mother Rosehair' is a historical piece praised for its authentic costumes and realistic performance by 'one of Mother's most talented descendants.'[paragraph break]'Think' receives low marks from the reviewer, who says that 'audiences are beginning to tire of being asked to participate in every second-rate enaction in town,' but does admit the performers 'do a fine job at engaging the crowd in a rousing discussion of modern philosophical theory.'[paragraph break]'The Cold White Stars, Part One' is a 'rather implausible' story of bold future explorers on a mission to a strange and far-off planet, but the reviewer says it does manage to awaken 'a spirit of adventure,' and that he encourages readers to attend and 'fund the author to write the second installment.'[paragraph break]'Twirl the Window Wares,' making its 'triumphant return,' is apparently a more experimental enaction involving 'musicians, technicians, animals, and seven poets' that 'captures the heart and soul of this reviewer and the audience once again,' and is 'even more poignant and relevant today than upon its initial enaction.'"
"The back of the periodical is a jumble of ink-smudged ads, only their bolded title lines standing out: 'Seeking Boarders,' 'Used cookware: fine quality,' 'Learning School Accepting Students,' 'Serve Your City: Join The Force,' 'Quality Books and Papers,' 'City's Finest Meals,' 'War Bonds,' and more."

Table of Crystal-book Contents
desc
"The first page of the book begins a general introduction, identifying somenium carcerate six as the substance which enabled the windsigh (windsigh, though some part of your borrowed mind hints the original word is a great deal less poetic and flattering) to communicate over 'seemingly limitless' distances. 'The scientific reasons for this still, after much research, remain obscure,' the author writes. 'But it seems clear that somenium creates or amplifies some as-yet unmeasured bond between individuals, allowing thoughts and connections to be forged regardless of distance between the subjects.'"
"The next marked page contains a sketch showing columns of hexagonal material, turning to powder at their worn edges. The caption explains that it is a rendering of what the somenium crystal must look like in its natural state, and that in solid form it would have a rich, sea-blue hue."
"The next marked page is the end of a lengthy chapter on somenium's rarity, and concludes, 'The best data available indicate that, despite their ever-so-learned and wise nature, the Trees in the Heart of Forest did indeed use up every last atom of somenium carcerate hidden on their world. Perhaps they simply assumed the mineral was common throughout the galaxy; perhaps it was mere arboreal stupidity; but at any rate, the All-Forest has discovered no more on any world they've conquered, leaving their further plans for expansion-- and ours-- in tatters.'"
"After a long series of technical writing, including molecular diagrams, you come to a chapter on biology, which includes this marked passage: 'As the sixteen milligrams of somenium saved from the egg ship are at work now in an important government project, it seems likely that the work of Builder Wideeyes and Mother Rosehair will be the only medical studies done on somenium for the near future. Despite the problems with their research, the conclusions in general seem clear: when exposed to large quantities of somenium, subjects experience symptoms of dementia, susceptibility to suggestion, and memory loss-- but not of any memories connected to the somenium itself. It is as if their connections to everything except the somenium, including their own sense of self, begins to fade.'"


Instead of dropping a book when location is library-room: say "You set it on the wooden table."; move noun to wooden table.

After going from library-room: move the crystal-book to the wooden table; move the green slip to the wooden table; move other-book to wooden table; continue the action. 


Section - The Historian and the Market

Room3 is a rebelcity-room. The description of Room3 is "The buildings here are in poorer repair, the streets dirtier. Tiny shops cram the sidewalk here, [if Islander Bombing is happening]now suddenly shuttered and silent[otherwise]throngs of people going in and out[end if]. [A sentence about a rebelcity room].[paragraph break]A small dark [d]alley[x] cuts down a trash-strewn street. [exits].". Understand "alley" as inside when location is Room3.

The historian is a person in Room3. "[if histdone is true]Sitting[else]Standing[end if] on the street corner is [if Room3 is unvisited]a man you take for a [o]beggar[x][otherwise]a [o][historian][x][end if][if histdone is false], orating in a booming voice[end if].". Understand "beggar/begger" or "man" as historian. The printed name is "beggar". The description is "Dressed in a strange costume of fraying old clothes and patches of rag, the [historian] seems oblivious to the pedestrians passing by him[if histdone is false]: he orates in a loud, clear voice, gesturing dramatically into the air as he speaks[else if historian is attentive]: he gives you his full attention[end if].".

Before going when historian is attentive: post-conversation processing; if last beat is in HC, say "'May your thoughts be free,' he says as you leave.".

The cup is an open undescribed container in Room3. It is not openable. Check taking the cup: say "That belongs to [the historian]." instead. Check taking something enclosed by the cup: say "That belongs to [the historian]." instead. Instead of inserting something uncoinlike into the cup, say "Probably the only thing he wants in there is money.". Definition: a thing is uncoinlike if it is not a coin.

Instead of greeting historian when Historian Conversation is not happening and histdone is false: say "He smiles and nods to you, but continues speaking.". Instead of greeting historian when Historian Conversation is not happening and histdone is true: say "He smiles at you. 'Your historian's just taking a break for a moment, since business is slow,' he says in a friendly tone, stretching and somehow managing to discreetly draw your attention to his cup, filled with a handful of coins.". Instead of greeting historian: force discuss hc_who.

[6 / 4 / 4 / 7]

Every turn when location is Room3 and historian is idle and historian is enclosed by Room3: say "[one of]'But cried she not with tears, poor Widow Tall,' he says, 'poor Widow Tall through long nights['] storm and mourning, 
And Weaver's eyes were blind, put out by flame, put out by flame in Builder's last endeavor.'[or]The [historian] continues: 'So blinded was he shunned and cast away, and cast away by all those then remaining,
And cried at last the sky in ceaseless rain, in ceaseless rain did Greeneye's old ties sever.'[or]The [historian] continues: 'Alone he sailed away did Weaver Green, did Weaver Greeneyes vanish into Ocean,
But stayed he not alone in years to come, in years to come when cowards sought him ever.'[or]The [historian] continues: 'And Widow Tall was left alone to mourn, alone to mourning and her children's tending; The mourners in the town wept tears for her, wept tears for her, whose own eyes did not quiver.'[or]The [historian] continues: 'For from her grief great thoughts began to form, began to form like rainclouds all a'storming.
And so she called on one she trusted strong, she trusted strong her ally Quick the Counter.'[or]The [historian] continues: 'She asked him for a quill and precious ink, and precious ink and page to be inscribed on.
And Counter Quick said, [']But, my Widow Tall, my Widow Tall, the ink is frozen over.[']'[line break][or]The [historian] continues: 'And Widow Tall replied, [']Then make a flame, then make a flame, my Counter Quick, and quickly.
My Builder's words remain. I must write soon, I must write soon to save his words forever.[']'[line break][or][historydone]The [historian] bows to no one in particular, sits on the curb, and begins smoking a small pipe reflectively.[or][stopping]". histdone is a truth state that varies. To say historydone: now histdone is true.

Instead of giving a coin to historian: say trygivingcoin.

To say trygivingcoin: 
	if the player holds at least one coin:
		if the historian is visible:
			move a random coin held by player to cup;
			now historian is attentive;
			force discuss hc_intro;
		else if the hopper is visible:
			try inserting a random coin held by player into the hopper;
		else:[aar]
			let bob be a random visible other person;
			if bob is a person:
				try giving a random coin held by player to bob;
			else:
				say "You aren't sure how to spend your money here.";
	else:
		say "You don't have any coins left.".

Understand "toss coin" or "add coin" or "throw coin" or "throw coin to/in/at cup" as a mistake ("[trygivingcoin]").

Instead of exhausting when historian is enclosed by location: say "'We've done that one already, haven't we, friend?' he says.".

Historian Conversation is a recurring scene.

Historian Conversation begins when
	a coin is in the cup and historian is enclosed by location and historian is attentive.

Historian Conversation ends when
	historian is idle.

To historian cashes in:
	remove a random coin enclosed by cup from play.

[The historian has full conversations for Weaver Greeneyes and Builder Tall. There are two other conversations which can randomly be assigned to other colonists requested. (The number of stories is limited by the coins the player carries.) In the rare case a third non-key figure is requested, the historian can refuse the coin, saying he's packing up to go.]

HC is a thread.
hc_intro is a repeatable beat in HC with reaction "The old man nods to you. 'Many thanks for helping out a poor historian, sir,' he says.". hc_intro enqueues hc_who. After discussing hc_intro: change the printed name of historian to "historian"; continue the action.

hc_who is a repeatable beat in HC with reaction "[one of]He chuckles. 'You're a little old, aren't you? But no, one's never too old for history. Well then. [or]'Good to see you again,' he says. 'Now then. [stopping]Who would you like to [hc_who2]?'". hc_who suggests hc_who2. hc_who summons hc_builder1, hc_rosehair, hc_greeneyes.

Understand "meet" as hc_who2 when last beat is in HC. hc_who2 is a repeatable beat in HC with keyword name "meet" and reaction "'Builder [hc_builder1], maybe?' he suggests. 'Always a favorite. Or what about old Mother [hc_rosehair] and the river?'".

First carry out getting bored during Historian Conversation: say "'My pardon,' the historian says cordially, '[if histdone is true]I'm going to get back to my break, if you don't mind.' He sits back down, knees cracking noisily, and sighs.[otherwise]I need to get back to work.'[end if]" instead.

Understand "builder tall" or "builder/tall" as hc_builder1 when last beat is in HC. hc_builder1 is a beat in HC with keyword name "Tall" and fuse 6 and reaction "'Ah,' he says, 'an old favorite. Well, then, have patience. He'll be with you in just a moment.'[paragraph break]The historian bows his head and shifts from foot to foot for a moment, rubbing his hands together.[paragraph break]When he raises his head, he seems like a different person: taller, stronger, more confident. 'The [t]winter[x] has been long and hard, Planter,' he says wearily. 'Please say you bring me news of [t]spring[x].'". hc_builder1 cancels hc_rosehair, hc_greeneyes, hc_who2. hc_builder1 summons hc_bplanter. After discussing hc_builder1: historian cashes in; continue the action.

Understand "winter/spring" as hc_bplanter when last beat is in HC. hc_bplanter is a terminal beat in HC with keyword name "winter, spring" and reaction "Over the course of the next few minutes, you speak with 'Builder Tall'-- at least this historian's rendition of him. You learn a lot about the man who seems to have been the foundation of this society: a man who was willing to lead when none of his companions dared to, and through action and decision saved the life of the struggling, treeless survivors.[paragraph break]Finally, the historian makes one last eloquent pronouncement, then stops and smiles at you, doffing his cap. 'Thanks, friend,' he says.".

Understand "mother rosehair" or "mother/rosehair" as hc_rosehair when last beat is in HC. hc_rosehair is a beat in HC with keyword name "Rosehair" and fuse 6 and reaction "'Yes,' he says, smiling, 'an old favorite. Just a moment, then, let me wake up old Mother for you.'[paragraph break]He bows his head and flexes his fingers, breathing slowly for a long moment.[paragraph break]When he raises his head, he suddenly seems different: old and wiry, but with wits and eyes of steel, and his voice is the warbling alto line of an elderly woman. 'Good of you to visit an old widow, [t]Counter[x],' the historian says, a sparkle in his eye, 'but not often do visitors climb down the long hill to my house by the [t]river[x]. What is it you want?'". hc_rosehair summons hc_rosehair2. hc_rosehair cancels hc_builder1, hc_who2. After discussing hc_rosehair: historian cashes in; continue the action.

Understand "counter/river" as hc_rosehair2 when last beat is in HC. hc_rosehair2 is a terminal beat in HC with keyword name "Counter, river" and reaction "Over the course of a few minutes, you speak with 'Mother Rosehair'-- or at least the historian's rendition of her. You hear firsthand a tale which you gather has become a sort of bedtime story here: how the strong-willed old widow of Builder Tall refused to abandon her house by the river even as the river waters rose higher and higher and threatened to flood. She would stay in the house that Counter had built for her, and would let what happened happen. The river did not flood, and the story seems to have become a sort of parable for sticking to your principles.[paragraph break]Finally, the historian makes one wry point, stops, then smiles at you, himself again, and doffs his cap. 'Thanks, friend,' he says.".

Understand "greeneyes/greeneye/weaver" or "green eye" or "green eyes" as hc_greeneyes when last beat is in HC. hc_greeneyes is a repeatable beat in HC with keyword name "Greeneyes" and fuse 6 and reaction "The historian's smile fades a little. He glances quickly up and down the street. 'Not the best of times for that piece of history, friend,' he says quietly. 'But I believe all history should be told, even that which isn't popular. There are some who disagree.'[paragraph break]He looks are you sharply. 'Are you sure, then?'". hc_greeneyes suggests hc_greeneyesno. Instead of saying no or saying maybe when last beat is hc_greeneyes, force discuss hc_greeneyesno. Instead of saying yes when last beat is hc_greeneyes, force discuss hc_greeneyes1. hc_greeneyes summons hc_greeneyesno, hc_greeneyes1. After discussing hc_greeneyes: historian cashes in; continue the action. hc_greeneyes cancels hc_who2.

hc_greeneyesno is a beat in HC with keyword name "no" and reaction "He seems both relieved and a little disappointed. 'Probably for the best,' he says. 'Now, is there anyone else you want to meet?'". hc_greeneyesno cancels hc_greeneyes1. hc_greeneyesno summons hc_greeneyes, hc_builder1, hc_rosehair.

Instead of getting bored when last beat is hc_greeneyesno or last beat is hc_who or last beat is hc_who2, force discuss hc_credit.

hc_credit is a repeatable terminal beat in HC with reaction "'You just let me know when you've decided,' the historian says, tapping his cup. 'You've got credit now.'".

HGE is a thread.

hc_greeneyes1 is a beat in HGE with keyword name "yes" and reaction "He nods. Glancing again quickly up and down the street, he shakes his arms, then bows his head.[paragraph break]When he raises it, his face is changed: shrewder, eyes half-squints, voice smooth and sweet. But though it is a surprising change, you sense at once that it is not a simple villain, a caricature. There is depth, and, you sense, authenticity behind the performance.[paragraph break]'Builder,' he says, in a droning, sardonic voice, 'I've been expecting you. I know [hc_gewhy] you have come.'". hc_greeneyes1 summons hc_gewhy. hc_greeneyes1 suggests hc_gewhy. hc_greeneyes1 cancels hc_builder1, hc_rosehair.

Understand "why" as hc_gewhy when last beat is in HGE. hc_gewhy is a beat in HGE with keyword name "why" and reaction "'Yes,' he says sweetly, pacing. 'You come to accuse me of whispering against you in the fields. You come to accuse me of slandering your name in the Hall. You come to accuse; not to question, not to reason. You come to have your way. Do you deny it?'". hc_gewhy summons hc_whyyes, hc_whyno. The yes-beat of hc_gewhy is hc_whyyes. The no-beat of hc_gewhy is hc_whyno. hc_gewhy suggests hc_gehistory.

hc_whyyes is a beat in HGE with keyword name "yes" and reaction "'Then you are a liar,' the historian says simply, but there is no hate in the words.". hc_whyyes enqueues hc_gehistory. hc_whyyes cancels hc_whyno.

hc_whyno is a beat in HGE with keyword name "no" and reaction "'Good,' the historian says, nodding. 'Then we shall come straight to it.'". hc_whyno enqueues hc_gehistory. hc_whyno cancels hc_whyyes.

hc_gehistory is a beat in HGE with reaction "'You think I despise you,' he says, pacing. 'You think I am jealous. Again you are wrong. I merely wonder when. When, Builder, when your reign will end.'[paragraph break]'I have not forgotten,' he says before you can respond, 'our first winter. When we froze in those rude huts on the riverbank, [hc_leaderless] and afraid, paralyzed by our inability to act, to think for ourselves. We thought at first it had perhaps been [hc_bred] out of us. We thought without Forest we could not survive.'". hc_gehistory suggests hc_greeneyes3. hc_gehistory summons hc_leaderless, hc_bred. hc_greeneyes3 replaces hc_gehistory.

Understand "leaderless/leader" as hc_leaderless when last beat is hc_gehistory. hc_leaderless is a beat in HGE with keyword name "leaderless" and reaction "'How foolish we were,' the historian says bitterly, 'how naive. Do you remember, Builder? How for days we sat near the wreckage, starving and fearful, pitifully planting the burned seeds and waiting in vain for them to grow? How for weeks the thought did not even enter our heads that without them, we would have to make decisions for ourselves, shape our own destinies?'". hc_leaderless enqueues hc_greeneyes3.

Understand "bred/breed" as hc_bred when last beat is hc_gehistory. hc_bred is a beat in HGE with keyword name "bred" and reaction "'Yes, bred out,' he says bitterly, 'generation after generation selected not for their ability to think, but to follow orders; not to speak, but to hear. That is the history of our race, Builder, until that winter. Until us.'". hc_bred enqueues hc_greeneyes3

hc_greeneyes3 is a beat in HGE with reaction "'But then you, Builder, came to our rescue,' the historian continues, voice dripping with sarcasm. 'You volunteered to make our decisions, knowing that they must stand, unapproved, unvetted by any higher guidance, by any great minds whispering in your ear. That your rules and [hc_laws] would decide who would live and who would die. That all the blame should your plans fail would fall squarely on your shoulders. So noble you were, so heroic. And the [hc_others] stumbled over themselves in their haste to agree.'". hc_greeneyes3 suggests hc_greeneyes4. hc_greeneyes4 replaces hc_greeneyes3. hc_greeneyes3 summons hc_others, hc_laws.

Understand "law/laws" as hc_laws when last beat is hc_greeneyes3. hc_laws is a beat in HGE with keyword name "laws" and reaction "'So fair, so practical,' nods the historian, only a hint of irony in his voice. 'None could complain. [']None shall harm none,['] yes, very good, very good. [']All shall help all,['] very nice. [']All shall obey the Leader;['] now that's where it gets interesting, Builder. And nothing there about how one becomes a leader, is there? For another time such laws will be written, perhaps. A safer time. But when will that be?'". hc_laws enqueues hc_greeneyes4.

Understand "others" as hc_others when last beat is hc_greeneyes3. hc_others is a beat in HGE with keyword name "others" and reaction "He smiles wryly. 'Fools,' he says, 'panting like dogs, wagging their tails in glee that another would finally think for them. And no, Builder, I have not forgotten that the vote was unanimous. Already I sensed something wrong in your visage; something that wanted this new power too forcefully. But how could I speak otherwise? How could I, when all  faces were turned in slavish devotion to you? When your honeyed words sweetened the poison of your act for all the others, no choice was left for me at all.' He spits.". hc_others enqueues hc_greeneyes4.

hc_greeneyes4 is a beat in HGE with reaction "'Now thirteen babes have been born ere that dark winter,' the historian says. 'We have built strong houses, sown lusty crops. The danger is past. And yet still you lead us. The others are happy to let you, Builder, but not I. It is a return to the old ways. It is a betrayal of our Pact, to live as free people.'[paragraph break]He steps up to you, close, eyes searching yours intently. 'Would you plant yourself in a Hall of Rulers, Builder?' he asks quietly. 'The first great tree of this new world? Would you arch over your saplings forever?'". hc_greeneyes4 suggests hc_greeneyes5no. The yes-beat of hc_greeneyes4 is hc_greeneyes5yes The no-beat of hc_greeneyes4 is hc_greeneyes5no. hc_greeneyes4 summons hc_greeneyes5yes, hc_greeneyes5no.

Understand "never" as hc_greeneyes5no when last beat is in HGE. hc_greeneyes5no is a beat in HGE with keyword name "never" and reaction "He smiles, and shakes his head sadly. 'No,' he says, 'of course you do not think so. Just as Forest thinks nothing of its dominion over our kind. Just as even we did not realize what had been done to us until---'". hc_greeneyes5no enqueues hc_greeneyesend.

hc_greeneyes5yes is a beat in HGE with keyword name "yes" and reaction "The historian's eyes widen and he steps back. 'Then you've planned this all along,' he whispers, 'you knew, even from the beginning, that it would never be temporary-- that you would hold on to your power, always be leader, always---". hc_greeneyes5yes enqueues hc_greeneyesend.

hc_greeneyesend is a terminal beat in HGE with reaction "He breaks off, suddenly, and looks with alarm down the street. Several soldiers are ambling slowly in your direction, eyes on the historian.[paragraph break]He turns to you quickly. 'Sorry, friend,' he says, grabbing his cup, 'history will have to wait.' And he turns and walks quickly down the street in the opposite direction. The soldiers watch him for a moment, then turn and resume their patrol.". After discussing hc_greeneyesend: remove historian from play; remove cup from play.

Instead of attacking historian when last beat is in HGE, say "The historian leaps backwards, dropping character. 'Calm down,' he says, waving his arms, 'I'm just a historian! ".

Understand "builder/tall" as hc_tall. hc_tall is a beat in HC with reaction "The historian smiles, perhaps a little too broadly. 'Builder Tall,' he says, 'everyone's favorite. All right then, [if player is male]sir[otherwise]madam[end if], prepare to meet our illustrious founder.' The historian bows his head, then quickly raises it, slipping into a role you can tell he's played many times before.[paragraph break][as the parser]BETA: Unfortunately, this conversation has not yet been written.[as normal]". hc_already replaces hc_tall.

hc_already is a repeatable beat in HC with reaction "'Oh, but you've already heard that one,' the historian says. 'Come on, someone else.'".

Every turn when location is Room3 and historian is in Room3 and historian is idle and Historian Conversation is not happening and a random chance of 1 in 2 succeeds and histdone is false: say "[one of][moneygive][or][learnhistorianname][or][moneygive][stopping]". To say moneygive: say "[one of]A passer-by[or]An old woman[or]A well-dressed man[or]Someone[at random] [one of]tosses a coin in[or]drops a coin into[or]adds a coin to[or]puts in coin in[or]tosses a few coins in[at random] the [historian]'s cup.". To say learnhistorianname: say "'Look, matron, a historian!' cries out a little girl passing by in delight; the woman holding her hand shushes her and smiles at the beggar as they continue down the street."; change the printed name of the the historian to "historian".



Section - Alley

Report going from Room3 to Alley: say "You slip out of the bustle of the avenue into the quieter, darker side street.". Report going from Alley to Room3: say "You return to the broad streets of the avenue.".

Alley is inside from Room3. The description of Alley is "There is less traffic on this small, unclean street, and what there is is quick and furtive. Gaudy [o]signs[x] rise over lurid green [o]doors[x].[paragraph break][exits].". The exits text of Alley is "Other than the doors, the only way to go is back [d]out[x] to the street". First instead of exiting when location is Alley: try going outside instead.

The green doors are a minor setpiece in Alley. Understand "door" as green doors. The provoke message is "[if pimp is on-stage][forcediscusssrg_payfirst][otherwise]The doors are solid and locked.". To say forcediscusssrg_payfirst: force discuss srg_payfirst. Instead of going inside when location is Alley: force discuss srg_payfirst. The description of green doors is "The green is a particularly lurid shade. The doors are scrubbed clean against the general dirt and refuse of the alleyway.".

The gaudy signs are a setpiece in Alley. The description is "The signs are painted in such a manner that their subject matter is obviously considered lascivious or unsavory. They all say things like 'supervisor,' or 'commander.'".

The pimp is a man in Alley. "A [o]man[x] in a faded brown suit leans against a brick wall, [if srg_rejected is spoken]contemptuously ignoring you[else]eyeing you with a wide grin[end if]." Understand "man/suit" as pimp. The printed name is "grinning man". First Report greeting the pimp: say "You give him a cautious greeting." instead. The description of pimp is "He has the same look that is sinkingly common on every world you've been to: that of a man who knows he is selling something his customers can't help but want.".

Selling Rebel Girls is a scene. Selling Rebel Girls begins when the player is in Alley. When Selling Rebel Girls begins: pre-conversation processing; force discuss srg_1. Instead of exhausting during Selling Rebel Girls, say "'Walker, I don't have time to flap all day,' he says.". Selling Rebel Girls ends when player is not enclosed by Alley.


SRG is a thread. 

srg_1 is a beat in SRG with reaction "The grinning man accosts you. 'Hey government [if DrQuick is male]man[otherwise]lady[end if],' he says casually, 'looking for some time off? Escape all those big decisions, get away from that pressure? Why don't you come inside and meet one of my [srg_girls], eh? You won't have to worry about anything at all. They'll tell you exactly what to do.' He winks suggestively.". srg_1 suggests srg_girls. srg_1 summons srg_girls. 

Understand "supervisors" as srg_girls when last beat is in SRG. srg_girls is a beat in SRG with keyword name "supervisors" and reaction "'Come on, walker,' he grins, 'you know it's what you want. Someone to be in [srg_control]. They tell you what to do and you do it. A vacation from that rooting responsibility, clear your head. Reasonable, very reasonable rates: just [srg_clotheson] for an hour, too truth, my best supervisor just freed up, what do you say?'".  srg_girls summons srg_control, srg_clotheson, srg_rejected, srg_nomoney.  Understand "fifteen" as srg_clotheson. Instead of saying no when last beat is srg_girls or last beat is srg_clotheson or last beat is srg_barter, force discuss srg_rejected. srg_girls suggests srg_barter. 

srg_barter is a beat in SRG with reaction "'Hey, I forgot,' he says smoothly, 'special rate for uniforms, only twelve for an hour, best rate in the city. Come on, you in?'". srg_barter suggests srg_rejected. The yes-beat of srg_barter is srg_clotheson. The no-beat of srg_barter is srg_rejected.

srg_rejected is a terminal beat in SRG with keyword name "no" and reaction "He sneers at you. 'Oh yeah, so superior, you uniforms. I get more of you buttoned-up government types down here begging for it than anyone else. You need it worse than the rest of us. Uniforms.' He waves a hand dismissively and return to his post against the wall. 'You'll be back, walker, you'll be back.'". srg_rejected2 replaces srg_rejected.

Understand "control" as srg_control when last beat is in SRG. srg_control is a beat in SRG with keyword name "control" and reaction "'Oh yeah, it's a rush,' he says, eyes wide, hands spread, 'just turn off your brain, turn down your worries, and let one of my [srg_clotheson]'s sweet voices come into your head and give you orders. Most walkers like it so much they don't wanna leave,' he adds with a grin.". srg_control suggests srg_clotheson. srg_control summons srg_clotheson.

Understand "super/fifteen" as srg_clotheson when last beat is in SRG. srg_clotheson is a beat in SRG with keyword name "[if last beat is srg_girls]fifteen[else if last beat is srg_control]super[else]yes" and reaction "'Hey, it's maker nature, friend, we all want it,' he says smoothly. 'I got the perfect super for you. [if Rume is male]He'll have you do some chores, fill out some paperwork, organize some clothes for him... maybe even chat a bit, but on his terms, walker, his terms. He'll[otherwise]She'll have you do some chores, fill out some paperwork, organize some clothes for her... maybe even chat a bit, but on her terms, walker, her terms. She'll[end if] tell you exactly what to do, and you'll do it. Just what you need. Ten for an hour, last offer. You in?'". srg_clotheson summons srg_rejected. Instead of saying no when last beat is srg_girls, force discuss srg_rejected. srg_clotheson suggests srg_rejected.

Instead of saying yes when last beat is in SRG, force discuss srg_nomoney. Instead of giving a coin to the pimp, force discuss srg_nomoney. Understand "pay [pimp]" as a mistake ("[tryforcenomoney]"). To say tryforcenomoney: force discuss srg_nomoney.

srg_nomoney is a beat in SRG with reaction "You pull out your [if player holds at least two coins]coins[else if player holds at least one coin]coin[otherwise]pockets[end if] and the man's expression turns sour. 'Don't play me, uniform,' he says, 'I know you got way more than that buttoned up in that fancy jacket. I told you my final price. Now either pay up or get out.' He scowls at you.". srg_nomoney suggests srg_rejected. srg_rejected replaces srg_nomoney. srg_nomoney cancels srg_rejected.

Instead of greeting the pimp when we have discussed srg_rejected or we have discussed srg_nomoney: force discuss srg_rejected2. srg_rejected2 is a terminal beat in SRG with reaction "'Get out of here, walker,' he says, spitting, 'stop wasting my time.'". Instead of vague discussing when pimp is enclosed by location, say "You expect he's only interested in talking about one thing.".

Before exiting when pimp is attentive: force discuss srg_rejected; continue the action.

Instead of attacking the pimp: say "You move to attack the man but he suddenly pulls out a stubby chalk-white device from his jacket that looks suspiciously like a gun, and aims it at you.[paragraph break]'Beat it, walker,' he says calmly. 'Now. And I better not see you come back to my street again.' Nervously, you back out of the alley."; remove pimp from play; try retreating. Instead of going inside when location is Room3 and  pimp is off-stage: say "You better not risk going back down there alone.".

srg_payfirst is an ephemeral beat in SRG with reaction "'Hey walker,' the man says in anger. 'You pay me first before you go in there.'". 

Section - The Gallery

Room4 is a rebelcity-room. The description of Room4 is "The sidewalk widens here to encompass a long strip of land filled with [o]artwork[x]. [if Islander Bombing has happened]The art stands alone and unprotected on the empty street now, like archaeological remnants of some lost civilization[otherwise]Cars grumpily navigate the curved road, and while a few passers-by are examining the art, most are walking right by[end if]. [A sentence about a rebelcity room].[paragraph break][exits].".

Some chalk-drawings are a setpiece in Room4. The description is "Overlapped, smudged, and faded, they seem to evidence that the children of this squalid neighborhood, at least, are enjoying themselves.". The printed name is "chalk drawings". Understand "chalk/drawing/drawings" as chalk-drawings.

The rebel-artwork is a setpiece in Room4. The printed name is "street art". Understand "next" or "start" or "artwork" or "art" as rebel-artwork. The rebel-artwork has a number called current piece. The current piece of rebel-artwork is 0.

Before examining the rebel-artwork:
	increase current piece of rebel-artwork by 1;
	if current piece of rebel-artwork > number of rows in Table of RebelArtwork begin;
		now current piece of rebel-artwork is 1;
		say "You have looked through all the pieces of artwork, and come back to the first one.";
	otherwise if current piece of rebel-artwork is 1;
		say "You step into the sea of artwork and turn your attention to the first piece.";
	otherwise;
		say "You turn your attention to the next piece.";
	end if.

Instead of examining the rebel-artwork:
	let x be current piece of rebel-artwork;
	choose row x in Table of RebelArtwork;
	say "[desc entry][paragraph break]This piece is titled '[title entry].' A small [o]hopper[x] alongside [popularity entry]. [if current piece of rebel-artwork is number of rows in Table of RebelArtwork]This is the last piece of artwork, unless you go back to the [o]start[x][otherwise]The [o]next[x] piece of artwork is nearby[end if].".

Table of RebelArtwork
title		desc	popularity
"Free Will"	"This sculpture is about your height, made entirely from small squares of mirrored glass fastened in the rough shape of a woman standing with arms outstretched, face turned towards the sky. The glass catches and throws the light in sparkling patterns around, making the exact shape of the piece almost hard to discern amidst the radiant sparkling light."	"contains some coins"
"Greeneyes Advancing"	"This piece is a painting, quite good, showing dozens of crippled, deformed hands, interlocked and twisted together in some complex activity, slowly surrounding a lone city, reaching out as if to crush its proud and noble spires."	"is filled with coins"
"The Spirit of City Dreams Of The Future"	"This textured painting, showing a beautiful green and blue-grey planet, a star rising above its horizon. In the foreground is a stylized angelic form, with the recognizable features of these people smoothed and emboldened into an idealized symbolic form, of a woman with flowing tresses and billowing white gown, staring into the background, where thousands of jeweled stars, the arm of a galaxy, await."		"is nearly overflowing with coins"
"Alone Yet Together"	"A twisting mobius line of human forms with outstretched arms, sculpted in some textured clay. They are not quite touching." 	"contains a few scattered coins"
"Widow Tall Writes The Principles"	"A muted painting of a woman in black hunched over a desk with a quill, writing on parchment in dim firelight. Snow drifts the windows. A balding man stands near the desk, cupping the inkwell in his hand as if to keep the ink from freezing."	"contains a handful of coins"
"Tree"	"A bas-relief carving in stone, showing a figure screaming in agony as twisted, gnarled roots cover his face and burrow into his head."		"holds a smattering of coins"

The hopper is an undescribed open unopenable container in Room4. It is fixed in place. Understand "basket" as hopper. The description is "Just a small wire basket, which [coins bit].". To say coins bit: let x be current piece of rebel-artwork; choose row x in Table of RebelArtwork; say "[popularity entry]". Check taking hopper: say "There are people watching you." instead.

Instead of inserting something (called zeta) into the rebel-artwork, try inserting zeta into the hopper.

Instead of inserting something into the hopper when noun is not a coin, say "It looks like it's designed for coins." After inserting a coin into the hopper: say "You drop a coin into the hopper for "; let x be current piece of rebel-artwork; choose row x in Table of RebelArtwork; say "'[title entry].'".



Section - The Crime Scene (Room 5)

Room5 is a rebelcity-room. The description of Room5 is "[if unvisited]The street narrows here, entering a more residential area of high, narrow apartments with wrought-iron balconies and brown, dying bushes. [A sentence about a rebelcity room].[paragraph break][exits].[otherwise]A smoking crater in the center of the street is the epicenter of the chaos around you: broken glass, piles of blood-smeared rubble, sirens and screams. Progress further down [shortrebname of Room5] is blocked by the crater; the only sensible direction is back towards the [d]plaza[x].[end if]".

The smoking crater is a setpiece in Room5. The description is "Charred concrete and twisted shards of red-hot metal rise from the crater, and broken pipes of water and sewage mingle with sizzling electrical wire in the wreckage at the bottom.". Instead of entering or climbing the smoking crater, say "Far too dangerous.".

Some street debris is a minor backdrop. Understand "glass/rubble/blood" as street debris. The description is "Cleaning up the wreckage from the attack will take days.".



Section - The Bombing

Islander Bombing is a scene. Islander Bombing begins when the player is in Room5 for the first time.

The crime scene is a room that varies.


When Islander Bombing begins:[aar]
	[Announce the event, and adjust ambience and scenery items.]
	say "Suddenly a high pitched whine fills the air. Traffic around you stops and people look to the sky in fear. Before a moment passes, there is an explosion; you are knocked to the ground and half-deafened. Clods of dirt rain down around you. Screams pierce the air.[paragraph break]You stand again and brush yourself off-- no damage, it seems. But the street isn't so lucky.";
	now crime scene is the location;
	move street debris to Rebelworld;
	move barricades to Plaza;
	now the ambience table of Rebelworld-Outdoors is Table of Panic Plaza ambience;
	remove the historian from play;
	[ Determine which avenue ("direction") we should place the new rooms on. Ideally, it will be one the player has not yet explored from the plaza; failing that, it will be one at random that's not the one they're on. ]
	let dirlist be {north, east, south, west};
	if there is a dir of north in Table of Rebworld Map, remove north from dirlist;
	if there is a dir of east in Table of Rebworld Map, remove east from dirlist;
	if there is a dir of south in Table of Rebworld Map, remove south from dirlist;
	if there is a dir of west in Table of Rebworld Map, remove west from dirlist;
	if the number of entries in dirlist is 0: [If there's no entries, there will be at least one street we've only explored one room down; pick that one at random.]
		let tempway be rebstreet cardinality;
		while tempway is rebstreet cardinality:
			sort Table of Rebworld Map in random order;
			choose row with a depth of 1 in Table of Rebworld Map;
			let tempway be dir entry;
			let tempdepth be 2;
	else: [If we still have any entries in dirlist, there's an unexplored avenue; pick that one.]
		let tempway be entry ( a random number from 1 to the number of entries in dirlist ) of dirlist;
		let tempdepth be 1;
	[Now add the map connection for the new rooms to our chosen direction.]
	choose a blank row in Table of Rebworld Map;
	change dir entry to tempway;
	change depth entry to tempdepth;
	change room entry to Room6;
	choose row with a dir of tempway in Table of Cardinal Directions;
	now the printed name of Room6 is fullstreet entry;
	[Remove map connections related to the two streets that aren't the one we chose or the one we're on. ]
	let dirlist be {north, east, south, west};
	remove rebstreet cardinality from dirlist;
	remove tempway from dirlist, if present;
	repeat through Table of Rebworld Map:
		if dir entry is listed in dirlist:
			blank out the whole row;
	[Mark the other two avenues as being the ones that are still open.]
	repeat through Table of Cardinal Directions:
		if dir entry is not listed in dirlist:
			change flag entry to 1.

Room6 is a room. The description of Room6 is "Decaying elegance speaks to a neighborhood that was once wealthy and prosperous but now has sunk into abandonment and decline. Now fire rages in a building to one side of this street, while broken glass litters the other. The streets here are strangely quiet, as if already abandoned. [exits].". The exits text of Room6 is "The street runs towards the [d]plaza[x] or a curved [d]courtyard[x] opposite". Understand "courtyard" as northeast when location is Room6.

Room7 is northeast of Room6. The printed name is "Courtyard". Understand "courtyard" or "curved" as Room7. The description of Room7 is "The street ends here at a once well-manicured circle lined with blue-grey shrubs. One burns slowly, ignited by some piece of flying debris. The shouts and sirens from the rest of the city seem muffled here, subdued. [exits].". The exits text of Room7 is "The street stretches back towards the [d]plaza[x]. Light spills through a round window on a [d]door[x] half off its hinges, at the top of a few graceful curved steps". Understand "door" as inside when location is Room7. Understand "plaza" as southwest when location is Room7. Report going from Room6 to Room7: say "You hurry down the deserted street.".


Section - Holding-Cell

[ Antisocial behavior will wind the player up in here, where the scene with the rebel leader plays out in a somewhat different fashion. ]

DrQuick has a number called rap sheet. 

Getting Arrested is a scene. Getting Arrested begins when the rap sheet of DrQuick >= 5. When Getting Arrested begins: say "Suddenly you are surrounded by burly, uniformed guards, holding dangerous looking weapons and eyeing you warily.[paragraph break]'Get down on the ground, now,' one of them shouts. You have no choice but to comply."; print a section break; move DrQuick to Holding-Cell. Getting Arrested ends when location is Holding-Cell.

Life Behind Bars is a scene. Life Behind Bars begins when location is Holding-Cell. When Life Behind Bars begins: remove passcard from play; repeat with cn running through coins held by player begin; remove cn from play; end repeat. Life Behind Bars ends when location is not Holding-Cell.

Holding-Cell is a room in Rebelworld with printed name "Holding Cell". The description of Holding-Cell is "This small bare room is adorned only by a metal [o]slab[x] jutting from the wall, a simple washbasin, and a large steel door with a barred, glassed window. The silence is pressing.".

Instead of going when location is Holding-Cell, say "You can't see any way out of here.".

The metal slab is an enterable undescribed supporter. It is in Holding-Cell. The simple washbasin is a setpiece in Holding-Cell. The large steel door is a door. It is east of Holding-Cell. It is locked. A barred glassed window is part of large steel door. The description of barred glassed window is "All you can see is a well-lit, sterile white hallway beyond.". Understand "glass" as barred glassed window.


Section - Space Museum


Report going from Room7 to Space Museum: say "You crest the steps and push open the damaged door, which creaks reluctantly. Through it you pass into a large space, open and empty.".

Space Museum is inside from Room7. Space Museum is up from Room7. The printed name is "Abandoned Museum". The description of Space Museum is "Clouds of dust kicked up by the explosion are still dancing through the air of this high-ceilinged space. It looks as if exhibits once dominated the walls, but now empty placards and ghost rectangles of clean wall are all that remain.[paragraph break]In the center of the otherwise empty space is a white [o]rocket[x] ship, covered in dust[if StraightTalkWithRebelLeader has ended].[paragraph break][exits][end if].". The exits text of Space Museum is "The sounds of the [d]street[x] seem somehow muted in here". Understand "street" as outside when location is Space Museum.

The rocket ship model is a setpiece in Space Museum. The description is "As you move closer, you see it is only a model, but an inspiring sight, nonetheless. A great tapering cylinder, one side has been cut away to reveal half-sized glass cylinders with half-sized sleeping people inside. A [o]plaque[x] stands near the base of the model.". Check entering rocket ship model: say "It's only a model." instead.

The rocket-plaque is part of the rocket ship model. Understand "plaque" as the rocket-plaque. The printed name is "plaque". The description is "'Half scale model of a proposed colony ship to another star. The new colonists would sleep through the long journey. Construction waits only on the successful synthesis by scientists of somenium, a breakthrough expected to occur within the next few years.'".


StraightTalkWithRebelLeader is a scene. StraightTalkWithRebelLeader begins when the player has been in Space Museum for at least 3 turns or the player has been in Holding-Cell for at least 3 turns. 

leader is a man with printed name "Leader Tall". understand "man/tall/mayor/governor/general" as leader. 

When StraightTalkWithRebelLeader begins:
	move leader to location;
	now leader is attentive;
	say "[if location is Space Museum]A [o]shadow[x] cuts off the light coming into the room[otherwise]A small commotion rises from the hallway outside; you hear low murmurs of excitement, the snap of heels clicking to attention. Then the door to your cell slides open and a guard looks in on you suspiciously.[paragraph break]'Visitor,' he mutters. 'Damned important one, too.' And he steps back to admit a small, well-dressed [o]man[x] into the cell, closing the door behind him[end if].";
	now tempfuse of cl_intro is 5.

Check taking off when StraightTalkWithRebelLeader is happening and noun is cap (this is the can't escape during a key scene rule):
	say "With all the trouble he's done to bring you here, it would be tragic to leave in the middle of the conversation." instead.



Instead of saying farewell to or going during StraightTalkWithRebelLeader: follow the can't escape during a key scene rule. Instead of exhausting during StraightTalkWithRebelLeader: say "'I would love to tell you more,' he says, adjusting his glasses, 'but I'm afraid our time is short.'".

Leader is a man. Understand "shadow" or "Leader Tall" or "man" as leader. The description is "[if we have not discussed cl_intro]Standing in the doorway is a man. The daylight spilling in around him makes his features indistinct.[otherwise]Standing a half-dozen paces away is a short man with a rounded belly and large, wiry spectacles, dressed in finely tailored cloth. A faint, quiet smile seems a permanent fixture on his aged face, hovering below whorls of graying hair. There is a manner of weary resignation about him, but also one of quiet determination.[end if]". The initial appearance is "Leader Tall stands nearby, orating.".

CWRL is a thread. The escape clause of CWRL is cl_story1. [If we get off track, go back to the story.]


cl_intro is an exciting beat in CWRL with reaction "[if location is Space Museum]'[leaderintrobit],' the man says, taking a few steps into the room and letting the door swing closed again. Outside you can see the faint tableau of an armored vehicle and several burly guards. [paragraph break]He strolls slowly through the room, looking around at the closed exhibits sadly and running fingers along the hull of the model ship. 'Twenty years ago we built her,' he says, 'full size, mind, not this model. But all the somenium on this world was good for but one voyage. Where to send it? Hmm. Who can tell. And the scientists never did find a way to make more.' He smiles, sadly. 'They say now they never will.' [otherwise]'An inauspicious place,' the man says, eyeing the bars critically, 'for such a momentous meeting. I can't say I understand your actions; cultural differences, I suppose. And even I must sift through paperwork, or else...' He coughs. 'But here we are.'[paragraph break]He studies your face for a long moment, seeming to search for something there, then begins. 'There is a ship,' he says quietly, 'in a museum not far from here. Safe from the attack, thank us. We built it twenty years ago, without knowing where to send it. Your predecessor was unable to help us, so now we turn our hopes on you.' He smiles sadly.[end if][paragraph break]'I am Leader Tall,' he adds with a nod, almost as an afterthought, 'Governor General. [cl_goodtomeet].'". cl_intro summons cl_goodtomeet. Understand "welcome" as cl_goodtomeet. Instead of greeting Leader when last beat is cl_intro, force discuss cl_goodtomeet. cl_intro suggests cl_questions. Before discussing cl_intro: if we have examined green slip, now cl_intro summons cl_censorship; continue the action.

To say leaderintrobit: if we have examined rocket-plaque, say "But they never synthesized it"; otherwise say "She never flew".

Understand "Cloudeye" as cl_Cloudeye when last beat is in CWRL. cl_Cloudeye is an ephemeral beat in CWRL with reaction "Leader Tall looks vague. 'Yes,' he says, 'one of the scientists on your-- pardon-- Dr. Quick's team, I believe. I've not met him myself.'".

Understand "bombing" as cl_bombing. cl_bombing is a beat in CWRL with fuse 6 and keyword name "bombing" and reaction "An angry look crosses Leader Tall's face. 'The [cl_greeneyes],' he says, 'will not rest until they've destroyed our city and killed every soul in it. They are terrorists and murderers. It pains me that they struck again on the day of your arrival. But we will deal with them.'". cl_bombing suggests cl_transitiontopoint.

Understand "greeneyes/greeneye" as cl_greeneyes. cl_greeneyes is a beat in CWRL with fuse 6 and keyword name "greeneyes" and reaction "'They are descendants of Weaver Greeneyes and his followers,' Leader Tall says sourly, making a dismissive gesture with one hand, 'traitors against [cl_buildertall] Tall, the great leader who saved the Twelve from starvation and death in the first cold years after their arrival. They live on the islands, we on the land. But their day is drawing to an end.'". cl_greeneyes suggests cl_transitiontopoint. 

Understand "censorship" as cl_censorship. cl_censorship is a beat in CWRL with fuse 6 and keyword name "censorship" and reaction "Leader Tall's face grows troubled. 'It was never my intent to interfere with the free exchange of knowledge and ideas,' he says. 'But of late a growing group of greeneyes sympathizers has taken root in our youth. These hotheads want to destroy all government, cast out all leaders and let each family fend for itself. Surely you are wise enough to realize such anarchy is foolish.' He sighs. 'Even the staunchest patriot could not deny the persuasive power of Weaver [cl_greeneyes]['] words, even two centuries later. So the book has been removed from the public libraries. Only temporarily. I'm not proud of my action, but I believe it had to be done, for the good of City. Some say I am [cl_censoragree] and some [cl_censordisagree]; that is the way of things in a free society, but for now it is I who make the decisions.'". cl_censorship suggests cl_transitiontopoint. 

Understand "correct" as cl_censoragree when last beat is in CWRL. cl_censoragree is a beat in CWRL with keyword name "correct" and reaction "Leader Tall nods. 'I am glad you understand,' he says. 'And when this war is over, my first act will be to return all the books to the libraries. May the Greeneyes crumble soon and hasten that day's arrival.'". cl_censoragree suggests cl_transitiontopoint. cl_censoragree cancels cl_censordisagree.

Understand "wrong" as cl_censordisagree when last beat is in CWRL. cl_censordisagree is a beat in CWRL with keyword name "wrong" and reaction "Leader Tall shakes his head. 'You have not seen the suffering caused by the Greeneyes,' he says, 'the pallor of fear cast over our city for a generation by those animals. We cannot face any more division. Only by uniting against this threat can we hope to prevail.' He straightens his back a little, defiant. 'I stand behind my decision,' he says.". cl_censordisagree suggests cl_transitiontopoint. cl_censordisagree cancels cl_censoragree.

Understand "builder" as cl_buildertall when last beat is in CWRL. cl_buildertall is a beat in CWRL with keyword name "Builder" and reaction "'Builder Tall is the pillar of our society,' Leader Tall says seriously, 'hero to schoolchildren and model to the grown. He was the first of us to accept the terrible mantle of freedom and responsibility, to realize that the loss of the windsigh was in fact the dawn of independence for our species. We all are in his shadow, and ever in his debt.'". cl_buildertall suggests cl_transitiontopoint.

cl_goodtomeet is an ephemeral beat in CWRL with keyword name "Welcome" and reaction "Leader Tall inclines his head graciously to you. 'We have waited a long time for your return,' he says, and adds, with a small smile, 'your coming, rather. We had expected the return of another. But you are as welcome.'".

cl_questions is a beat in CWRL with reaction "Leader Tall taps the [if location is Space Museum]spaceship[otherwise]wall[end if] thoughtfully. 'Timing,' he says. 'Twenty years we've waited for your friend to return. You arrive and the [cl_greeneyes] launch another act of terrorist madness the same day.' He shakes his head. 'So despite all that I wish, I must meet you here, [if location is Space Museum]amongst ruins[otherwise]in a cell and not my private offices[end if], and only briefly.' He sighs. 'But I owe you explanations. Please, if you have questions, ask, and then I will come to the [cl_transitiontopoint].'". cl_questions suggests cl_transitiontopoint. cl_questions summons cl_directtransition, cl_cloudeye, cl_buildertall, cl_bombing, cl_censorship, cl_greeneyes. 

cl_transitiontopoint is a beat in CWRL with keyword name "point" and reaction "'Nothing more?' Leader Tall asks. 'Then very good. We come to it.'". cl_transitiontopoint enqueues cl_story1. cl_story1 replaces cl_transitiontopoint.

Understand "point" as cl_directtransition. cl_directtransition is a beat in CWRL with reaction "Leader Tall smiles. 'As impatient as I,' he says. 'Yes, let's come to it, then.'". cl_directtransition enqueues cl_story1.

cl_story1 is a beat in CWRL with reaction "The quiet little man turns to face you at last, folding his hands on his walking stick, regarding you seriously. 'Much of this you doubtless know already, so I will be brief. Our people are the descendants of the [cl_twelve] who [cl_crashlanded] on this planet two hundred years ago, the seeds of the Trees meant to use us and enslave us destroyed. For generations we were scared and alone, but have survived.'[paragraph break]'Some time ago one of our greatest scientists--' he gives you a strange little side look, and you realize he's talking about Quick-- 'made a [cl_breakthrough] in the study of that marvel of technology, Egg, which brought us here. The results were many, but chiefly two: it enabled us to secretly listen in on their intergalactic chatter-- and gave us the ability to repair and refurbish the ship.'". cl_story1 suggests cl_story2. cl_story2 replaces cl_story1.  cl_story1 cancels cl_questions, cl_buildertall, cl_censoragree, cl_censordisagree, cl_greeneyes, cl_bombing, cl_cloudeye.

Understand "twelve" as cl_twelve when last beat is in CWRL. cl_twelve is a beat in CWRL with keyword name "Twelve" and reaction "'Each Egg left its home, the Heart of the Forest, with twelve men and women aboard,' Tall says, 'determined by the calculations of the windsigh to be the optimum number of helpers to assist the new trees to grow, and then breed more helpers for newer generations. Our Twelve are our ancestors; you have doubtless seen their names reflected everywhere in our City.'". cl_twelve enqueues cl_story2.

Understand "crashlanded/crash" as cl_crashlanded when last beat is in CWRL. cl_crashlanded is a beat in CWRL with keyword name "crashlanded" and reaction "'Based on information our mindlisteners have uncovered,' he says, 'it would seem there was a fault in the reentry programming of the egg ships. Some small percentage of them failed when entering their target planet's atmosphere. But our world, and yours, are the only two we know of where there were any survivors.'". cl_crashlanded enqueues cl_story2.

Understand "breakthrough" as cl_breakthrough when last beat is in CWRL. cl_breakthrough is a beat in CWRL with keyword name "breakthrough" and reaction "'The taming of somenium,' Tall says, rubbing his face tiredly, 'will doubtless go down in our history as one of our greatest moments. Doctor Quick's work building the somenium crucible and the mindlink interface was instrumental.' He smiles. 'Your mind is in good company in there.'". cl_breakthrough enqueues cl_story2.

cl_story2 is a beat in CWRL with reaction "'But we had only that one ship's worth of somenium,' he continues, pacing the room slowly, 'that rare substance which lets the windsigh think together across the stars, and would keep us in contact with would-be colonists. Oh, we could send the ship off without it,' he adds bitterly, 'but those poor souls would be like blind mice crawling into a galaxy of snakes.'[paragraph break]'For [cl_trees] does not want us,' he says, stepping close to you, a fire in his eyes. 'Trust that, despite what they say. We are an abomination to them, a botched experiment that somehow lived and thrived. They do not want us to spread, to colonize, perhaps to tempt their [cl_slaves] with the promise of freedom. They mean for us to stay stranded here on this small world until we have [cl_destroy] ourselves.'". cl_story2 suggests cl_story3. cl_story3 replaces cl_story2. cl_story2 summons cl_trees, cl_slaves, cl_destroy.

Understand "Forest" as cl_trees when last beat is in CWRL. cl_trees is a beat in CWRL with keyword name "Forest" and reaction "'What place could we have in their grand design?' he asks simply. 'Their millennial plan to spread Forest across the stars, a forest as large as a galaxy, of thinkers and their subservient companions? Free peoples would muddy their perfect vision, and they would not tolerate it.'". cl_trees enqueues cl_story3.

Understand "slave/slaves/slavery" as cl_slaves when last beat is in CWRL. cl_slaves is a beat in CWRL with keyword name "[if last beat is cl_story4]slavery[else]slaves" and reaction "'Our ancestors gave up their destiny, their free will, their future to serve Forest,' Tall says, fixing you with a firm glance, 'who took it without a thought, and used their limbs and eyes and ears. And in turn kept them from using their minds. Yes; slavery is the word for it, without a doubt.'". cl_slaves enqueues cl_story3.

Understand "destroyed" as cl_destroy when last beat is in CWRL. cl_destroy is a beat in CWRL with keyword name "destroyed" and reaction "Tall pauses for a moment, as if regretting the word, then stares into the distance for a moment, considering.[paragraph break]'We are such a young people,' he says. 'We have grown up quickly in the generations since our sudden liberation, perhaps too quickly. We have not yet learned how to balance the need for authority with the need for freedom.' He shakes his head, clearing his thoughts.". cl_destroy enqueues cl_story3.

cl_story3 is a beat in CWRL with reaction "'But then,' he continues, 'twenty years ago, your friend arrived. Progue. From another lost world of Forest's expansion. He too had repaired an egg ship's [cl_seiver] and dove into the thought-strands of Forest. Through our mindlistener [cl_spies], we picked up news of their excitement, spreading in ripples throughout their galactic mind, and were able to communicate with him in dreams, much as we have with you. Finally we brought his mind here. And in telling us about his world, we learned something impossible.'[paragraph break]He fixes you with intense grey eyes, and speaks firmly. 'Those strange blue crystals on that distant island of Lacuna,' he says, 'are surely somenium. You have not seen our night sky, but it looks much as your friend described his. I do not think our worlds are so very far away.'[paragraph break]'I think our ship could reach your Lacuna,' he breathes, 'if we only knew [cl_where] it was.'". cl_story3 suggests cl_story4. cl_story4 replaces cl_story3. cl_story3 summons [cl_progue,] cl_seiver, cl_spies, cl_where.

[Understand "progue" as cl_progue when last beat is in CWRL. cl_progue is a beat in CWRL with reaction "'It was a ". cl_progue enqueues cl_story4.]

Understand "seiver" as cl_seiver when last beat is in CWRL. cl_seiver is a beat in CWRL with keyword name "seiver" and reaction "'Yes, the small glass egg containing the machinery that connects a mind to the the thought-strands of the galactic grove,' he says. 'A marvelous piece of technology, designed by trees, built by men, powered by somenium. There is only one on this world; thank Builder our side has it and not the Greeneyes.'". cl_seiver enqueues cl_story4.

Understand "spies" as cl_spies when last beat is in CWRL. cl_spies is a beat in CWRL with keyword name "spies" and reaction "'For twenty years now, they have worked tirelessly, around the clock,' he says, 'carefully stealing information from the glut of noise echoing through the thought-strands of Forest. It was never designed for security,' he adds with a smile, 'so though they have been aware of us for some years now, there is little they can do to shut us out, as long as we are careful. We have learned much about our former masters, over the years... and it has allowed us to find you.'". cl_spies enqueues cl_story4.

Understand "where" as cl_where when last beat is in CWRL. cl_where is a beat in CWRL with keyword name "where" and reaction "'You can help us find it,' he says. 'But first there is more to tell.'". cl_where enqueues cl_story4.

cl_story4 is a beat in CWRL with reaction "He steps closer and places a hand on your shoulder. 'It is our chance,' he says forcefully. 'Lacuna will be our stepping-stone to build the second great civilization of this galaxy... one built on free will, not [cl_slaves]. We can escape the violence and terrorism of the [cl_Greeneyes], and turn from war to science. In peace, and with the somenium there, we can prepare to expand outwards across the stars. And when we meet the empire of the windsigh...' he touches his fingers lightly together. 'We will come in peace, with but this as an offer: those humans who choose to leave their masters and join us will be welcomed. They will be welcome.'". cl_story4 suggests cl_story5. cl_story5 replaces cl_story4. 

cl_story5 is a beat in CWRL with reaction "A sad smile touches Leader Tall's lips. He turns away from you. 'But that dream vanished when Progue did,' he said. 'I do not pretend to know why, but though he agreed to help us, he never did, and cut off all communication with us. And things here have grown worse. The Greeneyes have developed new weapons; we have been forced to follow suit. Crowding has gotten worse. There is so little habitable space on this miserable planet.'[paragraph break]He takes a deep breath, staring into the shimmering motes of dust that light from a half-boarded window illuminates. 'But now, you have come. A second chance, as mysterious and unlooked for as the first. Now perhaps you see why you are so welcome, why my government has stretched its resources to the breaking point to reach you.'". cl_story5 suggests cl_story6. cl_story6 replaces cl_story5.

cl_story6 is a beat in CWRL with reaction "Leader Tall turns to face you, and speaks with the firm voice of a lifelong orator. 'Stranger, I make to you the same offer that my father made to Progue, those years ago. To help us, you must merely do one thing, one very simple thing.'[paragraph break]'Return to Lacuna,' he says. 'Leave your seiver encrypted and set to our password, so your message will come, out of all the nodes of Forest, only to our seiver here in City. Climb to the top of the tallest windsigh on your island, so you will be surrounded by its branches.'[paragraph break]He hobbles forward until you are face to face, and breathes, 'Then, just this. [italic type]Look at the stars[roman type]. What you see will travel unwillingly through the tree into the seiver and to the computers and machines in the labs of Doctor Quick. He will turn it over to our astronomers. Through triangulations and calculations, they will be able to tell us where your world of Lacuna lies, and we will be able to plot a course there. And at last our ship will fly, and carry with it the future of our people.'". cl_story6 suggests cl_story7. cl_story7 replaces cl_story6.

[The trees there, of course, will retain a dim memory of what you saw, but nowhere near a precise enough image to give the same data to their own astronomers. ]

cl_story7 is a terminal beat in CWRL with reaction "A guard steps discreetly forward and whispers something in Leader Tall's ear. He nods, and turns back to you.[paragraph break]'I do not know you, visitor,' Leader Tall says,  'so I cannot call you friend. But if you help us, you will be the savior of a people, of a world, of a galaxy.' He fixes you with a deep, serious look.[paragraph break]Finally he nods, breaks the gaze, and turns, a wry smile twitching his lips. 'Just like a debate,' he says, beginning a shuffle towards the door. 'I've made my case, and now it's in the hands of the voters. Well. I have a government to attend to. Plans must be made. The people will expect retaliation for the tragedy today. Three more lives, I've been informed. A waste. The Greeneyes must be punished.'[paragraph break]'Remember,' he says at the door, 'just take off the transmitter cap and you'll awaken back on Lacuna. Goodbye for now, and... may your thoughts be free.' With one last nod, he turns [if location is Space Museum]and steps through the door. As the marbled window swings shut, you see his armored car roll silently away[otherwise]and raps sharply on the metal door with his stick. A moment later it slides open, and Leader Tall steps outside to his armed retinue, giving you a final somber glance before the door swings shut again[end if].". After discussing cl_story7: remove Leader from play.

Instead of attacking Leader, force discuss cl_attack.

cl_attack is a beat in CWRL with reaction "You move to strike at him but instantly the shadowy figures at the door resolve into armored figures with guns pointed in your direction. Leader Tall regards you sadly. 'Such anger?' he says. 'Perhaps, then, things are not so different here. Perhaps violence is the way of all worlds.'[paragraph break]'You are upset,' he says. 'Will you allow me to [t]continue[x] my story, and perhaps explain? Or will you [t]reject[x] my offer before I have finished making it?'". cl_attack summons cl_attackresolve, cl_endpoorly. Understand "continue" as cl_attackresolve. Understand "reject" as cl_endpoorly. cl_attack suggests cl_attackresolve. cl_attack2 replaces cl_attack.

cl_attack2 is a beat in CWRL with reaction "Instantly one of the troopers leaps forward and pummels you savagely with the butt of his gun. Stars explode in your vision-- for a moment, you see the mountaintop on Lacuna-- and then you sink to your knees, gasping; the pain is very real.". cl_attack2 enqueues cl_endpoorly. 

cl_endpoorly is a terminal beat in CWRL with reaction "Leader Tall holds his stick in front of him, hands folded atop it, his face grim. 'Such a waste,' he mutters. 'Dreams shattered by madmen. Very well. Return to Lacuna by removing the transmitter cap, and leave the body of a man who devoted his life to bring you here in peace. I have a government to attend to. War to run. May your thoughts be free.'[paragraph break]He turns[if location is Space Museum], and strides wordlessly from the museum, the two soldiers following with guns trained on you. As the marbled door swings shut you see the armored car in the plaza outside pull quickly away[otherwise] and walks out the door, disappearing into his armed retinue who retreat slowly afterwords, guns trained on you, until the heavy steel door is slammed shut and locked again with an echoing slam[end if].". After discussing cl_endpoorly: remove Leader from play.

cl_attackresolve is a beat in CWRL with reaction "Leader Tall pauses, then nods. He motions to the guards, who retreat into the shadows again. 'Thank you,' he says. 'I will try to come to the point more quickly.'". cl_attackresolve enqueues cl_story1.

Instead of touching Leader, say "You reach out a hand and clasp Leader Tall's shoulder. He smiles and places his on yours. 'Thank you,' he says. 'It is good to know you are a [if player is female]wo[end if]man of character.'". 

Instead of going when location is Space Museum and StraightTalkWithRebelLeader has not happened: say "Something about the still finality of this place makes you pause.".


StraightTalkWithRebelLeader ends when Leader is off-stage.

Every turn when StraightTalkWithRebelLeader has ended and location is regionally in Rebelworld and a random chance of 1 in 10 succeeds: say "The heavy wires and machinery in your [o]cap[x] itch you. You remember what Tall said about taking it off to return.".


[  Only a narrow band of livable space on this world; 
]

[
cl_2 is a beat. The reaction is "{Here the Rebel leader explains himself to you. He apologizes for the attack by the Islanders, but uses it as an example: the free people, escaped from the trees, need more space.}". cl_2 suggests cl_request.

cl_request is a beat. The reaction is "{They say that they have repaired the ship that crashed here, generations ago, but don't know where to send it. They need more of the crystal on Lacuna, the only other planet where it has been found. They want to expand their civilization there, and then travel among the worlds, not as enemies, but gathering like-minded humans among them. You must leave the encryption set for the Rebels, then climb to the highest tree and look at the stars. They'll be able to pick up what you see and from that determine the location, and send a colony ship to make it a human world. To return to lacuna, just close your eyes.}". cl_request suggests cl_depart.

]


Section - Cafeteria

[This is a small tableau to cover the condition where the player returns to the Treeworld after the bombing. ]

Cafeteria is a room in Rebelworld. "Plain metal tables reflect the harsh glow of fluorescent lights sharply in this windowless room. A few [o]technicians[x] in lab coats are scattered around at various tables, talking quietly to each other in tense voices, and glancing surreptitiously at a guard standing near the double [d]door[x] leading out of the room.".

The double door is a setpiece in Cafeteria. The description is "Doctor Cloudeye grabs your arm as you move towards the door. 'We can't leave till lockdown is over,' he says.".

Some reb-scientists are undescribed people in Cafeteria with printed name "technicians". Understand "technicians" as reb-scientists. The description is "They look tired.". Instead of greeting some reb-scientists, say "A few of them nod wearily at you, but none seem interested in joining a conversation.".

Post Bombing Return is a scene. Post Bombing Return begins when location is Cafeteria. When Post Bombing Return begins: now Cloudeye is attentive; force discuss pbr-intro.

PBR is a thread. pbr-intro is a beat in PBR with reaction "Doctor Cloudeye, sitting at a table nearby, notices your confusion and grips your arm. 'You've returned,' he says. 'We're in the cafeteria at the lab; there's been a [pbr-lockdown] because of the [pbr-greeneyes] attack.'". pbr-intro summons pbr-lockdown, pbr-greeneyes.

Understand "lockdown" as pbr-lockdown when last beat is in PBR. pbr-lockdown is a beat in PBR with keyword name "lockdown" and reaction "'The lab here is one of the presumptive targets in any Greeneyes attack,' Cloudeye explains quickly, 'because of the somenium and the seiver. We've got it, not them, so of course they want it, you see. So everything is ultra tight security now until the Force has verified that the area is clear.'".

Understand "greeneye/greeneyes" as pbr-greeneyes when last beat is in PBR. pbr-greeneyes is a beat in PBR with keyword name "Greeneyes" and reaction "'It's one of the biggest ones so far,' Cloudeye explains, running a hand through his long straight hair nervously. 'Three separate bombs went off simultaneously at three points across City. There've been reports of more in the farms; maybe they're trying to cut off our supply lines.' He swallows weakly. 'But our technicians are standing by, if you're willing to help us,' he says. 'It will take more than that to knock us out.'[paragraph break]'Please,' he adds, 'return to Lacuna by taking off your cap, go to the tallest tree, and look at the stars. Don't let all our work be for nothing.'".

Instead of getting bored when location is Cafeteria: do nothing. Instead of greeting Cloudeye when location is Cafeteria: say "'Nothing to do but wait it out, doctor,' he says distractedly.".

[Chapter - Puzzles

After going in Rebelworld for the first time: now everything required by Contacting-All-The-Trees is met; continue the action.


Section - Reaching Rebelworld

Reaching-Rebelworld is a puzzle. Reaching-Rebelworld requires Getting To The Rebs.

After going in Rebelworld for the first time: now everything required by Reaching-Rebelworld is met; continue the action.


Section - Finishing Rebelworld

Finishing-Rebelworld is a puzzle. Finishing-Rebelworld requires Ditching The Rebs.

After taking off cap when StraightTalkWithRebelLeader has ended: now everything required by Finishing-Rebelworld is met; continue the action.]


Chapter - Fast Forwarding



A fast-forward rule for Finishing-The-Prologue:
	now DrQuick is male.

Rebelworld-Sequence is a puzzle. It requires Being-In-Rebelworld, Finishing-Rebelworld.

Being-In-Rebelworld is a puzzle. It requires Arriving-Rebworld.

Arriving-Rebworld is a task. Definition: Arriving-Rebworld is complete: if the player is DrQuick, yes.

A fast-forward rule for Being-In-Rebelworld:
	now yourself is on mind chair;
	change the machinery-password to the rebel-password;
	now the mind machinery is projecting;
	try looking.

Finishing-Rebelworld is a puzzle. It requires Concluding-Leader-Convo.

Concluding-Leader-Convo is a task. Definition: Concluding-Leader-Convo is complete: if cl_story7 is spoken, yes.

A fast-forward rule for Finishing-Rebelworld:
	now cl_story7 is spoken;
	now the time of day is 10:30 PM;
	try silently taking off cap.


Lacuna-Rebelworld ends here.
