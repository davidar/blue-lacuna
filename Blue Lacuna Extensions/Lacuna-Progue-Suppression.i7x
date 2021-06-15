Lacuna-Progue-Suppression by Blue Lacuna begins here.

Use authorial modesty.

Book - SUPPRESSION

Table of Suppression Episodes
eptitle
Suppression Dislike Convo
Suppression Animus Convo
Suppression General Convo
Building To Revelations
Let's Take A Soak Part One
A Simple Warning
Sand Construction
Walk Invitation
Unexpected Present
Earthquake
Water Works
Ring of Truth
Make-Way
Small Favor
Mad Honesty
Rainfall Rhapsody
Hold This Please
Just Teasing
Thought I Warned You
Feast of Submission
Knitted You a Gift
Knitted Aftermath
Dolphins Meeting
Hey That's Mine
Older And Wiser
Art Critic
Guess Whot

Section - Setup

Transition Progue To Suppression is a scene. Transition Progue To Suppression begins when the psyche of Progue is suppression. Transition Progue To Suppression ends when Transition Progue To Suppression begins.

When Transition Progue To Suppression begins:
	truncate the list of convo stuff to 0 entries; [get rid of old keywords]
	repeat with bt running through beats summoned by denial keywords begin;
		now fuse of bt is 0;
	end repeat; [ and keep them from coming back. ]
	now Progue is named; [ we've definitely learned his name by this point. ]
	now episode schedule is Table of Suppression Episodes;
	now current_thread of Progue is SuppC;
	now the exhaust_beat of Progue is p_supp_exhausted;
	now the overexhaust_beat of Progue is pd_overexhausted;
	now the disgusted_beat of Progue is p_supp_exhausted;
	now the randomyes_beat of Progue is pd_randomyes;
	now the randomno_beat of Progue is pd_randomno;
	now the bored_beat of Progue is p_supp_bored;
	now the unavailable-beat of Progue is p_supp_unavailable;
	now the rudebye_beat of Progue is p_supp_rudebye;
	now the abruptbye_beat of Progue is p_supp_abruptbye;
	now the bye_beat of Progue is p_supp_bye;
	now the nudity_beat of Progue is ps_nudity;
	now the conversation_beat of Progue is sc_makeconversation;
	now disposition of Progue is 0;
	if current chapter < 4, begin chapter 4. [This is necessary because there's a slight possibility we may have skipped Progue's suppression psyche.]

Section - Standard Behavior

SuppC is a thread. The escape clause is p_supp_bye.

p_supp_exhausted is a repeatable ephemeral beat in SuppC with reaction "Progue [one of]rubs his temples[or]sighs[or]looks away[or]shrugs[in random order]. '[one of]I don't want to talk about it any more,[or]Let's talk about something else, all right?[or]I'm afraid that's really all I can remember right now,[in random order]' he says.".

p_supp_bored is a repeatable terminal beat in SuppC with reaction "[if affinity of Progue > 0][psb_like][otherwise][psb_dislike][end if]". To say psb_like: say "'[one of]Terrible sorries, but I[or]Hate to cut this short, but I[or]So much to do; I[or]Oh! Forgot all about what I was doing. I[in random order] [one of]really should get back to this[or]better get back to it[or]should keep going or I'll forget what I'm doing[in random order],' he says, [animus-business]. "; say "'[one of]Ta[or]Have a pleasant [progue-time-of-day][or]Good [progue-time-of-day][or]Craze you later[in random order]!' [Progue-resumes].". To say psb_dislike: say "'[one of]Not that this isn't fascinating[or]I really hate to inconvenience you[or]Well, as vibrant a conversationalist as you are, I hate to break this off[in random order],' Progue says[if affinity of Progue <= -2] [one of]with a touch of sarcasm[or]in a somewhat droll tone[at random][end if], "; say "'[one of]but I really am quite busy here[or]but I've really got quite a lot to do[or]but I sort of must get back to this[in random order].' [Progue-resumes]. '[one of]So long[or]Later, I suppose[or]Good [progue-time-of-day][in random order].'".

p_supp_unavailable is a repeatable ephemeral beat in SuppC with reaction "[if submission of Progue > 0][psu_sub][otherwise][psu_unsub][end if]". To say psu_sub: say "[if affinity of Progue > 0][one of]'If you wouldn't mind waiting just a moment first,' he says hurriedly, 'I'd like to follow this line of thought.'[or]'Oh, in just a minute,' he says.[or]'Can it wait just a moment?' he says. 'I'd really like to finish this discussion before we change the subject.'[in random order][otherwise][one of]'Well, if you say so,' he says, eyes downcast, 'but can we just finish up what we were talking about first?'[or]'We can talk about whatever you like,' Progue says in an obsequious tone, 'but let's finish this up quick quick first.'[or]'Yes, of course,' Progue says soothingly, 'in just a minute, yes yes?'[in random order][end if]". To say psu_unsub: say "[if affinity of Progue > 0][one of]'Yes, but just a ment first,' he says, holding up a hand, 'let's finish this line of thought.'[or]'Not now,' he says, holding up a hand, 'I'm interested in this subject.'[or]'Later,' Progue says firmly, 'now stick to the point.'[in random order][otherwise][one of]'No, I like this subject,' Progue says.[or]'I don't think so,' Progue says, 'now why don't you stay on the point?'[or]'No, I think we'll keep talking about this for now,' Progue says, fixing you with a commanding stare.[in random order][end if]".

p_supp_rudebye is a repeatable ephemeral beat in SuppC with reaction "'[one of]You're not getting away that easily,[or]And just where is it you think you're going?[or]Hey, come back here![in random order],' Progue says.".

p_supp_abruptbye is an annoying beat in SuppC with reaction "[if affinity of Progue > 0 and submission of Progue > 0]'Oh, well that's all right then,' Progue says awkwardly. 'Bye!'[otherwise if affinity of Progue > 0 and submission of Progue < 0]'A [']goodbye['] would have been nice!' Progue shouts after you. 'Oh well, craze you later!'[otherwise if submission of Progue > 0]'Ah,' Progue mutters to your retreating back, 'that's all right, we weren't talking about anything important I suppose.'[otherwise]'Typical of [playerhimher],' you hear Progue mutter to your back, 'no manners.'[end if]". pd_abruptbye2 replaces p_supp_abruptbye.

To say playerhimher: if player is male, say "him"; otherwise say "her".

suppression keywords is a beat. suppression keywords summons learn_capalla_name, dc_konokuk, learn_rayfish_name.

Instead of pushing Progue when the psyche of Progue is suppression, force discuss sc_push. sc_push is an ephemeral beat with reaction "You shove [the Progue]'s shoulder. He staggers back, looking [if affinity of Progue < 0]un[end if]surprised, and brushes off his clothes. 'Now let's not get rowdy,' he says.". sc_push2 replaces sc_push. sc_push2 is an unaffinitive submissive beat with reaction "You shove [the Progue], who staggers back and shoots you a [if affinity of Progue >= 0]hurt[otherwise]vengeful[end if] look. [if player is female]'My dear woman,' he says, straightening himself up, 'if you were someone more manwardsly I'd respond with gushing more force. As it is I think you'd better stop[otherwise]'My good man,' he says, straightening himself up, 'you do that one but one more time and sorries, but things will turn unpleasant[end if]. Please stop it.'". sc_push3 replaces sc_push2. sc_push3 is an unaffinitive submissive terminal beat with reaction "You shove [the Progue] hard to the [surface-material] and stand threateningly over him, but he scrabbles away and turns to flee, [if submission of Progue > 0]looking fearfully[else]spitting[end if] over his shoulder.". After discussing sc_push3: now dont_describe_Progue is true; Progue's life goes on; follow the Progue's motivation rule; continue the action. sc_push4 replaces sc_push3. sc_push4 is a repeatable unaffinitive terminal beat with reaction "[The Progue] [one of]ducks out of range before you can push him[or]dodges out of the way[at random][if player is male], then suddenly slams into you with surprising force, knocking you onto the [surface-material]. By the time you have gotten to your feet he has already vanished[otherwise], and takes off at a run, vanishing[end if].". After discussing sc_push4: now dont_describe_Progue is true; Progue's life goes on; follow the Progue's motivation rule; continue the action.

Instead of attacking Progue when the psyche of Progue is suppression, force discuss sc_attack. sc_attack is an unaffinitive submissive nonverbal beat with reaction "You step forward, threatening, and [the Progue] shrinks back. 'Now now,' he says, holding up his hands nervously, 'no need to grow angerwards. I was only fooling.'". sc_attack2 replaces sc_attack. sc_attack2 is an unaffinitive submissive beat with reaction "You lunge at [the Progue] angrily but he leaps backwards, crying out, then turns and flees over the [surface-material].". After discussing sc_attack2: now dont_describe_Progue is true; Progue's life goes on; follow the Progue's motivation rule; continue the action. sc_attack3 replace sc_attack2. sc_attack3 is an unaffinitive repeatable terminal beat with reaction "[The Progue] [one of]ducks out of range before you can land an attack[or]dodges out of the way[at random][one of], then suddenly slams into you with surprising force, knocking you onto the [surface-material]. By the time you have gotten to your feet he has already taken off at a run[or], and takes off at a run[at random].". After discussing sc_attack3: now dont_describe_Progue is true; Progue's life goes on; follow the Progue's motivation rule; continue the action.

p_supp_bye is an impressive [for politeness] repeatable beat in SuppC with reaction "'[one of]See you around[or]Take care[or]Enjoy the [progue-time-of-day][or]Good [progue-time-of-day][or]We'll talk again later[or]See you later[or]So long[in random order]![appointment_reminder]' [Progue-resumes].".

To say appointment_reminder: if Progue has pending appointments begin; choose a random row in the Table of Progue's Appointment Book; say " [one of]Don't forget, [or]Remember, we're meeting [or]See you [in random order][if date entry is morning or date entry is midmorning]in the morning[otherwise if date entry is midday]at high noon[otherwise if date entry is afternoon]this afternoon[otherwise if date entry is evening or date entry is sunset]this evening[otherwise if date entry is twilight]after sunset[otherwise]tonight[end if]!"; end if.

Instead of hugging Progue when the psyche of Progue is suppression:
	force discuss p_supp_hug.

p_supp_hug is an affinitive repeatable dogged beat in SuppC with reaction "'All right all right,' Progue says, patting you on the back, 'fine then, fine.'".

Instead of kissing Progue when the psyche of Progue is suppression:
	if romance of Progue < -1 begin;
		force discuss the disgusted_beat of Progue;
		Progue's life goes on;
		follow the Progue's motivation rule;
	otherwise if romance of Progue >= 2;
		force discuss p_supp_flirting;
	otherwise if affinity of Progue < -1;
		force discuss p_supp_nokissing;
	otherwise;
		force discuss p_d_nokissyet;
	end if.

p_d_nokissyet is a dogged romantic nonverbal beat in DenialC with reaction "The old man leans deftly back. 'Whoah there, my [animal-nickname],' he says with a chuckle. 'Let's just wait to get to know each other a little better first, eh?'". p_d_nokissyet2 replaces p_d_nokissyet. After discussing p_d_nokissyet: annoy Progue; continue the action.

p_d_nokissyet2 is a dogged repeatable beat in DenialC with reaction "'[one of]Knock it[or]Really, I must insist[or]Let's just keep this a bit more formal[or]Come on, now[in random order],' he says, [one of]annoyed[or]embarrassed[in random order].". After discussing p_d_nokissyet2: annoy Progue; continue the action.

p_supp_nokissing is a repeatable annoying beat in SuppC with reaction "[one of]Progue leans back in alarm[or]Progue jumps back, startled[in random order]. '[one of]No thank you,' he says, 'I reserve that for people I like better[or]I don't think so,' he says, 'you aren't really my type[or]Keep your lips to yourself[in random order].'".

p_supp_flirting is a romantic impressive beat in SuppC with reaction "You peck Progue on the lips and his eyes widen in surprise. 'Warn me next time,' he finally says with a wink, 'so I can plan a counter attack.'". p_supp_flirting2 replaces p_supp_flirting.

p_supp_flirting2 is a repeatable impressive beat in SuppC with reaction "[one of]Progue slaps your hand away playfully[or]Progue turns his head at the last minute so you kiss his nose[or]Progue giggles and shoves you away playfully[in random order]. '[one of]Now stop that,' he says, 'that's no way to tease a poor old man.[or]Really, [animal-nickname],' he says archly, 'whatever happened to the art of subtlety?[or]Not here, you fool,' he says with a wink, 'the fish will see, and you've no idea what gossips they are.[in random order]'".

ps_nudity is a romantic nonverbal beat in SuppC with reaction "'[if pd_nudity is spoken]You certainly do enjoy scrounging about in the altogether, don't you[else]My oh my oh, you're certainly forward[end if],' [the Progue] says, eyeing your naked body. 'Well but I suppose I don't mind if you don't.'". pd_nudity2 replaces ps_nudity.


Section - Keywords

suppression keywords is a repeatable beat. suppression keywords summons sc_cabin, sc_windsigh, learn_capalla_name, learn_rayfish_name, sc_sculpture,  sc_ropeway, sc_sketchbook, sc_treehouse, sc_head, sc_paintings, sc_bridge, sc_bees, sc_rainforest, sc_egg, sc_pyramiddist, sc_door, sc_cave, sc_boiler, sc_jellyfish.

Understand "cabin" as sc_cabin. sc_cabin is a beat in SuppC with fuse 9999 and keyword name "cabin" and reaction "He tilts his head, frowning. 'First thing I built,' he says, 'when we came here. Was still in survival mode. Build shelter, protect [sc_family], all that.'". the log cabin references sc_cabin. Check examining by name the log cabin: if sc_cabin is available, try discussing sc_cabin instead. [Check wordgoing Center Beach: if sc_cabin is available, try discussing sc_cabin instead. Check wordgoing Hut: if sc_cabin is available, try discussing sc_cabin instead.]

Understand "family" as sc_family. sc_family is an annoying repeatable beat in SuppC with fuse 9999 and keyword name "family" and reaction "He [one of]frowns[or]closes his eyes[or]looks annoyed[in random order]. '[one of]Past is past is past,' he says, 'let's not keep living in it[or]I'd rather not discuss that any more, if all's the same[or]There are some things I don't really want to remember[in random order],' he says.".

Understand "girls/daughters/daughter" as sc_girls. sc_girls is a beat in SuppC with fuse 9999 and keyword name "[if last beat is sc_shdead]daughter[otherwise]girls" and reaction "He looks down awkwardly at his bare feet. 'I brought them here,' he says, 'after the uh, well their-- after [sc_mother]. They came with me because they're my daughters; I made them, if you ring. Had been oh, fifteen years then since I'd done it and never thought I'd do it again but...' He stops, awkwardly, then shrugs.". sc_girls2 replaces sc_girls.

sc_girls2 is a beat in SuppC with reaction "He bites his lip. 'Yes, started to tale you earlier. I wanted to transplant us somewhere new and fresh, somewhere without lingering memories. Someplace we'd be needed, and useful. But...' he spreads his hand around the island, grasping at the air helplessly. 'Something went wrong. There was no one here.' He laughs uncomfortably. 'An empty island, alone. And after that I don't remember, remember what happened.'". sc_family replaces sc_girls2.

Understand "tree9/windsigh" as sc_windsigh. sc_windsigh is a beat in SuppC with fuse 9999 and keyword name "windsigh" and reaction "He rubs his knuckles against the side of his head. 'Ugly things, aren't they?' he says, grimacing. 'Don't know why I gifted them a pretty name. Windsigh, hrmph. Don't like them. Don't like to be near them. You should keep your feet on [surface-material] here, where it's [sc_safe].'". tree1 references sc_windsigh.  Check examining by name distant-tree3: if sc_windsigh is available, try discussing sc_windsigh instead.

Understand "safe" as sc_safe. sc_safe is a beat in SuppC with keyword name "safe" and reaction "'Safe,' he says again, emphatically, 'from-- from I-don't-know-what. The paranoid fears of a delusional castaway, mayhaps; or... mayhaps there is something over there, mayhaps the Creeper's not just--' He breaks off, bites his lip. Then laughs. 'Well and there I go again,' he says. 'Let's just forget it, shall we shall we?'". [should Creeper be highlighted? sc_creeper]

Understand "sculpture" as sc_sculpture. sc_sculpture is a beat in SuppC with fuse 9999 and keyword name "sculpture" and reaction "He turns, raising a hand to shield his eyes and peering intently up at the volcano, where the sculpture glimmers brightly. 'Yes, I remember that one,' he says, 'now. Lost everything around it, memories I mean, but I remember sculpting it something vivid.' He squints his eyes. 'Was before I realized I'd lost whatever-it-was. The thing, the gift, the skill.' He pauses, lost in memory, as if hoping to gather some more.". sc_sculpture suggests sc_sculpture2. sc_sculpture2 replaces sc_sculpture. volcano sculpture references sc_sculpture.

sc_sculpture2 is a beat in SuppC with keyword name "sculpture" and reaction "'Yes,' he says, as if trying the idea out on himself, 'didn't really intend to go anywhere with that one. No, of courses not; the [sc_girls] were still roundwards. But I think I thought [']twould be nice to feel a tingle; just tingles in the hands, reminders of who and who I was.' He pauses, [attitude-business], then falls quiet, half-hiding a strange and mournful expression.".

Understand "ropeway" as sc_ropeway. sc_ropeway is a beat in SuppC with fuse 9999 and keyword name "ropeway" and reaction "He frowns a little and rubs his knuckles reflexively against his head. 'Yes, I built that,' he says, 'but for life and strife I can't remember why. It was terrible important at the time. Wove rope till my fingers bled.' He stares down at them, flexing. 'Strange strange.'". Before discussing sc_ropeway when Lawn is visited: now sc_ropeway is spoken; now sc_ropeway2 replaces sc_ropeway. ropeway-shack references sc_ropeway. Check examining by name distant-ropeway: if sc_ropeway is available, try discussing sc_ropeway instead. Check examining by name ropeway-shack: if sc_ropeway is available, try discussing sc_ropeway instead.

sc_ropeway2 is a beat in SuppC with keyword name "ropeway" and reaction "'Yes, I've seen you using it,' he says with a frown. 'Probably not the most luminous of ideas. Not the safest thing, you ring. No inspections boards here, safety officials, ropeway certification standards. Hasn't been used in obscene quantities of time. You're the first friend I've made in ages who talked back so I'd really rather you didn't do something stupid and die,' he adds gravely.".

Understand "sketchbook" as sc_sketchbook. sc_sketchbook is a repeatable beat in SuppC with fuse 9999 and keyword name "sketchbook" and reaction "[one of]'That old thing?' he asks. 'Don't really remember. Brought it with me from before, I think from-- somewhere, some somewhere. Made it by hand, if you ring, so it came. What's in it, anyway?'[or]'Yes,' he says, 'what else did you say was in it?'[stopping]". sc_sketchbook summons sc_sketchgirls, sc_map, sc_dreams, sc_schematics, sc_writing. The sketchbook references sc_sketchbook.

Understand "daughters" as sc_sketchgirls. sc_sketchgirls is a beat in SuppC with keyword name "daughters" and fuse 6 and reaction "He looks away, smiling distantly as if using the expression as a shield, as you describe the sketch. 'Yes, my first and only,' he says, quietly. 'Couplets, you know, born at the same time. Such mischief they could get into, such joy they could bring. Well. But that's past as past now and they're gone. They're gone. Moisty hells, I wish I could remember why.' He stops, and presses his lips together tightly, [animus-business].". sc_sketchgirls summons sc_mother.

Understand "map" as sc_map. sc_map is a beat in SuppC with keyword name "map" and fuse 6 and reaction "He seems interested as you explain. 'Yes, I remember drawing that,' he says. 'Up at the top of the volcano. Beautiful day; sky blue as blue and blue. But--' he lifts a corner of his mouth, raising one bony knuckle hesitantly to his temple. 'I don't remember this asterisk you mention. Somewhere in the rain forest, was it? No, can't remember what that might have meant. Unless-- you're sure it wasn't by-- by the [sc_bees]? The star?'[paragraph break]You shake your head, and he frowns. 'Then I'm bats at noon,' he says, 'no idea at all. Don't remember scribbling over it all either.' He sighs. 'So much missing. I'd miss it if I knew what to miss.'". 

Understand "dreams" as sc_dreams. sc_dreams is a beat in SuppC with keyword name "dreams" and fuse 6 and reaction "'Don't remember that one at all,' he says immediately, shaking his head and tapping a knuckle idly against his temple. 'Sounds like just bored doodles. I certainly wouldn't recommend sleeping near any of those creepy windsigh; ground all muddy and lumpy? Nasty nasty. Try the beach; so much softer and nicer and quieter.'".

Understand "schematics" as sc_schematics. sc_schematics is a beat in SuppC with keyword name "schematics" and fuse 6 and reaction "'Ye-es,' he says hesitantly. 'That was when I was building-- well, everything really. The [dc_ropeway], and the [sc_boiler] and pipes, and the--' He waves vaguely, uncomfortably, in the direction of the mountain, not looking towards it. 'The whatever-it-is up there. Time of inspiration. Such ideas! Popping into my head like soap bubbles, round and airy. Sometimes couldn't write nearly fast enough to get them all down.'". sc_schematics summons dc_ropeway.

Understand "writing" as sc_writing. sc_writing is a beat in SuppC with keyword name "writing" and fuse 6 and reaction "'Yes,' he says, warming. 'That's the [sc_script] they taught me growing up, some backwards backwhen world. Curious curious, have you noticed? We [if rev_wayfaring is spoken]wayfarers [end if]can always understand each other and others we meet, well, mostly usually I mean, when we chatter back and forth. But each world has different writing; why should it work that way? I remember once being marvelous inebriated and becoming terrible convinced that that was the key to some vital secret about [if rev_wayfaring is spoken]us, wayfarers[otherwise]our kind, you and I[end if], that would explain and expound the entirety of our strange sad lives completely.' He chuckles, shaking his head. 'Sausages, but what queer realities we dwell in.'". sc_script replaces sc_writing. sc_writing suggests sc_script.

Understand "chirography" as sc_script. sc_script is a beat in SuppC with keyword name "chirography" and reaction "'Words, writing, you know,' he says. 'What now, you expect me to translate my private notes in an old diary?' he asks, [attitude-business]. 'I'm not sure you're at all clearanced for that kind of information. Come back when you've written a few hundred pages of my biography or been my close and dearest for a decade or so, then we'll talk about it.'".

Understand "treehouse" as sc_treehouse. sc_treehouse is a beat in SuppC with fuse 9999 and keyword name "treehouse" and reaction "'That was for the [sc_girls], of course,' he says musingly. 'They wanted-- I think-- or am I confusing this with something-- no, I'm mostly gushing sure-- they wanted a little refuge, you see, so they could get away from me for times. Or--' he pauses, biting his lip. 'Or was it that I wanted time away from them, and so I built them their own--?' He trails off, looking for a moment quite miserable. 'Doesn't matter,' he says. 'Just ruins in the forest now I imagine. Remnants of some strange and failed civilization.'". tree2 references sc_treehouse.

Understand "head" as sc_head. sc_head is a beat in SuppC with fuse 9999 and keyword name "head" and reaction "He laughs. 'Oh yes,' he says, 'that thing. Such a joy to make. It came with us, or ratherly I brought it. Made it when the [sc_girls] were just babes to teach them-- teach them my language. Useless of course; it was from some world at angles to the one they borne and grew in. But it was just that I wanted to give them something private, special, something that only they and we and their--' His throat catches, and he rubs it fiercely for a moment. 'Only we would have it,' he says, 'together.'". sc_head summons sc_mother. clockwork head references sc_head.

Understand "mother/wife/tragedy" as sc_mother. sc_mother is a beat in SuppC with keyword name "[if last beat is sc_girls]tragedy[otherwise]mother". sc_mother enqueues sc_family.

Understand "paintings" as sc_paintings. sc_paintings is a beat in SuppC with fuse 9999 and keyword name "paintings" and reaction "His face moves through a strange sort of grimace. 'Beautiful, aren't they?' he says quietly. 'Used to go care and stare for hours, years back, drinking them in. They're by my [sc_girls]. I suppose. Oh well oh, I can draw, but not like that. Must be them. And where else would they be if not---?'[paragraph break]He looks down at the [surface-material] again, [Progue-animus] momentarily forgotten. 'Beautiful,' he finally says.".  Phoebe-canvas references sc_paintings. Check examining by name an artwork: if sc_paintings is available, try discussing sc_paintings instead.

Understand "stairs/bridge" as sc_bridge. sc_bridge is a beat in SuppC with fuse 9999 and keyword name "[if bridge is raised]bridge[otherwise]stairs" and reaction "'Hmm,' he says, thinking, 'that was one of the first things I built in my productive daze. I'd already done the [sc_door], I think, to keep the girls out of the volcano, but then it was so inconvenient when I started--' he frowns. 'No, or was it before that?' he says. 'Did I build it just to test the [sc_boiler] and power? No no no. No, it was there already when--' Finally, he shrugs. 'Bats at noon,' he says, 'sorries.'". bridge references sc_bridge.

Understand "jellyfish" as sc_jellyfish. sc_jellyfish is a beat in SuppC with keyword name "jellyfish" and reaction "'Migratory things,' he says, dreamily, 'astonishing beautiful, astonishing graceful, astonishing deadly if those tentacles brush [']gainst you. Usually they keep well out to sea, and don't swim in to the bay. Once a year or so, when they're touring by, sometimes I swim out to see them.'".

Understand "bees/beehive" as sc_bees. sc_bees is a beat in SuppC with fuse 9999 and keyword name "[if last beat is sc_map or last beat is sc_exploring]beehive[otherwise]bees" and reaction "He laughs. 'The first time one zipped by like a hairy jet zeppelin I thought valves would burst,' he says, 'just an hour or so after we'd first arrived I mean. Visions of giant tropical death bees tend to crimp plans for peace and relaxation. They're harmless of course, I discovered soon enough; Lethe even lumped into them, started tending the dying ones like strange birds, or was it Phoebe? No, it was Lethe, I'm sure I'm sure. Lethe. We went once to watch them [sc_beedance].' He smiles, gently, slowly. 'Seems like this morning or yesterday. Such a fresh memory, just out from the wash all warm and clean. Like yesterday...'". the beehive references sc_bees.

Understand "dance" as sc_beedance. sc_beedance is a beat in SuppC with keyword name "dance" and reaction "'Did ever I know you I once was a scientist?' he says, eyes glazed in memory. 'A botanist, lives and lives ago, though I studied biology first. The University of the [sc_nabe]; finest school I could summon. Observation above all else; that's what they taught us. The careful watch, the scrutiny, the detail.' He nods. 'I tried to instill something thatwise in the [sc_girls]. We watched the bee dance, creeping and peering into their windswept hive, and I asked her, my Lethe, I said [']What does it mean, angel?['] And she asked how she was meant to know, not being a bee herself, if you ring.'[paragraph break]Progue smiles, lost in the story. '[']Watch him,['] I said. [']How he twirls, where he steps, which wing quivers and why and when. Watch like a bee, angel, and you'll learn to know what they learn in their watching.[']'[paragraph break]A corner of his mouth rises in pride. 'And she did,' he finishes.".

Understand "nabe" as sc_nabe. sc_nabe is a beat in SuppC with keyword name "Nabe" and reaction "'Mmm,' he says fondly, 'yes. After fears and years of wandering I decided I wanted to study and learn, so I sculpted myself to a place where I could.'[paragraph break]He scratches his beard slowly, leaning back with a smile. 'A stunning world,' he says, 'endless but endless archipelagos and island clusters, elegant simple nanotechnology that kept their world so fresh it was like every sunrise was scrubbed clean-- and the University, spread out on twelve little islets called The Nabe, where twelve thousand students from fifteen planets had come to study under the best best. And what wonderful times we had,' he says fondly, 'gushing and trickling wonderful.'".

Understand "rainforest" as sc_rainforest. sc_rainforest is a beat in SuppC with fuse 9999 and keyword name "rainforest" and reaction "'Dangerous,' he says, [animus-business]. 'Wild [sc_boar] with tusks out to here, rubbery vines to trip your feet, sudden drop-offs, and-- something else,' he finishes with a frown. 'The [sc_creeper] or whatever it really is. I'd stay out of there, were I you.'". goliath trees references sc_rainforest. 

Understand "creeper" as sc_creeper. sc_creeper is a beat in SuppC with keyword name "creeper" and reaction "'I know it sounds crazy,' he says shrugging, 'but there's something over there, something I don't like. I haven't been over to that side of the island in green eons and I don't intend restarting now. Crazy, superstitious, call me whatever you like, but that's as that as that.'".

Understand "boar" as sc_boar. sc_boar is a beat in SuppC with keyword name "boar" and reaction "'Loathsome creatures,' he says, 'but the only thing big enough here to have a hide that can be used for canvas. I suppose you'll have to face one eventually, if you're to leave here.'".

Understand "egg" as sc_egg. sc_egg is an annoying beat in SuppC with fuse 9999 and keyword name "egg" and reaction "He frowns, first scratching and then rubbing the side of his head with his knuckles. 'I'm really developing the most resounding headache,' he says, 'all these questions are climbing up my nerves. No, I don't remember anything like that in there; probably just a queer [sc_egg2].'". sc_egg2 replaces sc_egg. egg-proper references sc_egg.

Understand "stone/egg" as sc_egg2. sc_egg2 is a terminal beat in SuppC with keyword name "[if last beat is sc_egg]stone[otherwise]egg" and reaction "'Moisty hells, I'm sure it's nothing to get upended over,' he says. 'Why don't you soar off for a span, taking these nosing questions elsewards.' [Progue-resumes].".

Understand "pyramid/thing" as sc_pyramiddist. sc_pyramiddist is an annoying beat in SuppC with fuse 9999 and keyword name "[if noun is sc_boiler]thing[else]pyramid" and reaction "'What, that thing up on the mountain?' he says, frowning. 'It's always been there, I'm trickling sure. Just a--' he waves his hand. '--an optical formation or natural illusion or something thatwise. Utterly uninterestingly unimportant.'". distant-pyramid references sc_pyramiddist. Check examining by name distant-pyramid: if sc_pyramiddist is available, try discussing sc_pyramiddist instead. sc_pyramid replaces sc_pyramiddist.

Understand "pyramid" as sc_pyramid. sc_pyramid is an annoying beat in SuppC with fuse 9999 and keyword name "pyramid" and reaction "'What are you telling me about it for and why are you still fiddling with it?' Progue shouts, suddenly angry. 'Told you, it's not something important. Why don't you soar off and leave me lonewards for a span, hmm?' [Progue-resumes].". sc_family replaces sc_pyramid.

Understand "door" as sc_door. sc_door is a beat in SuppC with fuse 9999 and keyword name "door" and reaction "[if dtod_intro is spoken]'It was-- well a shock really I suppose, when I saw you'd opened it,' he says. 'I hadn't seen it open in green eons; the searing reality of that, of what it looked like, do you ring, openwise--' He shrugs. 'Something in the braincase just clicked and said you must and must be real, after alls. And well it was something surprising.'[else]'Built that to keep the girls out of the caldera,' he says, 'I think. Didn't know how active it was in there at first.'[end if]". lava tunnel door references sc_door.

Before discussing sc_door: if lava tunnel door is closed and Jumble is unvisited and story mode, now sc_door enqueues sc_opendoor; else now sc_door enqueues nothing; continue the action.

sc_opendoor is a repeatable beat in SuppC with reaction "'Say,' he adds, 'did you want me to open it for you?'". The yes-beat of sc_opendoor is sc_opendooryes. The no-beat of sc_opendoor is sc_opendoorno. sc_opendoor suggests sc_opendoorno.

sc_opendooryes is a beat in SuppC with keyword name "yes" and reaction "'Well that's fine then,' he says, 'since I already did. Wouldn't go in there myself, but if you care to it's all open now.'". After discussing sc_opendooryes: now lava tunnel door is open; continue the action.

sc_opendoorno is a repeatable beat in SuppC with keyword name "no" and reaction "'Good,' he says, relieved, 'since I'm gushing sure I don't remember how. Probably for the best at any rate.'".

Understand "cave" as sc_cave. sc_cave is a beat in SuppC with fuse 9999 and keyword name "cave" and reaction "'Hmm? Vaguely familiarish I suppose,' he says. 'Think I think I noticed it on my initial survey, never went back. Nothing much to see.'". series of sketches references sc_cave.

Understand "boiler" as sc_boiler. sc_boiler is a beat in SuppC with fuse 9999 and keyword name "boiler" and reaction "'Ah,' he says, 'to channel the steam, if you ring. Mostly really for the--' he waves at the mountain. '--The [sc_pyramiddist] up there, such tremendous amounts of power it guzzle-guzzled, but then was useful for the [sc_ropeway] to get everything up there, and for the [sc_bridge]. Quite a feat, quite an engineerish challenge. Kept the hands busy when they needed busying, I suppose.'". brick boiler references sc_boiler.



Chapter - Suppression Conversations

[ During this phase, the focus on random conversation is less on what Progue is doing and more on his growing relationship to the player and his growing memories of the past. In the earlier type, the player is given a chance to either confirm the path they're on or refute it. Progue is more introspective, remembering things about his old life, but also in some ways struggling not to remember. Things remind him, trigger memories, etc.

Another conversation during this phrase is Suppression Interrupted, if the player accosts Progue on his way somewhere. Progue will be vaguely impatient.  ]


Section - Suppression Dislike Convo

[Chance to make amends with Progue if we've pissed him off, or make things worse.]

Suppression Dislike Convo is a serendipitous rerunnable frequent triggered episode. The subchange beat is silence. The boredom beat is silence. The bye beat of Suppression Dislike Convo is silence. The abruptbye beat is silence. The icebreaker is sc_unfriendlyconversation.

Last condition rule for Suppression Dislike Convo:
	if affinity of Progue < -1, rule succeeds.

sc_unfriendlyconversation is a insistent beat with reaction "'[if sc_attack2 is spoken]Come to beat up some more on an old man, eh?[otherwise if sc_push2 is spoken]Come to shove around a sick old man some more, eh?[otherwise if pd_disgusted is spoken]Come to keep pestering me incessantly and drive me further down the road to madness, eh?[otherwise]I'm not quite sure we're getting along, you and I, eh?[end if]' he says sourly. 'Have anything to say to me?'". sc_unfriendlyconversation summons sc_unfsorry. The no-beat of sc_unfriendlyconversation is sc_unfno. sc_unfriendlyconversation suggests sc_unfno. sc_unfc2 replaces sc_unfriendlyconversation.

sc_unfc2 is a repeatable beat with reaction "He looks up warily. 'Greetings, then,' he says, 'what do you want?'".

Understand "sorry" as sc_unfsorry. sc_unfsorry is an affinitive beat with keyword name "sorry" and reaction "'Well, that's all right,' he says, [animus-business]. 'Really, after all this time alone I expect I'm just working out years of repressed aggressive tendencies. Well, what would you like to talk about?'". 

sc_reallyunfriendly is a repeatable terminal beat with reaction "'[one of]I'm afraid I don't have much to say to you,[or]I really don't care to speak with you any more,[or]What, you again?[in random order]' [the Progue] says [one of]shortly[or]curtly[or]warily[in random order]. '[one of]You know the old expression. Fool me twice but never thrice.[or]Come with another false apology to trick me with again?[or]This time your reputation precedes you.[in random order] [one of]Until you're prepared to back up your sugared words with actions, I'm afraid we shan't and can't be friends. Oh well oh.[or]You're going to have to try a slip harder this time if you honest expect me to think of you friendwards[or]I'm not just going to take your word for it this time; you're going to have to prove to me that you want to be friends[in random order].' [Progue-resumes].".

sc_unfno is a terminal repeatable beat with keyword name "no" and reaction "The old man raises his eyebrows wryly. 'Well, in that case,' he says, [animus-business], '[one of]I'm afraid we don't have much to talk about.[or]Soar off.[or]why don't you go away?[in random order]'". After discussing sc_unfno: now sc_reallyunfriendly replaces sc_unfriendlyconversation; continue the action. 

Section - Suppression Animus Convo

Suppression Animus Convo is a serendipitous rerunnable guaranteed triggered episode. The subchange beat is silence. The boredom beat is silence. The bye beat of Suppression Animus Convo is silence. The abruptbye beat is silence.

Last condition rule for Suppression Animus Convo:
	if a random chance of 1 in 2 succeeds, rule succeeds.

First commencement rule for Suppression Animus Convo:
	ignore the Progue begins episode dialogue rule;
	pre-conversation processing;
	force discuss sc_intro;
	[ if Progue doesn't like us, we have a few "nasty" conversations to choose from. ]
	[ if Progue is doing an activity we have a conversation for, potentially discuss that ] 
	if the animus of Progue is ruminating and a random chance of 2 in 3 succeeds:
		force discuss sc_ruminating;
	otherwise if ( the animus of Progue is mending or the animus of Progue is fishing or the animus of Progue is beach-combing ) :
		if dc_fishing is unspoken and the animus of Progue is fishing:
			force discuss dc_fishing;
		else if dc_mending is unspoken and the animus of Progue is mending:
			force discuss dc_mending;
		else if dc_combing is unspoken and the animus of Progue is beach-combing:
			force discuss dc_combing;
		else:
			force discuss sc_lifecontinues;
	otherwise if the animus of Progue is cleaning:
		force discuss depc_departureprepping;
	[ otherwise, make general conversation. ]
	otherwise:
		force discuss sc_makeconversation. 

First finishing rule for Suppression Animus Convo:
	if Progue is idle, rule succeeds.

sc_intro is a repeatable beat in DenialC with reaction "Progue looks up from his [Progue-animus] and nods[if we are going or we are landmark-going] as you approach[end if], [attitude-business]."

Section - Suppression General Convo

Suppression General Convo is a serendipitous rerunnable frequent triggered episode. The subchange beat is silence. The boredom beat is silence. The bye beat of Suppression General Convo is silence. The abruptbye beat is silence. The icebreaker is sc_makeconversation.

Last condition rule for Suppression General Convo:
	if a random chance of 1 in 2 succeeds, rule succeeds.

First finishing rule for Suppression General Convo:
	if Progue is idle, rule succeeds.

sc_makeconversation is a repeatable beat in SuppC. Check discussing sc_makeconversation:
	if paternalism of Progue > 2 and a random chance of 1 in 2 succeeds and sc_chatpat1 is unspoken begin; force discuss sc_chatpat1 instead;
	otherwise if romance of Progue > 0 and ( animus of Progue is fishing or animus of Progue is frog-catching or animus of Progue is beach-combing ) and sc_chatrom1 is unspoken; now caught-frog is true; force discuss sc_chatrom1 instead;
[	otherwise if submission of Progue < -2 and a random chance of 1 in 2 succeeds and sc_chatunsub1 is unspoken; force discuss sc_chatunsub1 instead;]
	otherwise if submission of Progue > 2 and a random chance of 1 in 2 succeeds and sc_chatsub is unspoken; force discuss sc_chatsub instead;
	otherwise;
		let beatlist be {sc_chat1, sc_chat2, sc_chat3, sc_chat4};
		remove the list of spoken beats from beatlist;
		sort beatlist in random order;
		if the number of entries in beatlist is at least 1 begin;
			force discuss entry 1 of beatlist instead;
		else;
			if a random chance of 1 in 2 succeeds, force discuss sc_lifecontinues instead;
			else force discuss sc_chat4 instead;
		end if;
	end if.

[sc_chatrom1: flirting banter]
sc_chatrom1 is a beat in SuppC with reaction "'Well oh well oh,' Progue says with a flash of a grin, 'look looky who. You're just in time; come see. Come on.' He waves you closer.[paragraph break]'Now look here,' he says. [if animus of Progue is fishing]I've got a fighter on the line here. Go on, take it.' He hands you the [o]pole[x][otherwise if animus of Progue is frog-catching]I've got my hands on a real beauty here. Go on, take it.' He holds out the [o]frog[x] to you[otherwise if animus of Progue is beach-combing]I've found a baby crab. Go on, hold it.' He holds out the tiny [o]crab[x] to you[end if].". After discussing sc_chatrom1: if animus of Progue is beach-combing, move baby crab to location; if animus of Progue is frog-catching, move frog to location; if animus of Progue is fishing, move fishing-pole to location; continue the action. 

Instead of getting bored when last beat is sc_chatrom1, force discuss sc_chatromnobait. sc_chatromnobait is an annoying beat in SuppC with reaction "'Oh well, never mind then,' Progue says, a bit crestfallen. 'Was there something you wanted to ask me about?'".

A baby crab is an animal. 

Taking baby crab is promtriggering. Taking frog is promtriggering. Taking fishing-pole is promtriggering. Examining baby crab is promtriggering. Examining frog is promtriggering. Examining fishing-pole is promtriggering. Instead of promtriggering when last beat is sc_chatrom1 (this is the sc_chatrom_override rule): force discuss sc_chatrom1b. The sc_chatrom_override rule is listed first in the instead rules.

sc_chatrom1b is an insistent beat in SuppC with reaction "'Good,' Progue says, beaming. '[if animus of Progue is fishing]Now what you want to do is just jerk the line, like so-- there you are[otherwise]No, don't crush him; keep your hand open, like a finger cage-- there you are[end if].' He puts his hand [if animus of Progue is fishing]back on the fishing pole[otherwise]on top of yours[end if] to guide you, and you wonder whether to [sc_chatrom1shift] your grip to avoid the touch, or let things [sc_chatrom1stay] as they are.". sc_chatrom1b summons sc_chatrom1shift, sc_chatrom1stay.

Understand "shift" as sc_chatrom1shift when last beat is in SuppC. sc_chatrom1shift is an unromantic beat in SuppC with keyword name "shift" and reaction "You shift your grip ever so slightly, and see Progue's hands do the same in response.". sc_chatrom1shift enqueues sc_chatrom1c.

Understand "stay" as sc_chatrom1stay when last beat is in SuppC. sc_chatrom1stay is a romantic beat in SuppC with keyword name "stay" and reaction "His fingers are strangely warm, calloused and roughened but guarding, you can feel, an almost electric power.". sc_chatrom1stay enqueues sc_chatrom1c.

sc_chatrom1c is a beat in SuppC with reaction "'There you are,' he says as you [if animus of Progue is fishing]pull in a flopping silvery fish[otherwise]peer intently at the tiny creature, breathing shallowly in your palm[end if]. 'Nicely done, nicely done. Easy there, wasn't it?' He takes [if animus of Progue is fishing]the pole back[otherwise]the small creature back[end if] and smiles. 'Now, was there something you wanted to ask?'".


[sc_chatpat1: fatherly reminiscing]
sc_chatpat1 is an insistent beat in SuppC with reaction "'[if player is female]Strange to say I know,' he says, squinting at you, 'but you have something in you of my [sc_girls]. Inquisitiveism; stubbornness; or perhaps just an eyelash or two in the right position.[otherwise]Strange to say I know,' he says, squinting at you, 'but I recognize something in you in me. Mayhaps I'm just missing my [sc_girls], but well and there.[end if]' He smiles. 'Mayhaps coincidence,' he says, 'but I wonder if the reminding goes both ways. Do tell and be true: do I seem at all like your father?'". The yes-beat of sc_chatpat1 is sc_chatpatyes. The no-beat of sc_chatpat1 is sc_chatpatno. 

sc_chatpatyes is a paternal beat in SuppC with keyword name "yes" and reaction "You can tell he is pleased, though he tries a little to hide it. 'Thoughts alike,' he says. '[if rev_call is spoken]The Call has sent[otherwise]Strange fates send[end if] me a surrogate [if player is male]son[otherwise]daughter[end if]. Fraid the inheritance is a bit sparse, though if property prospectors ever discover this world it might seem a better deal.' He laughs. 'What can I help you with?'".

sc_chatpatno is a unpaternal beat in SuppC with keyword name "no" and reaction "'Probably for the best,' he says archly, 'as I true and do hope that means your fath was less mad, more clean, and gushing more amusing than your friend [sccpn-name].' He winks. 'Now, what can I help you with?". To say sccpn-name: if player-name-guess is not "no.guess", say "[player-name-guess] -- or rather Progue"; otherwise say "Progue".  

[sc_chatsub: submissive stuff]
sc_chatsub is a beat in SuppC with reaction "He looks up nervously as you approach. 'Well and oh, hello,' he says. 'Sorries, did you want to use this bit of [surface-material] for something? I can move along, really I can. Shall I then?'". The yes-beat of sc_chatsub is sc_csyes. The no-beat of sc_chatsub is sc_csno. sc_chatsub suggests sc_csyes.

sc_csyes is a submissive terminal beat in SuppC with keyword name "yes" and reaction "'Ah! Oh! Nothing problems at all,' he says [if affinity of Progue > 0]sincerely[else]with a touch of ingratiating sarcasm[end if], brushing himself off and preparing to leave. 'Please and please, it's all yours.'". After discussing sc_csyes: Progue's life goes on; follow the Progue's motivation rule.

sc_csno is an unsubmissive beat in SuppC with keyword name "no" and reaction "'Oh! Kind of you,' he says, [animus-business]. 'I was in the middle of this after all. Well oh, is there something you'd like to talk about then?'". 

[sc_chatunsub1: dominant stuff]
[Here we have a test to see whether the player wants Progue's dominant role to continue, by having him ask the player to do something relatively arbitrary and see if the player does it. Of course, players are used to being asked to do arbitrary things by game characters, so--- ?

Progue asks, which triggers a scene which keeps a relevant topic in the topic list. After a reasonable amount of time, Progue decides the player has failed; the topic switches to a one-off notice of failure and Progue adjusts his attributes. If the player succeeds within the time limit, the topic changes again.
]

[Understand "steamm" as sming. sming is an action applying to nothing. Carry out sming: force discuss sc_chatunsub1.

sc_chatunsub1 is an insistent beat in SuppC with reaction "'I notice you're still tromping around the dangerous part of the island, despite my advice to the contrary,' he says [if affinity of Progue > 0]with a smile[otherwise]with a frown[end if]. 'As long as you're being foolish, I wonder if you'd run your little legs over there and do me a favor. Interested?'". The yes-beat of sc_chatunsub1 is sc_cus1yes. The no-beat of sc_chatunsub1 is sc_cus1no.

sc_cus1no is a submissive beat in SuppC with keyword name "no" and reaction "'Oh,' Progue says. 'Well in that case, never mind, I suppose. Just seemed as if you really had nothing better to do, [animal-nickname]. Now let's see then, was there something you wanted?'".

sc_cus1yes is a beat in SuppC with keyword name "yes" and reaction "'Splend,' he says. '[if player wears compass]I see you've found that old compass of mine[otherwise]In the cabin on the beach should be an old compass of mine[end if]. Run it up to the top of the volcano and peer out at that cloud of steam off to the south, and try and see if you can squeeze which direction the wind out there's blowing.' He stops for a moment to cough. 'There's something strange going on with the tides and the weather,' he adds, 'and I want to see if this wind we're having is constant.'". After discussing sc_cus1yes: now distant column of steam references sc_cus1noresults.

Progue-Steam-Mission is a scene. Progue-Steam-Mission begins when sc_cus1yes is spoken.

[Every turn when Progue-Steam-Mission is happening and an unimportant episode is playing:
	if sc_cus1done is true begin;
		remove sc_cus1noresults from list of convo stuff, if present;
		add sc_cus1results to list of convo stuff, if absent;
	otherwise;
		add sc_cus1noresults to list of convo stuff, if absent;
	end if.]

Progue-Steam-Mission ends successfully when sc_cus1results is spoken. Progue-Steam-Mission ends unsuccessfully when the time since Progue-Steam-Mission began is at least 4 hours. When Progue-Steam-Mission ends unsuccessfully: add sc_cus1fail to list of convo stuff; remove sc_cus1noresults from list of convo stuff, if present; remove sc_cus1results from list of convo stuff, if present. When Progue-Steam-Mission ends successfully: remove sc_cus1noresults from list of convo stuff, if present; remove sc_cus1results from list of convo stuff, if present; remove sc_cus1fail from list of convo stuff, if present.

Instead of examining distant column of steam when compass is open and Progue-Steam-Mission is happening: add sc_cus1results to list of convo stuff, if absent; remove sc_cus1noresults from list of convo stuff, if present; say "Comparing the steam carefully with the compass, it looks as if the wind is blowing more or less due east.". 

Understand "favor" as sc_cus1noresults when last beat is in SuppC. sc_cus1noresults is an ephemeral beat in SuppC with keyword name "favor" and reaction "'Haven't you gotten it yet?' the Progue says. 'What's keeping you? Pressing social engagements? Terrible traffic through the treehouse district? Get on with it!'".

Understand "favor" as sc_cus1results when last beat is in SuppC. sc_cus1results is a unsubmissive affinitive ephemeral beat in SuppC with keyword name "favor" and reaction "'Interesting,' the Progue says, musing, 'east you say? That's not right at all for this time of year, no, no. East. Hrmph. Strange things happening. Keep the eyes wide.'".

Understand "favor" as sc_cus1fail when last beat is in SuppC. sc_cus1fail is a submissive ephemeral beat in SuppC with keyword name "favor" and reaction "'Oh,' Progue says, 'I gave up on you. Forgot all about it. Next time be a little more punctual, will you?'".]

[sc_chat1: random banter]
sc_chat1 is a beat in SuppC with reaction "'Hello and hello. [last-ep-msg-supp]What have you been playing at this [progue-time-of-day], eh?' he asks, [animus-business]. 'Bits of [sc_exploring], maybe? Trying to [sc_gather] what you need to move on? Or just [sc_lounging] around enjoying the sunlight?'". sc_lifecontinues replaces sc_chat1.

Understand "exploring" as sc_exploring when last beat is in SuppC. sc_exploring is a beat in SuppC with keyword name "exploring" and reaction "'Ah yes, adventure, mystery, exploration,' he says with a fond smile. 'And so much on my Lacuna to discovery. Found the [sc_bees] yet? Or all those gushing [sc_windsigh] trees?'". 

Understand "gather" as sc_gather when last beat is in SuppC. sc_gather is a beat in SuppC with keyword name "gather" and reaction "'I can certainly understand your anxiousness,' he says. 'You'll be having a life to get on with, places to explore, distressees to rescue. Well, don't get upended; we'll have you ready for your [depc_departure] before long.'".

Understand "lounging" as sc_lounging when last beat is in SuppC. sc_lounging is a beat in SuppC with keyword name "lounging" and reaction "'Ah, well,' he says, 'such a beautiful place for it, eh? All this abandoned art: [sc_sculpture], [sc_paintings], even that ridiculous [sc_ropeway] is pretty when the light hits it right.'".

[sc_chat2: random banter]
sc_chat2 is a beat in SuppC with reaction "'Something's been trickling [sc_queer] out in the ocean this [Progue-time-of-day],' he says, [animus-business]. 'I found one of the deep [sc_jellyfish] washed up on the beach, but they aren't due back for months. Strange as strange.'". sc_lifecontinues replaces sc_chat2.

Understand "queer" as sc_queer when last beat is in SuppC. sc_queer is a beat in SuppC with keyword name "queer" and reaction "'Can't put fingers to it,' he says reflectively, 'but lie assured there's something strange out there. Ah well-oh. Oceans are vast and cruel and ever ever so snobbishly haughty. Never let the ocean feel intellectually superior to you, my friend, or you're good as dead. Now, what shall we talk about today?'". bp_wordday suggests bp_hallucination. 

[sc_chat3: random banter]
sc_chat3 is a repeatable beat in SuppC with reaction "'Popped into the old beach cabin a while ago and noticed you'd left some things out,' he says, [animus-business]. 'Some sort of [sc_sketchbook] or something thatwise. Now I don't mean to nag but let's do try and keep things tidy around here while we prepare your [depc_departure], shall we?'". sc_lifecontinues replaces sc_chat3.

sc_chat4 is a repeatable beat in SuppC with reaction "'I hope you're prepping for your [depc_departure],' he says, [animus-business]. 'Lots to do and due to lots.'". 

[sc_ruminating: thoughtful reflection]
sc_ruminating is a beat in SuppC with reaction "[one of]He looks off into the distance again[or]He seems only half-aware of you, still lost in dark reflection[in random order]. 'Sorries,' he says, 'just thinking. Remembering, I suppose. Out of practice at both.' He closes his eyes. 'Or maybe maybe they're the same thing,' he says, 'in two subtle-different [sc_shades].'[paragraph break]He takes a breath. 'What can I do for you then?' he asks.". sc_makeconversation replaces sc_ruminating.

Understand "shades" as sc_shades. sc_shades is a beat in SuppC with keyword name "shades" and reaction "He doesn't respond for a long while, staring off towards the ocean with a bemused look, as if unsure whether something he ate had gone bad.[paragraph break]'Funny,' he says finally, 'something funny, isn't it? How we mourn the ones we left behind, we [if rev_wayfaring is spoken]wayfarers[otherwise]sojourners of worlds[end if]. Mourn them like dead, only they're not. Old friends, kin brothers and love brothers, lovers and strangers and half-acquaintanced drifters in our lives. Not true [sc_shdead], we mostly usually know and nod and accept; it's just it so feels that way to us, selfish we, because [sc_shthey][']ve gone from our lives, zoosh, real as eggs from airplanes, terminal and unreclaimable, gone as gone and gone.'". sc_shades suggests sc_shdead.

Understand "dead/mourn" as sc_shdead when last beat is in SuppC. sc_shdead is a beat in SuppC with keyword name "[if last beat is sc_shthey]mourn[otherwise]dead" and reaction "He turns to look at you, intently. 'But to themselves they live,' he says fiercely, 'still being some existence or trueness, elsewhen and otherwhere, and only the small sad percentage of their lives connected to us has gone, and what is that to anyone, eh? Even after lives entwined, years and fears together, what inner muchness of your life is your own and own alone, that none other knows or shares? Larger than any husband or wife, any brother or [sc_girls] would dare say aloud. Or alone.'[paragraph break]He turns back to the sea, energy spent. 'And that, [animal-nickname], that is why it hurts; the vacuum twixt the perspectives, that they can have died to us and go on living to themselves. That is the selfish truth that cores our pain. And that,' he says, with a twitch of a smile, 'is what I was thinking about. Now. Let's change the subject, shall we?'".

Understand "they" as sc_shthey when last beat is in SuppC. sc_shthey is a beat in SuppC with keyword name "they" and reaction "A half smile. 'I was thinking then when you came up of the strangest person,' he says. 'A girl at [sc_nabe] who I saw just once, out beyond the reef in little boats. We spotted each other in the blue distance and waved, and met up on the rowdy waves, laughing and introducing. We spoke only five minutes, I would guess, and later I saw her at distances but never details. But suddenly today I remember her and [sc_shdead], the yellow of her clothes, the giddy smile, words shared and connections made only by that brief meeting, boat prows kissing together on a clear blue day. I will never see her again, and I mourn.'". sc_shthey suggests sc_shdead.

[sc_lifecontinues: random actions remind Progue of past]
sc_lifecontinues is a repeatable beat in SuppC with reaction "'[one of]Just [Progue-animus] again,' he says, [attitude-business]. 'Seems like I've been [Progue-animus] at this spot for buckets of evers[or]Good [Progue-time-of-day] to you, [animal-nickname],' he says, [animus-business]. 'Just getting in a bit of [Progue-animus] in between all the question-and-answering you seem so fond of[or]I certainly love all this [Progue-animus],' he says fondly, [animus-business]. 'Reminds me of the old days. Well and but the new ones too, I suppose[in random order]. [last-ep-msg-supp][whatnow]?'". To say whatnow: say "[one of]What can I do for you[or]What are you into today[or]Have some more questions for me, I suppose then[or]Hope all's well[or]Good and good to spy you. What's going on[in random order]".

To say last-ep-msg-supp:
	if last episode is Let's Take A Soak Part Two, say "All unwrinkled and deshrivelled from our hot springs jaunt, I hope. ";
	if last episode is Simple Warning, say "Staying away from the pyramid, I hope. ";
	if last episode is Sand Construction, say "Still picking wet sand out from under my fingernails. ";
	if last episode is Long Walks, say "Been thinking a lot about our walk on the beach. ";
	if last episode is Feast of Submission, say "Certainly enjoyed our delicious dinner. ";
	if last episode is Dolphins Meeting, say "Been keeping an eye on those dolphins; who knows how long they'll stick about. ".

[depc_departureprepping: Progue talks about getting player ready for departure.]
depc_departureprepping is a repeatable beat in SuppC with reaction "'Haven't been in here for years!' he says happily, scrubbing dirt from the workbench furiously. 'Don't you worry, we'll get it cleaned up for you. Then you can be on your way!'".



Chapter - Revelations

[ This conversation happens after Progue has transitioned to Suppression. He says he needs some time to think and asks the player to meet him on the Rise at sundown. (Or, if it is already evening, at dawn.) Until then he ruminates. If the player bothers him before the allotted time, we trigger a brief message reminding the player to return later (and get annoyed if the player refuses). If the player misses the allotted meeting, we adjust submission and have Progue start player-seeking the next day. If Progue already dislikes the player too much, ???

The conversation begins with a mini-monologue by Progue explaining his thoughts. He remembers he was a Wayfarer, now. Will answer questions about wayfaring, sculptures. Admits that the girls were his daughters, but that he doesn't know what happened to them. "I've forgotten so much." He remembers what's up with the trees (although not the ultimate conclusion), but lies to the player and pretends he doesn't-- "The Creeper, maybe it's something I made up, maybe not. But I know the east island is dangerous."

He has no idea why you were called; he didn't want anyone to come and doesn't know what you can do. He tells you he is dying. 
 ]



Building To Revelations is a guaranteed triggered instant rerunnable episode. The subchange beat is silence. The boredom beat is silence. The bye beat of Building To Revelations is silence. The abruptbye beat is silence. 

A condition for Building To Revelations:
	if the psyche of Progue is suppression and the episodic status of Suppression Revelations is unaired and Tsunami Sequence is not happening, rule succeeds.

A commencement rule for Building To Revelations:
	Progue starts ruminating;
	if Progue is booked for Suppression Revelations:
		do nothing;
	else:
		if night or dawn or sunrise or morning or midmorning or midday or afternoon, schedule Progue for Suppression Revelations at evening;
		otherwise schedule Progue for Suppression Revelations at morning.

Every turn when current episode is Building To Revelations:
	now the animus of Progue is ruminating;
	if Progue is booked for current interval or the psyche of Progue is not suppression, complete Building To Revelations. 

Instead of greeting Progue when Progue is booked for Suppression Revelations: choose row with an event of Suppression Revelations in Table of Progue's Appointment Book; say "[The Progue] frowns, not looking at you. 'Not now,' he says. 'On the rise, at [date entry], like I said.'".

A finishing rule for Building To Revelations:
	if Tsunami Sequence is happening, rule succeeds.

Suppression Revelations is a guaranteed rendezvous triggered episode. The expiration date is 6 hours. The icebreaker is rev_intro. The meeting place is Rise. The bye beat is p_supp_unavailable. The subchange beat is p_supp_unavailable.

A completion rule for Suppression Revelations:
	if rev_intro is unspoken, begin Makeup-Revelations;
	now Building To Revelations is one-shot;
	now Progue references depc_departure;
	choose a blank row in Table of Progue Suppression Endeavours;
	change pick entry to cleaning;
	Progue's life goes on;
	follow the Progue's motivation rule.

Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Suppression Revelations		"Standing by the drop-off to the sea, staring wistfully out into the waves, is Progue."

Table of Progue's Description (continued)
animus	episode			desc
--		Suppression Revelations		"He seems changed somehow, almost a different person."

REV is a thread. The escape clause is rev_call.

rev_intro is an unsubmissive [because if we show up, we've done something he told us to do] nonverbal beat in Rev with reaction "He looks up and nods. '[if sunrise or morning or evening]Just on time,' he says lightly, 'I thank you for your punctuality[otherwise]A bit late,' he says lightly, 'You've kept me waiting, but [']salright, [']salright, it's not as if I have much else to do[end if].' He smiles, but some of the carefree whimsical quality he had before is gone, replaced with a touch of sadness he tries hard to conceal, and he pauses for a moment to gather his thoughts.". rev_intro suggests rev_intro2. rev_intro summons rev_listen. rev_listen is beat in rev with keyword name "listen" and fuse 2.

rev_intro2 is a beat in Rev with reaction "'[if Progue is unnamed]My name is Progue Attay,' he says, 'and apologies for my earlier behavior. [else]Apologies then I suppose, for my earlier behavior,' he says. '[end if]I've been alone for too too long, and when you appeared, I-- well, assumptions.' He smiles. 'But you are here, and you're not the-- the [rev_creeper], and now I remember who I am. A... a [rev_intro2_bit].'[paragraph break]He takes a deep breath, then laughs once, loudly. 'Explanations,' he says, 'are owed along so many axes. Tell me then where I should begin?'". rev_intro2 summons rev_father, rev_madman, rev_sculptor. rev_intro2 suggests rev_silence. After discussing rev_intro2: now Progue is named; continue the action.

rev_silence is a beat in Rev with reaction "'I'm not sure [if cc_father is unspoken and cc_sculptor is unspoken and cc_madman is unspoken]where to begin[otherwise]what else to talk about[end if] either,' he says sadly. 'Let me think.'". rev_silence enqueues rev_now. rev_yourgift replaces rev_silence.

To say rev_intro2_bit:
	if cc_father is spoken:
		say "[rev_father], first, as you said. But I am-- was--' he pauses, face screwed up in pain for a moment. 'I don't know the tense any more,' he finally says. 'Was? Am? Will be? A [rev_sculptor]. I don't know. Let's unconjugate it. To be a sculptor, I, and also, I suppose, a [rev_madman]";
	else if cc_sculptor is spoken:
		say "[rev_sculptor], first, as you said. Though large years have shambled by since last I lived up to that title. And also a [rev_madman], as I'm sure you've had noticed, and... and a [rev_father]. Yes. And that too";
	else if cc_madman is spoken:
		say "[rev_madman], first, as you said. After twenty years alone, abandoned, perhaps that is all I will ever be again. But also I am-- was--' he pauses, face screwed up in pain for a moment. 'I don't know the tense any more,' he finally says. 'Was? Am? Will be? A [rev_sculptor]. I don't know. Let's unconjugate it. To be a sculptor, I, and also, I suppose, a [rev_father]. Yes. And that too";
	else:
		say "[rev_father], a [rev_sculptor], and a [rev_madman], as you said-- all three".

rev_whatelse is a repeatable beat in Rev with reaction "[one of]He sighs. 'What else can I tell you?' he asks[or]He takes a deep breath. 'What other questions can I answer?' he says[or]He smiles a little. 'What next?' he says[in random order].". After discussing rev_whatelse: if we have not discussed rev_father, now tempfuse of rev_father is 5; if we have not discussed rev_creeper, now tempfuse of rev_creeper is 5; if we have not discussed rev_sculptor, now tempfuse of rev_sculptor is 5; if we have not discussed rev_madman, now tempfuse of rev_madman is 5; continue the action. Before discussing rev_whatelse: if rev_father is spoken and rev_sculptor is spoken and rev_madman is spoken begin; now rev_whatelse is unrepeatable; now rev_whatbroughtyouhere replaces rev_whatelse; end if; continue the action. rev_whatelse suggests rev_silence.

Understand "creeper" as rev_creeper when last beat is in Rev. rev_creeper is a beat in Rev with fuse 5 and keyword name "Creeper" and reaction "He paces back and forth a little, frowning in the [progue-time-of-day] light. 'Look,' he says finally, 'only dimly can I imagine what you think of me now, and I know the whole Creeper story seems preposterous, but...' He stops and looks directly at you. 'I don't know, but there is something, what, dangerous. Over therewards in that part of the island. I can't explain, but part of me,' he draws a deep breath, 'knows. Be careful.'". rev_creeper suggests rev_whatelse.

Understand "father" as rev_father when last beat is in Rev. rev_father is an insistent beat in Rev with fuse 5 and keyword name "father" and reaction "He rubs his knuckles along the side of his head for a long moment, avoiding your gaze, then finally sighs. 'Yes,' he says, 'they were my daughters. The two-- two little girls. How could I have forgotten? Phoebe and-- and Lethe. Yes, Lethe. My angels. I-- I brought them here, I think but-- but I don't know where they are now.' He smiles sadly. 'They've left, I suppose. They're like me, like us. Travelers. Shifters and drifters. What-- what was your word for it?'". rev_father summons rev_wayfaring, rev_wfshrug. rev_father suggests rev_wfshrug. The maybe-beat of rev_father is rev_wfshrug.

Understand "wayfaring" as rev_wayfaring when last beat is in Rev. rev_Wayfaring is an impressive beat in Rev with keyword name "wayfaring" and reaction "'Yes,' he says, 'Wayfaring. A good word. I'll have to remember that next Word Day.' He grins a little.". rev_wayfaring enqueues rev_whatelse.

rev_wfshrug is an annoying beat in Rev with keyword name "shrug" and reaction "'Oh well,' Progue says, frowning a little, 'the important thing is that we're the same. Wanderers of worlds, rootless.'". rev_wfshrug enqueues rev_whatelse.

Understand "sculptor" as rev_sculptor when last beat is in Rev. rev_sculptor is a beat in Rev with fuse 5 and keyword name "sculptor" and reaction "'Yes,' he says, ghosts of old memories lighting his face, 'always been a sculptor, since I was a child. I remember some of it, now, bits and fractures of the worlds I turned through. Beauty, terror, and always homeless. What strange times, like dream-pieces swept into a box, clouds of must pillowing out now I've opened it unexpected...'

He shakes his head. 'But no. Now you're here too. And it is memory, not fantasy, I'm gushing sure.  Once I was a [if rev_wayfaring is spoken]wayfarer[otherwise]shifter of worlds[end if], but [rev_now]...' He trails off.". rev_sculptor suggests rev_now. rev_sculptor cancels rev_father, rev_creeper, rev_madman.

Understand "now" as rev_now when last beat is in Rev. rev_now is a beat in Rev with keyword name "now" and reaction "He sighs. 'There are twisted holes in my mind, lacunae where memories once gelled. I remember we came here after terrible tragedy, years and fears ago. I remember long eons of madness. The transition has slipped, spaces between melted somehow and vanished.'

He flexes his bare feet on the [surface-material], gripping it carefully. 'When memories light up again on the other side,' he says sadly, 'I was no longer [if rev_wayfaring is spoken]a Wayfarer[otherwise]what I once was[end if]. I tried; oh, true as true, I tried. But whatever magic I once had caged in these hands, whatever power Something Further gifted, well. Gone. My sculptures were just sculptures. I remained. And now I haven't even touched hammer and chisel since grey hairs were black as black and black.'". rev_now enqueues rev_whatelse. rev_yourgift replaces rev_now.

Understand "madman" as rev_madman when last beat is in Rev. rev_madman is a beat in Rev with keyword name "madman" and reaction "He half-grins. 'Sounds so unnatural here and now when you say it. But when one's alone-- when one is all of humanity-- however one acts defines normality for the species. Or mayhaps man is man only to man, and I was not man at all these past years and years. Mayhaps I only became man again when you saw me screaming words at the ocean from bouldertops. Your [if rev_wayfaring is spoken]wayfaring[otherwise]arrival[end if] brought me back to be.'". rev_madman enqueues rev_yourgift. 

rev_yourgift is an insistent beat in Rev with reaction "'And tell me, [animal-nickname],' he says suddenly, 'what is your gift? Not sculpting, I can tell from a glance at your hands, but [rev_painting] mayhaps? Or [rev_music]? Or [rev_storytelling] or something even more fantastical?'". rev_yourgift summons rev_giftshrug, rev_painting, rev_music, rev_storytelling. rev_whatbroughtyouhere replaces rev_yourgift. rev_yourgift suggests rev_giftshrug. The maybe-beat of rev_yourgift is rev_giftshrug. rev_whatbroughtyouhere replaces rev_yourgift.

Understand "painting" as rev_painting when last beat is in Rev. rev_painting is a beat in Rev with keyword name "painting" and reaction "His eyes light up. 'A painter!' he said. 'I thought so. Oh my oh. My daughters were painters, before--' He frowns. 'Before the [rev_creeper] took them or--' He trails off, becoming even more hesitant. 'Or whatever it was that happened all those years and fears ago.' He pauses for a moment, then touches your shoulder, briefly. 'Good,' he says, 'as a painter twill be easier for you to move on, when the time comes.'". rev_painting enqueues rev_whatelse. rev_painting cancels rev_music, rev_storytelling.

Understand "music" as rev_music when last beat is in Rev. rev_music is a beat in Rev with keyword name "music". rev_music enqueues rev_liar. rev_music cancels rev_storytelling, rev_painting.

Understand "storytelling" as rev_storytelling when last beat is in Rev. rev_storytelling is a beat in Rev with keyword name "storytelling". rev_storytelling enqueues rev_liar. rev_storytelling cancels rev_painting, rev_music.

rev_liar is a beat in Rev with reaction "He pierces your eyes with narrowed gaze for a long moment, then throws back his head and laughs.[paragraph break]'No no,' he finally says, 'you're liaring, but your deception proofs your truth. [werealike].'". rev_liar enqueues rev_whatelse.

To say werealike: say "We're alike, I and you and me, [if rev_wayfaring is spoken]Wayfarers[otherwise]travelers[end if] through infinite worlds, and some thread of connection runs betwixt us already that tells me things about us. From the mottling along the inside of your queen finger, and mayhaps something about that hair of yours, I'd guess and say you're a painter. Good. Makes it easier for you to move on, when the time comes".

rev_giftshrug is a beat in Rev with keyword name "shrug" and reaction "He grins, lopsidedly. 'Oh my oh, the mysterious stranger, quiet and ever so unfathomable. But I've got you marked, [animal-nickname]. [werealike].'". rev_giftshrug enqueues rev_whatelse.

[Understand "queen" as rev_queen when last beat is in Rev. rev_queen is a beat in Rev with keyword name "queen" and reaction "'Oh, just something we say wherever it is that I come from,' Progue says, holding up his hand, and taps each finger, starting at the thumb: 'Monk, queen, king, deacon, page. The Five Fingers.'". rev_queen suggests rev_whatelse.]

rev_whatbroughtyouhere is an insistent repeatable beat in Rev with reaction "'[one of]Now I'd[or]But I'd still[stopping] like to know something about you, [animal-nickname],' Progue says. 'Tell me do. What in worlds brought you here, now, and why?'". rev_whatbroughtyouhere summons rev_call. rev_whatbroughtyouhere suggests rev_whatbroughtyouhere. rev_whatbroughtyouhere cancels rev_creeper. 

[Work in reference to the windsigh here.]Understand "call" as rev_call when last beat is in Rev. rev_call is a terminal beat in Rev with keyword name "call" and reaction "He looks at you for a long moment, hesitant, as if trying to parse your words in some different way. Finally he looks away.[paragraph break]'Something Further,' he whispers, '[if The-Path-Of-Love has happened]after all this time[else]how many things there are to remember[end if]. The Call.' He takes a deep breath. 'I never had a name for it, myself, but yes, that fits. Fits. Well. But.'

He turns back to you with a strange look of resignation, disappointment, trepidation. 'But here's the truth, and it's not one you want. But truths are like that. I don't know how to say it other than to say it, so here it is.'[paragraph break]'I didn't Call you, friend and never have,' he says firmly. 'There's nothing you can do for me, no help I've been waiting for. It's a mistake, some mix-up in the mash-up of the metacosmic switching station. If I could send you back of course I would but of course... I can't. I can't, and I'm sorry, and here we are.'[section break]He smiles suddenly. 'Moisty hells,' he says, 'No need to be depressed about it! Just because you're here by mistake doesn't mean you can't enjoy yourself! It's a beautiful island if you hadn't noticed. And I can help and help prepare for your departure. Yes, that's what I'll do. We'll have you painting your way away and onwards in grains of time.'". [rev_call summons rev_call2. ]



[ Alternative versions.]

[ If we miss our date with Progue, or don't trigger this before the Tsunmi. ]

Makeup-Revelations is a urgent episode. [manually begun if Revelations expires.] The icebreaker is rev_makeupintro.

rev_makeupintro is a submissive beat in rev with reaction "[if Tsunami Sequence is happening][the reaction of tcp_greeting][paragraph break]'[else]'There you are,' Progue says, frowning. 'I missed you earlier. We were supposed to meet on the rise, remember? Ah well-oh, not important. [end if]But there are some things, things that need discussing.' He pauses for a moment, seeming to collect his thoughts.". rev_makeupintro enqueues rev_intro2.


Chapter - Departure Subplot

[The player can go on a series of five "Quests" to gather the different colors of paint for Progue. For each color, they have to find the three locations where that item exists, collect the items in a basket, and return it to Progue. The point of all this is basically to give bored players something to do; in the process of exploring the island, they might uncover new hints towards puzzles, trigger new Drama Manager scenes, or pass enough time that an event like the Tsunami starts.]

To mark workbench cleaned:
	while cleaning is a pick listed in Table of Progue Suppression Endeavours:
		choose row with pick of cleaning in Table of Progue Suppression Endeavours;
		blank out the whole row;
	while cleaning is a pick listed in Table of Progue Uncertainty Endeavours:
		choose row with pick of cleaning in Table of Progue Uncertainty Endeavours;
		blank out the whole row;
	now wall to wall workbench is clean; 
	remove artisan tools from play.


DepC is a thread. 

Understand "departure" as depc_departure. depc_departure is a repeatable beat in SuppC with fuse 9999 and keyword name "departure" and reaction "[if wall to wall workbench is dirty][depcdirty][otherwise if 1 is a status listed in Table of Departure Quest][depcprogress][otherwise if the animus of Progue is paint-making][depcworkingnow][otherwise if there is a pick of paint-making in Table of Progue Suppression Endeavours or there is a pick of paint-making in Table of Progue Uncertainty Endeavours][depcmakingsoon][otherwise if unassigned departure quests][depcclean][otherwise][depcnomorequests][end if]". After discussing depc_departure: now tempfuse of depc_departure is 9999; continue the action.

To decide whether unassigned departure quests: if there is a status of 0 in Table of Departure Quest, decide yes; decide no.

To say depcdirty: say "[one of]'There's a number of things, a number of steps needed to prepare, if you're to fare on your way through painting,' Progue says, biting a lip and turning his head sideways. 'First but first and first I'll need to clean out the old studio in the [sc_cabin]. Come talk to me again after I've swamped it out, and we'll go over the details.'[or][stilldirty][stopping]". To say stilldirty: say "'Haven't gotten to it yet!' he says cheerfully. 'But I'll bump it higher up on my agenda.'". 

To say depcmakingsoon: say "'I'll mix that paint for you soon,' Progue says, 'and leave it in the studio.'".

To say depcworkingnow: say "'Working on it!' Progue says, stirring the pot vigorously.".

To say depcnomorequests: say "[if Tsunami Sequence has ended]'I've seen no sign of the rayfish since the tsunami,' he says, scanning the horizon and frowning. 'I'll keep an eye out for their return.'[otherwise]'Hmm,' he says, 'well the only color left is black, which comes from the rayfish. I'll go out some night soon and collect the ink.'[end if]".

To say depcprogress: say "'Coming along, are we?' he says. 'I'm anxious to get those "; choose row with a status of 1 in Table of Departure Quest; say "[item entry]!'".

To say depcclean: force discuss depc_clean. depc_clean is a beat in DepC with reaction "'The studio's all cleaned up,' he says, beaming brightly, 'so now there's a proper workspace for you. Well! We'll get you on your way, nothing to worry about. I suppose the next thing is start gathering up the materials you'll need for paints. Is that something you think you'd like to start on right away?'". The yes-beat of depc_clean is depc_quest. The no-beat of depc_clean is depc_noquest. depc_wantquest replaces depc_clean.

depc_wantquest is a repeatable beat in DepC with reaction "'Making progress!' he says. 'Would you like to help me find another paint color?'". The yes-beat of depc_wantquest is depc_quest. The no-beat of depc_wantquest is depc_noquest.

depc_noquest is a repeatable beat in DepC with reaction "'Perfectly understandable!' Progue says. 'Not trying to rush you! Take your time! Enjoy the island!'".

depc_quest is a repeatable beat in DepC with reaction "'Marvelous!' he says, pulling a small woven basket from somewhere and handing it to you. 'Take this and go and gather me some [quest_assignment], you ring. Mind you fill the basket up all the way! When you're done bring it back and I can mix you up some paint.'". After discussing depc_quest: move basket to player.

To say quest_assignment:
	sort Table of Departure Quest in status order;
	choose row 1 in Table of Departure Quest;
	now status entry is 1;
	now intended contents of basket is item entry;
	if item entry is:
		-- berries: say "berries. For the red paint"; 
		-- lemon-yellow leaves: say "windsigh leaves. For the yellow paint";
		-- small green mussels: say "mussels. For the green paint";
		-- sea-blue crystal: say "crystals. For the blue paint";
		-- white snail: say "snails. For the white paint".

[0=unassigned, 1=current, 2=done]
Table of Departure Quest
item					status
berries					0
lemon-yellow leaves		0
small green mussels		0
sea-blue crystal		0
white snail				0

Every turn when player holds basket and Progue is enclosed by location and the animus of Progue is not swimming and the animus of Progue is not resting and nothing dramatic is up and quantity of basket > 0:
	if quantity of the basket is 3 and already-got-item :
		force discuss depc_alreadygot;
	if quantity of the basket is 3:
		if actual contents of basket is bulbous fruits, force discuss utbm_gotem;
		otherwise force discuss depc_questdone;
	otherwise if actual contents of basket is not intended contents of basket:
		force discuss depc_wrongitem;
	otherwise:
		force discuss depc_gettingthere.

To decide whether already-got-item:
	if there is an item of actual contents of basket in Table of Departure Quest:
		choose row with an item of actual contents of basket in Table of Departure Quest;
		if status entry is 2, decide yes;
		decide no;
	otherwise:
		decide no.

depc_alreadygot is a repeatable beat in DepC with reaction "'Oh!' Progue says, peering into your basket, 'but you already brought me some [actual contents of basket]. I told you to get some [intended contents of basket][if submission of Progue > 0], didn't I? Must have said the wrong thing; mind's not what it used. Sorries for the confusion[else]. Go and find some of those instead; can't do anything more with these[end if].'".

depc_wrongitem is a repeatable beat in DepC with reaction "Progue peers into your basket critically. 'Gathering [actual contents of basket]?' he says. 'I thought I asked you to bring me [intended contents of basket] instead. Better empty the basket and start again.'".

depc_gettingthere is a repeatable beat in DepC with reaction "Progue peers into your basket. 'Good!' he says. 'Getting there, getting there. Just fill it up all the way with [actual contents of basket] and I'll be able to mix you up some paint.'".

depc_questdone is a repeatable beat in DepC with reaction "'[if actual contents of basket is not intended contents of basket]Oh!' says Progue, peering at the basket in surprise, 'I was expecting you to get me [intended contents of basket]. Oh well, then, doesn't matter. I'll take these[otherwise]Wonderful!' Progue says, taking the basket of[end if] [quest_finished] paint!' He tucks it away [if actual contents of basket is not intended contents of basket]with a frown of mild consternation[otherwise]and smiles broadly[end if].".

After discussing depc_questdone:
	if actual contents of basket is intended contents of basket:
		choose row with a status of 1 in Table of Departure Quest;
		now status entry is 2;
		if a random chance of 1 in 2 succeeds, Progue is less submissive;
		impress Progue;
	otherwise:
		Progue is more submissive;
		annoy Progue;
		choose row with an item of actual contents of basket in Table of Departure Quest;
		now status entry is 2;
		choose row with a status of 1 in Table of Departure Quest;
		now status entry is 0;
	if item entry is berries, move pot of red paint to Progue;
	if item entry is lemon-yellow leaves, move pot of yellow paint to Progue;
	if item entry is small green mussels, move pot of green paint to Progue;
	if item entry is sea-blue crystal, move pot of blue paint to Progue;
	if item entry is white snail, move pot of white paint to Progue;
	remove basket from play;
	now quantity of the basket is 0;
	truncate harvested list of basket to 0 entries;
	now actual contents of basket is nothing;
	choose a blank row in Table of Progue Suppression Endeavours;
	now pick entry is paint-making;
	choose a blank row in Table of Progue Suppression Endeavours;
	now pick entry is paint-making;
	choose a blank row in Table of Progue Uncertainty Endeavours;
	now pick entry is paint-making;
	choose a blank row in Table of Progue Uncertainty Endeavours;
	now pick entry is paint-making;
	continue the action.

To say quest_finished:
	choose row with a status of 1 in Table of Departure Quest;
	if item entry is:
		-- berries: say "berries from you. 'Now I can get going on that red";
		-- lemon-yellow leaves: say "windsigh leaves from you. 'Now I can get started on that yellow";
		-- small green mussels: say "mussels from you. 'So now I can get to work on that green";
		-- sea-blue crystal: say "crystals from you. 'I suppose I can get started on that blue";
		-- white snail: say "snails from you. 'Now I can get moving on that white".

Section - The Basket	

A woven basket is a portable container. [It is open and unopenable.] The basket has a list of rooms called the harvested list. The basket has a thing called the intended contents. The basket has a thing called the actual contents. The basket has a number called quantity. The quantity of the basket is 0. The description is "The basket is [if quantity of basket is 0]empty[otherwise if quantity of basket is 1]about a third full of [otherwise if quantity of basket is 2]about two-thirds full of [otherwise]filled to the brim with [end if][if quantity of basket > 0][the actual contents][end if].". [Understand "berry/berries" as basket when actual contents of basket is berries and berries is not enclosed by location. Understand "lemon/yellow/leaf/leaves" as basket when actual contents of basket is lemon-yellow leaves and lemon-yellow leaves is not enclosed by location. Understand "mussel/mussels" as basket when actual contents of basket is small green mussels and small green mussels is not enclosed by location. Understand "crystal/crystals" as basket when actual contents of basket is sea-blue crystal and sea-blue crystal is not enclosed by location. Understand "snail/snails" as basket when actual contents of basket is not white snail and white snail is not enclosed by location.][These are commented out because, even with the following line, the basket was being matched over the actual items to be gathred.] Does the player mean doing something to the basket: it is unlikely.

Before taking something when basket is held and ( the noun is an item listed in Table of Departure Quest or the noun is bulbous fruits ) (this is the basket override rule):
	if quantity of the basket is 3, say "The basket is already full." instead;
	if location is listed in harvested list of basket, say "You've already gathered all [the noun] you can from here; you'll have to find another spot to get more." instead;
	if quantity of basket is at least 1 and actual contents of basket is not noun, say "The basket already holds [the actual contents of basket]; it's probably not a good idea to mix and match." instead;
	if noun is bulbous fruits and utbm_forest is unspoken, say "You don't really have a need to pick these fruits right now." instead; 
	add location to harvested list of basket;
	if quantity of basket is 0, now actual contents of basket is noun;
	increase quantity of basket by 1;
	if noun is bulbous fruits, now quantity of the basket is 3;
	say "You gather [the noun] and add them to the basket, which is now [if quantity of basket is 1]about a third [otherwise if quantity of basket is 2]about two thirds [end if]full." instead.

Instead of inserting something (called insertee) into the basket, try taking insertee.

Instead of emptying the basket:
	now quantity of the basket is 0;
	truncate harvested list of basket to 0 entries;
	now actual contents of basket is nothing;
	say "You empty the basket onto the ground; the contents disappear into the underbrush.".

Instead of dropping the basket: say "You better hold on to it since you don't want to lose it.".

Understand "empty [something]" as emptying. Emptying is an action applying to one carried thing.



Chapter - Let's Take A Soak

[ You encounter Progue somewhere as he is on his way to take a dip in the hot springs. He invites you to come with him. If you accept, you can follow him to the hot spring. Whether you do so, whether you get in can matter. Progue wants to get to know you a little better; do you tell him anything? You can initiate some romance here too. Discussion about crystal. Progue hesitantly brings up his daughters if the conversation goes in that direction, but doesn't remember what happened to them.
 ]

Let's Take A Soak Part One is an urgent frequent episode with summary "chat and chatting at the hot springs". The icebreaker is ltas_intro. The expiration date is 4 hours.

A condition for Let's Take A Soak Part One:
	if location is Rise or location is Hot Springs, rule fails; 
	if morning or midmorning or midday or evening, rule succeeds.

A completion rule for Let's Take A Soak Part One:
	if ltas_yes is spoken or ltas_maybe is spoken:
		begin Let's Take A Soak Part Two;
	else:
		Progue starts hottubbing.

LTAS is a thread. The escape clause is ltas_maybe.

ltas_intro is a beat in LTAS with reaction "'Oh, hello,' Progue says amiably, pausing for a moment. [if affinity of Progue <= 0]He hesitates, then adds[otherwise]He adds cheerfully[end if] 'I was just heading to the hot [ltas_spring] for a soak. Care to join me?'". The yes-beat of ltas_intro is ltas_yes. The no-beat of ltas_intro is ltas_no. The maybe-beat of ltas_intro is ltas_maybe.

Understand "spring" as ltas_spring when last beat is ltas_intro. ltas_spring is an ephemeral beat in LTAS with keyword name "spring" and fuse 99 and reaction "'It's a beautiful spot,' [the Progue] says, smiling, 'just a hidden little pool with a waterfall and beautiful blue crystals. I go there often to relax and think. Will you join me?'". 

Carry out getting bored when last beat is ltas_intro: force discuss ltas_maybe. ltas_maybe is a terminal beat in LTAS with fuse 99 and  keyword name "maybe" and reaction "'Well, I'll be there if you like,' he says [if affinity of Progue <= 0]skeptically[otherwise]in a friendly tone[end if], turning away. 'Feel free to join me.'". ltas_maybe cancels ltas_yes, ltas_no. After discussing ltas_maybe: complete Let's Take A Soak Part One, succeeding; begin Let's Take A Soak Part Two; follow the Progue's motivation rule; continue the action.

ltas_yes is a terminal beat in LTAS with fuse 99 and keyword name "yes" and reaction "[if affinity of Progue <= 0]'Oh!' [the Progue] says, seemingly surprised. 'Well and fine, [']twould be nice to have a chance to talk a bit more[otherwise if romance of Progue > 0]'Fantastic!' he says, a  thrill lighting up his face, 'it will be wonderful to get to talk a touch more[otherwise]'Fine!' he says, smiling, 'it will be nice to get to chat a touch more[end if]. Just follow me, it's not far.'". ltas_yes cancels ltas_maybe, ltas_no. After discussing ltas_yes: complete Let's Take A Soak Part One, succeeding; begin Let's Take A Soak Part Two; follow the Progue's motivation rule; continue the action.

ltas_no is a terminal beat in LTAS with fuse 99 and keyword name "no" and reaction "'Oh, well,' he says, looking [if affinity of Progue <= -1]a bit relieved[otherwise if romance of Progue > 0]crestfallen[otherwise]disappointed[end if], 'just thought I'd ask. See you round, then.'". ltas_no cancels ltas_yes, ltas_maybe.

Let's Take A Soak Part Two is a guaranteed rendezvous episode. The meeting place is Hot Springs. The expiration date is 2 hours 30 minutes. The icebreaker is ltas2_intro. The boredom beat is ltas2_bored. The subchange beat is silence. The bye beat of Let's Take A Soak Part Two is silence. The abruptbye beat is silence.

A commencement rule for Let's Take A Soak Part Two:
	now the animus of Progue is hottubbing;
	now progue-venue is Hot Springs;
	now Progue is wishing.

A completion rule for Let's Take A Soak Part Two:
	if ltas2_intro is unspoken:
		Progue likes you less;
		if romance of Progue > 0, Progue is losing interest.

[On the way there.]

The Progue chats on way to Hot Springs rule is listed before the trigger Progue's motivation rule in the every turn rules. Every turn when current episode is Let's Take A Soak Part Two and Progue is enclosed by the location and location is not Hot Springs (this is the Progue chats on way to Hot Springs rule):
	if ltas_chatter is spoken and location is Rise, now conversation fuse is 3; [This is so he'll say the icebreaker immediately next turn. The extra check is to prevent booboos if we're starting from the Rise.]
	force discuss ltas_chatter.


ltas_chatter is a repeatable beat in LTAS with reaction "[one of]'Beautiful day, isn't it?' he says. '[if raining]Well, except for the torrential rain, of course. [end if]I find the climate here to be thoroughfully agreeable.'[or]'Nearly there now,' Progue says, rubbing his hands together in anticipation.[or]'You're going to love this,' he adds fondly.[or]'Try and keep up now!' Progue says.[or]'Just through here,' he says.[cycling]".

[Cannonball: submissive. Sit near Progue: romantic. Take his advice: paternal. ]

LTAS2 is a thread. The escape clause is p_supp_bye.

ltas2_intro is a beat in LTAS2 with reaction "'Get in!' [the Progue] shouts, splashing some water in your direction. 'It feels heavenly.'". ltas2_intro summons ltas2_bored, ltas2_goodsport.

ltas2_bored is a terminal beat in LTAS2 with reaction "[The Progue] grunts. 'Suit yourself,' he says grumpily, 'but you don't know what you're missing.'".

Last after entering the large pool when Progue is enclosed by Hot Springs and current episode is Let's Take A Soak Part Two: pre-conversation processing; force discuss ltas2_goodsport. [ continue the action.]

ltas2_goodsport is an affinitive beat in LTAS2 with reaction "[The Progue] beams. 'There, you see?' he says. 'Isn't it nice?' Now, let's see. There's a good place to sit over [ltas2_sitfar], not too far from the waterfall, or this one [ltas2_sitnear] me, if you prefer,' he says, indicating the two spots with a pointed finger just breaking the surface of the water.". ltas2_goodsport summons ltas2_sitnear, ltas2_sitfar. ltas2_goodsport suggests ltas2_talkabout. After discussing ltas2_goodsport: now ltas2_intro is spoken [it may have been skipped.]; continue the action.

Understand "near" as ltas2_sitnear. ltas2_sitnear is a romantic beat in LTAS2 with keyword name "near" and reaction "You swim over to sit near Progue.". ltas2_sitnear enqueues ltas2_talkabout. After discussing ltas2_sitnear: now tempfuse of ltas2_sitfar is 0; continue the action.

Understand "there" as ltas2_sitfar. ltas2_sitfar is a beat in LTAS2 with keyword name "there" and reaction "You swim over to the seat near the waterfall.". ltas2_sitfar enqueues ltas2_talkabout. After discussing ltas2_sitfar: now tempfuse of ltas2_sitnear is 0; continue the action.

ltas2_talkabout is a beat in LTAS2 with reaction "[if ltas2_sitnear is spoken or ltas2_sitfar is spoken]'There' [the Progue] says, 'now that you're settled[otherwise]'Well,' [the Progue] says, 'I suppose that's as good a spot as any. Now[end if], what shall we discuss? This is a gushing good spot for discussions.' He studies you curiously. 'What shall it be, then? What [t]subject[x] shall we talk about?'".






Chapter - Sand Construction

[ Progue still doesn't remember, but his fingers do: he was once a great sculptor. Lost in a trance, he works on a magnificent sand castle on the beach. Possible outcomes: the player destroys the sand castle, angering Progue; the player stirs up too many of Progue's memories and he destroys the castle himself; the player joins in, making Progue feel more paternal; the player takes Progue's orders for help, making him less submissive; ] 

Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Sand Construction		"[o]Progue[x] stands before an enormous sand [o]castle[x] rising from the beach."

Sand Construction is a common triggered instant episode with summary "building sand castles on the beach". The meeting place is Center Beach. The expiration date is 4 hours. The icebreaker is sndc_intro. The subchange beat is sndc_subchange. The boredom beat is sndc_boredom. The bye beat is sndc_boredom. The abruptbye beat is sndc_boredom.

Last condition for Sand Construction:
	if we are not going, rule fails;
	if raining, rule fails;
	if conversation fuse < 12, rule fails;
	if location is Center Beach and Progue is not regionally in Beachfront, rule succeeds.

A commencement rule for Sand Construction:
	pre-conversation processing;
	force discuss sndc_intro.

A completion rule for Sand Construction:
	Progue's life goes on.

SNDC is a thread. The escape clause is sndc_boredom.

The sand castle is a described set dressing. "[if sndc_build is spoken]Two sand castles stand on the beach here[else]Only half-finished, the castle is a fantastically intricate sculpture of minarets, retaining walls, and tiny windows. Briny water swirls through the moat at [end if][if Progue is enclosed by location and sndc_build is unspoken]Progue's feet; he stands pricking life into a turret with his fingers, entranced[else if sndc_build is unspoken]your feet[end if].". The description is "[if sndc_destroy2 is spoken]Just a heap of crumbled sand now[otherwise if sndc_build is spoken]Your castle stands next to Progue's, two monuments in sand[otherwise]It's fantastic, all the more so for being constructed from damp sand. Staring at the graceful curves taking shape, the impossible mimicry of mouldering stone with wet clumps of sand, the perfect roundness of the towers, you catch a glimpse of the sculptor Progue must once have been.[paragraph break]A [o]pile[x] of wet sand lies near the castle[end if].". First report remembering the sand castle when location is meeting place of Sand Construction: say "The castle has washed away, only a lump on the beach to mark its foundations." instead.

sndc_intro is an insistent beat in SNDC with reaction "[initial appearance of Progue][paragraph break][initial appearance of sand castle][paragraph break]'Been so long,' he murmurs, not looking up, 'but I felt-- an urge, like-- fingers waking up.' He nods to himself, as if satisfied with this interpretation, and brushes a hand against the rounded walls of a tower.". sndc_intro summons sndc_destroy. sndc_intro suggests sndc_2. After discussing sndc_intro: move the sand castle to meeting place of Sand Construction; move pile of sand to meeting place of Sand Construction; continue the action. 

sndc_2 is a beat in SNDC with reaction "Fingers moving effortlessly, Progue shapes deft ridges along a connecting wall between two towers, a quiet smile on his face, eyes focused, perhaps, into another universe, while you watch, entranced.". sndc_2 suggests sndc_3.

sndc_3 is a beat in SNDC with reaction "Progue tweaks detailing on the surface of the sand near the base, but as his fingers pinch and twirl, something becomes clear to you. His skill is remarkable, masterful. But he is not good enough.[paragraph break]He is not a Wayfarer, at least, not any more.". sndc_3 suggests sndc_4.

sndc_4 is a beat in SNDC with reaction "Progue hums to himself as he keeps tweaking and refining the wet shapes before him.". sndc_4 suggests sndc_outtro.

The pile of sand is a set dressing. "A [o]pile[x] of wet sand lies near the castle.". The description of pile is "The collapsed remnants, perhaps, of some earlier draft.". Instead of taking or pushing or using pile, force discuss sndc_build. Understand "build [something]" or "make [something]" as taking when current episode is Sand Construction. Instead of taking or using sand castle, try taking pile of sand.

sndc_build is a paternal affinitive beat in SNDC with reaction "Hesitantly, you kneel down and push some of the sand together. Progue sees what you're doing and smiles.[paragraph break]'Go on, [animal-nickname],' he says. 'It's a big beach.'[paragraph break]You build and build, the wet sand cool and comforting somehow as it covers your hands, soft and pliable yet made of hard rock, making durable features that will be gone in a matter of hours. This is not painting, and your towers are crude and crumbly next to Progue's, but some spark in your hands awakens to the challenge regardless.[paragraph break]When you finish, curiously satisfied, Progue comes over to survey your work, placing one sand-gloved hand on your shoulder. 'Hmm,' he declares in mock criticism, eyeing a sagging buttress, 'I like the architecture, but I'm not sure if I trust the architect.' Then he frowns and regards it from another angle. 'But it looks more lived in, I suppose,' he says musingly, 'like a real castle. Yes. Mayhaps mine's nice to look at, but yours would be better to live in.' He claps your shoulder again[if romance of Progue > 0], and meets your gaze for a searching moment.[end if].". sndc_build2 replaces sndc_build. sndc_build suggests sndc_outtro. After discussing sndc_build: remove pile of sand from play; continue the action.

sndc_build2 is a repeatable beat in SNDC with reaction "You tweak and refine your castle some more.".

Instead of kissing Progue when last beat is sndc_build: force discuss p_firstkiss.

sndc_outtro is a terminal beat in SNDC with reaction "Progue sighs, surveying the sand fortresses fondly. 'Soon the waves will come to wash it all away,' he says evenly. 'And yes, that's best, I think. Nothing sadder than a frantic figure with bucket and shovel, trying desperately to stem the inevitable surge of tides.'[paragraph break]He claps your shoulder and turns away, not looking back at the miniature city behind him, already starting to slump and fade.[paragraph break]'The surge of the tide,' he mutters again, 'a side of the turgid. So long for now.'". 



Instead of attacking or pushing the sand castle when Progue is enclosed by location, force discuss sndc_destroy. Instead of attacking or pushing the sand castle: say "Silently, you destroy the sand castle, pushing and shoving until only a flat mound of sand remains"; remove sand castle from play.

sndc_destroy is a unaffinitive beat in SNDC with reaction "You lash out at the castle, slicing an arm through the wet sand of a minaret which crumbles to the beach.[paragraph break]Progue whirls on you angrily. 'No!' he cries. 'Leave it! Stop!'". sndc_destroy2 replaces sndc_destroy. sndc_destroy summons sndc_sorry.

Understand "sorry" as sndc_sorry. sndc_sorry is a terminal beat in SNDC with keyword name "sorry" and reaction "Progue's face softens. 'It's all right,' he says sadly. 'I've... destroyed most of my own sculptures already, anyway. Something about the sand. Washes away.' He seems lost for a long moment, then, with a last quiet nod to you, turns away from the castle.". After discussing sndc_sorry: now dont_describe_Progue is true; Progue's life goes on; continue the action.

sndc_destroy2 is an unaffinitive submissive terminal beat in SNDC with reaction "You attack the castle again, pummeling it with fists, watching it crumble in clumps back to the formless pieces it came from.[paragraph break]Progue grabs your arm ineffectually at first, then pulls back and watches darkly. '[if player is male]Bastard[otherwise]Bitch[end if],' he mutters, then turns and walks quickly away.". After discussing sndc_destroy2: Progue's life goes on; continue the action.

Instead of hugging Progue when current episode is Sand Construction: say "At first he freezes when you touch him, then shrugs away with a half-smile. 'Leave it,' he says, not unkindly, 'this isn't done yet.'".

sndc_subchange is a repeatable beat in SNDC with reaction "'Later, perhaps,' he says distractedly, 'I'm not in a mood for conversation. It's my hands that want to talk now.'".

sndc_boredom is a repeatable terminal beat in SNDC with reaction "Barely aware of your continuing presence, Progue keeps working on the sand castle.".



Part - Romance Subplot

Chapter - Long Walks

[This scene is triggered when romance is at least 2. It's essentially a date. The player can either strengthen the growing romantic attachments or refute them.]

Walk Invitation is a common urgent episode. The expiration date is 12 hours. The icebreaker is wi_intro.

A condition for Walk Invitation:
	if Progue has free time and 
	we guess the player is interested and
	romance of Progue < 5, rule succeeds.

To decide whether we guess the player is interested:
	if romance of Progue >= 3, yes;
	if romance of Progue >= 2 and Rume is male, yes; [If the player has previously shown an interest in romantic attachments to males, we can be a little bolder.]
	no.

A completion rule for Walk Invitation:
	now dont_Describe_Progue is true;
	Progue's life goes on;
	follow the Progue's motivation rule.

To choose time for Progue's date:
	if Progue is booked for evening or current interval is evening or current interval is sunset or current interval is night, now wi_time is morning; otherwise now wi_time is evening. 

wi_time is an interval that varies.

WI is a thread. The escape clause is wi_no.

wi_intro is a beat in WI with reaction "'There you are!' Progue says, coming up to you and shuffling his feet awkwardly. Dots of red touch his cheeks. 'Well then, ah, hello,' he says, coughing a little. 'Fancy fancy meeting you here.' He seems to want to ask you [t]something[x], but is uncertain how to begin.". wi_intro summons wi_askout. wi_intro suggests wi_askout. After discussing wi_intro: choose time for Progue's date; continue the action.

Understand "something" as wi_askout when last beat is in WI. wi_askout is a beat in WI with keyword name "something" and reaction "'Yes,' he says, 'it's been green eons since I... oh well oh,' he says, blurting quickly out, 'so then, perhaps you'd like to join me [if wi_time is evening]this evening[otherwise]tomorrow morning[end if] in a walk along the beach?". The yes-beat of wi_askout is wi_yes. The no-beat of wi_askout is wi_no. wi_askout suggests wi_no.

wi_yes is a terminal beat in WI with fuse 99 and keyword name "yes" and reaction "'You would?' he shouts. 'Oh. Oh! Yes, well, that's gushing fantastic.' He beams broadly. 'Well, it's a, oh, one of whatever those are then I suppose. I'll see you [if wi_time is evening]tonight[otherwise]in the morning[end if]; meet me down by the boulders[if Word Day is successful]. You remember, where we first met, on Word Day[end if].' He flashes a mad grin, then skips off. 'Till [if wi_time is evening]tonight[otherwise]tomorrow[end if] then!' he calls back over his shoulder.". After discussing wi_yes: schedule Progue for Long Walks at wi_time; continue the action.

wi_no is a terminal unromantic beat in WI with fuse 99 and keyword name "no" and reaction "'Ah,' he says, 'well of course you've seen it already. No point, no point. Terrible sorries for your time. Enjoy the [progue-time-of-day]!' He turns, stumbles over [a random setpiece in location], recovers himself with an awkward grin, then speed-walks away.". After discussing wi_no: now romance of Progue is 0; continue the action.


Long Walks is a rendezvous episode with summary "awkward walks on beaches". The meeting place is Among the Boulders. The expiration date is 4 hours. The icebreaker is lw_intro. The subchange beat is lw_subchange. The boredom beat is lw_distracted. The bye beat is lw_bye. The abruptbye beat is lw_abruptbye.

LW is a thread.

lw_subchange is a beat in LW with reaction "'Oh, but there's time and time to talk about other things,' he says kindly. 'Let's not spoil the moment, eh?'".

lw_distracted is a beat in LW with reaction "'You seem distracted,' Progue says with concern. Are you sure you want to continue?'". The yes-beat of lw_distracted is lw_byeyes. The no-beat of lw_distracted is lw_byeno.

lw_bye is a repeatable beat in LW with reaction "He stops, looking confused. 'Oh,' he says, 'but I thought we'd walk up to the Rise. Do you want to come the rest of the way with me?'". The yes-beat of lw_bye is lw_byeyes. The no-beat of lw_bye is lw_byeno. lw_bye suggests lw_byeyes.

lw_byeyes is a repeatable beat in LW with reaction "'Excellent,' he says, and the two of you continue walking.". After discussing lw_byeyes: force discuss lw_progress.

lw_byeno is a terminal unromantic beat in LW with reaction "'Very well then,' he says stiffly. 'Enjoy your [progue-time-of-day].'". After discussing lw_byeno: Progue is losing interest; Progue's life goes on; follow the Progue's motivation rule.

lw_abruptbye is a dogged beat in LW with reaction "'What's the rush?' Progue says, arresting your motion with his eyes. 'It's a beautiful [progue-time-of-day]. Let's take our time.'". lw_bye replaces lw_abruptbye.

lw_intro is a beat in LW with reaction "Progue, leaning casually against a boulder, beams broadly at you. 'Beautiful [progue-time-of-day], isn't it?' he says. 'Such singular [lw_weather] this is. Strolling weather, do you ring? Something [lw_ambling] about it. I [lw_myself] prefer a ratherly less humid clime, but in these past spans I suppose I've gotten used.' He suddenly bites his lip, flushes, and waits desperately, holding his breath, for you to say something.". lw_intro suggests lw_silence.

lw_silence is an annoying beat in LW with reaction "'Well,' he finally says into the awkward silence, 'let's amble if we're ambling, shall we?' And he leads you away from the boulders towards the beach.". After discussing lw_silence: commence the ambling; continue the action.

Understand "weather" as lw_weather when last beat is in LW. lw_weather is a beat in LW with keyword name "weather" and reaction "Progue looks relieved as you make some small talk about the weather, and he nods vigorously. 'Too true, true too,' he says. 'It really is and is a spectacular place. After the muchness of time I've been stuck here it's easy to forget.'". lw_weather enqueues lw_shallwe.

Understand "ambling/amble" as lw_ambling when last beat is in LW. lw_ambling is a beat in LW with keyword name "ambling" and reaction "'Yes yes, of course, why we're here and all,' he says quickly. 'Let's get started, I'm eager and ready!'". lw_ambling enqueues lw_shallwe.

Understand "personally" as lw_myself when last beat is in LW. lw_myself is a impressive beat in LW with keyword name "personally" and reaction "'What who? Me? Oh!' he says, a smile breaking out over his face. 'Terrible sorries and sorries, I'm just not a question it's used to. I'm... er... fine?' He wrinkles his brow, then suddenly laughs. 'Yes, that's it! I'm gushing fine, thank you, thank you, thank you for asking.' He laughs again, eyes twinkling gratefully at you.". lw_myself enqueues lw_shallwe.

lw_shallwe is a beat in LW with reaction "'Shall we then?' he adds, and leads you out from the shadows of the boulders onto the sun-stroked beach.". After discussing lw_shallwe: commence the ambling; continue the action. lw_shallwe suggests lw_progress.

To commence the ambling:
	if location is Among the Boulders begin; let nl be South Beach;
	otherwise if location is South Beach; let nl be Center Beach;
	otherwise if location is Center Beach; let nl be North Beach;
	otherwise; let nl be Rise;
	end if;
	if nl is adjacent to location begin;
		move Progue to nl;
		now Progue is attentive;
		now conversation fuse is 1;
		move player to nl;
	otherwise;
		let rt be the best route from location to nl;
		move Progue to the room rt from location;
		move player to the room rt from location;
	end if.

lw_progress is an insistent beat in LW with reaction "'And how is being you?' he asks, walking slowly through the soft sand. 'Keeping busy? Making progress with your projects?'". The yes-beat of lw_progress is lw_progressyes. The no-beat of lw_progress is lw_progressno. lw_compliment replaces lw_progress.

lw_progressno is a beat in LW with keyword name "no" and reaction "'Really? Moisty sausages,' he says, genuinely concerned, 'terrible sorries to hear it. What is it you're getting upended over?'". lw_progressno summons sc_bees, sc_ropeway, sc_boiler, sc_pyramiddist, sc_dreams. [NOTE: saying this should raise the frustration meter.] After discussing lw_progressno: now tempfuse of lw_compliment is 5; continue the action. lw_progressno suggests lw_compliment.

lw_progressyes is a beat in LW with keyword name "yes" and reaction "'Delightful,' he says, nodding happily as you recount some of your recent exploration, 'it sounds like you know more than I remember.'". lw_progressyes enqueues lw_compliment.

lw_compliment is an exciting beat in LW with reaction "'Forgive if this is forward,' Progue says with a blush, focusing on the rippling sand at his feet, 'but [if we chose love or we chose both]there's something of the electric and the passionate about your nature[otherwise]the artist in you sings so loud even a half-mad soul like mine hears it[end if]. [if puzzle mode]I've watched the wheels spin and turn in your mind as you try to make sense of this place[otherwise]I see the spark in your eye, feel the yearn of your heart for adventure[end if]; and well. Fine qualities, I believe indeed.'[paragraph break]He blushes awkwardly, and you try to think of some compliment you could make in return (his [lw_appearance]? [lw_eloquence]? [lw_vivacity], [lw_artistry]?) even while some buried part of you wishes only for [lw_silence2].". lw_compliment cancels lw_progressyes, lw_progressno. lw_compliment suggests lw_silence. lw_amble2 replaces lw_compliment.

Understand "eloquence" as lw_eloquence when last beat is in LW. lw_eloquence is a impressive beat in LW with keyword name "eloquence" and reaction "He waves off your praise for his cadenced conversation with a nevertheless ridiculously pleased smile. 'Amazed you can ring me at all,' he says, 'or I myself, what with the mess and multitudes of worlds I've lived in. A motley stew of dialects from cross the infinite cosmos. Well then but thank you. Kind words you have.'". lw_eloquence enqueues lw_amble2.

Understand "appearance" as lw_appearance when last beat is in LW. lw_appearance is a impressive beat in LW with keyword name "appearance" and reaction "He listens with a silence you finally take to be incredulity as you say something about his rugged good looks. 'Well oh,' he says finally, 'and after so many years of strandation and nonsanity. For life and strife of me I've never had guessed. Presumed myself some sort of monster after green eons of tropical sunlight searing the skin. Mayhaps I am, but ever so kind of you to humor me.' He winks and looks pleased.". lw_appearance enqueues lw_amble2.

Understand "vivacity" as lw_vivacity when last beat is in LW. lw_vivacity is a impressive beat in LW with keyword name "vivacity" and reaction "He looks out to sea as you praise his zest for life, acknowledgments coming only in the form of slow nods and sad smiles. 'Yes,' he says, 'I suppose I've always lived at volumes near deafening to those around me, the merely living in my wake. Why I'm still here now, I suppose. Mayhaps why you're here too.' He looks back at you. 'Well and but thank you. Kind words for someone you met screaming syllables at an ocean.'". lw_vivacity enqueues lw_amble2.

Understand "artistry" as lw_artistry when last beat is in LW. lw_artistry is a impressive beat in LW with keyword name "artistry" and reaction "He tries to wave off your praise for the various bits of sculpture you've seen around the island, but grins broadly nevertheless. 'Not a challenge to complement a wayfarer, is it?' he says, then stops and slams a fist into his forehead. 'Oh, that came out terrible wrong. Moisty hells. What I said to have meant was... we artists we, each have quiet neurons hidden away for each of our creations, that dream of sparking but seldom dare. So much more the pleasant when an other sparks them for us.' He smiles. 'Thanks to you for your kind words.'". lw_artistry enqueues lw_amble2.

Understand "silence" as lw_silence2 when last beat is in LW. lw_silence2 is an annoying beat in LW with keyword name "silence" and reaction "Progue coughs to fill the awkward silence, and shuffles forward a little more quickly across the sand.". lw_silence2 enqueues lw_amble2.

lw_amble2 is a beat in LW with reaction "The two of you continue ambling along the beach.". After discussing lw_amble2: commence the ambling; continue the action. lw_amble2 cancels lw_eloquence, lw_appearance, lw_vivacity, lw_artistry. lw_amble2 suggests lw_firstlove. lw_firstlove replaces lw_amble2.

lw_firstlove is a beat in LW with reaction "'Actually,' Progue says quietly, 'just before you arrived at the boulders I remembered something. From long ago. A certain [if player is male]gentleman, well. A boy[otherwise]lady, well. A girl[end if], really, when I was [if player is male]only one myself. He[otherwise]just a boy myself. She[end if] remembers me of you, somehow, cross green eons. My first love, I suppose I suppose.'[paragraph break]'We were somewhere in the monstrous chasm twixt fift and sixteen,' he continues, seawater trickling warmly around your feet, 'lost in the midlands where neither side is visible or conceivable. Eons of talks; long great towering ones where the words we wove meant the world, and endless ones where I drowned in the green of [lwfirst2]". To say lwfirst2: say "[if player is male]his eyes and nothing he[otherwise]her eyes and nothing she[end if] said could dry me. I think, I think it was one of these when I realized [if player is male]he was as helpless in mine as I in his[otherwise]she was as helpless in mine as I in hers[end if]. Some razor moment, sweet breaths vortexing between us...' he closes his eyes. 'But how could I have forgotten that kiss? Endless. Endless...'[paragraph break][if morning]Sunrise[otherwise]Brilliant sunset[end if] glitters on the foamy waves, and you think of [lw_Rume], and of [lw_others] across your wayward life, and remember.". lw_firstlove suggests lw_holdhands. lw_rengin replaces lw_firstlove.

Understand "Rume" as lw_Rume when last beat is in LW. lw_Rume is a insistent beat in LW with keyword name "Rume" and reaction "Slowly, haltingly, you tell Progue the story of Rume; how you met and how you parted and some of the best between. He listens quietly, only nodding now and then, until you fall silent.[paragraph break]'Tell me then,' he says quietly, after long moments of only the crashing surf between you. 'Have you let [if Rume is male]him[otherwise]her[end if] go? Have you [lw_accepted] your loss, as your strange fate compels you to do, or do you still [lw_struggle] gainst bereavement, gainst the inevitable chasm between you?'". lw_Rume suggests lw_struggle. lw_Rume summons lw_accepted, lw_struggle. After discussing lw_Rume: miss Rume; continue the action.

Understand "accepted" as lw_accepted when last beat is in LW. lw_accepted is a beat in LW with keyword name "accepted" and reaction "He nods quietly, and his simple understanding is somehow almost heartbreaking.". lw_accepted enqueues lw_holdhands.

Understand "struggle" as lw_struggle when last beat is in LW. lw_struggle is a beat in LW with keyword name "struggle" and reaction "He sighs deeply, long and airy, the sound resting above the murmur of the surf like foam. Then, slowly, he nods, and this simple forgiveness is somehow almost heartbreaking.". lw_struggle enqueues lw_holdhands.

Understand "others" as lw_others when last beat is in LW. lw_others is a beat in LW with keyword name "others" and reaction "You tell Progue of the people you've loved, some of whom you haven't thought of in years, and the remembering, while painful, seems to dull or soften the loss of Rume, in blankets of familiarity.[paragraph break]Progue listens thoughtfully, then lets the waves wash a long barrier between your thoughts and his before he speaks. [if rev_wayfaring is spoken]'Wayfaring mayhaps is the wrong word,' he says finally. [end if]'What defines us is not that we travel, but that we survive at all. Each newness we find is born from annihilation, apocalypse, at least for us. We destroy ourselves by moving and yet we move. Never found a world with a word for that. Mayhaps if there is one, it's our home.'". lw_others enqueues lw_holdhands.

lw_holdhands is an insistent beat in LW with reaction "Between you, his [lw_hand] has dropped to his side, the space between it and yours filled only with snatches of salty air, now larger, now smaller as your unmatched strides take you [lw_forward] along the beach.". lw_holdhands summons lw_hand, lw_forward.

Understand "hand" as lw_hand when last beat is in LW. lw_hand is an impressive beat in LW with keyword name "hand" and reaction "Your painter's fingers brush against his, hard and calloused but shockingly warm, and then he grasps them firmly, surrounding your hand with his.[paragraph break]You walk farther down the beach, and can't imagine letting go.". After discussing lw_hand: commence the ambling; continue the action. lw_hand suggests lw_rengin; 

Understand "forward" as lw_forward when last beat is in LW. lw_forward is an annoying beat in LW with keyword name "forward" and reaction "The beach stretches before you. You lift your hands slightly as you quicken the pace, and Progue hurries to follow.". After discussing lw_forward: commence the ambling; force discuss lw_rengin; continue the action.

lw_rengin is an insistent beat in LW with reaction "Progue pauses at the base of the lava flow, reflective[if lw_hand is spoken], and you feel the pulse in his hand racing[end if]. 'And but yet,' he says, 'the love of my life, wife, mother to my daughters... when after wearying of always moving on I settled, rooted and vowed never to do it again... she died. And I was the one left alone, abandoned, not able to follow.' He lowers his head, suddenly angry. 'And so much of her has left me,' he mutters, 'slipped away since through cracks of broken mind. Her voice... I can't remember her voice.'[paragraph break]He takes a deep breath, then looks up at you. 'If solitude is the condition of our lives,' he asks simply, 'then do you [lw_relish] or [lw_reject] it?'". lw_rengin summons lw_relish, lw_accept, lw_reject. lw_uptorise replaces lw_rengin.

Understand "relish" as lw_relish when last beat is in LW. lw_relish is an annoying beat in LW with keyword name "relish" and reaction "He studies your face carefully. 'Yes,' he says finally, 'for life and strife, you do. You're stronger than me, [animal-nickname]. I never embraced it, only hid it from myself, down and deep. And mayhaps that's the root of my madness.'". lw_relish enqueues lw_uptorise.

Understand "reject" as lw_reject when last beat is in LW. lw_reject is an impressive beat in LW with keyword name "reject" and reaction "A wistful, yearning look comes into his face. 'And you do, clear,' he says, 'you've always fought against fate, searched for some answer, some way to reconcile these two bastard halves of your nature. The wayfarer and the companion.' He sighs. 'I envy your resolve.'". lw_reject enqueues lw_uptorise.

Understand "accept" as lw_accept when last beat is in LW. lw_accept is a beat in LW with keyword name "accept" and reaction "He looks at you for a moment, then laughs. 'The third alternative,' he says, 'yes of course. What we cannot we don't. If only all could have such blessings of common sense.'". lw_accept enqueues lw_uptorise.

lw_uptorise is a beat in LW with reaction "He turns and leads you up the side of the lava flow.". After discussing lw_uptorise: commence the ambling; if lw_firstkiss is spoken begin; now lw_uptorise suggests lw_warmglow; otherwise if Progue is friendly; now lw_uptorise suggests lw_thisisme; end if; continue the action. lw_uptorise suggests lw_solong. [Based on how the date has gone we get one of three endings.]

lw_thisisme is a beat in LW with reaction "Progue grins. 'Well and look!' he says, sweeping an arm. 'We've accomplished what we stood out to. Walked the beach. Gushing fantastic[if lw_hand is spoken].' He squeezes your hand, then gently lets it go. 'W[otherwise]. W[end if]ell, [if evening or sunset or night]I don't want to keep you out after dark, lots of sleeping to be done I'm sure[otherwise]I'm sure you have a busy day in front of you, I certainly certainly don't want to get in your way[end if], so I suppose...?' He hesitates for just a moment, and you wonder whether to say [t]goodbye[x], or...". First instead of kissing Progue when last beat is lw_thisisme: force discuss lw_firstkiss. Before saying farewell to Progue when last beat is lw_thisisme (this is the Long Walks goodbye override rule): force discuss lw_kindrebuff. The Long Walks goodbye override rule is listed before the episodes overrule goodbye rule in the before rules. lw_thisisme suggests lw_kindrebuff. After discussing lw_thisisme: Progue is aroused, silently.

lw_firstkiss is a terminal romantic nonverbal beat in LW with reaction "Hesitantly, you lean forward, suddenly sure for one bleak moment you must have misunderstood, about to make a terrible fool of yourself... and then Progue moves too, and your lips meet.[paragraph break]There is nothing about sculpting, as far as you know, that involves the lips. But somehow it's like you're in the hands of a master.[paragraph break]At last, one or the other of you breaks away and you share a contented smile. Then Progue turns and skips off with a roguish grin, dancing from tree stump to tree stump with hands high in the air before vanishing into the haze of the swamp, leaving only the echoes of a joyful laugh.". After discussing lw_firstkiss: post-conversation processing; now dont_describe_Progue is true;  summon Progue to West-Marsh; Progue's life goes on; print a section break; continue the action.

lw_kindrebuff is a terminal beat in LW with reaction "Progue smiles, gives you a sweeping bow, then turns and strolls off down towards the stumps, soon vanishing into the haze of the swamp.". After discussing lw_kindrebuff: post-conversation processing; now dont_describe_Progue is true; summon Progue to West-Marsh; Progue's life goes on; continue the action.

lw_unkind is a terminal unromantic nonverbal beat in LW with reaction "Progue looks a little surprised, but turns and heads off down towards the stumps.". After discussing lw_unkind: Progue is losing interest, silently; post-conversation processing; now dont_describe_Progue is true; summon Progue to West-Marsh; Progue's life goes on; continue the action.

lw_warmglow is a terminal beat in LW with reaction "Progue turns and grips your hands tightly for a moment. 'Well and look!' he says, nodding over your shoulder. 'We've accomplished what we stood out to. Walked the beach. Gushing fantastic.' He smiles. 'Thank you,' he says more seriously. 'In my solitude I'd forgotten how much value hides in companionship. You, [animal-nickname], are the perfect reminder.' He gives you another quick kiss, then bounds away, dancing from tree stump to tree stump with hands high in the air before vanishing into the haze of the swamp, leaving only the echoes of a joyful laugh.". After discussing lw_warmglow: post-conversation processing; now dont_describe_Progue is true; summon Progue to West-Marsh; Progue's life goes on; print a section break; continue the action.

lw_solong is a terminal unromantic nonverbal beat in LW with reaction "Progue turns and surveys the beach with a critical eye. 'Well and look!' he says. 'We stood out what we accomplished to do. Walked the beach. Well. Many thanks for your accompaniment. Mayhaps I'll see you around?' He grins at you, then turns and walks down the slope on the far side towards the tree stumps, quickly vanishing into the haze of the swamp.". After discussing lw_solong: Progue is losing interest, silently; post-conversation processing; now dont_describe_Progue is true; summon Progue to West-Marsh; Progue's life goes on; continue the action.

Understand "take hand" or "take his hand" or "take progues hand" or "hold hand" or "hold hands" as lw_hand when last beat is in LW. 






Chapter - First Kiss

p_firstkiss is a romantic beat in SuppC with reaction "You bend forward and touch your lips to Progue's. {etc} 'Something Further,' he says, a huge smile on his face. 'That's not really what I expected would happen when you arrived.'".

	

Chapter - Unexpected Present

[This should be a sweet scene that makes Progue's eccentricities seem touching. Like the XKCD comic about "slowing down the earth's rotation to spend longer with you. Find a way the player can reciporicate (giving Progue a gift somehow.) ]

Unexpected Present is a common urgent episode. The icebreaker is up_intro. The boredom beat is up_ignore. The subchange beat is up_ignore. The bye beat is up_ignore. The abruptbye beat is up_ignore.

A condition for Unexpected Present:
	if romance of Progue is at least 2, rule succeeds.

UPres is a thread. up_intro is a beat in UPres with reaction "He looks up and a smile lights up his face. 'Just in time,' he says, 'I've something for you. Look and look.'[paragraph break]He holds out what at first you take to be a pale rose-- but then you see it is merely a carving, done from a piece of grey driftwood. But so delicate, so beautiful, you can hardly believe it is carved from a block of wood.[paragraph break]And in fact as you take it, the petals crumble, and the whole collapses, almost dissolving into the sand at your feet-- you're not sure if you should [up_cry], [up_thank] Progue, or just [up_ignore] the whole thing.". 

Check mourning when last beat is up_intro: force discuss up_cry. up_cry is a romantic beat in UPres with keyword name "cry" and reaction "'Oh, [animal-nickname], no,' he says, quickly putting an arm around you, 'it was and was only an ephemeral thing. I knew it would crumble the moment you touched it. I just wanted to share that one look with you. Just a moment; that's all I was offering.'". up_cry enqueues up_hands.

Check thanking when last beat is up_intro: force discuss up_thank. up_thank is an affinitive beat in UPres with keyword name "thank" and reaction "He bows deeply. 'You're most and most welcome,' he says. 'I knew it would crumble the moment you touched it. Just wanted to share that moment with you is all.'". up_thank enqueues up_hands.

up_hands is a beat in UPres with reaction "'Haven't done much [sc_sculpture] in green eons,' he says, looking down at his hands and twitching each finger in turn. 'I kept trying and trying, years ago, but...' He shakes his head. 'But something youwards seems to have awakened parts of me. And I'm thoroughfully grateful.'". up_hands cancels up_thank, up_cry, up_ignore. After discussing up_hands: now the boredom beat of Unexpected Present is silence; now the subchange beat of Unexpected Present is silence; now the bye beat of Unexpected Present is silence; now the abruptbye beat of Unexpected Present is silence; continue the action.

Understand "ignore" as up_ignore when last beat is in UPres. up_ignore is an unromantic terminal beat in UPres with keyword name "ignore" and reaction "'Hmm,' he says, rubbing his fingers and frowning, 'guess it's not coming back after all. I thought mayhaps something was. Ah well-oh.' He turns away with a confused frown.".



Chapter - Guess Who

Guess Whot is a frequent instant episode. The subchange beat is gw_dunno. The boredom beat is gw_intro2. The bye beat is gw_annoyed. The abruptbye beat is gw_annoyed. The icebreaker is gw_intro.

Last condition for Guess Whot:
	if Progue is not enclosed by location and
	romance of Progue is at least 1 and
	exploring Progue's turf, rule succeeds.

A commencement rule for Guess Whot:
	summon Progue to location;
	pre-conversation processing;
	force discuss icebreaker of Guess Whot.

GW is a thread. gw_intro is a beat in GW with reaction "Suddenly hands appear from behind you and cover your eyes, blinding you.[paragraph break]'Guess who,' whispers a voice in your ear. For a moment you're not sure whether to be [gw_annoyed], [gw_progue], or [gw_dunno] him.". gw_intro summons gw_progue, gw_dunno. gw_intro suggests gw_intro2.

gw_intro2 is a beat in GW with reaction "'Come on, [animal-nickname], guess!' the voice says again, hands warm against your eyes.". gw_intro2 suggests gw_annoyed. gw_noguess replaces gw_intro2.

Understand "annoyed" as gw_annoyed when last beat is in GW. gw_annoyed is an unromantic terminal beat in GW with keyword name "annoyed" and reaction "He pulls his hands back from your eyes, and steps back, a little sheepish. 'Sorries,' he says. 'Just rolling around. Craze you later, then.'".

Understand "guess" as gw_progue when last beat is in GW. gw_progue is a beat in GW with keyword name "guess" and reaction "'[if gw_dunno is unspoken]First guess! [end if]Genius!' Progue cries, releasing you with a grin. 'Out of the entire population of this beautiful isle you guessed me! Brilliances and smartitudes, [if player is male]sir[else]madam[end if], hats off yourwardways if in fact we had any. Well, and how are you up to? What are you doing? Enjoying the [progue-time-of-day]? Splend and charm.'". After discussing gw_progue: normalize Guess Whot; continue the action. gw_progue cancels gw_annoyed, gw_dunno.

Understand "tease" as gw_dunno when last beat is in GW. gw_dunno is a romantic beat in GW with keyword name "tease" and reaction "'Nope,' he says in your ear with an audible grin, as you feign confusion. 'No as no and no. Give you a hint, [animal-nickname]. Starts with a P and rhymes with [']rogue.['] Guess again; I'm sure you're clever enough to find it.'". gw_dunno suggests gw_noguess.

gw_noguess is a beat in GW with reaction "'Give up, give up?' He removes his hands and steps in front of you, bowing. 'It's me, yes, I know, quite some let down. A hard challenge, I know, know I. Now you know! But how are you then, [animal-nickname]? Enjoying the [progue-time-of-day]? Splend and charm.'". After discussing gw_noguess: normalize Guess Whot; continue the action. gw_noguess cancels gw_annoyed, gw_progue, gw_dunno.



Section  - A Simple Warning

[ Once the player has started fiddling with the pipes, Progue becomes concerned. He corners the player when given a chance and asks to meet him by the base of the ropeway (as far from the trees as possible) at sunset. The player can either follow this request or ignore it-- in the later case Progue will seek out the player again the next day. Upon meeting, he will warn the player not to dig too deeply, saying he knows what you're doing, and to be very careful. He reveals that he built the pyramid, but he could never had done it himself. He remains enigmatic.  ] 


A Simple Warning is a guaranteed urgent episode. The icebreaker is asw_intro. The subchange beat is asw_dontgo. The bye beat is asw_dontgo. The abruptbye beat is asw_dontgo. The boredom beat is asw_yes.

A condition for A Simple Warning:
	if Lawn is visited and exploring Progue's turf, rule succeeds.

A completion rule for A Simple Warning:
	now dont_describe_Progue is true;
	Progue's life goes on;
	follow the Progue's motivation rule.

ASW is a thread. asw_intro is a beat in ASW with reaction "'Oh and hello there,' Progue says with a broad smile, subtly stepping in your way. 'I wonder if I could trouble you for some time; just a ment, just a ment.'". The yes-beat of asw_intro is asw_yes. The no-beat of asw_intro is asw_no. asw_intro suggests asw_yes.

asw_no is an annoying submissive terminal beat in asw with keyword name "no" and reaction "'Ah well then,' he says, backing away submissively, 'just something for your own safety, if you ring. Probably not important. Carry on, carry on.' He turns and walks quickly away.".

asw_dontgo is a repeatable ephemeral beat in asw with reaction "'Please, hear me out,' Progue says, grabbing your arm.".

asw_yes is an impressive beat in asw with keyword name "sure" and reaction "'Fancy fancy,' Progue says, 'I'll fly true to the nest. I can't help but have noticed you prancing about up on the mountaintop[if ever-used-ropeway is true]; that ropeway makes quite a racket, if you ring[otherwise], shimmying up that crack like a wet lizard[end if]. All splend and charm, [animal-nickname], but it's just I don't think you realize what terrible, terrible [asw_danger] you're in up there.' He pauses, glancing at you anxiously.". asw_yes suggests asw_danger. asw_danger replaces asw_yes. asw_yes cancels asw_no.

Understand "danger/dangers" as asw_danger when last beat is in ASW. asw_danger is a beat in ASW with keyword name "dangers" and reaction "'Sausages, yes,' he says, pacing back and forth with a worried expression. 'Why, a [if player is male]gent[otherwise]lady[end if] could slip and fall off the sheer, or be seared by lightning in those afternoon showers, and then there's that dreadful, er...' He waves a hand around towards the top of the mountain vaguely. '...that [asw_pyramid] up there, and really I don't think you ought to fool with it, asking myways.' He shudders.". asw_danger suggests asw_pyramid. asw_pyramid replaces asw_danger.

Understand "thing" as asw_pyramid when last beat is in ASW. asw_pyramid is a beat in ASW with keyword name "thing" and reaction "'Abominable thing,' he says with vehemence. 'Sitting up there with its glowing red light, and its... its damnably triangular faces, and...' He trails off.[paragraph break]'Moisty hells,' he says. 'Truth is, for life and strife I can't remember what's actually dangerous about the thing. But!' he says, raising his eyebrows and a wary finger. 'But but but. I'm gushing sure there's something terrible [asw_wrong] about it, have my words. Just what and whatever you do, [animal-nickname], don't open it. No mattering whatwards. The [asw_contents] are completely not worth seeing, believe you me.'". Check examining by name distant-pyramid: if asw_pyramid is available, try discussing asw_pyramid instead. asw_pyramid suggests asw_outtro. asw_outtro replaces asw_pyramid.

Understand "wrong" as asw_wrong when last beat is in ASW. asw_wrong is a beat in ASW with keyword name "wrong" and reaction "He frowns, rubbing his temples as if besieged by sudden headaches. 'Look and I told you I don't remember,' he says. 'But lie assured it's not something of which you want to get yourself plum in the mid.'". asw_wrong enqueues asw_outtro.

Understand "contents" as asw_contents when last beat is in ASW. asw_contents is a beat in ASW with keyword name "contents" and reaction "'What did I just say?' he says angrily. 'There's nothing in there! Nothing at all! Opening it would be utterly and completely pointless!'". asw_contents enqueues asw_outtro.

asw_outtro is a terminal beat in ASW with reaction "'Oh well oh, terrible sorries for disturbing,' he finishes. 'Enjoy the [progue-time-of-day] then!' And he heads off smartly with a tuneless whistle.". 



Section - Small Favor

Small Favor is a common serendipitous triggered episode. The expiration date is 2 hours. The icebreaker is sf_intro. The bye beat is sf_negatory. The abruptbye beat is sf_negatory.

Last condition for Small Favor:
	if the lava tunnel door is open, rule succeeds.

SF is a thread. sf_intro is an insistent beat in sf with reaction "'Lovely [progue-time-of-day], isn't it, [animal-nickname]?' Progue says, [animus-business] and flexing his toes on the [surface-material]. 'Oh, while you're about, I have [if submission of Progue < 0]just a small favor that I wonder if I might ask, in the name of co-habitation and conciliation and all that[else]a request, sort of a rule ratherly[end if], about the door in the back of the cabin. Have a ment?'". The yes-beat of sf_intro is sf_yes. The no-beat of sf_intro is sf_negatory. sf_intro summons sf_yes, sf_negatory. sf_intro suggests sf_yes.

sf_yes is an insistent beat in SF with keyword name "yes" and reaction "'Splend,' he says, 'well and here it is: to fly true to the nest it gushing unnerves me to have that door open all the time. It's been closed for so long, if you ring, and though I can't just quite remember why it is I wanted it closed I strong and strongly feel it should be. So here's my little favor: would you terrible mind closing it after yourself as you go fore and back through it? It would mean worlds to my peace and piece of mind. Can you oblige?'". The yes-beat of sf_yes is sf_wilco. The no-beat of sf_yes is sf_negatory. sf_yes summons sf_wilco, sf_negatory. sf_yes suggests sf_wilco.

sf_wilco is a terminal beat in SF with keyword name "sure" and reaction "'Delicious,' he says, clapping you on the back, 'most apprished. A little thing but it'll make me feel ever so ever so better. Miles of thanks, [animal-nickname], miles of thanks.' [Progue-resumes].".

sf_negatory is a terminal submissive beat in SF with keyword name "no" and reaction "'[if submission of Progue > 0]Ah. Oh. Well, who am I to ask favors I suppose[else]I see. If that's your case, then, don't expect any favors from me in the future, either[end if],' he says. [Progue-resumes].".

Complying-With-Progue's-Favor is a scene. Complying-With-Progue's-Favor begins when sf_wilco is spoken and ( location is Chasm Floor and former location is Jumble ) or ( location is Hut and former location is Back Room ) . Complying-With-Progue's-Favor ends when Complying-With-Progue's-Favor begins.

When Complying-With-Progue's-Favor begins:
	if lava tunnel door is closed:
		if drama manager is being debugged, say "// Drama: Progue is less submissive because we closed the door.";
		Progue is less submissive;
	otherwise:
		if drama manager is being debugged, say "// Drama: Progue is more submissive because we didn't close the door.";
		Progue is more submissive.



Section - Mad Honesty

Mad Honesty is a common serendipitous triggered episode. The icebreaker is mh_intro. The expiration date is 2 hours.

Last condition for Mad Honesty: rule succeeds.

MH is a thread. mh_intro is an insistent beat in MH with reaction "'Tell me, [animal-nickname],' Progue says abruptly, '--and side aside, do you mind me calling you [animal-nickname]?'". The yes-beat of mh_intro is mh_animalmind. The no-beat of mh_intro is mh_animaldontmind. The maybe-beat of mh_intro is mh_animaldontmind. mh_intro suggests mh_animaldontmind. mh_intro summons mh_animalmind, mh_animaldontmind. mh_intro summons mh_animaldontmind, mh_animalmind.

mh_animalmind is a beat in MH with keyword name "yes" and reaction "'Ah well you, there you see,' he says, 'good to know, good to know.' He rummages around in his clothes for a furry piece of hide, a long feather, and a tiny vial, which he quickly uncaps and scribbles something on the hide, murmuring 'No [animal-nickname]' to himself as he does it. He frowns. 'Dear oh dear oh,' he says, 'the only other note on my go-to list is [']Find endearing nickname for that strange ghost [if player is female]wo[end if]man; why not [animal-nickname]? Seems to fit.['] I'll just cross this one out here.' He scribbles for a moment in embarrassment, then slips the implements away.". mh_animalmind enqueues mh_realq.

mh_animaldontmind is a beat in MH with keyword name "shrug" and reaction "'Splend!' he says, beaming. 'It's nothing personal you understand, but it's just I have such difficulties with names, as you noticed; can hardly keep hold of my own. I used to have such a good system for remembering names, using pneumatics; or was it gnomonics? Moisty hells, I need another Word Day; they all start to jumble up and congratulate together like blood clots if I don't practice.'". mh_animaldontmind enqueues mh_realq.

mh_realq is an insistent beat in MH with reaction "'Yes but well that aside,' he says, 'the real question to question you with was just this: are we friends, do you suppose?'". The yes-beat of mh_realq is mh_yesfriends. The no-beat of mh_realq is mh_nofriends. The maybe-beat of mh_realq is mh_confused. mh_realq summons mh_yesfriends, mh_nofriends, mh_confused. mh_realq suggests mh_confused.

Understand "smile" as mh_yesfriends when last beat is in mh. mh_yesfriends is an affinitive terminal beat in MH with keyword name "[if last beat is mh_confused]smile[else]yes" and reaction "'Oh good!' he says, face lighting up. 'I trickling thought we might be now, but it's been green eons since I lumped into anyone so I couldn't remember if this was what it was like. Delightful! All I wanted to know; thank you!' He smiles cheerfully and turns away, [animus-business].".

mh_nofriends is an insistent beat in MH with keyword name "no" and reaction "'Oh,' he says. 'Do we want to be?'". The yes-beat of mh_nofriends is mh_yesfriends. The no-beat of mh_nofriends is mh_dontwant. The maybe-beat of mh_nofriends is mh_confused. mh_nofriends summons mh_yesfriends, mh_dontwant, mh_confused. mh_nofriends suggests mh_confused.

Understand "sock" as mh_dontwant when last beat is in mh. mh_dontwant is a terminal unaffinitive beat in MH with keyword name "[if last beat is mh_confused]sock[else]no" and reaction "'[if affinity of Progue > 0]Oh,' he says, 'well then I'm confused. I thought we were, you see. Don't mind me, I'm bats at noon; been green eons since I lumped into anyone and I don't even remember what it's like[else]Ah,' he says, 'well that gives it the clinch, then. It seems we're not to be friends after all[end if]. Well, carry on, stranger. No, wait-- get off my [surface-material]! Is that how you do it? Something thatwise anyway. Go away!' He turns away, [animus-business].".

mh_confused is a beat in mh with keyword name "shrug" and reaction "'I'm confused too,' Progue admits, 'it's what I'm best at. Let's try an experiment, shall we? I'll come up to you--' he demonstrates this by taking a few paces back, then walking up again-- 'and say, [']Blue as blue skies to you, [animal-nickname]!['] Be honest, now, is your reaction inclinationwise to [mh_dontwant] me one in the mouth or [mh_yesfriends] and make small talk?'". mh_confused suggests mh_dontwant.



Section - Feast of Submission

Feast of Submission is a uncommon rendezvous episode with summary "cooking seafood feasts together". The expiration date is 4 hours. The icebreaker is fos_intro. The meeting place is South Beach. The boredom beat is fos_continue. The bye beat is fos_continue. The abruptbye beat is fos_continue.

Last condition for Feast of Submission:
	if raining, rule fails;
	if exploring Progue's turf, rule fails;
	if submission of Progue > 0, rule succeeds.

Every turn when current episode is Feast of Submission and location is not South Beach and location is regionally in Lacuna and icebreaker of Feast of Submission is unspoken and a random chance of 1 in 2 succeeds: say "You notice a column of smoke rising from [if location is regionally in Beachfront or location is Rise]the southern part of the beach, near the boulders[else]somewhere on the beach[end if].".

Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Feast of Submission		"Standing over a fire is Progue, expertly grilling a small feast of crabs and fish."

A beach-fire is set dressing with printed name "fire". Understand "fire" as beach-fire.

Some beach-seafood is set dressing with printed name "seafood". Understand "fish/crabs/crab/seafood/food" as beach-seafood.

FOS is a thread. The escape clause is fos_continue.

fos_intro is a beat in FOS with reaction "[if affinity of Progue > 0]'Ah, just in time,' Progue says[otherwise]'I see you noticed the smoke,' Progue says dryly[end if], turning a skewered crab carefully over the flames. '[if paternalism of Progue > 2]You need to eat a good [fos-meal]; you can't survive on berries and konokuk fruit alone,' he adds chidingly[otherwise if romance of Progue > 2]Thought maybe we could have a little [fos-meal] together, just we two, away from all those crowding hordes and hoarding crowds on the rest of the island,' he adds with a wink[otherwise]Well, if I'm cooking [fos-meal] I may as well cook [fos-meal] for two,' he adds[end if].[paragraph break]The seafood looks ready to eat, but you're not quite sure if you should just [fos_tuck] in or [t]wait[x] for Progue to begin, or even [fos_refuse] to have any.". fos_intro suggests fos_wait. After discussing Progue: move beach-fire to location; move beach-seafood to location; continue the action. Instead of taking or tasting some beach-seafood, try discussing fos_tuck.

To say fos-meal: if dawn or sunrise or morning or midmorning, say "breakfast"; if midday or afternoon, say "lunch"; if evening or sunset or twilight or night, say "dinner".

Understand "tuck" as fos_tuck when last beat is in FOS. fos_tuck is a submissive beat in FOS with keyword name "tuck" and reaction "You pick up one of the fish skewers and sample the steaming white flesh. It is delicious. Progue seems to have steamed it in konokuk milk and seasoned it with something tangy, but the fish itself is fresh and tender beyond belief. You quickly finish it, and by the time you're done Progue has pounded open one of the crab shells with a rock and is handing you portions of buttery meat even more delicious.". fos_tuck cancels fos_wait, fos_refuse. fos_tuck suggests fos_outtro. fos_tuck summons fos_thanksnorm. After discussing fos_tuck: now bye beat of Feast of Submission is nothing; continue the action.

fos_wait is an unsubmissive beat in FOS with reaction "You wait patiently, mouth watering, for Progue to give you the go ahead to start. Finally, he picks up a skewer of tender white meat, takes a bite, chews thoughtfully, then nods. 'It's ready.'[paragraph break]You pick up one of the fish skewers and sample the steaming white flesh. It is delicious. Progue seems to have steamed it in konokuk milk and seasoned it with something tangy, but the fish itself is fresh and tender beyond belief. You quickly finish it, and then turn to the crab. Progue hands you a rock you can use to break open the shell, and before long you are digging out portions of buttery meat even more delicious, eating some yourself and handing the rest to the chef.". fos_wait cancels fos_tuck, fos_refuse. fos_wait suggests fos_outtro. fos_wait summons fos_thanksnorm. After discussing fos_wait: now bye beat of Feast of Submission is nothing; continue the action.


Understand "refuse" as fos_refuse when last beat is in FOS. fos_refuse is a insistent beat in FOS with keyword name "refuse" and reaction "'Oh,' he says. 'Because of some [fos_ideology], or do you just [fos_refrain] from eating my food?'". fos_refuse cancels fos_wait, fos_tuck.

Understand "ideology" as fos_ideology when last beat is in FOS. fos_ideology is a beat in FOS with keyword name "ideology" and reaction "'A pity,' he says, 'it's gushing delicious. Well, but I'll eat what I can and the sharks will finish the rest.' He digs in, and you wonder whether you should go out of your way to [t]thank[x] him profusely anyway, or just [fos_continue] on with what you were doing.". Instead of thanking Progue when last beat is fos_ideology, try discussing fos_thanks. fos_ideology summons fos_thanks.

fos_thanks is a terminal unsubmissive beat in FOS with keyword name "thank" and reaction "'[if affinity of Progue > 0]My pleasure,' he says around a mouthful of crab, 'enjoy your belief-system-compatible meal instead![else]Makes no diff to me,' he says around a mouthful of crab, 'I really was just being polite.[end if]' He goes on with his eating.".

Understand "continue" as fos_continue when last beat is in FOS. fos_continue is a terminal submissive beat in FOS with keyword name "continue" and reaction "'Oh well oh, enjoy the [progue-time-of-day] anyway,' Progue says, taking a bite of fish and chewing reflectively.". 

Understand "refrain" as fos_refrain when last beat is in FOS. fos_refrain is a unaffinitive submissive terminal beat in FOS with keyword name "refrain" and reaction "'I suppose I've forgotten what real cooking is like,' he says [if affinity of Progue > 0]sadly[else]with a touch of bitter sarcasm[end if], looking down at the fire. 'This probably tastes something terrible. Ah well-oh, just an experiment. I'll eat it at least.' He takes a bite from a large fish and starts chewing thoughtfully.".

Understand "thank" as fos_thanksnorm when last beat is in FOS. fos_thanksnorm is a terminal affinitive beat in FOS with keyword name "thank" and reaction "'No troubles at all,' he says with a beaming grin, banking the fire and rising to his feet. 'Nice to have dining companions for a change. Enjoy the [Progue-time-of-day]!'".

fos_outtro is a terminal beat with reaction "'Well, nice to have dining companions,' he says, banking the fire and rising to his feet. 'Enjoy the rest of your [Progue-time-of-day].'".


Section - Hold This Please

[ Submissive. ]

Hold This Please is a guaranteed triggered serendipitous episode. The expiration date is 2 hours. The icebreaker is htp_intro. The subchange beat is htp_dontgo. The bye beat is htp_dontgo. The abruptbye beat is htp_dontgo.

Last condition for Hold This Please:
	unless the animus of Progue is fishing or the animus of Progue is beach-combing, rule fails;
	if the submission of Progue < 0, rule succeeds.

HTP is a thread. htp_intro is an insistent beat in htp with reaction "Progue grunts as you approach, eyes locked on the [if the animus of Progue is fishing]waves[else]sand[end if]. 'Quick, hold this,' he says, holding out [if the animus of Progue is fishing]his fishing[else]a handful of sea[end if] [htp_pole].". htp_intro suggests htp_noncomply. htp_intro summons htp_pole, htp_noncomply. The yes-beat of htp_intro is htp_pole. The no-beat of htp_intro is htp_noncomply. htp_intro summons htp_noncomply. Instead of taking fishing-pole, try discussing htp_pole. Check examining by name fishing-pole when last beat is in HTP: force discuss htp_pole instead. After discussing htp_intro: if animus of Progue is beach-combing, move prop-weed to Progue; continue the action. Check examining by name prop-weed when last beat is in HTP: force discuss htp_pole instead.

htp_dontgo is a dogged repeatable beat in htp with reaction "'Won't be a ment,' Progue says, 'almost got it.'".

htp_noncomply is a submissive annoying terminal beat in htp with keyword name "no" and reaction "He blinks at you in surprise. '[if submission of Progue < -2]Liked you better,' he says, 'when you did as told[else]Didn't mean it as an order,' he says, 'I'll try and be more polite in the future[end if].' [Progue-resumes].".

Understand "pole/weed" or "sea weed" or "seaweed" as htp_pole when last beat is in htp. htp_pole is a beat in htp with keyword name "[if the animus of Progue is fishing]pole[else]weed" and reaction "[if the animus of Progue is fishing]You take hold of the stick, its fibrous line disappearing out into the water, while Progue[else]Progue dumps the wet green pile into your hand, and[end if] begins rummaging through his voluminous garments for something.[paragraph break]'Thanks,' he says, 'won't be a ment.'". htp_pole suggests htp_pole2. htp_pole summons htp_drop. After discussing htp_pole: if the animus of Progue is fishing, move fishing-pole to player; else move prop-weed to player; continue the action.

Some prop-weed is set dressing with printed name "sea weed". Understand "weed" as prop-weed.

htp_pole2 is a beat in htp with reaction "Progue pats his pockets with a frown, digging a hand deep in one only to come up with a bright red seashell. He shoves it back in a pocket and keeps searching.". htp_pole2 suggests htp_pole3.

htp_pole3 is a beat in htp with reaction "'It's here somewhere,' he mutters, emptying out a pocket full of sand in dismay.". htp_pole3 suggests htp_pole4.

htp_pole4 is a beat in htp with reaction "'Aha!' he cries, pulling out something that looks like a dead beaver and shaking it out.". htp_pole4 suggests htp_pole5.

htp_pole5 is a beat in htp with reaction "Progue meticulously unfolds the beaver, revealing it to be something more like a beaver skin, smoothing out wrinkles and muttering in satisfaction.". htp_pole5 suggests htp_pole6.

htp_pole6 is a beat in htp with reaction "Carefully, Progue arranges the beaver skin over his head. 'My lucky [if the animus of Progue is fishing]fishing[else]cleaning[end if] cap,' he says. 'Almost forgot it.'". htp_pole6 suggests htp_pole7.

htp_pole7 is a unsubmissive terminal beat in htp with reaction "'Thanks ever so much,' he says, finally taking the [if the animus of Progue is fishing]fishing pole[else]seaweed[end if] back from you, 'you do come in useful every now and then. Enjoy your [progue-time-of-day]!'. He turns away, [animus-business].". After discussing htp_pole7: if the animus of Progue is fishing, move fishing-pole to Progue; remove prop-weed from play; continue the action.

htp_drop is a submissive annoying terminal beat in htp with fuse 10 and keyword name "{wait, or say DROP [if the animus of Progue is fishing]POLE[else]WEED[end if]}" and reaction "You let go of the [if the animus of Progue is fishing]pole and it tumbles to[else]pile and it splatters on[end if] the beach. Progue glances over in dismay. '[if submission of Progue < -2]You clumsed it,' he says, 'Try and be more careful in the future, [animal-nickname][else]Oh, terrible sorries,' he says, 'were you plum in the midst of something? Didn't mean to take up your time[end if].' He picks up the [if the animus of Progue is fishing]pole[else]seaweed[end if] and turns away, [animus-business].". First before dropping fishing-pole: try discussing htp_drop instead. First before dropping prop-weed: try discussing htp_drop instead. After discussing htp_drop: if the animus of Progue is fishing, move fishing-pole to Progue; remove prop-weed from play; continue the action.


Section - Thought I Warned You

[An unaffinitive episode.]

Thought I Warned You is a serendipitous triggered episode. The expiration date is 2 hours. The icebreaker is tiwy_intro.

The allow Thought I Warned You rule is listed before the Progue is chattier the more he likes you rule in the condition rules. A condition for Thought I Warned You (this is the allow Thought I Warned You rule):
	if A Simple Warning is unaired, rule fails;
	if Lawn is visited and affinity of Progue < 0, rule succeeds.

TIWY is a thread. tiwy_intro is a beat in tiwy with reaction "'Oh, there you are,' says Progue [if affinity of Progue < -2]angrily[else]uncomfortably[end if]. 'I couldn't help but notice you [if ever-used-ropeway is true]riding the ropeway up to the mountain again[else]climbing up the crack to the top of the mountain again[end if] earlier. [if submission of Progue > 0]I told you, you really shouldn't; it's too dangerous.[else]I warned you about that; the thing's unsafe. Is this the willful or blatant form of stupidity then?[end if][if paternalism of Progue > 2] You could hurt yourself.[end if]' He looks at you challengingly.". tiwy_intro summons tiwy_sorry, tiwy_ignore, tiwy_insult. tiwy_intro suggests tiwy_ignore.

Understand "sorry" as tiwy_sorry when last beat is in tiwy. tiwy_sorry is an affinitive terminal beat in tiwy with keyword name "sorry" and reaction "He softens a little. 'It was for your own safety, you know,' he says. 'Just be careful is all I ask.' [Progue-resumes].".

Understand "insult" as tiwy_insult when last beat is in tiwy. tiwy_insult is an unaffinitive terminal beat in tiwy with keyword name "insult" and reaction "'Oh so clever,' he sneers, 'oh so droll. Fine; use the thing if you want, but I'll have no part in it. So long.' [Progue-resumes].".

Understand "ignore" as tiwy_ignore when last beat is in tiwy. tiwy_ignore is a terminal beat in tiwy with keyword name "ignore" and reaction "'Fine,' he says, 'use the thing if you want, but I'll have no part in it. So long.' [Progue-resumes].".



Section - Dolphins Meeting

[An affinitive episode.]

Dolphins Meeting is an instant triggered uncommon episode with summary "watching the dolphins play". The meeting place is Rise. The icebreaker is dm_intro. The expiration date is 2 hours. The bye beat is dm_leaveearly. The abruptbye beat is dm_leaveearly.

Last condition for Dolphins Meeting:
	if we are not going, rule fails;
	if Progue is enclosed by location, rule fails;
	if affinity of Progue < 0, rule fails;
	if location is Stumps and former location is not Rise and Progue is not regionally in North island and Progue is not regionally in Marshlands, rule succeeds;
	if location is South Beach and former location is not Center Beach and Progue is not regionally in Tiderooms and Progue is not regionally in Progue's Domain, rule succeeds;
	if location is Center Beach and former location is Hut and Progue is not regionally in Progue's Domain, rule succeeds;
	rule fails.

A commencement rule for Dolphins Meeting:
	now dont_describe_Progue is true;
	say "Progue, perched on the tip of the [d]rise[x], spots you and begins waving frantically, a look of excitement on his face. 'Come quick!' he shouts, 'You have to see this!'".

First finishing rule for Dolphins Meeting:
	ignore the episodes usually end when conversation does rule;
	if the number of spoken terminal beats in DM > 0:
		Progue's life goes on;
		now Dolphins Meeting is successful;
		if there is a eptitle of Dolphins Meeting in episode schedule:
			choose row with a eptitle of Dolphins Meeting in episode schedule;
			blank out the whole row;
			sort episode schedule in random order;
		consider the completion rules for Dolphins Meeting;
		rule succeeds.

A completion rule for Dolphins Meeting:
	now icebreaker of Play Catch is spoken. [to prevent reruns]

Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Dolphins Meeting	"Progue lies on his stomach on the edge of the rise where it drops a short distance into the sea, peering intently at something in the water."

DM is a thread. dm_intro is a beat in DM with reaction "'Look and look,' he says, motioning you over to the edge, 'it's a dolphin rendezvous!'[paragraph break]You peer over the edge to see two clusters of [o]dolphins[x] through the clear turquoise water, the second group slightly bluer and slightly larger, the [o]youngest[x] and [o]oldest[x] nervously interacting on their edges.[paragraph break]'These littler ones are always around,' Progue says, excitement tingling his voice, 'but the larger group migrates or something thatwise; they're only around for a week or two each year. But I've never seen them mingling before! Something exciting, lie assured.'". After discussing dm_intro: move clusters of dolphins to location; continue the action. dm_intro suggests dm_intro2.

Some clusters of dolphins are set dressing. Understand "dolphin/larger/bluer/cluster/clusters/group" as clusters of dolphins. The description is "You can see the beautiful sea creatures with astonishing clarity, the [progue-time-of-day] light cutting the shallow water below you like diamond through glass.".

The youngest dolphins are part of some clusters of dolphins. The description is "The younger dolphins seem to have none of the caution of their parents, just a thrilling mixture of fear and intense curiosity at the unknown that is instantly familiar even in dolphin form. [if dm_intro2 is unspoken]They dart playfully around their parents, peeking at the young dolphins in the other group anxiously[else]They dart playfully around each other, delighted to have new playmates[end if].".

The oldest dolphins are part of some clusters of dolphins. The description is "The older dolphins of each group stay protectively near their front, regarding the other side warily, but slowly edging forward to meet the others with growing trust.".

dm_leaveearly is an ephemeral beat in DM with reaction "'Oh, stay for just a minute,' Progue says anxiously. 'This is something rare to see.'".

dm_intro2 is a beat in DM with reaction "'See, look now!' Progue says, pointing. 'They're introducing!' And indeed several of the dolphins from both sides have swum forward, nose to nose, to rub their snouts briefly against the other before darting back into the crowd.[paragraph break]'Have you noticed in your wayfarings,' Progue muses, 'how on most every world folk shake hands somewhere in the meeting process, but it always means something trickling different? Sometimes they'll shake at the conclusion of good deals, sometimes to ward off bad ones; sometimes before even swapping names; sometimes women will shake but not men, or men but not women. Different but mostly usually always the same result in the end.' He pauses for a moment, considering.". dm_intro2 suggests dm_intro3. dm_intro2 summons dm_shakehands.

dm_intro3 is a beat in DM with reaction "'On my homeworld,' he continues, 'you know, my real one-- you wouldn't shake when you first were introduced to someone; only, only once you'd decided they were going to be a friend.' He smiles, remembering. 'And what a warm and warming feeling that was,' he says, 'that moment of contact and knowing what it meant, knowing you were increasing by one the circle of those you cared for.' He sighs, and the two of you pause for a moment, staring down at the dolphins contemplatively.". dm_intro3 suggests dm_progueshakes. dm_intro3 summons dm_shakehands.

Understand "shake hands" or "shake hands with [someone]" or "shake [someone]'s hand" as shaking. Rule for supplying a missing noun when shaking: let honoree be a random visible other nonbestial person enclosed by the location; if honoree is a person, change noun to honoree. Instead of shaking Progue when last beat is dm_intro3, try discussing dm_shakehands.

dm_shakehands is an affinitive beat in dm with reaction "Surprised, Progue looks down at your hand, then realization dawns on his face, a slow, spreading smile. Cautiously at first, then with more and more strength and feeling, he grips your hand and shakes it vigorously.". dm_shakehands enqueues dm_shakeresult.

dm_shakeresult is a terminal beat in dm with reaction "'Something Further,' he says, 'it's been green eons-- I won't know what to do with a friend who doesn't bear fruit or breathe water.' He laughs. 'New friends above and below the waves today. It's a good day on the island.'[paragraph break]He finally breaks the grip and rises to his feet, brushing himself off and giving the dolphins one last, wistful glance. 'Must be off,' he says, 'things to do. But take care, friend, take care.'".

dm_progueshakes is an insistent beat in dm with reaction "Progue coughs, nervously. 'Well. I hope you won't think me rude or presumptuous, but...' And he holds out his [dm_pshake2], hesitant and uncertain.". dm_progueshakes suggests dm_noshake. dm_progueshakes summons dm_pshake2.

Understand "hand" as dm_pshake2 when last beat is in dm. dm_pshake2 is an affinitive beat in dm with keyword name "hand" and reaction "Progue grips your hand cautiously at first, then with more and more strength and feeling, shaking it vigorously as a huge smile spreads across his face.". dm_pshake2 enqueues dm_shakeresult. Instead of shaking Progue when last beat is dm_progueshakes, try discussing dm_pshake2.

dm_noshake is an unaffinitive terminal beat in dm with reaction "'Well, that's fine as fine then,' Progue says, hastily withdrawing the hand. 'Just a thought is all. I realize it's only been a day or two. Perhaps in a few more weeks, eh?'[paragraph break]He rises quickly to his feet, brushes himself off, and gives the dolphins one last glance. 'Enjoy,' he says, 'got some business to attend to.'".





Section - Hey That's Mine

[A submissive scene]

Hey That's Mine is a guaranteed triggered serendipitous episode. The icebreaker is htm_intro. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence.

The allow Hey That's Mine rule is listed before the Progue is chattier the more he likes you rule in the condition rules. A condition for Hey That's Mine (this is the allow Hey That's Mine rule):
	if player wears Progue's pendant, rule succeeds.

A completion rule for Hey That's Mine:
	remove Progue's pendant from play.

HTM is a thread. htm_intro is an insistent beat in htm with reaction "'Happy [Progue-time-of-day],' he says, looking up and [animus-business]. He frowns, noticing the pendant around your neck.[paragraph break]'Hey now,' he says, 'that's mine. Give that back.' He reaches out his hand to take it; you could [htm_prevent] him or let him [htm_have] it.". htm_intro suggests htm_prevent. htm_intro summons htm_prevent, htm_have.

Understand "prevent" as htm_prevent when last beat is in htm. htm_prevent is a submissive beat in htm with keyword name "prevent" and reaction "You step back as he snatches for it, and his face grows annoyed. 'Don't be a blinded mule,' he snaps, 'give it back.' He snatches for it again with a bit more force and rips it off you, the leather strap snapping through your hair.[paragraph break]'And don't take any more of my things,' he says, miffed, shoving the pendant into a pocket. 'Now, was there something you wanted?'".

Understand "keep" as htm_have when last beat is in htm. htm_have is a beat in htm with keyword name "keep" and reaction "You return the pendant to [the Progue], who shoves it in a pocket, muttering grumpily. 'I suppose you're just in the [htm_habit] of picking up everything that's not nailed down,' he says, 'is that it?'". htm_have suggests htm_habit.

Understand "habit" as htm_habit when last beat is in htm. htm_habit is a beat in htm with keyword name "habit" and reaction "'Hrmph,' he says, 'well just ask next time, if you don't remind. Was there something you wanted to talk about?'".



Section - Older And Wiser

[Progue asks who is older (paternal).]

Older And Wiser is a common serendipitous triggered episode. The icebreaker is oaw_intro. The subchange beat is silence. The bye beat is silence. The abruptbye beat is silence. The boredom beat is silence.

Last condition for Older And Wiser: rule succeeds.

OAW is a thread. oaw_intro is an insistent beat in oaw with reaction "Progue studies you appraisingly, looking you up and down. 'Say, [animal-nickname],' he says, 'I know in our mad strange lives of hopscotching twixt worlds that years get mangled and mingled. But generally, rough-and-guessing, would you say I'm [oaw_older] than you, or [oaw_younger], or about the [oaw_same] age?'". oaw_intro summons oaw_older, oaw_younger, oaw_same.

Understand "older" as oaw_older when last beat is in oaw. oaw_older is a paternal beat in oaw with keyword name "older" and reaction "'Just what I'd have wagered,' he says, nodding. 'Well and then I suppose I'm not mad to be feeling something fatherly towards you, worrying if you get into danger, all that. Been green eons since I've felt something thatwise. Curi-curious.'". oaw_older enqueues oaw_trans.

Understand "younger" as oaw_younger when last beat is in oaw. oaw_younger is an unpaternal beat in oaw with keyword name "younger" and reaction "'Oh, sausages, you're too and too kind,' he says, waving a hand dismissively, 'the most delicious part of these holes in the memory is not remembering what I used to look like green eons ago so there's nothing to compare this sun-worn haggard visage with. But mayhaps you're right. We've both been in the pool long enough to learn how to swim, I wager.'". oaw_younger enqueues oaw_trans.

Understand "same" as oaw_same when last beat is in oaw. oaw_same is a beat in oaw with keyword name "same" and reaction "'Can't tell either, eh?' he mutters, squinting at you. 'Ah well-oh, less than important, just curi-curious. Guess we've more or less been in the pool long enough to learn how to swim, if you ring.'". oaw_same enqueues oaw_trans.

oaw_trans is a beat in oaw with reaction "'But for life and strife, how is your exploring proceeding?' he adds. 'Anything you want to ask about?'".

Section - Knitted You A Gift

[Paternal / affinitive.]

Knitted You A Gift is a common urgent episode with summary "your konokuk husk sweater". The expiration date is 6 hours. The icebreaker is kyag_intro. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence.

Last condition for Knitted You A Gift:
	if conversation fuse < 15, rule fails;
	if affinity of Progue > 0, rule succeeds.

KYAG is a thread. kyag_intro is a beat in kyag with reaction "'Just the [if player is male]man[else]girl[end if] I'm looking for,' Progue says, approaching you with hands holding something behind his back. 'Got a little gift for you. Something I made with my own two. Look!' And he pulls out from behind his back a huge blob of brown fur, which you slowly realize is some sort of [o]sweater[x] made from konokuk husks.". After discussing kyag_intro: move husk sweater to location; continue the action. kyag_intro suggests kyag_offer.

kyag_offer is a beat in kyag with reaction "'Just for you,' he beams proudly, regarding it as if it's a long-lost work of art, 'should be just your size, too. Go on, try it on!' He holds it out for you to take, but you hesitate, wondering if rather than [kyag_tryon] it might be better for everyone if instead you gently [kyag_refuse].". kyag_offer summons kyag_tryon. kyag_offer suggests kyag_refuse.

Understand "refuse" as kyag_refuse when last beat is in kyag. kyag_refuse is an unpaternal terminal beat in kyag with keyword name "refuse" and reaction "[if submission of Progue > 0]His face falls. 'Oh, well that's right and alright then,' he says, looking down at the sweater with flushed cheeks, 'it is an awful monstrosity, isn't it? Don't know what crept into me. Terrible sorries![else]'All that time to make this for you and you won't even try it on? Moisty hells. Fine, I'll keep it myself then.[end if]' He shoves the sweater awkwardly half-into a bulging pocket.".

Check taking the husk sweater: force discuss kyag_tryon instead.

Understand "accept" as kyag_tryon when last beat is in kyag. kyag_tryon is a beat in kyag with keyword name "accept" and reaction "You cautiously take hold of the rustling offering and heft its surprisingly heavy bulk. Progue looks pleased.[paragraph break]'Go on now, let's see you try it on,' he says eagerly.". The yes-beat of kyag_tryon is kyag_tryon2. The no-beat of kyag_tryon is kyag_refuse. kyag_tryon summons kyag_refuse, kyag_tryon2. After discussing kyag_tryon: move husk sweater to player; continue the action. kyag_tryon cancels kyag_refuse.

Understand "okay/ok" as kyag_tryon2 when last beat is in kyag. kyag_tryon2 is a beat in kyag with keyword name "okay" and reaction "You slip your arms through the sleeves and immediately they start to itch and feel hot. By the time you have managed to shrug the bulky sweater all the way on you are sweating profusely, and not just from the exertion.[paragraph break]'Oh, it looks something wonderful!' Progue gushes, plucking the sleeves and looking over you appraisingly. 'Charming. Now then, anything you wanted to discuss?'". Instead of wearing husk sweater when kyag_tryon2 is available, try discussing kyag_tryon2. After discussing kyag_tryon2: now player wears husk sweater; continue the action.

The husk sweater is a wearable thing. The description is "A shapeless blob of brown hair, the sweater seems to have been woven from konokuk husks. While the workmanship of the full-length sleeves and muffled collar is very fine, it looks rather hot for a tropical environment.". After going when player wears the husk sweater and a random chance of 1 in 4 succeeds: say "You [one of]sweat profusely[or]itch madly[or]prickle your arms annoyingly[in random order] against the konokuk sweater."; continue the action. Check dropping husk sweater: say "You would feel a bit guilty just throwing it away like trash." instead.

Knitted Aftermath is a guaranteed urgent triggered episode. The icebreaker is kyag_letmedown. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence.

A condition for Knitted Aftermath:
	if conversation fuse < 6, rule fails;
	if player wears husk sweater or player holds husk sweater, rule succeeds.

A commencement rule for Knitted Aftermath:
	if player wears husk sweater, now icebreaker of Knitted Aftermath is kyag_goodboy;
	remove husk sweater from play.

kyag_letmedown is an unpaternal beat in kyag with reaction "'Oh, didn't like the sweater then?' Progue says in consternation. 'Well I can keep it for you if you aren't going to wear it.' He takes the sweater from your grateful hands and awkwardly shoves it into a pouch; tiny strands of husk shred off and dance sadly in the humid air.". 

kyag_goodboy is a paternal beat in kyag with reaction "'Lizard sausages, are you still wearing that thing?' Progue asks, tugging on a sleeve of the itchy sweater. 'I didn't mean you had to keep wearing it for all your life. Oh, but sweet as sweet of you to do so,' he adds with a smile and a clap on the back as you gratefully pull the clinging, ropey, itchy thing off. He takes it from you and regards it fondly before packing it away in a bulging pouch.".



Lacuna-Progue-Suppression ends here.
