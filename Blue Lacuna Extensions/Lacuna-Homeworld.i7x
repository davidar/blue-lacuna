Lacuna-Homeworld by Blue Lacuna begins here.

Use authorial modesty.


Volume - The Tumble


Homeworld-Studio is a landmarked room. The landmark name of Homeworld-Studio is "the [d]studio[x]". Understand "studio" as Homeworld-Studio. The prose name of Homeworld-Studio is "your studio". Your Bedroom is a landmarked room. The landmark name of Your bedroom is "your [d]bedroom[x]". 

When play begins: now Homeworld-Studio is visited; change matches to seen; change lacuna-canvas to seen. [ This is all to avoid messages that don't make sense if this is someplace the PC is familiar with; the PC knows where the matches and canvas are and how to get to the studio.] 

First report going to Homeworld-Studio for the first time: say "(new [d]landmark[x] discovered)[command clarification break]"; now last landmark turn is turn count; continue the action. [ Manually trigger this since the Studio is "visited" already. ]

Rule for printing the name of a Homeworldish room (called area) while remembering: say "in [prose name of area]". Definition: a room is Homeworldish: if it is regionally in Homeworld, yes; no.

Carry out landmark-listing when location is regionally in Homeworld:
	if the number of visited landmarked rooms regionally in Homeworld is 0 begin;
		say "No landmarks have been discovered in this area.";
		stop;
	end if;
	say "The landmarks you can go to are: ";
	repeat with locale running through visited landmarked rooms regionally in Homeworld begin;
		say "[line break]  ";
		if the landmark name of locale is not "null", say the landmark name of locale; otherwise say locale;
		if locale is location, say " (you are here)";
	end repeat;
	say line break;
	if tutorial mode is switched on, say tutorial-landmarks2. 

Instead of listening when location is regionally in Homeworld: say "The wind that gusted so cold and fierce around the old timbers when you went to bed has vanished in the depths of night. [if location is Your Bedroom]Muffled sound of the banked fire[otherwise if fireplace is raging]The pops and cracks of the raging fire[otherwise]Faint crackling from the banked fire[end if] and the quiet murmur of the stream intrude only faintly on the silence[tutorial-typeverbs].".

Understand "reject/ignore/resist/fight/itch/scratch/stay" as "[scratch]". Understand "[scratch] call" or "[scratch] here" or "[scratch]" as a mistake ("[if The-Path-Of-Love is happening]Now that Rume is gone, there is nothing left for you here[else]You try to block the Call from your mind, but it whispers endlessly, a bottomless spring that teases, summons, beckons, pulls[end if].") when location is regionally in Homeworld. 

Part - The Prologue

Rule for printing the banner text when turn count < 2: do nothing. 

Before starting the virtual machine: change the left hand status line to ""; change the right hand status line to "".

Prologue is a scene. Prologue begins when play begins.  

Rule for printing the banner text when Prologue is happening and current chapter >= 0: do nothing instead.

Rule for writing a paragraph about Rume when Prologue is happening: do nothing. Rule for printing the name of a room when Prologue is happening: do nothing. Rule for printing room description details when Prologue is happening: do nothing. Every turn when Prologue is happening: ignore the room description body text rule. Every turn when Prologue is happening: ignore the room description paragraphs about objects rule.

The last when play begins (this is the setting up the Prologue rule):
	begin chapter 0;
	change the time of day to 12:37 AM;
	change the time factor to 1;
	now Rume is attentive;
	say "Waves.[paragraph break]Dreams move beneath you, blind colossi revolving through unknowable patterns, but they do not break the surface, not yet or any more. You float in void outside them, cold, memoryless.[paragraph break]Not true. You are a Wayfarer, and will always remember that.[paragraph break][one of][manorwoman1].[paragraph break][as the parser]Tutorial: Type emphasized keywords like MAN or WOMAN to advance the story. Type KEYWORDS if these words do not appear emphasized in the previous paragraph.[run paragraph on][as normal][or][manorwoman2].[stopping]";
	now tempfuse of pr_playermale is 50;
	now tempfuse of pr_playerfemale is 50;
	now tempfuse of pr_neither is 50;
	now last beat is pr_intro;
	now pr_intro is spoken.

P_convo is a thread. 

pr_intro is a beat in p_convo. Understand "man" or "male" as pr_playermale when last beat is pr_intro. Understand "woman" or "female" as pr_playerfemale when last beat is pr_intro. Instead of saying neither or saying both when last beat is pr_intro, force discuss pr_neither.

Pro_track is a number that varies. Pro_track is 1.
	
First instead of doing something other than ffing or discussing or saying both or saying neither when Prologue is happening and turn count >= 1 (this is the only the choice rule):
	say "[one of][or][manorwoman2][stopping]". [ We would just say "anything other than discussing" but that blocks our debug rules. ]

First Instead of getting bored when Prologue is happening (this is the don't get bored during Prologue rule) : do nothing instead. The don't get bored during Prologue rule is listed before the only the choice rule in the instead rules.

Rule for printing a parser error when Prologue is happening and turn count >= 1: say "[as normal][manorwoman2][run paragraph on]".


To say manorwoman1: say "But uneasiness rises within you. Lost, for strange moments you can not even remember if you are [one of][o]man[x] or [o]woman[x][or][o]woman[x] or [o]man[x][at random]".

To say manorwoman2: say "Before anything, you must remember: "; if last beat is pr_intro begin; say "are you [o]male[x] or [o]female[x]"; otherwise if last beat is pr_prologue_2; say "is the one you embrace a [o]man[x] or a [o]woman[x]"; otherwise; say "make [o]love[x] or make [o]art[x]"; end if; say "?".

Instead of saying neither or saying both when last beat is pr_intro or last beat is pr_prologue_2: force discuss pr_neither. Understand "unknown/genderqueer/trans/transgender/intergender" as pr_neither when last beat is pr_intro or last beat is pr_prologue_2. pr_neither is an ephemeral repeatable beat in p_convo with fuse 99 and reaction "You toy with this for long timeless moments, but it seems of all the realities you drift between, in the one you return to now the choice must be one or the other.". 

Before discussing pr_playermale: now player is male; continue the action. Before discussing pr_playerfemale: now player is female; continue the action.

pr_playermale is a beat in p_convo with fuse 99. pr_playermale enqueues pr_prologue_2. pr_playerfemale is a beat in p_convo with fuse 99. pr_playerfemale enqueues pr_prologue_2. 

pr_prologue_2 is a beat in p_convo with fuse 99 and reaction "Relief breaks against you, a deep ocean wave of reassurance. Of course. You are a wayfarer, and a [if player is female]wo[end if]man. The rest can wait till waking.

But already trickles of wake intrude, seeping into you. Warmth and softness, and the arms of another, embracing you. Another wave washes through, this one of dull desire; but again strange vertigo grips you, for you're not even sure if it's a [prpr2].". To say prpr2: say "[one of][o]man[x] or a [o]woman[x][or][o]woman[x] or a [o]man[x][in random order] your waking self holds in [if player is male]his[otherwise]her[end if] arms". pr_prologue_2 summons pr_lovermale, pr_loverfemale. Understand "man" or "male" as pr_lovermale when last beat is pr_prologue_2. Understand "woman" or "female" as pr_loverfemale when last beat is pr_prologue_2.

Before discussing pr_lovermale: now Rume is male; continue the action. Before discussing pr_loverfemale: now Rume is female; continue the action.

pr_lovermale is a beat in p_convo with fuse 99. pr_lovermale enqueues pr_prologue_3. pr_loverfemale is a beat in p_convo with fuse 99. pr_loverfemale enqueues pr_prologue_3.

pr_prologue_3 is a beat in p_convo with fuse 99 and reaction "It seems right the moment you think it, right and real, and you float together over dream seas, rays of light stretching down to blue infinitudes even as pinpricks of reality dissolve them away. Warm furs on bare skin, pine and woodsmoke, stream and fire, and Rume, your [if Rume is female]wo[end if]man, sleeping against you. Home, for now.

For now.

How many worlds have you moved through, wayfarer? Will you ever stop moving?

Rume stirs, the touch of [hisher] [if Rume is female]breast[otherwise]chest[end if] hot against you. You are both half-asleep or half-awake, only together forming a whole being with the promise of something pleasant and instinctual taking shape in its sleepy mind.

But another desire stirs in you, equally compelling. Dawn and sleep are distant now, and a blank canvas waits in your studio below. A sudden ache as strong or stronger as your first impulse thrills you with desire to paint, create, bring life and form to the images coalescing inside you, no matter the consequences. 

Beside you, Rume shifts again, edging closer, blood pulsing faster in [hisher] veins, and you must choose. Do you make [o]art[x], or make [o]love[x]?". pr_prologue_3 summons pr_love, pr_art, pr_both, pr_neither. Understand "love" as pr_love when last beat is pr_prologue_3. Understand "art" as pr_art when last beat is pr_prologue_3. Instead of saying both when last beat is pr_prologue_3, force discuss pr_both. Instead of saying neither when last beat is pr_prologue_3, force discuss pr_neither_choice.

pr_love is a terminal beat in p_convo with fuse 99 and reaction "The physical presence of the [if Rume is female]wo[end if]man beside you, [hisher] tangible power, dissolves away all other desires. You pull [himher] close.

[lovetext]. Worlds you've explored, loves you've known, lives beyond or behind this moment are all forgotten in the freedom of this now, this dim and burning now...

Afterwards. Breaths out of sync, pools of cool sweat beneath each fingertip. And something gradual begins to intrude on your cooling bliss, some delicate itch. And an odd feeling creeps upon you that things are about to change, a sense of waves receding, perhaps forever, something calling them home.

[callingbit].".

pr_art is a terminal beat in p_convo with fuse 99 and reaction "Gently you pull away from Rume, excitement of another kind rising inside you. Already in your mind you are mixing paints, gripping the wood of your brush, aching to bring the unfocused imagery swirling so powerfully in your head to life. Calling another world into being...

[callingbit]."

To say callingbit: say "Calling...

And in a heartbeat you know the feeling, recognize it. The Call.

The Call pulls wayfarers together across time and dimension. Unconscious, unexplained, yet crisp, real. And when a wayfarer hears it, [if player is female]s[end if]he knows another wayfarer is somewhere, somehow in trouble.

But Rume is not a wayfarer. And [heshe] cannot go with you.

You let long moments pass before you open your eyes".

[ pr_both is a terminal beat in p_convo with fuse 99 and reaction "A smile ghosts your lips. There are always alternatives. No world you've found has been black and white. You pull Rume close.

[lovetext]. [bothtext]
But afterwards, breaths out of sync, pools of cool sweat beneath each fingertip, something gradual force begins to intrude on your blissful nothingness; some delicate itch, and an odd feeling that things are about to change, that the waves are receding, perhaps forever, to reveal strange new landscapes, unexplored and dry.

You let a long moment pass, before you open your eyes.".][ I would have liked to have included this option, but it led to painful combinations of possibilities in the Epilogue, for a path that the vast majority would never see.]

To say lovetext: say "Waves. The remnants of dream fuse into this new reality without a seam. You roll together, riding peaks and troughs of infinite blue, gasps and vague portents and hot insights suffused in the power of the moment, in the hot breath in your ear, in the dandelion touches on delicate nerves". 

pr_neither_choice is an ephemeral repeatable beat in p_convo with fuse 99 and reaction "To retreat back into the peace and selflessness of the waves, to turn your back on the choice. Tempting. But these two new desires are both too strong for sleep to prevail.".

pr_both is an ephemeral repeatable beat in p_convo with fuse 99 and reaction "Tempting. You've always been one to reject false choices, to find hidden paths that others can't walk. But you are sleepy and strange now, and know this night you won't catch one without dropping the other. No. This night, this moment, you must choose between them.".

To decide whether we chose love: if pr_love is spoken, decide yes; decide no.

To decide whether we chose art: if pr_art is spoken, decide yes; decide no.

To decide whether we chose both: decide no.

Prologue ends when last beat is silence.

When Prologue ends:
	say section break;
	say banner text;
	now easel is in Homeworld-Studio;
	move the concept of Call to Homeworld;
	if we chose love, miss Rume;
	move the player to the bed, without printing a room description;
	begin chapter 1;
	now Rume is idle.


Part - Tutorial


To say tutorial-objects: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: Object keywords are [o]things[x] you can examine. Type an object keyword to learn more about that thing[as normal][or][stopping]".

To say tutorial-directions: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: [d]Exits[x] are the second type of emphasized keywords. Type an exit keyword to move from place to place[as normal][or][stopping]".

To say tutorial-lookreminder: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: If no keywords are visible, type LOOK or press enter to get a fresh description[as normal][or][stopping]".

To say tutorial-moredetails: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: Sometimes by examining things more closely, we learn about other objects we may not have noticed at first[as normal][or][stopping]".

To say tutorial-taking: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: Though you can take this lamp, most of the time you won't need to carry objects around with you. In fact, it’s possible to finish the story without taking or dropping anything[as normal][or][stopping]".

To say tutorial-descriptions: if tutorial mode is switched on and The-Tumble is unvisited, say "[one of][or][or].[paragraph break][as the parser]Tutorial: Descriptions change as you progress through the story. Notice that 'get up' is now emphasized above. Type GET UP[as normal][or][stopping]". 

To say tutorial-consequences: if tutorial mode is switched on, say ".[paragraph break][as the parser]Some actions may have consequences. You won't be allowed to do anything that keeps the story from continuing, but you can alter its path, closing some doors and, perhaps, opening others[as normal]".

To say tutorial-saveundo: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: You can save your progress in the story by typing SAVE, and return to the same point later by typing RESTORE. If you ever want to 'take back a move,' you can type UNDO[as normal][or][stopping]".

After examining something when tutorial mode is switched on and The-Tumble is visited and Exploring Homeworld is happening: if ex-something is false and noun is not a person begin; now ex-something is true; say "[one of][as the parser]Tutorial: [tutorial-verbbit]You could try [if location is The-Tumble][tutshelfbit]READ BOOKS, TOUCH TRINKETS, or TAKE LAMP[else if location is Your Bedroom][ybnightstandbit]TOUCH MIRROR or DESTROY DRAWING[else if location is Kitchen]OPEN CUPBOARDS, TOUCH TABLE, or DRINK POOL[else]TOUCH FIRE or BURN STUDIES[end if].[as normal][or][stopping]"; end if. ex-something is a truth state that varies. To say tutorial-verbbit: say "[one of]By adding a verb before an object keyword, you can perform actions. [or][stopping]". To say tutshelfbit: if we have not examined tumble-shelves and we are not examining tumble-shelves, say "SHELVES, then ". To say ybnightstandbit: if we have not examined nightstand and we are not examining nightstand, say "NIGHTSTAND, then ".

To say tutorial-typeverbs: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: You can type HELP to see a list of other verbs the story understands. The help menu also offers more detailed instructions and information about the story[as normal][or][stopping]".

To say tutorial-kitchen: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: [tutorial-verbbit]Not all verbs require keywords. You might try to SIT, SWIM, or LISTEN[as normal][or][stopping]".

To say tutorial-studio: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: Type LANDMARK to see a list of important areas you've discovered[as normal][or][stopping]".

To say tutorial-landmarks2: if tutorial mode is switched on, say "[one of][line break][as the parser]Tutorial:  Type one of the listed direction keywords to quickly return to that area.[as normal][or][stopping]".

The last-time-looked is a number that varies. look-ctr is a number that varies. look-ctr is 6.

Every turn when tutorial mode is switched on and location is regionally in Homeworld:
	if we are looking or we are going or we are exiting or we are getting off something or we are landmark-going or we are discussing or player-looking is true, now last-time-looked is turn count;
	if turn count - last-time-looked > look-ctr:
		unless an attentive person is enclosed by location, increase look-ctr by 1;
		now last-time-looked is turn count;
		say "[tutorial-lookreminder2].".

To say tutorial-lookreminder2: if tutorial mode is switched on, say "[as the parser]Tutorial: [one of]I[or]Remember, i[stopping]f you don't see any new keywords on screen, you can type LOOK or press enter[as normal]".

To say tutorial-cellar: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: Careful observation and problem-solving unlocks new parts of the story. Congratulations on reaching this area[as normal][or][stopping]".

To say tutorial-lastchance: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: Signs of hesitation often indicate you are about to do something that will change or advance the story. Make sure you really want to proceed, then repeat your command[as normal][or][stopping]".

To say tutorial-conversation: say "[as the parser][one of]Topic keywords are the final type you'll encounter. Type a [t]topic[x] keyword to talk about the subject that word implies[or]A window below the prompt opens during conversations, showing all keywords currently available. Sometimes words appear there that weren't said by another character, like answers to a question[or]Old keywords disappear as the conversation moves on. Keep your eye on the topic window to know what can still be discussed[tutconvodone][stopping][as normal]". tut-convo-done is a truth state that varies. To say tutconvodone: now tut-convo-done is true.

After discussing when Rume-Conversation is happening and tutorial mode is switched on and rc_greet is spoken and tutconvtg is 0 and tut-convo-done is false:
	now tutconvtg is 1;
	say "[as the parser][one of]Tutorial: [tutorial-conversation].[or]Tutorial: [tutorial-conversation].[or]Tutorial: [tutorial-conversation].[or][stopping][as normal]";
	continue the action.

After reading a command: now tutconvtg is 0. tutconvtg is a number that varies. [ Prevents multiple "discuss" actions from triggering multiple tutorial messages.]

To say tutorial-listening: if 1 is 2, say "[line break][as the parser]Tutorial: To let time pass without taking any action, type WAIT or LISTEN, which can often be useful in conversations.[as normal]".

Every turn when Progue is enclosed by location and location is regionally in Lacuna and tutorial mode is switched on and the psyche of Progue is denial and no episode is playing and Progue is idle: say "[one of][as the parser]Tutorial: Type HELLO to start talking to someone, or GOODBYE to stop.[as normal][or][stopping]".

tut3 is a truth state that varies. After discussing when the psyche of Progue is denial and tutorial mode is switched on and current episode is not Word Day and tutconvtg is 0 and tut3 is false and a random other nonbestial person enclosed by the location is attentive and an unimportant episode is playing:
	now tut3 is true;
	now tutconvtg is 1;
	say "[one of][as the parser]Tutorial: In some conversations, you can type SUBJECT to talk about other things you've recently seen or heard about. The topics window will show you the extra keywords.[as normal][or][stopping]";
	continue the action. 

After greeting Progue for at least the third time:
	if the psyche of Progue is denial and tutorial mode is switched on and current episode is not Word Day and tutconvtg is 0:
		now tutconvtg is 1;
		say "[one of][as the parser]Tutorial: You can also perform some actions during conversations. In order from least kind to most, these are ATTACK, PUSH, HUG, and KISS.[as normal][or][stopping]";
	continue the action.

After asking which do you mean: if tutorial mode is switched on and the number of attentive people enclosed by the location is 0 and disambiguation_flag is false, say "[one of][line break][as the parser]Tutorial: If something you type might refer to more than one thing, type a number like 1 or 2 and press enter to confirm your intent, or type a new command instead.[as normal][or][stopping]".

To say tutorial-distantpeople: if tutorial mode is switched on, say "[one of].[paragraph break][as the parser]Tutorial: You can use exit keywords to approach distant people, or the APPROACH verb to move one area closer to them[as normal][or][stopping]".


Part - Exploring The Tumble (Chapter 1)

Exploring Homeworld is a scene. Exploring Homeworld begins when Prologue ends. Exploring Homeworld ends when Rume-Conversation begins.

Chapter - Your Bedroom

Your Bedroom is a room. The bed is an enterable supporter in Your Bedroom. The description of the bed is "Posts and headboard scuffed and worn, the bed was the only piece of furniture here when you found this place. Enormous, and far too large to fit through the doorway, you expect it will remain here long after you do.".

Bedroom-stuff is stuff in Your Bedroom. Understand "long/loft" as Bedroom-stuff when location is Your Bedroom.

Instead of examining yourself when Finishing-The-Prologue is complete and Finishing-The-Painting is unsolved:
	if The-Path-of-Love is happening, say "You're older, slower, and achier now than you were when you first came to the Tumble. But also wiser, calmer, and happier." instead;
	else say "You are the one constant in your life, and even you change. [if mirror is enclosed by location and we have examined mirror]Studying your sleepy eyes, you[otherwise]You[end if] wonder what happened to the terrified [if player is male]boy[otherwise]girl[end if] who first painted [if player is male]his[otherwise]her[end if] way into another world, the brave teenager eager for a life of adventure, the bitter young [if player is female]wo[end if]man first touched by pain. Perhaps they still exist, somewhere in those worlds you left behind, trapped forever in amber." instead.

Instead of sleeping when location is regionally in Homeworld, say "You are too keyed up for sleep: the Call itches at your mind.".

The concept of the Call is a backdrop. The description is "[one of]It is an itch in the mind, a tug on your soul. It means that when next you wayfare, what you paint and where you go will not be entirely up to you. Some other wayfarer is pulling you closer. Someone in need.[paragraph break]You've only felt it once before, at least consciously. When you answered you found a dark, razed world where a lonely little girl was stranded. She had a gift like your own, but didn't understand it, and thought she was crazy for believing in it. You stayed with her a month, helped her survive and learn to want survival, to gain strength to sing to more peaceful worlds.[paragraph break]Yes, you remember now. Her gift was song, fragile with heartache, but the clearest, purest thing you've ever known, or ever will.[paragraph break]Did she call you to her? Did some hidden part of yourself reach through infinities to feel her suffering? Or does some power run through all universes, bringing you together in times of need? You don't know. But now the Call has come again[or]The Call pulls you, an infinitely long string attached to your mind that trembles, tickles, urges you to [d]paint[x] the image you feel forming in your mind, still unclear, though you know it will coalesce the instant your brush touches canvas[stopping].".

Homeworld is a region. Your Bedroom is a room in Homeworld. The printed name is "Loft". The bed is an enterable undescribed supporter in Your Bedroom. The prose name of Your Bedroom is "the loft".

The homeworld-accoutrements are a backdrop with printed name "lodge". They are in Homeworld. Understand "wall/walls/floor/roof/ceiling/beam/beams" as homeworld-accoutrements. The description is "Sturdy wood that has stood for many winters and should stand many more.". Instead of climbing or touching homeworld-accoutrements: say "The wooden beams are cold now, the warmth of day slowly sucked away by the cold night beyond.".

Rume is an undescribed person on the bed. Understand "love/lover/girlfriend/boyfriend/wife/husband" as Rume when location is regionally in Homeworld and Finishing-The-Prologue is complete. Rume is asleep.

Understand "soft" or "warm" as Rume. Rume has a number called awake-examined. The awake-examined of Rume is 0. Instead of burning Rume, try attacking Rume. Check attacking Rume: say "It comes upon you at times, surprising and frightful, in odd dreams or curious moments of the day. You have no conscious desire to hurt Rume, this [if Rume is female]wo[end if]man you've loved maybe more than any other in your life, but still, at times, some cold fury rises within you, some bitterness, some anger. Maybe it's the red core of your gift, jealous, knowing that to choose Rume means abandoning it forever, ceasing to wayfare.[paragraph break]But no. The feeling fades. You have larger realms to wander tonight than pettiness." instead.

Instead of kissing or tasting Rume when Exploring Homeworld is happening, say "[if we chose love or we chose both]Already Rume has drifted back to sleep, but you're[else]Rume drifts in deep sleep, but you're[end if] more awake than you've been in a year. You kiss [hisher] cheek, hand lingering on [hisher] warm shoulder. You'll come back to say goodbye, if... or before."

Instead of hugging or touching Rume when Rume is asleep, say "You wrap your arms around Rume for long moments, feeding off the heat of [hisher] deep sleep, but [if we chose love]now that you've fed one need, the other[else]you've already chosen. The need to paint[end if] grows deeper and deeper inside you. The Call beckons, itches. You must answer.".

Instead of waking Rume when Rume is asleep: say "[CHeShe] [if we chose love or we chose both]has already fallen asleep again[else]still sleeps[end if], so deep and complete that for the moment you can't imagine [himher] awake again[if we chose love or we chose both], a faint smile still lingering on [hisher] lips[otherwise], the twinges of desire from moments ago vanished into dreams when you slipped away[end if]. You'll come back to say goodbye, if... or before.". Instead of greeting Rume when Rume is asleep, try waking Rume.

The description of Rume is "[if Rume is asleep][Rumeasleepdesc][otherwise if the number of spoken terminal beats in RC > 0]Already the shadow of the doorway half-conceals [himher], as if [hisher] reality already begins to fray.[otherwise]Wrapped in light cloth despite the lingering chill, Rume regards you steadily with no hint of sleepiness. Pale blue smoke rises from [hisher] sikar, nearly smoked down.[setRumeflag][end if]".

To say Rumeasleepdesc: say "[CHisHer] features are only just distinct in the dim and flickering firelight. A year. You've known [himher] a year now, and [heshe] looks the same as the day you met, in the dazzling light of a high and snow-scraped cirque. A life spent exploring this alpine world has infused winter into Rume's face; [hisher] nordic cheekbones, bleached hair, and ruddy cheeks hint at coldness, but the warmth of [hisher] touch, [hisher] laugh, [hisher] soul, dominates. There is fire in [hisher] sea-blue eyes, and from the moment you met [himher] it burned in yours too.

Now, three months after this mountain cabin became your shared home, you see other things in Rume's face as well. You know what it looks like in anger, in pride, in guilt. You can imagine now as you never could before how that face will age, the lines along which youth and energy will drain until one day only a dry mask remains, faded and cold. In your life you have seen death, but not aging. Never aging.

But now?

No matter how many final decisions you've made, no matter how many times you've put the question behind you for good, it still lingers. Could you truly give up your gift, the magic heart of your soul, to grow old here with Rume, on this world of kind people but cold and bitter winds? Could you really never know the breeze of another world again, the tang and rush of new reality? You have always been a wayfarer. Who would you be if you let that go?

You look away, at last, as if from the sun. The questions burn too deep[tutorial-lookreminder].".


To say setRumeflag: now the awake-examined of Rume is 1.

The description of Your Bedroom is "[ybeddesc].".

To say ybeddesc:
	if Prologue is happening begin;
		say "[run paragraph on]";
	otherwise;
		say "[if player is not on bed]The bare floorboards at your feet are cold as you stand in the long loft,[else]Firelight trickles through the open doorway into this long loft, seeps deep into[end if] huge wooden beams strung with pine [o]boughs[x] angling above your head";
		if player is on bed, say ". You lie in the warmth of your bed, buffered from the air's winter chill by layers of warm [o]furs[x][one of][or][or], but anxious to [d]get up[x][stopping]";
		say ".[paragraph break][if player is on bed]Next to you[else]In your bed[end if] lies [o]Rume[x], breathing quietly, [if we chose love or we chose both]already asleep again[else]asleep[end if]. Beside [if player is not on bed]your bed[else]you[end if] sits a simple [o]nightstand[x]";
		if player is not on bed, say ".[paragraph break][exits][tutorial-directions]";
		else say "[tutorial-objects]";
		if player is on bed, say "[tutorial-descriptions]";
	end if. 

The exits text of Your Bedroom is "Faint red firelight gutters through the open [dr]doorway[x]". Understand "door/doorway/balcony" as west when location is Your Bedroom. 

Some furs are a prop on the bed. Understand "fur" as furs. The description is "Brown and black, thick with the heavy warmth once needed by creatures who slept through long mountain winters.". Instead of taking furs, say "It's chilly, but Rume snuggles beneath them, and needs them more than you now.". Instead of touching furs, say "The thick furs are soft and warm; without them, nights here would be unbearable.".

Some refracted firelight is a minor setpiece in Your Bedroom. Understand "fire" or "fire light" as refracted firelight. The description is "The remnants of last night's fire down on the lodge's main floor are mostly shadow now, but in the black of night provide just enough light to see by.". 

The simple nightstand is an undescribed supporter in Your Bedroom. The description is "Made simply from unfinished pine, it has the naked functionality and unexpected beauty that marks everything made by Rume's hands. Atop it rests a framed [o]drawing[x] and a small round [o]mirror[x][tutorial-moredetails].". 

A small round mirror is a prop on the nightstand. The description is "The brass stand and edging is adorned with simple repeated patterns like everything the craftsfolk of this mountainous country put hand to. Inside the dark circle you see only your own [o]reflection[x].". Understand "reflection" as yourself. Instead of attacking small round mirror, say "You'd wake Rume.". Check touching small round mirror: say "The mirrored surface is cold and smooth." instead.

The framed drawing is a prop on the nightstand. Understand "sketch/hand/hands" as framed drawing. The description is "Set in a wide frame of grey stone, Rume gave you this pencil sketch some weeks ago. [CHeShe] had rarely drawn before, which to you makes the sketch even more remarkable: [if player is male and Rume is male]two masculine sinewy hands, entwined, but the difference between yours and Rume's clear[otherwise if player is female and Rume is female]two gracefully feminine hands, entwined, but the difference between yours and Rume's clear[otherwise]your graceful artist's hand and Rume's calloused and practical one, entwined[end if]. Though crudely drawn it has as much power in it as anything you have painted, and the intensity of everything Rume creates.[paragraph break]In darker moments, you cannot help but see the strength with which Rume's hand clutches yours in the drawing. In darker moments, you wonder whether your hand is trying to pull away.". Instead of attacking framed drawing, say "It seems a petty thing to do to something given in kindness.". Instead of touching framed drawing, say "The paper is rich and textured, the graphite marks smooth grooves.".

The bathrobe is an undescribed wearable thing in Your Bedroom. The printed name is "simple robe". Understand "robe" as bathrobe. The description is "Simple, but it keeps you warm.". Instead of taking off bathrobe, say "You shiver at the thought. Winter seeps relentless through the walls of the lodge.". Before wearing bathrobe when player is on bed: try exiting instead.  

[ New players often try to get dressed or look for clothes at this point, so we gamely accommodate them with an otherwise undescribed bathrobe object.]
  
Vague dressing is an action applying to nothing. Understand "dress" or "get dressed" or "wear clothes" or "put on clothes" as vague dressing. Check vague dressing: if bathrobe is not worn by the player and homemade outfit is not worn by the player and location is regionally in Homeworld, say "A simple robe waits for you beside your bed." instead. Check vague dressing: if ( yourself wears bathrobe and location is not Old-Tumble-Cellar ) or yourself wears homemade outfit, say "You are already dressed." instead. Carry out vague dressing: try wearing homemade outfit.

Vague undressing is an action applying to nothing. Understand "undress" or "take off clothes" or "get naked" as vague undressing. Carry out vague undressing: repeat with article running through things worn by player begin; try taking off article; end repeat.     

The pine boughs are a setpiece in Your Bedroom. Understand "bough/tree/branch/branches/pine" as pine boughs when location is Your Bedroom. The description is "Arranged gracefully across the slanted ceiling, the pine boughs infuse the room with the scent of the forest outside, while somehow making this mostly empty space seem whole. Rume's work again: undeniably right, but you'd have never thought to do it.". Instead of touching boughs, say "The needles are crisp and still sharp as you raise a hand and run your fingers idly through them, redolent with the tactile essence of the forest.". Instead of taking or pulling boughs, say "This is not the time to redecorate.". Instead of smelling boughs, say "The scent of the fresh pine boughs blends with the muted smells of the old logs of the lodge to produce some comfortable mixture of the wild and civilization.".

The wooden ceiling beams are a setpiece in Your Bedroom. Understand "wood" or "roof" as beams. The description is "The four large beams, cores of once mighty pines, slant upwards above you to create this long angled room. The wood is old but solid, placed long before you came here by some unknown master builder." Instead of touching beams, say "The surface of the wood is smooth and chill. Ancient ripples wend and warp across the rounded surface.".

Report getting off bed: say "Careful not to disturb Rume, you slip out from under the warmth of the furs into the chilly air[if player had not been wearing bathrobe], quickly wrapping a robe around yourself[end if]."; try looking instead. After getting off bed: now the player is wearing the bathrobe; continue the action. First check going up when location is Your Bedroom and player is on bed: try getting off bed instead.

Instead of saying farewell to when location is Your Bedroom, try kissing Rume.

Report going from Your Bedroom to The-Tumble: say "You pass through the open doorway, old floorboards creaking comfortably under your feet, into the light and open space of the rest of the lodge.". 

Chapter - Balcony

The-Tumble is a room in Homeworld. The printed name is "The Tumble, On the Balcony". The-Tumble is west of Your Bedroom. The description of The-Tumble is "[thetumbledesc].". To say thetumbledesc: say "The [o]balcony[x] overlooks the roomy interior of the lodge, running the length of one wall covered in [o]shelves[x]. Beneath your feet, the chattering [o]stream[x] that named this place emerges from its bed under the loft, tumbling down the exposed rock face to the main floor below.[paragraph break][exits].[paragraph break]Only the glow of the fire below is reflected in the black skylights slanting above you. It must still be very early[tutorial-saveundo]". The exits text of The-Tumble is "Stairs parallel the stream's journey [down] to the kitchen, and an open [d]doorway[x] leads back into the dark interior of the loft". Understand "loft" or "doorway" or "bedroom" as east when location is The-Tumble. The prose name of The-Tumble is "the balcony". Understand "kitchen" as down when location is The-Tumble.

Tumble-stuff is stuff in The-Tumble. Understand "roomy/interior/lodge/length" as Tumble-stuff when location is The-Tumble.

Some tumble-shelves are a undescribed supporter in The-Tumble. Understand "shelf/shelves" as tumble-shelves. The printed name is "shelves". The description is "The shelves are still mostly empty, waiting to creak under the weight of years of occupation: a few [o]books[x], some rocks and pine cones and other [o]trinkets[x] of nature[if oil lamp is on tumble-shelves]. An oil [o]lamp[x] rests on one corner[end if][tutorial-moredetails].". Instead of climbing or entering tumble-shelves: say "They wouldn't hold your weight." instead. Check taking tumble-shelves: say "Nailed with firm and sturdy supports to the wall." instead.

Some tumble-books are a prop on tumble-shelves. The printed name is "books". Understand "book/books" as tumble-books. The description is "A few leather-bound journals; smudgy reprints of distant travelers['] tales; fraying tomes with peeling binding on trapper medicine, wilderness cooking, alpine survival.". Instead of reading or opening tumble-books, say "You've spent long hours curled by the fire exploring these volumes, most of which have haunted this old shelf since long before you came here. But now, you're too keyed up to read.". Check touching tumble-books: say "Some have fine leather bindings, but most are cheap and shoddy, rough cardboard covers and itchy twine harsh under your fingertips." instead. Check taking tumble-books: say "You pick up one worn volume, a grey and practical manual on canning preserves and salting meat for winter, and trace your fingers across its age-stained surface. But your mind is too filled with images to focus on words. You return the book to its shelf." instead. Check smelling tumble-books: say "You flip through one yellowing volume, holding it close to your face, and the musty smell of aging paper wafts out at you." instead.

Some trinkets are a prop on tumble-shelves. Understand "pine/cones/cone/rock/rocks" as trinkets. The description is "You toy delicately with the pine cones, smooth or strange stones, and shells or fossils that Rume has brought back from [if Rume is female]her[else]his[end if] wanderings, till your fingers touch one fractured half of a small crude statue, thumb-sized, idols of an ancient people that often turn up near riverbeds and caves here.[paragraph break]Fractured. You remember Rume smashing it against the ground, face twisted in anger. Your first real argument, and so soon. So soon. Maybe you made a mistake in staying. Or [if Rume is female]s[end if]he did.". Check touching trinkets: say "You touch your fingers gently to a delicate pine cone. You and Rume both remember through touch, and as you close your eyes you walk again through the forest outside the thick walls of the Tumble." instead. Check taking trinkets: say "They belong here. And none are made by your hand, so none will go with you, when you leave." instead.

The oil lamp is a portable undescribed prop on the tumble-shelves. Understand "lantern/flame/wick/hood/base/brass/weave/simple/glass" as oil lamp. The description is "The civilization of this alpine world is simpler than some, but graceful elegance permeates the people here, grace you find somehow comforting. This simple lamp is a perfect example, in the dignified curves of its glass hood, the polished sheen of the brass base, even the delicate weave of its wick.". First report taking the oil lamp: say "You pick up the [if lamp is unlit]unlit[otherwise]lit[end if] lamp gently[tutorial-taking]." instead. Instead of touching oil lamp, say "The smooth brass is [if lamp is unlit]cold[otherwise]warm[end if] to the touch, the glass smooth and clean.". Instead of burning the oil lamp: try switching on the oil lamp. Check dropping oil lamp when location is not The-Tumble: say "There isn't a good spot to put it down here." instead. First report dropping the oil lamp: if location is The-Tumble, move oil lamp to tumble-shelves; say "You set it back down on the shelf." instead. Understand "light [the oil lamp]" or "strike [oil lamp]" as switching on. Understand "douse [oil lamp]" or "put out [oil lamp]" as switching off. Instead of switching off oil lamp: say "[if lamp is lit]You douse the flame and the lamplight dies[otherwise]The lamp is not lit[end if]."; now oil lamp is unlit. Instead of switching on oil lamp when matches are not enclosed by location: say "You'll need matches to do that." Instead of switching on oil lamp: say "[if lamp is unlit]You strike a match and light the lamp's wick from the tall yellow flame. Soon the lamp emits a ghost-pale light[otherwise]The lamp is already lit[end if]."; now oil lamp is lit. Instead of attacking oil lamp: remove oil lamp from play; move smashed-lamp to location; say "In sudden rage, you smash the lamp against the ground, watching its delicate glass splinter and crumble, smelling the oil within as it seeps into the floorboards. What use is delicacy, workmanship, reliability to you? Each time you wayfare you must begin again. Always[tutorial-consequences].". The smashed-lamp is a minor setpiece with printed name "smashed lamp". Understand "lamp/smashed/glass/oil/lantern/wreckage" as smashed-lamp when smashed-lamp is on-stage. The description of smashed-lamp is "Only wreckage now, useless.".

The stream is an undescribed backdrop. It is in The-Tumble, Kitchen and Homeworld-Studio. Understand "water" or "tumbling" or "chattering" or "oddity" or "mountains" as stream. The description is "The lodge is built around the stream, its centerpiece and soul, so much so that the old trapper who left it to you named the place the Tumble[if location is The-Tumble]. The ice-cold mountain water flows beneath the loft, then dances its way down the exposed natural rock face separating the upper level from the lower. It pools in a rock pond at the base of the stairs, then flows through a sculpted streambed that bisects the great boards of the main floor. Near the front door it escapes through a drain to continue its journey down the mountain outside your walls[otherwise]. The mountain stream pools near the base of the stairs, then ambles across the floor of the lodge, neatly dividing the studio from the kitchen. Two flattened stones cross over it before it disappears into a bed of loose rock and continues on its way down the mountain[end if].". Instead of touching the stream, say "The water comes from the high plateaus and glacier-carved cirques of the mountains above you, only a trickle this late in the season. You dip your hand into it for a moment and relish its pure, fresh bite, an icy knife of silk." Instead of tasting or taking the stream, say "You cup your hands and scoop up a few mouthfuls of the ice cold mountain water. Shockingly pure cold and clarity runs down your throat to your core, and you feel more awake." Instead of swimming in stream, say "The small pool at the base of the stairs is good for washing up or soaking your feet, but too small for swimming." Understand "wash in stream" or "wash up" or "wash hands" or "wash" or "wash me" or "soak feet" or "soak feet in pool" or "soak feet in stream" or "wash feet" as a mistake ("You wash quickly in the knife-cold water. In a few minutes you are cleaner and more awake.") when location is The-Tumble or location is Homeworld-Studio or location is Kitchen. Understand "soak feet" or "soak feet in pool" as a mistake ("You sit by the side of the stream, dangling your feet in the icy water for a few minutes, but the cold and the growing urge of the Call soon grow too strong to resist.") when location is The-Tumble or location is Homeworld-Studio or location is Kitchen. Instead of crossing or leaping stream when location is Kitchen: try going north. Instead of crossing or leaping stream when location is Homeworld-Studio: try going south. Instead of crossing or leaping stream when location is The-Tumble: say "The stream passes underneath the balcony; you'll have to go [d]down[x] the stairs before you can cross it.".

Instead of jumping when location is The-Tumble, say "Taking the [o]stairs[x] might be an easier way [d]down[x].". Instead of taking the homeworld-stairs, try entering homeworld-stairs.

Instead of entering stream: try swimming in stream.

Instead of jumping when location is Homeworld-Studio or location is Kitchen, try entering stream.

The skylights are an undescribed backdrop. They are in The-Tumble, Homeworld-Studio, and Kitchen. Understand "window" or "windows" or "skylight" or "long" or "slanted" as skylights. The description is "During the day these long, slanted skylights let in sun and beautiful views of pines, mountains, and the long slope down to the valley below. Now only darkness sleeps behind their frosted surface.". Instead of touching or pushing or opening the skylights, say "You cannot reach them."

The balcony is an undescribed backdrop. It is in The-Tumble and Homeworld-Studio. The description is "The balcony runs above and alongside the studio and kitchen, an extension of the loft and separated from it by a simple partition. A wooden railing guards the drop, topped by lacquered branches, gnarled and ancient, and the stairs follow the stream [down] to the ground floor below.".

The wooden railing is an undescribed backdrop. It is in The-Tumble and Homeworld-Studio. Understand "lacquered" or "branches" or "branch" or "gnarled" or "ancient" as railing. The description is "Simple but sturdy.".

The homeworld-stairs are an undescribed backdrop. Understand "flight" or "wooden" or "stair" or "stairs" or "staircase" as homeworld-stairs. They are in The-Tumble and Kitchen. The printed name is "stairs". The description is "The flight of broad wooden stairs curves gently then straightens again as it descends, echoing the natural twist of the exposed rock alongside.". Instead of entering or using or taking or climbing homeworld-stairs: if location is The-Tumble, try going down; otherwise try going up. Instead of touching homeworld-stairs, say "Your feet and Rume's are just the most recent to have further worn the subtle smoothness near the center of each stair."


Chapter - Studio

Homeworld-Studio is a room in Homeworld with printed name "Studio". Understand "studio" as Homeworld-Studio. Kitchen is down from The-Tumble. The description of Homeworld-Studio is "[homestuddesc].". To say homestuddesc: say "Your art has claimed this side of the main floor; paint-spattered canvas twists crumpled underfoot, palettes and buckets and brushes stacked and strewn between them. [if abstract paintings are on-stage]Abstract [o]studies[x] lie in piles where you've abandoned them, except a few Rume has saved and pinned to the wall. [end if]The [o]fire[x] [if fireplace is banked]burns low, painting the interior of the lodge with dull heat and molten glow[otherwise]rages, flooding the room with yellow-orange light, driving away the chill[end if].[paragraph break][easelbit][rumehwbit].[paragraph break][exits][tutorial-studio]". The exits text of Homeworld-Studio is "The solid front [d]door[x] is shut tight against the frigid night air. Opposite the fire, a few flat stones lead [d]across[x] the stream to the kitchen". Understand "kitchen" as south when location is Homeworld-Studio. To say rumehwbit: say "[if Rume-Conversation is happening and Rume is on-stage].[paragraph break][o]Rume[x] stands on the balcony above, smoking and watching you quietly[end if]". [aar]

HStudio-stuff is stuff in Homeworld-Studio. Understand "space/lodge/wooden/spattered/palette/palettes/bucket/buckets/interior/dull/molten/glow" as HStudio-stuff when location is Homeworld-Studio.

The fireplace is an undescribed backdrop. It is in Homeworld-Studio and Kitchen and The-Tumble. Understand "fire" or "flames" or "heap" or "glowing" or "embers" as fireplace. The description is "The fireplace extends on a large, semicircular platform into the lodge[if location is Homeworld-Studio], the wide curving hearth around it strewn with rugs and pairs of drying winter [o]boots[x]. [firedetails]. A bundle of [o]matches[x] rests on the mantel.".  Instead of touching the fireplace, say "You hold your hands out to the [if fireplace is banked]glowing embers[otherwise]hot flames[end if] and feel warmth seep into them." Understand "put out fire" as a mistake ("The fire is all that separates this house from the cold and the dark.").

The fireplace is either banked or raging. The fireplace is banked. Understand "bank up [something]" or "build up [something]" or "stoke [something]" or "make [fireplace]" or "light [fireplace]" or "feed [fireplace]" or "bank [something]" as burning. To say firedetails: say "[if fireplace is banked]The fire has been banked down to a heap of glowing embers, heating even this large space through the long night, and providing a glow bright enough to see by[otherwise]The fire burns hotly, logs blazing in the heat and encircled by swirls of ember[end if]". Instead of burning fireplace: if fireplace is raging begin; say "The fire is already built up into a raging blaze."; otherwise; now fireplace is raging; say "You pull some heavy logs from the stack, open the mesh grating, and position them carefully over the glowing embers. After a few minutes work with the brass poker, you have built the fire into a raging blaze, filling the lodge with light and warmth."; end if. The brass poker is a prop in Homeworld-Studio. Instead of taking the poker, try burning fireplace. [ There's really no point to all this, but it's another way of hinting to players that they can affect the world.]

Some matches are an undescribed prop in Homeworld-Studio. The description is "A small pile of matches and a starting stone.". Understand "match/box/stone/bundle" as matches. Understand "strike [matches]" or "light [matches]" as burning. Instead of burning or switching on matches when lamp is enclosed by location, try switching on lamp. Instead of burning or using matches, say "You strike a match, and watch its tall yellow flame till it burns down to your fingers and vanishes.".  Check touching matches: say "Splintery sticks." instead. Check taking matches: try burning matches instead.

The hearth is a minor setpiece in Homeworld-Studio. The description is "The worn brick is radiating heat."

Some rugs are a minor setpiece in Homeworld-Studio. The description is "Soft and warm."

Some firewood is a prop in Homeworld-Studio. Understand "heaping" or "stack" or "wood" or "logs" or "fire wood" or "stack of firewood" as firewood. The description is "Each of the heavy logs is thick enough to burn for hours, even in your large fireplace.". Instead of taking, burning, putting or using firewood, try burning fireplace.

Some pairs of winter boots are a prop in Homeworld-Studio. Understand "boot" or "shoe" as boots. The description is "Nearly dry and ready for another day breaking snowbanks.". Instead of taking or wearing boots, say "Somewhere inside you prickles a feeling. You won't need them where you're going.". Instead of touching boots, say "Cured and hardened leather, worn smooth at the ankles, and soft otter-skin lining, still damp.". Check smelling boots: say "They'll have to sit a lot longer in front of the fire before you're willing to do that." instead.

The flattened stones are an undescribed backdrop. Understand "stone" as flattened stones. They are in Kitchen and Homeworld-Studio. The description is "Their tops, sheared perfectly flat, rise just above the gurgling surface of the stream." Instead of touching stones, say "Worn smooth." Instead of entering or crossing or leaping or using stones: if location is Kitchen, try going north; otherwise try going south. 

Understand "cross/across" as south when location is Homeworld-Studio. Understand "cross/across" as north when location is Kitchen.

Some abstract paintings are a setpiece in Homeworld-Studio. Understand "studies/pile/piles/few/pinned" as abstract paintings. The description is "Not studies in the sense of a student hoping to learn, but of a master surveying his domain in satisfaction and reflection. For you are a master. There's no ego or pride involved; it's simply true. You couldn't wayfare if you were otherwise.[paragraph break]The studies are as meaningless as muscles twitching before sleep, and you wish Rume wouldn't hang them like this. All they do is remind you that [if Rume is female]s[end if]he doesn't understand, never will. All they remind you of are things you'd rather forget.". Instead of burning abstract paintings: say "Gathering up the loose canvases and sheets of paper, you feed them one by one into the fire. The copper smell of burning paint fills the lodge as the paintings vanish in smoke. Like you have, so many times before."; remove abstract paintings from play. Instead of taking abstract paintings: say "Useless.".

Some paintbrushes are an undescribed prop in Homeworld-Studio. The description of some paintbrushes is "You scarcely notice them, other than as extensions of yourself.". Instead of taking or using the paintbrushes: try painting lacuna-canvas. Understand "brush" or "paint brush" or "brushes" or "paint brushes" or "paintbrush" as paintbrushes. Check painting some paintbrushes: try painting lacuna-canvas instead.                                       

The lacuna-canvas is an undescribed setpiece in Homeworld-Studio with printed name "canvas". Understand "canvas" or "painting" or "tree9/yellow/flower/flowers" or "art" or "drawing" or "picture" as the lacuna-canvas when location is regionally in Homeworld. The lacuna-canvas can be unbegun, mostly finished, almost finished, or finished. The lacuna-canvas is unbegun.        

An easel is an undescribed setpiece. To say easelbit: say "[if lacuna-canvas is unbegun]A wide blank [o]canvas[x] stands on an easel in the center of the studio, space cleared around it like the eye of a storm[otherwise if The-Path-Of-Love is happening]In the center of the room, alone on its easel, your [o]painting[x] waits,  again[otherwise]Your [o]painting[x] of a strange, withered tree is almost complete, almost real[end if]".

The description of the lacuna-canvas is "[lccanvasdesc].". To say lccanvasdesc: if lacuna-canvas is unbegun begin; say "The cream-white canvas is pulled taut as a drum, achingly empty. There's nothing magical about its fibers, of course, no strange alchemical mixture in your paints, no glamor in your simple [o]brushes[x]. You wayfare because of you: the act of painting simply helps your mind, your being to define the world you'll become part of. Each of the billion decisions you make as you paint, of texture, tone, pressure, position, size, helps winnow the spiraling infinitudes down to the single one that becomes your new reality.[paragraph break]The painting itself, the one you leave behind, is merely a painting. But always a masterwork.[paragraph break]As your fingers near canvas, the [o]Call[x] pulls strongly on your mind. The image you must paint burbles in your mind, almost clear"; otherwise if The-Path-Of-Love is happening; say "Its immediacy tingles your pores with cold pinpricks. The morning light streams through the door and seeps into the colors, expands them with vibrant life. But the painting is wrong now. The tree you painted twenty years ago has grown, not on your canvas but on the world it exists, and you see, almost feel it with sudden shocking clarity: branches thickened, new leaves sprouted; the hillside behind has become more overgrown; the wisps of clouds in the sky of your canvas are from a different season than the one that now breathes through the lemon-yellow leaves. You know this all in a sudden shock of gnosis, like an unexpected wave smacking and submerging you. And your fingertips tingle and long to make the tree right. To make it real again.[paragraph break][otextra][pflag1]"; otherwise; say "You've painted a tree. Strange, like nothing that might have come from your own mind. Lemon-yellow leaves surround a withered trunk wrapped in vine; through holes in the branches you can see the sea[pflag1]"; end if. lc_painting_flag is a number that varies. lc_painting_flag is 0. To say pflag1: now lc_painting_flag is 1. Instead of taking the lacuna-canvas, say "The canvas will not move. Only you will." Instead of touching lacuna-canvas, say "[if lacuna-canvas is unbegun][lc-unbegun][otherwise]You rub a miniscule correction into a patch of sky. The wet paint feels electric under your fingertips, like carbonated mud.[end if]". To say lc-unbegun: say "The white surface feels [if we chose love]rough and coarse to you tonight[otherwise]smooth, the texture thrilling, almost erotic in its infinite possibility[end if].". Instead of attacking or burning lacuna-canvas, say "You toy with the thought briefly, like a child on the edge of a cliff getting rushes from vertigo. But you are a wayfarer, and you could no more destroy this canvas than cut off your own thumb.". Instead of smelling lacuna-canvas, say "[if unbegun]It smells clean and fresh[otherwise]The smell of wet paint is intoxicating[end if].".

Check wayfaring when location is Homeworld-Studio: try vague painting instead.

Every turn when lacuna-canvas is almost finished and lacuna-canvas is enclosed by location and a random chance of 1 in 6 succeeds, say "The canvas arcs with potential energy, yearning for [d]paint[x]; only a few more strokes of your brush and it will be complete.". [ People seem to get stuck at the end; this gives a little push.]

Check painting lacuna-canvas: try vague painting instead.

paint-check is a number that varies. First instead of vague painting when lacuna-canvas is enclosed by the location and paint-check is 0: now paint-check is 1; say "You hesitate long moments, fear and excitement trembling your fingertips as they hover just above your brushes. The [o]Call[x] whispers in your mind, teasing, wondering if you are ready to answer it[tutorial-lastchance].".

Instead of vague painting when lacuna-canvas is enclosed by location:
	if lacuna-canvas is unbegun begin;
		now paintbrushes are carried by the player;
		if we chose art or we chose both, say "A queasy tremor of thrill and fear runs within you. Carefully, you [if player holds the oil lamp]set the oil lamp on a shelf, [end if][if fireplace is banked]build up the fire, flooding the room with heat and warm light, and [end if][if the player is not wearing outfit]retrieve your worn, threadbare traveling clothes from the cellar. As you slip into them their touch is like an old lover swum back to you, fighting improbable currents of memory. You [end if]gather palette, brushes, and colors, vague ticklings behind your mind coalescing now into a scene more vivid than the world before you. As you touch brush to canvas, something like ecstasy fills you as its textured white expanse is violated by a shocking streak of lemon-yellow. You realize in a flash that your choice earlier was predestined. You've always chosen art before love, because for you they are merged in one entity, merged but unequal, your muse always winning out in battles with your heart";
		otherwise	say "Awkwardly, you [if player holds the oil lamp]set the oil lamp on a shelf and [end if][if fireplace is banked]struggle to build up the fire, finally producing a blaze that floods the room with heat and light. That done, you [end if][if the player is not wearing outfit]retrieve your threadbare traveling clothes from the cellar and pull them on. You [end if]fumble for palette and brushes, knocking your shins on the easel. The smell of Rume still lingers in the air, clings invisibly to your body, as if your earlier choice of love now thwarts your fingers and intentions with delicate jealousy. A hesitancy seems to cloud your mind; though the Call seems inevitable, some sage part of you knows it is not, that you could abandon it and go back to bed and live out a happy life here in the mountains[if children are possible] until unborn children bury you both behind the garden[end if]. You pause for a long moment before the blank canvas, brush in hand, a droplet of thick lemon-yellow quivering at the tips of bristles. Then, with a sigh, you press the brush against the cloth";
		now the player wears outfit;
		if player holds the oil lamp, move oil lamp to Homeworld-Studio;
		remove bathrobe from play;
		now the fireplace is raging;
		remove the concept of the Call from play;
		say ".[paragraph break]There is none of the deliberate experimentation, the careful decisions that come with your usual work: this time, the scene already exists in your mind's eye, formed by the Call. All you have to do is make it real.[paragraph break]There is no sense of time, but hours must pass.[paragraph break]By the time you force yourself to step back for a moment, to pull away from the [o]painting[x], the intensity of the world you are already half a part of, you are almost finished";
		say "[if we chose love or we chose both]. You can't leave Rume like this; there must be explanations, and pain, and goodbyes. But as you turn to head up the stairs you see [o]Rume[x] already stands[else]. You look up, and notice [o]Rume[x][end if] on the landing above, smoking and watching you silently.[paragraph break]And you know at a glance [if Rume is female]s[end if]he understands. [if Rume is female]She[else]He[end if] cannot come with you.";
		now the lacuna-canvas is mostly finished;
		[ triggers Rume-Conversation ]
	otherwise if lacuna-canvas is mostly finished and The-Path-Of-Love is happening;
		say "There's no reason to wait. You've nothing to pack, no one to say goodbye to, nothing to arrange. [if player does not wear homemade outfit]Pulling your old traveling clothes down from the wall, y[else]Y[end if]ou approach the canvas hesitantly. For long moments you stand there, arranging and rearranging your paints, afraid perhaps to begin. But inevitably, you do.[paragraph break]The paints are supple and clear as ever. You thicken branches, reposition leaves, change the patterns in the sky-- all to make it right again, to make it real. When it's almost finished, and you step back to say your final goodbyes to this world. Only a touch more [d]paint[x] and it will be complete.";
		now lacuna-canvas is almost finished;
	otherwise if lacuna-canvas is mostly finished;
		say "You touch some imperceptible details into the [o]canvas[x], smudging and clarifying and coaxing until-- there-- it is almost done. [paragraph break]A change seems to come over the lodge, perhaps over yourself. You are a brush stroke away from the point of no return; from never seeing this house or the fire or the snow-capped mountains outside again[if Rume is enclosed by location].[paragraph break]From the balcony above, Rume leans forward, hands tight on the rail as if afraid of being torn from it, and you cannot bring [hisher] face into focus. Some electric potential dances in the air, some enormous weight balanced on a tipping point, ready to tumble[end if].";
		now lacuna-canvas is almost finished;		
	otherwise;
		say "You trace a final line on your canvas, and you are somewhere else.[paragraph break]It's smaller than you expected, the tree. But the wrinkled grey-white trunk, the sinuous branches with their gaping holes, are just what you painted, details between the bristles, between the molecules of paint, brought from neural twitchings to physical reality, again.[paragraph break]Turning your head, you take your first breath in this world.";
		now lacuna-canvas is finished;
		[ ends Rume-Conversation ]
	end if.

Report going from The-Tumble to Kitchen: say "You descend the curved staircase silently, following the stream as it tumbles down the slope, touching the polished wood of the banister more for comfort than balance.". Report going from The-Tumble to Your Bedroom: say "You slip quietly back into the bedroom.".

Report going from Homeworld-Studio to Kitchen: say "You step lightly over the flat stones crossing the stream." Report going from Kitchen to Homeworld-Studio: say "You step lightly over the flat stones crossing the stream." Report going from Kitchen to The-Tumble: say "You climb the stairs up to the balcony again."

Chapter - Kitchen

Kitchen is a room in Homeworld. Kitchen is south of Homeworld-Studio. The description of Kitchen is "[kitchendesc].". To say kitchendesc: say "The spacious main floor of the lodge is divided into two halves by the stream running through its center. This side is for practical things: flat countertops and spacious pine [o]cupboards[x] and a clatter of hanging pots, pans, and skewers. Rugged chairs at a small round [o]table[x] overlook the stream's tiny [o]pool[x][rumehwbit].[paragraph break][exits][tutorial-kitchen]". The exits text of Kitchen is "A slanted [d]trapdoor[x] leads to the cellar, opposite the path [d]across[x] the stream, while the staircase curves [up] to the balcony". Understand "across" or "studio" as north when location is Kitchen. The prose name of Kitchen is "the kitchen". 

Kitchen-stuff is stuff in Kitchen. Understand "lodge/halves/center/side/practical/half" as Kitchen-stuff when location is Kitchen.

A slanted trapdoor is down from Kitchen and up from Old-Tumble-Cellar. A slanted trapdoor is a door. It is closed and undescribed. Understand "cellar" as trapdoor. Understand "bring matches to cellar" or "take matches to cellar" as a mistake ("Bare matches would blow out in the drafty air down there."). 

First check opening slanted trapdoor: if Rume is attentive, say "Not while Rume is still talking. You owe [if Rume is male]him[else]her[end if] that, at least." instead; if player is not holding lamp or lamp is unlit, say "You swing the trapdoor open, but the darkness is impenetrable, and a draft of cold air billows up. You carefully latch it shut again." instead.
Check going down in Kitchen when trapdoor is closed: try opening trapdoor; if trapdoor is closed, stop the action.
Instead of examining trapdoor, try going down.
Report going from Kitchen to Old-Tumble-Cellar: say "Holding the lamp steady, you descend carefully into the frigid chill and dark of the cellar.".
Report opening trapdoor: say "You swing the groaning old trapdoor open." instead.

The front door is a setpiece in Homeworld-Studio. The description is "[one of]You swing the heavy oaken door open, pulling swirls of ice-cold air with it, and step out for a moment onto the small porch. [paragraph break]The smell of pines and indistinct snowdrifts peppered with cones and needles surround you. Above the piercing clarity of the stars shine in a cloudless sky. You stare up at them, lungs shivering in the knife-cold air, your companions through this lifelong sojourn of worlds. Not specific stars, not the changing constellations from world to world, but the stars as a whole, ever-present, fused through your life into one metacosmic night sky. [paragraph break]But you're not dressed for cold. Leaving breath crystals quivering in the air, you retreat back into warmth and shut the door[or]There's nothing out there in the cold for you tonight[stopping].". Instead of opening or going or entering or using the front door, try examining the front door. First Instead of exiting when location is Homeworld-Studio: try examining the front door. First instead of going outside when location is Homeworld-Studio: try examining the front door.

Some flat countertops are a setpiece in Kitchen. The description is "Tiny stains, nicks, and grooves speak to the many meals that have been prepared here, stretching back well before you and Rume called this place home."

Some spacious pine cupboards are an undescribed container in Kitchen. They are fixed in place. Understand "cupboard" as cupboards. Instead of opening cupboards, try examining cupboards. The description is "[one of]You swing a cupboard open and the redolent smell of wood and seasonings spills out. The cupboards are full of the minutiae of life on the edge of the alpine wilderness: jars of dried herbs and spice, coarse-woven bags of salt, sugar, and flour, decanters of oil, bins of venison and fish jerky, huge glass jars of pickled vegetables, piled bulbs of garlic.[paragraph break]You are struck suddenly with bitter futility: the months spent gathering together these comforts, the hours wasted sorting and arranging them, preparing for a life and a winter you're about to abandon forever[or]There's nothing you need from the cupboards[stopping]."  Instead of closing cupboards, say "You carefully shut them, well-oiled hinges rotating silently.".

Some supplies are a prop in Kitchen. Understand "jar" or "jars" or "dried" or "herb" or "herbs" or "spice" or "spices" or "herbs and spice" or "coarse" or "woven" or "coarse-woven" or "bag" or "bags" or "salt" or "sugar" or "flour" or "decanter" or "decanters" or "oil" or "bin" or "bins" or "venison" or "fish" or "jerky" or "huge" or "glass" or "pickled" or "vegetables" or "vegetable" or "piled" or "bulb" or "bulbs" or "garlic" or "of" or "food" as supplies when location is regionally in Homeworld. Instead of doing anything to some supplies, say "[makemeal].".

A cookery is a kind of prop. Some hanging pots are a cookery in Kitchen.  Understand "pot" as hanging pots. Some hanging pans are a cookery in Kitchen. Understand "pan" as hanging pans. Some hanging skewers are a cookery in Kitchen. Understand "skewer" as hanging skewers. Understand "profusion" or "profusion of" as pots. Instead of examining a cookery, say "They gleam dully in the glow of the fire, well-worn but spotless. Rume usually cooks, but you find some simple pleasure in the act of cleaning.". Instead of taking or using a cookery, say "[makemeal].".

Understand "food/meal/breakfast/dinner/snack" as "[foodword]". Understand "cook/make/prepare/find" as "[cook]". Understand "[cook]" or "[cook] [foodword]" as a mistake ("[makemeal].") when location is Kitchen. Instead of tasting when location is Kitchen, say "[makemeal].". To say makemeal: say "[one of]Quietly, you prepare one small, final meal in this place, burnished gleams of fire on cutlery and tiny scrapes of glass on stone, metal on metal, pottery on wood somehow taking on strange importance in the chill and silence. You quickly sate what little appetite you have, and when all is cleaned and scrubbed and returned to its proper place, the kitchen seems silent and empty, as if it's already forgotten you[or]You are no longer hungry[stopping]". 

A small round table is a setpiece in Kitchen. The description is "Just large enough for three: Rume, yourself, and the odd trapper or trader who spies the smoke of your fire and feels a need for warmth, food, and companionship.". Check touching small round table: say "The old table is wobbly and stained with the lives of many past occupants, its surface rough and pitted. Rume has talked about building a new one in the spring. But now things have changed." instead. Check entering small round table: try entering rugged chairs instead.

Some rugged chairs are a prop in Kitchen. Understand "chair" as rugged chairs. The description is "These worn chairs, assembled by some previous owner without much eye for craftsmanship, will need to be replaced soon." Instead of entering some chairs, say "You sit for a moment at the old table, but your mind races. Visions and images dance inside you, and you know the moment you touch brush to canvas they will crystallize, coalesce into the scene you must paint-- the world you are Called to.[paragraph break]Restlessness drives you to your feet again[tutorial-typeverbs]." Does the player mean entering some chairs: it is likely.

A small pool is an undescribed backdrop. It is in Kitchen, Homeworld-Studio, and The-Tumble. Understand "tiny" or "pools" as the small pool. The description is "At the base of the small cliff, the stream tumbles into a small pool before continuing across the floor of the lodge." Instead of touching the small pool, try touching the stream. Instead of tasting the small pool, try tasting the stream. Instead of entering or swimming in the small pool, try vague swimming. Does the player mean tasting the stream: it is likely. Instead of vague swimming when small pool is visible: say "The pool is too small and cold for swimming, but on warmer nights it feels good to sit on the curved edge where the wooden floorboards meet its rocky lip, and soak the day's cares from your feet[tutorial-typeverbs]." instead.


Chapter - Cellar

[ This is just a quick bonus area for people who found the matches.]

Old-Tumble-Cellar is a room in Homeworld. "The great pillars of the lodge loom large in this cellar, a cold, empty space now that you and Rume have finally finished cleaning it out. The floor is stained and peppered with browning pine needles and ghosts of rotting foodstuffs left by residents long gone.[paragraph break]Behind the steep stairs back [up] to the Kitchen is a bone-cold rock wall, on which hangs [if homemade outfit is not worn]your traveling [o]clothes[x] and [end if]a mounted grey moose [o]head[x][tutorial-cellar].". The printed name of Old-Tumble-Cellar is "Tumble Cellar". The prose name of Old-Tumble-Cellar is "the cellar".

The grey moose head is a setpiece in Old-Tumble-Cellar. The description is "Its mangy fur is not that attractive; its rack not of a size to impress. But on cold nights when you come down here to stare into its blank dead eyes, you remember what it means to you, hanging on the wall of your home.[paragraph break]Your home.[paragraph break]And in a sudden shattering you live that night again: staggering through the woods while the old trapper died, despite all Rume's care could do; confusion and doubt echoing through you at the thought that here, perhaps, was your chance, your one chance to give up everything you'd shaped your life around, and get back everything you'd given up. As you stared at the dying moose, its blood seeping into the snow, you thought you'd decided. Decided to stay.[paragraph break]But the Call has hit you strong, like a current of cold electricity. Perhaps you never did decide. Perhaps you only put off the choice until another cold and lonely night. And now once again you stare into the eyes of the stiff grey creature and wonder.". Instead of hugging or touching moose head, say "The fur is stiff and ice-cold.". Instead of taking moose head, say "No. It too will remain, once you have gone.".

Report going from Old-Tumble-Cellar to Kitchen: say "Shivering, you climb the steps back into the kitchen, shutting the trapdoor behind you with a heavy groan.".

The homemade outfit is a wearable undescribed thing in Old-Tumble-Cellar. Understand "threadbare" or "traveling" or "clothes" as outfit. The description is "[if The-Path-Of-Love has happened or The-Path-Of-Love is happening]You've passed through several sets of clothes in your years at the Tumble, and always made them yourself, for reasons you could never quite explain[else]Years and worlds ago you stitched these clothes, crude but now comfortable, broken in, one of the few familiar trappings of your schizophrenic life. They come with you, each time you Wayfare, because you made them yourself, with your own hands. And only because of that[end if].". Instead of touching homemade outfit: say "The familiar threads are as comfortable and well-worn as a good pair of boots.".

First report wearing homemade outfit when location is regionally in Homeworld: say "With hands steady on the surface but somehow trembling deep within the bone, you take down the old battered clothes with something like reverence. As you slip into them you can already feel yourself start to let this world go, and the Call itches more deeply, turning your mind to the next world you must paint, the next place to be." instead.

First report taking the homemade outfit when the homemade outfit is not worn:
	try wearing the homemade outfit;
	if homemade outfit is worn, stop the action.

Instead of taking off homemade outfit when location is regionally in Homeworld: say "Now that you wear them again, you can't imagine yourself without them.". 

After wearing homemade outfit: remove bathrobe from play; continue the action.

The printed name of outfit is "traveling clothes". The indefinite article of outfit is "your".
	
Chapter - Conversation with Rume

Rume is a person. 

Rume-Conversation is a scene. Rume-Conversation begins when lacuna-canvas is mostly finished.  

When Rume-Conversation begins:
	now Rume is awake;
	move Rume to Homeworld-Studio;
	now Rume is holding a sikar.

Rume-Conversation ends when lacuna-canvas is finished. 

When Rume-Conversation ends:
	post-conversation processing;
	change the time of day to 10:12 AM;
	remove Rume from play;
	remove the paintbrushes from play;
	remove wooden band from play;
	remove flintlock pistol from play;
	remove dead hare from play;
	remove matches from play;
	if final release mode is true or milestone mode is true, determine gameplay mode;
	begin chapter 2;
	move player to Fork.	

A sikar is a prop.

Instead of greeting Rume when Rume is awake and we have not discussed rc_greet, say "[CHeShe] looks down at you silently, ignoring your acknowledgement.". Instead of kissing or hugging when location is regionally in Homeworld and Rume is awake and we have not discussed rc_greet, say "You move towards the steps, but Rume holds up a hand to stop you.".

 Instead of touching Rume when Rume is awake, try hugging Rume.

RC is a thread.

Every turn when Rume-Conversation is happening and the time since Rume-Conversation began is at least 1 minute and Rume-Conversation is happening and we have not discussed rc_greet: now Rume is attentive; now tempfuse of rc_greet is 5; try discussing rc_greet.

rc_greet is an exciting beat in RC. The reaction is "Rume [if the awake-examined of Rume is 1]examines you in return, thoughtful, [hisher] expression unreadable[otherwise if lc_painting_flag is 1]crosses [hisher] arms and shifts on the landing, drawing your attention from the painting[otherwise]puffs [hisher] sikar, staring at you with an unreadable expression[end if]. [rumegreet2].'". To say rumegreet2: say "'No goodbyes from a [rc_call], then,' [heshe] says in a quiet voice that hangs heavy nonetheless among the wooden rafters, seeping only reluctantly to the level of your ears. 'No scenes, no protests. Yes, I understand. The way of your [rc_kind], I imagine; a quiet departure in dim night, [rc_sneak] away to new dawns in new worlds, fresh and unspoiled.'

[CHeShe] lowers one hand to the railing and grips it calmly, but [hisher] knuckles are white. 'An [rc_easiest] road,' [heshe] adds, 'for the [if player is female]wo[end if]man I thought you were". rc_greet suggests rc_rant.

Understand "kind/people" as rc_kind when last beat is in RC. rc_kind is a dogged beat in RC with keyword name "people" and reaction "Your people.[paragraph break]How can you explain to [himher] that you have no people, no kind, no customs or culture? That each of you is lost, alone in the sea of probability, and the few haphazard moments when two wayfarers meet are the only hope of finding some connection, some meaning...[paragraph break]But Rume's eyes are locked on yours, awaiting a response.". rc_kind suggests rc_rant. 

Understand "easiest/easy/simplest/road" as rc_easiest when last beat is in RC. rc_easiest is an insistent beat in RC with keyword name "easy" and reaction "'Easiest for someone, yes,' Rume muses, [sikar business]watching you. 'But for whom? The one who [t]wayfares[x]? Or the one [if player is male]he[otherwise]she[end if] [t]leaves[x] behind?'". rc_easiest summons rc_easyplayer, rc_easyrume, rc_easyboth, rc_consequences. rc_easiest suggests rc_easynoanswer. rc_consequences replaces rc_easiest. Instead of saying both when last beat is rc_easiest, try discussing rc_easyboth. Instead of saying neither when last beat is rc_easiest, try discussing rc_consequences.

rc_easynoanswer is a beat in RC with reaction "Rume smiles, and how hard it is to see that expression come so forced, so painfully to [hisher] lips. 'I understand,' [heshe] says again, soothingly. 'The way of the world. Water flows downhill, fires spread, the strong are cruel. What poet or fool thinks mankind can escape such inevitability?'". rc_easynoanswer enqueues rc_doimatter.

Understand "wayfarer/wayfares" as rc_easyplayer when last beat is rc_easiest. rc_easyplayer is a beat in RC with keyword name "wayfares" and reaction "Smoke billows from Rume's mouth, vanishing into the wooden beams of the rafters, and [heshe] stares at you for a long, long moment, unblinking.

Finally [HeShe] sighs, aching and long, and breaks the gaze to stare deep into the fire. 'No,' [heshe] murmurs, 'of all things, you have never been a liar. I take comfort in that. I have always had truth from you. That will stay when you go, where lies would not.'". rc_easyplayer enqueues rc_doimatter. 

Understand "left/leaves" as rc_easyrume when last beat is in RC. rc_easyrume is a beat in RC with keyword name "leaves" and reaction "Rume smiles, and how hard it is to see that expression come so forced, so painfully to [hisher] lips. 'So many things you've learned, my love,' [heshe] says in a voice almost a whisper, 'in your lonely sojourn across the worlds. And so many things you have not.'". rc_easyrume enqueues rc_consequences.

rc_easyboth is a dogged beat in RC with keyword name "both" and reaction "'No,' Rume says, 'it is either one or the other. Answer me.'". 

Understand "sneak/sneaking/steal/stealing" as rc_sneak when last beat is in RC. rc_sneak is a beat in RC with keyword name "stealing" and reaction "'Yes,' says Rume, considering, 'that seems to me the right word for it. Why? Does it not agree with you? Its connotations of thievery, of disloyalty, of betrayal, perhaps, seem somehow inappropriate? Apologies. It was the first that came to mind.'". rc_sneak enqueues rc_consequences.

Understand "care" as rc_rant when last beat is in RC. rc_rant is an insistent beat in RC with keyword name "no" and reaction "Rume stares into you, that curious, comforting face pensive, troubled, the silence broken only by the muttering of the fire. 'Somehow I never expected this,' [heshe] murmurs as if to [himher]self, 'and I always believed you, love, your mad stories, even before I first saw you paint. But somehow I always thought you'd stay, that somehow I had the power to...'[paragraph break][CHeShe] breaks off, turning [hisher] head away sharply. When [heshe] speaks again it is with a louder, angrier voice. 'But you knew from the beginning, didn't you. That one day you would leave me behind.'". rc_rant summons rc_rantyes, rc_persuade, rc_rant2. rc_rant suggests rc_rant2. rc_cantgo replaces rc_rant. The maybe-beat of rc_rant is rc_rant2. The no-beat of rc_rant is rc_persuade. The yes-beat of rc_rant is rc_rantyes.

rc_rantyes is a beat in RC with keyword name "yes" and reaction "How can you admit such a thing? How can you say it, even to yourself? And yet there is no need; Rume sees it in your eyes, long before you've found a way to say it with words.". rc_rantyes enqueues rc_lonely. 

rc_lonely is a beat in RC with keyword name "[if last beat is rc_helpless]no[otherwise]maybe" and reaction "'Then I [t]pity[x] you, wayfarer,' [heshe] says sadly, 'always laying down your head in a place that does not quite feel like home, never knowing a [t]friend[x] who grows beyond green shoots into strength and health. A lonely life.'". rc_lonely summons rc_pity, rc_friendship. rc_lonely suggests rc_rant. rc_bitterouttro replaces rc_lonely. rc_lonely cancels rc_bitterouttro, rc_cantgo, rc_helplessyes. After discussing rc_lonely: now rc_rant2 is spoken; continue the action. [ That beat also deals with pity and friendship, so we don't want to see them both in one conversation.]

Understand "pity" as rc_pity when last beat is in RC. rc_pity is an ephemeral beat in RC with keyword name "pity" and reaction "Rume nods. 'Every gift comes with a curse, love. There are peoples for whom the two words are the same. Yours is terrible and great, and though your life brims with excitement, with magic, I would not have it for the world.'".

Understand "friendship/friend/friends" as rc_friendship when last beat is in RC. rc_friendship is an insistent beat in RC with keyword name "friend[if last beat is rc_rant2]s" and reaction "'Where are they now, your friends?' Rume asks, ragged with frustration and anger. 'Those worlds you left behind, do they still exist? Why waste your time in friendship when in one moment you can revoke the past from your life? Why? Do you believe those wasted hours and years were somehow worthwhile?'". rc_friendship summons rc_goodfriends, rc_doimatter. rc_friendship suggests rc_lonely. The yes-beat of rc_friendship is rc_goodfriends. The no-beat of rc_friendship is rc_doimatter.

rc_goodfriends is a beat in RC with keyword name "yes" and reaction "Rume considers this for a long time; you cannot tell what [heshe] is thinking.[paragraph break]'Yes,' [heshe] finally says, 'I suppose they were. For those you leave behind, at least. But for you?'". rc_goodfriends enqueues rc_doimatter.

rc_persuade is a beat in RC with keyword name "no" and reaction "How can you tell [himher], convince [himher] that these past months have not been a ruse? That you've struggled, fought against your nature, wanting more than anything to stay? That if the Call had not come... but it did, [if we chose art]and you responded to it at once, almost without thinking, ready to leave someone you've grown to love in an instant[otherwise]and though you fought against it, fought to stay with this soul you've grown to love, it still pulls you, entices you, in a way you cannot deny[end if]?". rc_persuade enqueues rc_cantgo. 

To decide whether children are possible: if ( yourself is male and Rume is female ) or ( yourself is female and Rume is male ) , decide yes; decide no.

rc_cantgo is a beat in RC with keyword name "yes" and reaction "For a long moment you stare at each other, until Rume breaks the gaze to stare searchingly into the sloping skylights, still black with night, and you know [heshe] is thinking, searching for some way [heshe] can come with you.

And you know there is none. Only a Wayfarer wayfares. Only the things [if player is male]he has created and touches go with him[otherwise]she has created and touches go with her[end if]. And there is no going back.

You've told [himher] before, and [heshe] hasn't forgotten. And at last [heshe] nods, to [himher]self, and pauses for a moment, as if gathering the right words to go on.". rc_cantgo suggests rc_stay. rc_cantgo summons rc_stay. rc_stay replaces rc_cantgo. 

rc_stay is a terminal beat in RC with keyword name "wait" and reaction "Quickly [heshe] tosses something down to you. In midair you realize what, and a weight seems to fall on you so that when you catch it, you're surprised it's so light.[paragraph break]'You say only what you've made with your own hands and touch goes with you when you go,' [heshe] breathes. 'So I give you the [o]bracelet[x] you made for me. If you would truly leave me forever, then wear it, to remember me by.'[paragraph break][CHeShe] steps forward, gripping the railing tightly. 'But there is another way. I cannot go, but you do not have to. Stay. Ignore the Call. If you keep moving on, running away from roots and foundations, this wayfaring will strip all meaning from your life and leave you a cold and lonely shadow. And I do not want that for you.'[paragraph break]'Come [d]up[x] and return the bracelet to me, if you choose to stay,' Rume says, 'or [d]wear[x] it and paint, if you choose to go. Or [d]burn[x] it, I suppose, if you wish for all trace of me to vanish. Choose. I will wait.'". After discussing rc_stay for the first time: now player holds Rume's bracelet; have the parser notice Rume's bracelet; continue the action. rc_resignedouttro replaces rc_stay. 

rc_mustchoose is a repeatable terminal beat in RC with reaction "[if bracelet is not worn by player and bracelet is on-stage]'No, love,' Rume says, 'you must choose. Come [d]up[x] to me to abandon your power and stay with me, or [d]wear[x] the bracelet to remember me by and paint your way into some other world, or [d]burn[x] it and paint and forget me.'[else]Your last conversation with Rume has ended. There is only one path forward now.[end if]".

rc_goup is a beat in RC with keyword name "up" and reaction "You move to the stairs, but Rume pauses, breathing deeply. 'Wait,' [heshe] says, 'think. Know what you give up for me. Believe it in yourself. Tell it to your soul. Then, if that truly is your decision...' [CHeShe] trembles, whispering. 'Then yes, come [t]up[x] to me, and let us start our life together at last.'". rc_goup2 replaces rc_goup.

rc_goup2 is a terminal beat in RC with keyword name "up" and reaction "The vastness of the distance up the stairs seems enormous, each step requiring herculean effort. But they get easier. Each time you lift your foot,  some force within you rips, snaps open, like seed pods bursting at the first breath of spring, or signal flares igniting, light to show the way through storms.[paragraph break]You take the last few steps in a single bound and fall upwards into Rume's arms, floodgates of something you've never felt bursting forth inside you. You hold each other for long minutes, almost too tight to breathe, till finally you slip the bracelet back on [hisher] wrist.[paragraph break][Cheshe] kisses you deeply, then pulls you back into the loft. There are still hours to morning, when your life will finally, finally begin.". After discussing rc_goup2: if topics-window is g-present, shut down topics-window; move player to Old Tumble, without printing a room description; miss Rume a lot.

rc_wontstay is a beat in RC with keyword name "no" and reaction "Some part of you wants with all its heart to stay, but another part, the stronger part, knows it would be a lie.[paragraph break]You cannot stay. You must move forward. Move on. Wayfare. Always.[paragraph break]You slip the bracelet on, and Rume closes [hisher] eyes.". rc_wontstay enqueues rc_rant2. 

rc_rant2 is a beat in RC with keyword name "maybe" and reaction "'How many worlds have you moved through, wayfarer?' Rume sighs. 'How many [t]friends[x] have you sacrificed? Will you ever stop moving? I [t]pity[x] you, alone, always alone.'". rc_rant2 summons rc_pity, rc_friendship. rc_rant2 suggests rc_stay. rc_whycall replaces rc_rant2. rc_rant2 cancels rc_reallystay, rc_wontstay, rc_persuade, rc_rantyes, rc_lonely.

rc_resignedouttro is a terminal repeatable beat in RC with reaction "'Now paint,' [heshe] says, 'you are almost finished. I will stay to watch you go. But our words are finished now. Anything you have left to say, you must say it without them.'[paragraph break][CHeShe] gives you one, last look, the blue of [hisher] eyes piercing even in the gloom. 'Goodbye, wayfarer. May you find what you seek. And know it, when you do.'".

The player wears a wooden band. Understand "twin" as wooden band. The description of wooden band is "The symbol of commitment is always a circle. On some worlds they are rings, tiny bands with homes on varying fingers; elsewhere they are necklaces or circlets. Here they are a little different, signifying more strong fondness than promise, but the exchange still has meaning. Your band was made by Rume, carved from ashwood and polished smooth[rumebandbit].". To say rumebandbit: unless player holds Rume's bracelet or player wears Rume's bracelet or Rume's bracelet is off-stage, say ". [if Rume is male]He[else]She[end if] wears the one you made for [if Rume is male]him[else]her[end if]". Check burning wooden band: remove wooden band from play; dis Rume; say "You set it gently in the fire, and in moments, it is a flaming circle, turning slowly to ash." instead. Check dropping wooden band: say "No need; when you wayfare, it will not come with you, but remain here." instead. Understand "put band on table" as a mistake ("When you wayfare, it will remain here, and any who seek to find it, will.") when location is Old Tumble.

Instead of painting when Rume-Conversation is happening and Rume is attentive, force discuss rc_nopaint.  Instead of examining front door when Rume-Conversation is happening and Rume is attentive, force discuss rc_nopaint.

To say Rumeoutburst: say "[one of]Rume suddenly hurls something concealed in [hisher] hand and you pull back with a start. It smashes against the wood panelling at your feet with a sound that unnaturally loud in the resonant space. Looking down, you see amidst the broken frame the [o]sketch[x], two hands entwined, that Rume made when first you made this place your home.

But when you look up again [heshe] is calm, as if all fury was spent in that single act of destruction[movesketchtoloc][or]Rume suddenly smashes [hisher] hand against the railing, hard. It quivers, but holds[stopping]". To say movesketchtoloc: move framed drawing to location.

rc_nopaint is an insistent beat in RC with reaction "You turn away, but [Rumeoutburst].

'All these months together,' [heshe] says in a level tone, 'and you would turn away from our last conversation? You owe me that, at least, in payment of my time. Tell me, then. Do I matter to you at all? Did I ever?'". rc_nopaint summons rc_rant, rc_bitterouttro, rc_lonely. rc_bitterouttro replaces rc_nopaint. rc_nopaint suggests rc_rant2. The maybe-beat of rc_nopaint is rc_lonely.

rc_nophysical is an ephemeral beat in RC with reaction "You start to walk up the stairs, but Rume's face darkens and [heshe] draws back. 'No, love' that gentle voice says [if we chose love or we chose both]sadly. 'No, not now. I would remember your touch as it was earlier tonight. Not now, splintered, roughened by the tool you would use to cut me from your life forever[otherwise]angrily. 'No, you made a choice already this night, to touch me or your canvas, and we know what you chose[end if].' [CHeShe] straightens. 'We will speak on my terms,' [heshe] says, 'not yours. And I like it up here for now.'". rc_goodbye2 replaces rc_nophysical.

Instead of attacking or pushing when Rume-Conversation is happening and Rume is attentive, force discuss rc_attack.

rc_attack is a terminal beat in RC with reaction "You climb the steps, anger flushing your face, and raise your hand in fury, but before you can strike Rume grabs it and strikes you across the face with [hisher] other. You stumble backwards down the steps and land hard, one leg flaring with pain as it twists beneath you.[paragraph break]Silently Rume returns inside the loft, returning a moment later dressed for cold. Without a word, [heshe] descends the stairs and walks to the door.[paragraph break]'Goodbye, wayfarer,' Rume says quietly, then opens the door and disappears into the night, leaving only a plume of frigid air dancing with crystallized snowflakes.". After discussing rc_attack: remove Rume from play; dis Rume a lot; now the player is wounded.

Instead of saying farewell to when Rume-Conversation is happening and Rume is attentive, force discuss rc_goodbye.

rc_goodbye is an ephemeral beat in RC with reaction "'Yes, well,' Rume says, studying the grain of the railing, 'words are not your gift, are they? Goodbyes and apologies may be all you have left, but I have other words. They are all I can send with you. So keep your words, and listen. Listen to mine.'". rc_goodbye enqueues rc_consequences. rc_goodbye2 replaces rc_goodbye.

Understand "neither" as rc_consequences. rc_consequences is an insistent beat in RC with keyword name "neither" and reaction "'[if we chose art]I felt you pull away from me, tonight,' [heshe] says, drawing a measured breath. 'But I did not dream how far you meant to go. Have I become a burden for you, a chore? Your love for me has died?[otherwise]Just hours ago you were in my arms,' [heshe] says, drawing a measured breath. 'And there was no thought in my mind that before the dawn you might be gone. What happened, my love? Have you lost interest in me, in some poor, awkward soul stuck to one small world for all [hisher] life? Will you seek more exciting lovers in natal worlds, fresh and unburdened by memory?[end if]'[paragraph break]How can you answer such questions? With a simple [t]yes[x] or [t]no[x]? Or do you try to explain the life of a [rc_call] to someone who has never, can never feel it?". rc_consequences summons rc_meananswer, rc_rant, rc_call. The no-beat of rc_consequences is rc_rant. The yes-beat of rc_consequences is rc_meananswer. rc_consequences suggests rc_doimatter. rc_rant replaces rc_consequences. 

rc_goodbye2 is a repeatable ephemeral beat in RC with reaction "'[one of]Stop[or]No[or]Please[in  random order],' Rume says[if a random chance of 1 in 2 succeeds] with a weary tone[end if], '[one of]just let me speak[or]your time is running out[or]there's no point[in random order].'". The unavailable-beat of Rume is rc_goodbye2.

rc_meananswer is a beat in RC with keyword name "yes" and reaction "[Rumeoutburst].". rc_meananswer enqueues rc_doimatter.

Instead of saying sorry when Rume-Conversation is happening, force discuss rc_goodbye.

Understand "call/wayfare/wayfarer" as rc_call when last beat is in RC. rc_call is a beat in RC with keyword name "wayfarer" and reaction "'Yes,' Rume says musingly, [sikar business]'you've told me before. The Call. Such a romantic, fantastic notion. A beacon that pulls your [t]people[x] across worlds, across universes. In times of need,' [heshe] adds reflectively, staring into the empty space in the empty center of the lodge, lost.". rc_call enqueues rc_whycall. rc_call summons rc_kind. 

rc_whycall is an insistent beat in RC with reaction "'But why do you answer it?' [heshe] says suddenly, bluntly. 'This Call. There are those in this world who [t]need[x] you as much. Why? Some sense of [t]duty[x]? The promise of [t]adventure[x]? Or are you simply [t]helpless[x] to resist?'". rc_whycall summons rc_duty, rc_adventure, rc_helpless, rc_need. rc_whycall suggests rc_rant2. rc_rant replaces rc_whycall.

Understand "adventure" as rc_adventure. rc_adventure is a beat in RC with keyword name "adventure" and reaction "Rume closes [hisher] eyes. 'Yes,' [heshe] says, 'what a life it must be. I can see it. Always turning the page to new adventures, new friends; your problems and troubles only ephemeral things, as easy to erase as an hour with a canvas and brush.' [CHisHer] eyes open, slowly. 'Just like a story. But unsatisfying, somehow. Unreal. False.'". rc_adventure enqueues rc_doimatter. 

Understand "duty" as rc_duty. rc_duty is a beat in RC with keyword name "duty" and reaction "Rume studies you for a long moment.[paragraph break]'Yes,' [heshe] says finally, taking a deep breath, 'in a life like yours, the only allegiance a sane [if player is male]man[otherwise]woman[end if] could have is to [if player is male]him[otherwise]her[end if]self, and others like [if player is male]him[otherwise]her[end if].' [CHeShe] nods once, slowly. 'For those around you are mere shadows, destined always to fade away, never to stay, never to be woven into the fabric of your life. Only brushed at intervals from the threads.'". rc_duty enqueues rc_doimatter.

Understand "helpless" as rc_helpless. rc_helpless is an insistent beat in RC with keyword name "helpless" and reaction "Rume looks down at the floor, flexing a bare toe, frowning. 'So unlike you,' [heshe] says, 'or the one I thought you were before tonight. If what you say is true then you are a slave, your free will lost in the eye of a terrible storm, a power you have lost the will to control.'[paragraph break][CHeShe] looks up at you, and adds 'Tell me. Would you give it up if you could?'". The no-beat of rc_helpless is rc_lonely. The maybe-beat of rc_helpless is rc_lonely. The yes-beat of rc_helpless is rc_helplessyes. rc_helpless suggests rc_rant2. rc_resignedouttro replaces rc_helpless. 

rc_helplessyes is a beat in RC with keyword name "yes" and reaction "Rume looks at you sharply. 'So you say,' [heshe] says, 'but deed weighs more than dream.'". rc_helplessyes enqueues rc_cantgo. 

Understand "need" as rc_need. rc_need is a dogged beat in RC with keyword name "need" and reaction "Rume looks away for a moment, as if [heshe] regrets the choice of word, but then looks back into your eyes more firmly. 'Yes,' [heshe] says, 'Perhaps there are those under your own roof who need you. Perhaps they should have told you before this night, but the past is set and fired. Now answer my question.'".

rc_bitterouttro is a terminal beat in RC with keyword name "no" and reaction "Rume's face becomes cold. 'Paint, then,' [heshe] says, waving a hand dismissively. 'Paint your way from here. When you are gone, I shall unbuild this lodge we claimed, log by log, and scatter the stones into the forest, and when the snow melts all that will remain is the stream and the woods. I shall move on as well, and our past will be erased from my life as it will be from yours.'[paragraph break][CHeShe] pulls back into the shadowed frame of the doorway. 'Paint, wayfarer,' [heshe] repeats. 'Even I can see you are not quite finished.'". After discussing rc_bitterouttro: dis Rume; continue the action.

rc_doimatter is an insistent beat in RC with keyword name "no" and reaction "[CHeShe] considers [hisher] next words carefully, forming them in [hisher] head the way you've seen [himher] do so many times before, before finally speaking.[paragraph break]'Tell me, wayfarer,' [heshe] says. 'Do you care for me?'". The yes-beat of rc_doimatter is rc_cantgo. The no-beat of rc_doimatter is rc_bitterouttro. The maybe-beat of rc_doimatter is rc_lonely. rc_rant replaces rc_doimatter. rc_doimatter suggests rc_stay.

To say sikar business: say "[one of]taking another savage pull at the sikar, [or]raising the sikar to [hisher] lips again, [or]putting out the sikar, [or][stopping]".

rc_romanticbye is a terminal beat in RC with reaction "You quickly climb the steps. [if rc_bitterouttro is spoken]Rume pulls back, avoiding your glance, but you come to [himher] and touch your hands to [hishers]. Trembling with rage, impotence, fear, they nonetheless finally grip yours as tight as you grip back[otherwise]Rume stands solid, the firm fierce rock you've depended on this past year, and only as you take [hisher] hands in yours do tears at last seep through. And in that moment as Rume grips you tight you know [heshe] has let you go, has begun to heal, and your own remembered losses well up[end if] and you know what this is, or remember. What it is to lose.[paragraph break]Finally [heshe] kisses you one last time. It seems over far too soon but will linger in memory, for long years.[paragraph break]You look into the deep of Rume's blue eyes, wondering as always what [heshe] sees in yours, and knowing you will never know. Then you turn, and descend the stairs, and take up your brush once again.". rc_romanticbye2 replace rc_romanticbye. After discussing rc_romanticbye: miss Rume; continue the action.

rc_romanticbye2 is a repeatable beat in RC with reaction "You've said your goodbye. Now it's time to go. To wayfare.".

After going when Rume-Conversation is happening and Rume is on-stage and The-Path-Of-Love is not happening: move Rume to location; if we have not discussed rc_stay, now Rume is attentive; continue the action.


Instead of greeting when Rume-Conversation has happened and Rume is idle and location is regionally in Homeworld: force discuss rc_mustchoose. 

Instead of exhausting when Rume-Conversation is happening and Rume is enclosed by location: say "'Please, my love,' Rume says, 'there are other things to say.'".

[ Resolution.]

Touching Rume is making amends. Hugging Rume is making amends. Kissing Rume is making amends.

Instead of saying farewell to or saying sorry when Rume-Conversation is happening and Rume is idle and Rume is on-stage: try kissing Rume.

[ During the conversation, block physical actions with a "not yet" beat.]
Instead of making amends when Rume-Conversation is happening and Rume is attentive (this is the block making amends rule): force discuss rc_nophysical. First check going up when Rume-Conversation is happening and ( Rume is attentive or rc_greet is unspoken ) : try kissing Rume instead.

[ After the convo but before deciding, physical actions produce a "no, you must choose first" message.]
Instead of making amends when Rume-Conversation is happening and Rume is idle and Rume is on-stage and bracelet is not worn by player and bracelet is on-stage and rc_greet is spoken (this is the must choose first rule): force discuss rc_mustchoose. Instead of giving wooden band to Rume when Rume-Conversation is happening and Rume is idle and Rume's bracelet is not worn by player: force discuss rc_mustchoose.

[ After deciding to leave, physical actions trigger a goodbye scene.]
Instead of making amends when Rume-Conversation is happening and Rume is idle and Rume is on-stage and bracelet is worn by player (this is the allow saying farewell rule): force discuss rc_romanticbye. First check going up when Rume-Conversation is happening and Rume is idle and Rume is on-stage and bracelet is worn by player: force discuss rc_romanticbye instead.

[ After Rume has offered to stay, understand going up as accepting this offer. ]
To decide whether choosing destiny: if Rume-Conversation is happening and Rume is idle and Rume is on-stage and bracelet is not worn by player and rc_bitterouttro is not spoken and rc_greet is spoken and ( location is Homeworld-Studio or location is Kitchen ) , decide yes; decide no.
First check going up when choosing destiny: force discuss rc_goup instead. First instead of giving Rume's bracelet to Rume: force discuss rc_goup instead. Check giving paintbrushes to Rume when choosing destiny: force discuss rc_goup instead.

[ Prevent going up at all if things ended badly.]
First check going up when Rume-Conversation has happened and ( Rume is off-stage or rc_bitterouttro is spoken ) and location is regionally in Homeworld: say "There is nothing left for you up there any more." instead.

[ Trying to give the player's band to Rume before the offer fails; afterward it gets Rume points.]
Instead of giving wooden band to Rume when location is Your Bedroom: say "Not now. If there is to be an exchange of gifts, it will be when you both are awake, before you go.".
Instead of giving wooden band to Rume when Rume-Conversation is happening and Rume is idle and Rume's bracelet is worn by player and rc_greet is spoken:
	say "You pull the band Rume made for you, from your wrist and hold it up to [himher].[paragraph break]For a long moment, [heshe] stares at it, as if afraid or unsure.[paragraph break]Then, finally, [heshe] holds out [hisher] hand. Slipping it on, [heshe] runs a finger along the line of your delicately carved wood, then nods, once, and lowers the hand.[paragraph break]'Thank you,' [heshe] says. 'I will remember you, too.'";
	remove wooden band from play;
	miss Rume.

[ Wearing the bracelet signifies moving on.]
After wearing Rume's bracelet for the first time:
	if location is regionally in Homeworld and The-Path-Of-Love is not happening:
		pre-conversation processing;
		force discuss rc_wontstay;
	continue the action.

Report wearing Rume's bracelet for the first time:
	if The-Path-Of-Love is happening or Rume is off-stage or location is regionally in Lacuna, say "You slip the bracelet carefully onto your wrist. Heavier than you expected." instead;
	else do nothing instead.

[ Burning the bracelet is bad mojo.]
Instead of burning Rume's bracelet: say "You toss the bracelet into the fire. Its old, dry wood catches quickly, and it burns bright and hot."; remove Rume's bracelet from play; dis Rume a lot; force discuss rc_bitterouttro.






Part - Stories and Puzzles

To decide whether we guess the player likes puzzles:
	let ctr be 0;
	[ The game never mentions inventory and it is not strictly needed. If we try taking inventory, we're probably an IF vet and more used to puzzles.]
	if we have taken inventory, increase ctr by 1;
	[ The winter boots are not mentioned in the main room description, but in a sub-description. If we examine them, we're probably examining a lot of things, and are more likely to do well with puzzles. ]
	if enough shit was examined, increase ctr by 1;
	[ If we got to the cellar, that means we noticed the matches, used them to light the lamp, and went down into the cellar, indicating we have more than a short term memory and an interest in solving problems. ]
	if Old-Tumble-Cellar is visited, increase ctr by 1;
	if ctr is at least 2, decide yes;
	decide no.

To decide whether enough shit was examined:
	let shitctr be 0;
	if we have examined pairs of winter boots, increase shitctr by 1;
	if we have examined framed drawing, increase shitctr by 1;
	if we have examined trinkets, increase shitctr by 1;
	if we have examined tumble-books, increase shitctr by 1;
	if we have examined pine cupboards, increase shitctr by 1;
	if shitctr is at least 3, decide yes;
	decide no.

To determine gameplay mode: 
	print a section break;
	say "[as the parser]Tutorial: During the first chapter, you [if we have taken inventory]took inventory[else]mostly stuck to commands from the tutorial[end if], [if enough shit was examined]examined many minor scenery items[else]mostly ignored minor scenery items[end if], and [if Old-Tumble-Cellar is visited]solved a basic puzzle[else]mostly left the trapdoor alone[end if]. Based on these actions, you might prefer to continue in ";
	say "[if we guess the player likes puzzles]puzzle mode, which includes more challenging obstacles to overcome in the tradition of adventure games. The other option, story mode, simplifies the puzzles and provides more opportunities to skip them[else]story mode, which simplifies adventure game puzzles and presents more chances to bypass them entirely. The other option, puzzle mode, includes more challenging obstacles to overcome and problems to solve, without altering the story in any way[end if]. However, the choice is up to you.[paragraph break]Would you prefer to continue in [d]story[x] mode or [d]puzzle[x] mode? [as normal]";   
	if story mode is selected begin;
		now drama manager is storied; [ Scenes in various modules are triggered by this change.]
	otherwise;
		now drama manager is puzzled;
	end if.

To decide whether story mode is selected: 
    (- Question('story','S//','un.t','puzzle','P//','un.y') -)

Include (-
[ Question pos1 pos2 pos3 neg1 neg2 neg3 i; 
    for (::) {
if (location ~= nothing && parent(player) ~= nothing) 
DrawStatusLine();
KeyboardPrimitive(buffer, parse); 
        i=parse-->1; 
        if (i==pos1 or pos2 or pos3) rtrue; 
        if (i==neg1 or neg2 or neg3) rfalse; 
        print "Please choose ", (address) pos1, " or ", (address) neg1, ". > "; 
    } 
];
-)


Part - Staying With Rume


The-Path-Of-Love is a scene. The-Path-Of-Love begins when location is Old Tumble. The-Path-Of-Love ends when location is not regionally in Homeworld and location is not a flash-room.

kidismale is a truth state that varies. To say kidsname: if kidismale is true, say "Jurriaan"; otherwise say "Archana".

When The-Path-Of-Love begins:
	print a section break;
	move easel to Old Tumble;
	move paintbrushes to Old Tumble;
	move Rume's bracelet to Old Tumble;
	move lacuna-canvas to Old Tumble;
	now paintbrushes is undescribed;
	remove Rume from play;
	now player wears wooden band;
	remove matches from play;
	remove oil lamp from play;
	post-conversation processing;
	if topics-window is g-present, shut down topics-window;
	say "And time seems to speed up, flowing faster and faster till the leaves and foam that once drifted by becomes a blur and blue";
	process blue flash.


The North Vale is a room in Homeworld. The description is "The trees crowd thick here in this vale that has always been good hunting grounds, nestled between two rocky slopes.[paragraph break][exits].". The exits text of North Vale is "The path back [down] to home is behind you".

A large hare is an animal in the North Vale. "Before you, in a clearing, a large [o]hare[x] grazes unconcernedly on tufts of summer grass[if player holds flintlock pistol][one of]. You raise the worn flintlock pistol to your shoulder carefully[or]. You sight along the flintlock pistol, holding your breath[stopping][end if].". The description is "You'd hoped to see deer this morning, but they seem later than usual in returning to the vale this year. The hare will only provide one good meal, but anything is better than unthawing more greying venison from last season.". After going to The Giant's Table when large hare is on-stage: remove large hare from play; continue the action.

A flintlock pistol is a thing. Understand "gun/rifle" as pistol. The description is "You traded a week's work helping an old farmer build a new house for this pistol, and it has served you well for almost twenty years now.". Understand the command "shoot" as "attack". Instead of attacking the pistol when large hare is in location, try attacking large hare. Instead of attacking the pistol, try attacking dead hare. 

Check attacking large hare: remove large hare from play; move dead hare to location; say "With a deafening explosion, the pistol fires, a good, clean shot. The hare starts, then falls, as you knew it would.[paragraph break]You approach the animal, but it seems your shot is clean. It lies dead, blood spilling over the grass in steamy curtains, merging with the morning dew.[paragraph break]Something about the [o]blood[x] reminds you of something." instead. Instead of doing something other than examining or examining by name or attacking to the large hare, say "You'll scare it off.".

A dead hare is a described thing. "The [o]hare[x] you shot is here.". The description is "When cleaned and dressed, it will make a nice supper.". Report taking dead hare: say "You pick up the hare by the ears." instead. Report dropping dead hare: say "You gently put the carcass down." instead. Instead of attacking dead hare: say "This will be enough meat for now.".

Some hare-blood is part of the dead hare. Understand "blood" as hare-blood. The printed name is "blood". The description is "The sky was blood-red when you left this morning before sunrise, vanishing storm clouds drinking in the dawn light. Rume was standing at the doorway as you left, staring into the east. [if Rume is male]He[else]She[end if] murmured something quietly, and you thought [if Rume is female]s[end if]he said 'Who'd have believed we could stay so long in one place.'[paragraph break]You were so bleary-eyed you were not quite sure you hadn't imagined [if Rume is male]him[else]her[end if] saying it-- sounded more like something you'd say, anyway-- but now that the walk through the brisk morning air and the hunt has wakened you, you're sure [if Rume is female]s[end if]he did say it. Strange. [if Rume is male]He[else]She[end if] has been so [o]strange[x] lately.".

Some hare-strange is part of the dead hare. Understand "strange" as hare-strange. The printed name is "strange". The description is "Winter was lonely and cold this year, your first without [kidsname], and Rume has seemed quieter and more withdrawn than you've seen [if Rume is male]him[else]her[end if] in years. [if Rume is male]He[else]She[end if] spent hours poring over old maps, tracing fingers through the lines of distant mountain ridges and rubbing circles through the white blank spaces of unexplored territory.[paragraph break]When spring finally came, [if Rume is female]s[end if]he threw [if Rume is male]him[else]her[end if]self into spring cleaning, scrubbing floors and washing away the grime as if trying to make the old Tumble look like new. You helped in kind, of course, but were never sure what you both were preparing for, what strange visitor would be arriving that you hoped to impress.".

Report going from North Vale to Giant's Table: say "You walk down through the strangely quiet vale in the midmorning light."

The Giant's Table is a room in Homeworld. It is down from North Vale. The description is "Three narrow canyons meet at this huge flat moss-covered rock. Memories of dozens of picnics drift through the quiet pines surrounding the Table, [kidsname]'s ghost laughter mingling with the tinkling of the stream that leads you home.[paragraph break][exits][one of].[paragraph break]A strange feeling twists within you, as if something is wrong. But everything seems normal. You have walked this valley thousands of times, and nothing is out of place. But still the feeling persists[or][stopping].". The exits text of Giant's Table is "The stream trickles [down] the valley".

The valley stream is a minor backdrop. It is in The Giant's Table, The Child's Dam, and Tumble Exterior. The description is "It's cold.".

Report going from The Giant's Table to The Child's Dam: say "You follow the familiar stream down through steep terraces, following the worn path through the greening pines."

The Child's Dam is a room in Homeworld. It is down from The Giant's Table. The printed name is "[kidsname]'s Dam". The description is "The stream pools into a narrow, deep swimming hole here, an old project of your [if kidismale is true]son[else]daughter[end if]'s that has held up to the elements far longer than [kidhisher] parents ever thought it would. A few wildflowers poke their way out of the new spring grass in the adjacent meadow.[paragraph break][exits][one of].[paragraph break]The feeling of wrongness grows within you, almost a panic, though you still cannot explain why. But then, suddenly, you can. You should see the smoke rising from the Tumble from here, a familiar beacon. But you don't. There is no smoke. The fire is out[or][stopping].". The exits text of The Child's Dam is "The stream continues [down] towards home". Some dam-wildflowers are a minor setpiece in Child's Dam with printed name "wildflowers" and provoke message "You remember picking them with Rume in distant springtimes.". Understand "flower/flowers/wildflowers" as dam-wildflowers when location is Child's Dam.

Report going from The Child's Dam to Tumble Exterior: say "You hurry down the slope, over lichen-encrusted boulders and mouldering pine needles."

Tumble Exterior is a room in Homeworld. It is down from The Child's Dam. The printed name is "Outside the Tumble". The description is "The wooden beams of home rise above you, aging but scrubbed clean, firewood stacked in a neat pile under the eaves and the little bridge over the stream neatly swept. But there is no smoke rising from the rock chimney, no smell of breakfast or sound of Rume singing, and the door is shut tight, rather than open to admit the spring air.[paragraph break][exits].". The exits text of Tumble Exterior is "[one of]Part of you dreads to open that door, but t[or]T[stopping]here is nowhere to go but [inside]".

The fake-tumble-exterior is a setpiece in Tumble Exterior with printed name "Tumble". Understand "home/house/cabin/lodge/tumble" as fake-tumble-exterior. The description is "It has been your home for twenty years. But suddenly, now, it feels like only an empty shell.". instead of entering or going or opening fake-tumble-exterior: try going inside instead.

The tedoor is an undescribed door. Understand "door" as tedoor. The printed name is "door". The tedoor is inside from Tumble Exterior and outside from Old Tumble. Before going inside when location is Tumble Exterior and tedoor is closed: now tedoor is open. Before going outside when location is Old Tumble and tedoor is closed: now tedoor is open.

Report going from Tumble Exterior to Old Tumble: say "[one of]You push the door open and stop dead in your tracks, heartbeat suddenly loud in your ears[or]You step back inside the Tumble[stopping].".

Old Tumble is a room in Homeworld with printed name "Tumble, Main Floor". "It's been a long time since you thought of this room as a studio, but suddenly you remember it as it was that night all those years ago. The fireplace is neatly banked now, ashes scrubbed away, and [kidsname]'s pine animals hang from the ceiling instead of the bare rafters. But one thing is the same.[paragraph break][easelbit][if lc_painting_flag is 1].[paragraph break][otextra][end if].". First check going nowhere when location is Old Tumble: say "Nothing you need or want is elsewhere in the Tumble." instead. Understand "trapdoor" as north when location is Old Tumble.

OldTumbleStuff is stuff in Old Tumble. Understand "chair/chairs/table/fire/fireplace/hearth/boots/kitchen/stream/pool" as OldTumbleStuff when location is Old Tumble. First instead of doing anything to OldTumbleStuff: say "Nothing else matters now.".

To say otextra: say "[one of]Slowly your peripheral vision returns and you take in the rest of the scene, and all that is different. [or][stopping]Rume's boots and winter clothes are gone[if player wears homemade outfit][else], and in their place hang your old traveling [o]clothes[x][end if]. The fireplace is banked, ashes neatly swept away. And on the table is a folded [o]letter[x][if player wears Rume's bracelet][else], and a [o]bracelet[x][end if]".

Some hanging pine animals are a setpiece in Old Tumble. The description is "[kidsname] loved to carve the simple figures that sway above you: beavers, moose, elk, chipmunks. When Rume climbed the ladder to dust them last week, they spun drunkenly through the air, falling dust sparkling in the golden morning light.".

A letter-from-Rume is a prop in Old Tumble with printed name "letter from Rume". Understand "letter" as letter-from-Rume. Instead of taking letter-from-Rume, say "There's no point. They will not go with you when you leave.". Instead of opening or reading letter-from-Rume, try examining letter-from-Rume. The description is "You open it and read, numb.

'A dozen glaciers creep through our mountains,' it begins, 'a hundred passes lead to alpine paths growing less and less familiar each hour. In four days, my love, I will be in unexplored, uncharted territory. Once again.

'I did not have the courage to say goodbye to you. Nor did you have the courage to do the same for me, when first you heard the Call and started this painting. It is not because we are cowards, I think. It is because we know how easy the temptation to follow in contentment would be. But we are not followers. We are not owners of each other, nor can we change who we are. We are explorers, and we must explore. This is hard, and true.

'But exploring takes us to unexpected places.

'You have said yourself, my love, that there are no rules for your kind. What you know you know by experiment and chance. Perhaps-- no, certainly-- you do not know everything. There may be more left to explore in yourself.

'Though you think it impossible, perhaps one day you can find your way back to me.

'Go. Wayfare. Explore. And if you find some way to return-- find me. I will be high in mountains, or crossing distant seas, somewhere under stars. When we meet again we both will be changed, and ready to explore each other anew.

'Rume.'". 

Rume's bracelet is a wearable thing. The description is "Carved from a dark, solid wood, the bracelet was your gift to Rume long ago, the twin of the wooden [if wooden band is enclosed by location][o]band[x][else]band[end if] [if Rume is female]s[end if]he gave to you.". Does the player mean taking Rume's bracelet when The-Path-Of-Love is happening: it is likely. Check dropping Rume's bracelet: say "You don't want to lose it." instead.

Report wearing Rume's bracelet when The-Path-Of-Love is happening: say "You slip it through our hand next to its twin, which you realize with heartbreak will vanish from your hand when you leave-- for Rume made it for you.[paragraph break]But [heshe]'s right. The other will remain." instead.

Instead of landmark-listing when The-Path-Of-Love is happening and location is regionally in Homeworld, say "All the landmarks in your life are behind you."

Check attacking yourself when Tumble Exterior is visited: say "Slowly, you raise the pistol to your head. The Call will not rule you; the life you lead is not a life if it must always be slave to voices beyond your control. And with Rume gone, you have nothing left to live for.[paragraph break]In silence, you pull the trigger."; end the game in death.

Understand "cross" or "across" as north when location is Old Tumble or location is Dream7Nexus or location is Dream1Nexus. 


Part - Blue Flashes

Instead of examining the sun when sunset and location is regionally in Lacuna (this is the Blue Flash rule): process blue flash. 

A flash-room is a kind of room. 

To say blueflashcommandprompt: say "[if location is Blue Flash 1]and you say[else if location is Blue Flash 2]so you[else if location is Blue Flash 3]and you wonder if you should[else if location is Blue Flash 3a]and you tell [himher] that you[else if location is Blue Flash 4] and you[else if location is Blue Flash 5]and it tastes[else if location is Blue Flash 6]and you know [kidsname] is[else if location is Blue Flash 7]and you realize now that decision was[else]so you[end if]: >>".

To process Blue Flash:
	if topics-window is g-present, shut down topics-window;
	if the number of entries in flash list < 1:
		say "You stare towards the sun as it sinks into the ocean, a brilliant ball, but as it sinks into the waves and vanishes, you see nothing further.";
		stop;
	if The-Path-Of-Love is happening:
		if Blue Flash 3a is not listed in flash list and the number of entries in flash list is 7, add Blue Flash 3a at entry 4 in flash list;[ add a scene referencing player's inability to let the painting go.]
		let flash stage be entry 1 of flash list;
		move Rume to flash stage;
		now Rume is idle;
		move player to flash stage, without printing a room description;
		say "[line break][bold type][location][roman type][line break][description of location][line break]";
		change the command prompt to "[blueflashcommandprompt]";
	otherwise if location is indoorsy:
		say "You can't see the sun from in here.";
		stop;
	otherwise if sun over ocean:
		miss Rume;
		say "You stare towards the sun as it sinks into the ocean, a brilliant ball of red and gold, and suddenly, just as the last sliver vanishes into the waves, a surge of intense blue";
		reset the boredom meter with "Blue Flash";
		change saved location to location;
		if The-Path-Of-Love has ended:
			move Rume to location;
			say "[paragraph break][paragraph break]";
			say "[one of][tpl7][or][tpl2][or][tpl3][or][tpl4][or][tpl5][or][tpl6][in random order]";
			say "[paragraph break][paragraph break]";
			remove Rume from play;
			aftersunbit;
		else:
			let flash stage be entry 1 of flash list;
			move Rume to flash stage;
			move player to flash stage, without printing a room description;
			say "[line break][bold type][location][roman type][line break][description of location][line break]";
			change the command prompt to "[blueflashcommandprompt]";
	otherwise:
		say "The sun is hidden from this vantage point; you can't see where it's touching the ocean.".

To say tpl2: say "'There is a bedtime story for mountain children,' Rume murmurs, [hisher] [if Rume is male]strong[else]soft[end if] shoulder cupped in your hand, 'about a pilgrim and the wisest man in the world. The pilgrim wanted to know why the world was the way it was. To each question the wise man would only say, [']Because it is.[']' [CHeShe] breathes against you. 'I have never decided whether to love or hate that story.' And you hold [himher] tighter.".

To say tpl3: say "'What do you see?' asks Rume, as you gaze up at the clouds circling the peak together. 'Do you see shapes behind the clouds? Stories behind the shapes? Worlds behind the stories and luminous truths behind the worlds?' [CHeShe] smiles wryly, touching your eyelids lightly. 'Or do you see only clouds?'".

To say tpl4: say "'Look,' Rume says, holding it out to you, 'Isn't he beautiful?' but [heshe] sees in your eyes that all you can see is a tiny green caterpillar, and [heshe] tries again. 'It was just born from filth and rot and darkness,' [heshe] says as it inches tentatively over [hisher] hand, 'and has a whole life to lead. Then, when it's grown weary and ready to die, it will be reborn to begin all over again.' [CHeShe] sighs. 'And look how happy he is, regardless.'".

To say tpl5: say "'I'd think you would have learned by now,' Rume says, features etched by the frigid winter breeze into smooth contours of wind-channeled surface. 'I am never cold. I feel cold, yes, sometimes so much that it's hard to ignore. Cold could kill my body if I do not protect myself from it. But cold is only one way of perceiving the snow and the winter. Cold is a state of mind.' [CHeShe] smiles, breath crystallizing in the air. 'I am not cold.'".

To say tpl6: say "'Here is home,' Rume says to [kidsname], touching a point on the old map, 'and here is the spur of the mountains, and here the seven glaciers. And beyond, the uplands. And farther...' [CHisHer] hand traces delicate lines towards a smooth and blank section of the map. 'Here we have never been, nor known anyone to go. Imagine that. Only four days away lies the Unknown.' [CHeShe] smiles, hugging your [if kidismale is true]son[else]daughter[end if] close. 'We are such small creatures. I wonder what the world makes of us.'".

To say tpl7: say "Rume carries another heavy pile of firewood inside, framed by the ugly black and green clouds, and must see some fear deep in your face, for [heshe] pauses and touches your hand. 'My love,' [heshe] says, 'there is nothing to worry about. Blizzards are out of our hands, you and I. All we can do is take what comes, no matter how fierce, and survive.'".

Blue Flash 1 is a flash-room with printed name "Ice Shelf Near Home" and description "ice, you call to Rume, but [if Rume is female]s[end if]he knows that, knows to stay on the blue ice, but the mammoth skeleton gleams within the glacier and [if Rume is female]s[end if]he's almost there and suddenly the shelf gives way beneath [himher] and [heshe]'s falling, skidding down the slope and you trip after [himher] snowshoes catching and heart thumping and finally reach [hisher] side". 

Blue Flash 2 is a flash-room with printed name "Outside The Tumble" and description "eyes, [gf2kidbit1], and [if children are possible]the two of you hold [kidhimher] in your arms[otherwise]you can see how scared [kidheshe] is but hungry at last to finally have a home, holding the two of your hands tight[end if], little [kidsname], as the [if children are possible]fat little doctor[otherwise]pompous official[end if] [gffr2]". To say gffr2: say "from town out of breath from the bumpy sleigh ride up [if children are possible]coos reassuringly[else]signs paperwork[end if], and [if children are possible]the baby cries[otherwise if kidismale is true]the boy swallows nervously[otherwise]the girl trembles nervously[end if]".

To say gf2kidbit1:
	if The-Path-Of-Love has not happened:
		if children are possible:
			if a random chance of 1 in 2 succeeds, now kidismale is true;
			otherwise now kidismale is false;
		otherwise:
			if player is male, now kidismale is false;
			otherwise now kidismale is true;
	if player is male and Rume is female:
		say "just like [kidhisher] mother's";
	otherwise if player is female and Rume is male:
		say "just like [kidhisher] father's";
	otherwise if Rume is male:
		say "like Rume's, [kidhisher] adopted father";
	otherwise:
		say "like Rume's, [kidhisher] adopted mother".

To say kidhisher: if kidismale is true, say "his"; otherwise say "her". To say kidheshe: if kidismale is true, say "he"; otherwise say "she". To say kidhimher: if kidismale is true, say "him"; otherwise say "her".

Blue Flash 3 is a flash-room with printed name "The Tumble, [kidsname]'s Room" and description "of the sky fades in the darkling window as night breezes rustle while [kidsname] listens with wide eyes to Rume's bedtime story, tucked in bed under warm furs, and you watch and listen fondly at the way your love weaves the words, [hisher] voice dancing and lilting through the old tale".

Blue Flash 3a is a flash-room with printed name "The Cellar" and description "in the painting, covered in a faint layer of dust now but still potent, powerful, and you wonder why you never destroyed it and you wonder why you keep coming down here and pulling back the dusty burlap and staring at it, and Rume comes down the stairs behind you while [kidsname] recites above and Rume closes the cellar door and puts [hisher] arms around you, the wooden bracelet hard against your stomach, and stares at the painting with you and [heshe] asks if you still hear the Call".

Blue Flash 4 is a flash-room with printed name "Your Bedroom" and description "eyes flash as [heshe] screams at you in fury, each of Rume's words hammering into the ache in your head like nails, each argument rising to the surface and being sucked under again by momentum, like jetsam in a river eddy, again and again, and finally you can't take any more".

Blue Flash 5 is a flash-room with printed name "At Dinner Around The Fire" and description "-green leaves from the garden and Rume's buttered red potatoes and [kidsname]'s fresh meat, and [kidheshe] boasts to the grizzled trapper about the kill again and again, reliving the details of the flushing and the flintlock and the thrill of victory, [kidhisher] first successful hunt, and you take your first bite of the smoked meat".

Blue Flash 6 is a flash-room with printed name "The Garden" and description "eyes blaze as [heshe] tells your child [kidheshe]'s absolutely forbidden, but [kidsname], almost a [if kidismale is true]man[otherwise]woman[end if] now, kicks over a corn stalk savagely and shouts that you don't understand what it's like living up here alone, you're a couple of rooted hermits, you've forgot what adventure even is, and Rume flushes".

Blue Flash 7 is a flash-room with printed name "Your Bedroom" and description "shadows between the pine boughs that Rume still hangs from the rafters through twenty winters now, the old loft room now filled with treasures and mementos and the scuffs and scratches and sweat of a lifetime, and the wind beats against the old timbers of the house where the two of you have spent this past quiet year, alone again, and you remember the night like this those dim and distant years ago when you chose between [if we chose love]love and art and chose love[otherwise]art and love and chose art[end if]".


The flash list is a list of rooms that varies. The flash list is {Blue Flash 1, Blue Flash 2, Blue Flash 3, Blue Flash 4, Blue Flash 5, Blue Flash 6, Blue Flash 7}.


After reading a command when location is a flash-room (this is the Homeworld Blue Flash trickery rule):
	let pcmd be indexed text; 
	let pcmd be the player's command; 
	say line break;
	if location is Blue Flash 1:
		if pcmd matches the regular expression "(all right|alright|allright|ok|hurt|help|alive)":
			say "but Rume is laughing, brushing the snow from [hisher] face and saying yes, I'm fine, I'm fine, ";
		otherwise if pcmd matches the regular expression "(what|how|happen)":
			say "but Rume is laughing, saying nothing happened, nothing happened, just a bit of a tumble, ";
		otherwise if pcmd matches the regular expression "(careful|fall|fell|slip)":
			say "but Rume laughs and says [heshe]'s always exactly as careful as the situation requires, ";
		otherwise if pcmd matches the regular expression "love":
			say "and Rume laughs, kissing you back, says [heshe] loves you too and [heshe]'s alright, all right, ";
		otherwise if pcmd matches the regular expression "why":
			say "but you know why and Rume knows you know; [heshe]'s an explorer, an adventurer to the bone, like you, and you can't stay mad... ";
		otherwise:
			say "but Rume doesn't hear you over [hisher] laughter, whooping and scraping the snow from [hisher] face and saying it's okay, it's okay, I'm fine, ";
		say "and you feel such an intense rush of gratefulness and love and kiss [himher] between [hisher] eyes, so beautiful and blue";
	otherwise if location is Blue Flash 2:
		if pcmd matches the regular expression "(hug|hold|shoulder|kiss)":
			let actionword be 1;
		otherwise if pcmd matches the regular expression "(smile|grin)":
			let actionword be 2;
		otherwise if pcmd matches the regular expression "(say|tell|explain|talk)":
			let actionword be 3;
		otherwise if pcmd matches the regular expression "(rock|shake|nurse|shush)":
			let actionword be 4;
		otherwise if pcmd matches the regular expression "(slap|hit|punch|drop|kick|hurt|smack)":
			let actionword be 9;
		otherwise:
			let actionword be 5;
		if actionword is 9, say "or at least you want to, because life here is hard, and it's a lesson that must be learned quickly";
		else say "and [kidheshe] [if children are possible]smiles and gurgles up at you [otherwise]looks up at you bravely, [end if][if actionword is 1]hugging you back[otherwise if actionword is 2]smiling back[otherwise if actionword is 3]listening gratefully[otherwise if actionword is 4]quieting down again[otherwise]holding your hand tight[end if], and";
		say " you look up into Rume's eyes and reflected there is your joy and terror and trepidation and concern at this new frontier of parenthood, reflected in the blue";
	otherwise if location is Blue Flash 3:
		if pcmd matches the regular expression "(go|leave|exit)":
			say "but no, you'll stay, stay and hear the end of the story";
		otherwise if pcmd matches the regular expression "(stay|listen|intrude|wait)":
			say "and decide you should, stay and hear the end of the story";
		otherwise if pcmd matches the regular expression "(join|tell|help|participate|speak|story|say|talk|act|sing)":
			say "and when Rume pauses for a moment you step forward and add your own pieces to the story, and Rume squeezes your hand fondly and [kidsname] listens to you eagerly";
		otherwise if pcmd matches the regular expression "(kiss|hug|caress|touch)":
			say "and you want to but want to keep from interrupting the flow of the story more, so you wait and let Rume go on";
		otherwise if pcmd matches the regular expression "(stop|interrupt|punish|intervene)":
			say "but decide no, [kidheshe]'s old enough now to hear the real stories, all their terror and wonder and fantasies and realities";
		otherwise:
			say "but no, you'll stay, stay and hear the end of the story";
		say ", and Rume tells and the story lives in the spaces between you three and you're content, at peace here in your home in the blue";
	otherwise if location is Blue Flash 3a:
		if pcmd matches the regular expression "(don't know|dont know|not know|not sure|unsure|can't tell|cant tell)":
			say "and [heshe] hugs you and says if you can't tell doesn't that mean you can't? But you don't know, don't know";
		otherwise if pcmd matches the regular expression "(can't|no|don't|never hear)":
			say "and [heshe] squeezes your arm and asks why you don't burn it then but you can't explain, can't explain how each painting is a part of you, even or especially those left unfinished";
		otherwise:
			say "and there is a long silence before Rume hugs you silently, and you feel [hisher] tears seep into the back of your shirt, and you wish you could destroy the painting but you can't, it would be like burning a part of yourself";
		say ", and Rume asks you to come back upstairs and help [kidsname] with [kidhisher] poem and you roll the burlap back over the canvas and the last color you see is a shade of blue";
	otherwise if location is Blue Flash 4:
		if pcmd matches the regular expression "(hit|strike|attack|slap|punch|kill|strangle|choke|murder|push)":
			say "and Rume stumbles to a halt, holding a hand to [hisher] face and staring at you in shock";
		otherwise if pcmd matches the regular expression "(scream|yell|shout)":
			say "and Rume stops in mid-word, face pale in the lamp light, before sinking to the bed and your throat hurts from the sound";
		otherwise if pcmd matches the regular expression "(give up|give in|concede|cease|stop|let him|let her|sorry)" or pcmd matches the regular expression "(apolog|wait)":
			say "and Rume quiets, thinking, and finally comes to you and holds you, tears wettening your shoulder, and murmuring that it doesn't matter, doesn't matter who's right, doesn't...";
		otherwise if pcmd matches the regular expression "(leave|go|exit|west|out|outside|run|away|walk)":
			say "but [heshe] yells after you telling you to come back this isn't finished but you keep walking down the stairs anyway, the stream barely audible over [hisher] voice";
		otherwise if pcmd matches the regular expression "(cry|weep|tears|sob)":
			say "and Rume stops in mid-word, as if catching, tripping on your tears, and suddenly there are tears in [hisher] eyes too";
		otherwise if pcmd matches the regular expression "(hug|kiss|hold)":
			say "and Rume stops in mid-word, trembling for a long moments before holding you back, tears suddenly seeping into your shoulder";
		otherwise:
			say "and the argument keeps going, ill-fitting circles of words screeching and abrading against each other";
		say ", and you wonder if this is what you stayed for, if you gave up your greatest gift for this, for the tears in Rume's blue";
	otherwise if location is Blue Flash 5:
		if pcmd matches the regular expression "(terrib|aweful|awful|bad|gross|bitter|rancid|nasty|foul)" or pcmd matches the regular expression "(off|disgusting|crap|shit|ash)":
			say "but you keep chewing and smiling because this is [kidsname]'s moment and you see the trapper's eyes go wide as he chews his first bite through his beard but he does the same";
		otherwise if pcmd matches the regular expression "(average|bland|undercooked|normal|typical|unexceptional)":
			say "but you keep chewing and smiling because this is [kidsname]'s moment and across the table the trapper praises it and maybe he's being kind or maybe after weeks in the woods he really does like it";
		otherwise if pcmd matches the regular expression "(great|good|delicious|fantastic|wonderful|flavor|yum|tasty|nice|fine)":
			say "and the trapper says through his bushy beard it's the best venison he's had in months and [kidsname] beams";
		otherwise:
			say "and the trapper thanks you all again for putting him up";
		say " and across the table you catch Rume's glance and the two of you share a secret smile, [hisher] eyes absorbing the crackling fire but still the same blue";		
	otherwise if location is Blue Flash 6:
		if pcmd matches the regular expression "(havent|not|no|false|wrong|lie|impossible|never|isnt|cant)":
			say "because you do remember, you do know, and of course your [if kidismale is true]boy[otherwise]daughter[end if] feels it too, and you can't ask [kidhimher] to stay here with the two of you forever";
		otherwise if pcmd matches the regular expression "(right|yes|true|have|correct)":
			say "but how could [if kidismale is true]he[else]she[end if] be, how, how could a Wayfarer forget";
		otherwise if pcmd matches the regular expression "(growing up|old|grown|grow|almost|man|woman|leave|ready|boy|girl)":
			say "and soon [if kidismale is true]he[else]she[end if] will be leaving, setting out into the world";
		otherwise if pcmd matches the regular expression "(sad|frustrat|lone|alone|angry|bitter|rebel|bad|vent)":
			say "and you wonder again whether you did right to raise [if kidismale is true]him[else]her[end if] in this lonely valley of a lonely world";
		otherwise:
			say "and you don't know what to say";
		say ", and [kidsname] turns and angrily stalks off into the forest, and you look at Rume, [hisher] face more deeply lined than it seemed even this morning, but [hisher] eyes only deepening with age into richer and richer shades of blue";
	otherwise if location is Blue Flash 7:
		if pcmd matches the regular expression "(flawed|unfair|not fair|rigged|stupid)":
			say "because life is not divided into extremes, blacks and whites";
		otherwise if pcmd matches the regular expression "(hard|difficult|not easy|challenging)":
			say "so hard that you still to this day wonder how things might have happened if you had chosen differently";
		otherwise if pcmd matches the regular expression "(irrelevant|inconsequential|unimportant|not important|meaningless|trivial|pointless)":
			say "because even the Call could not change the fact that you'd already made your choice to stay with Rume";
		otherwise if pcmd matches the regular expression "(wrong|incorrect|not|bad|poor)":
			say "[if we chose love]because you should have followed your heart and answered the Call and not left Rume tied to someone flawed and imperfect[otherwise]because losing Rume even then would have scarred you for the rest of your life[end if]";
		otherwise if pcmd matches the regular expression "(right|correct|ok|good|simple|inevitable)":
			say "[if we chose love]because losing Rume even then would have scarred you for the rest of your life[otherwise]that you should have followed your heart and answered the Call and not left Rume tied to someone flawed and imperfect[end if]";
		otherwise:
			say "and you toss and turn";
		say " and Rume sleeps beside you and [if The-Path-Of-Love has happened]in a flash you remember that this is your last night here, your last night before you finally answered the Call and left Rume here alone and suddenly [hisher] eyes fly open and[otherwise]in a flash you realize this never happened, you didn't stay here, this is just a dream, and Rume's eyes suddenly open and[end if] [heshe] looks at you desperately and you try to hold on to the look in those eyes, those beautiful blue";
	change the command prompt to ">";
	if the number of entries in flash list > 0, remove entry 1 from flash list;
	if The-Path-Of-Love is happening:
		if the number of entries in flash list > 0:
			say "[paragraph break]blue";
			process Blue Flash;
		else:
			print a section break;
			say "[paragraph break]...but you shake your head. It was just a dream. You're still here today, and Rume is still at the Tumble, and if you don't make this shot you're going to be eating more of last year's freezer-burned venison again.";
			change the time of day to 9:00 AM;
			now player carries flintlock pistol;
			move player to The North Vale;
	else:
		move player to saved location, without printing a room description;
		say "[line break][bold type][location][roman type][line break]"; 
		aftersunbit;
	reject the player's command.

To aftersunbit:
	say "flash fades, and the sun vanishes below the waves.[paragraph break]";
	pass 16 minutes of time;
	remove the sun from play;
	if The-Path-Of-Love has happened:
		say "[one of]The memory was intense and vivid, and you take a deep breath, shaken. For the color of that flash was precisely the shade of Rume's eyes[or]Again, the memory was as real as the first time you lived it, and the color of the flash the precise shade you remember[stopping].";
	otherwise:
		say "[one of]The vision was intense and vivid, as if from some equally real world where you chose to stay with Rume, rather than answer the Call, and you can't help but grieve. For the color of that flash was precisely the shade of Rume's eyes[or]Again, the vision was so intense you almost can't believe it's not a memory, and the color... the shade is exactly what you remember[stopping].".
	

Part - Intelligent Hinting Support

Homeworld-Sequence requires Finishing-The-Prologue, Exploring-Homeworld, Starting-the-Painting, Conversing-With-Rume, Finishing-the-Painting.

quorking is a puzzle.

Finishing-The-Prologue is a task. The command-sequence is { "man", "woman", "art" }. Definition: Finishing-The-Prologue is complete: if Prologue has ended, yes.

A fast-forward rule for Finishing-The-Prologue:
	now Rume is male;
	now yourself is male;
	now easel is in Homeworld-Studio;
	force discuss pr_art;
	now pr_art is spoken;
	now pro_track is 4.

Exploring-Homeworld is a puzzle. It requires Exploring-Bedroom, Exploring-Kitchen.

Exploring-Bedroom is a task. The venue is Your Bedroom. Requirements for Exploring-Bedroom: do the action of examining nightstand; do the action of examining drawing; do the action of examining pine boughs. Definition: Exploring-Bedroom is complete: if extended-hint-mode is false, yes; if rc_greet is spoken, yes; if location is not regionally in Homeworld, yes; if we have examined pine boughs, yes.

Exploring-Kitchen is a task. The venue is Kitchen. Definition: Exploring-Kitchen is complete: if extended-hint-mode is false, yes; if rc_greet is spoken, yes; if location is not regionally in Homeworld, yes; if Kitchen is visited, yes.

Starting-the-Painting is a task with venue Homeworld-Studio. Requirements for Starting-the-Painting: do the action of painting lacuna-canvas. Definition: Starting-The-Painting is complete: if lacuna-canvas is not unbegun, yes.

A fast-forward rule for Starting-the-Painting:
	move the player to Homeworld-Studio, without printing a room description;
	now the player wears the outfit;
	now the fireplace is raging;
	now the paintbrushes is carried by the player;
	now the lacuna-canvas is mostly finished.

Conversing-With-Rume is a task. Requirements for Conversing-With-Rume: do the action of discussing rc_call; do the action of discussing rc_duty; do the action of discussing rc_cantgo; do the action of waiting; do the action of discussing rc_wontstay; do the action of discussing rc_pity. Definition: Conversing-With-Rume is complete: if extended-hint-mode is false, yes; if location is not regionally in Homeworld, yes; if the number of terminal spoken beats in RC > 0, yes. A red flag rule for Conversing-With-Rume: if Rume is idle, rule fails. 

Finishing-the-Painting is a task with venue Homeworld-Studio. Requirements for Finishing-the-Painting: do the action of painting lacuna-canvas; do the action of painting lacuna-canvas. Definition: Finishing-The-Painting is complete: if lacuna-canvas is finished, yes.

A fast-forward rule for Finishing-the-Painting:
	now lacuna-canvas is finished;
	now last beat is silence.



Lacuna-Homeworld ends here.
