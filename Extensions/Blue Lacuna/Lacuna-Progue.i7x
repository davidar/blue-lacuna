Lacuna-Progue by Blue Lacuna begins here.

Use authorial modesty.



Volume - Progue

 

Book - Progue Core

Part - Testing (Not For Release)

Understand "ptrack" as ptracking. Ptracking is an action out of world applying to nothing.

Carry out ptracking:
	if progue-window is g-present, shut down progue-window;
	otherwise open up progue-window.

The progue-window is a g-window with type g-text-buffer. The main-window spawns the progue-window. The position of the progue-window is g-placeabove. The scale method of progue-window is g-fixed-size. The measurement of the progue-window is 5.

Before reading a command when progue-window is g-present: 
	move focus to progue-window, clearing the window;
	say "PROGUE - [psyche of Progue] - [animus of Progue] (prior: [prior animus of Progue]) [if Progue is wishing]wishing -- progue-venue [progue-venue][else]fulfilling[end if] / [activity counter of Progue] - [if Progue is attentive]attentive[otherwise]idle[end if]  - in [location of Progue][line break]";
	say "aff: [affinity of Progue] ; pat: [paternalism of Progue] ; sub: [submission of Progue] ; rom: [romance of Progue] / disposition: [disposition of Progue] / archetype: ";
	say progue-archetype;
	say line break;
	say "last beat: [last beat][if last beat is insistent] (insistent)[end if] ; alb: [actual last beat] ; con. fuse: [conversation fuse] ; boredom: [boredom counter of Progue][line break]";
	say "curr. ep: [current episode] / curr thread: [current_thread of Progue]";
	return to main screen.

To say progue-archetype:
	if neurotic dad begin; say "neurotic dad";
	else if father knows best; say "father knows best";
	else if bitter dad; say "bitter dad";
	else if disciplinarian; say "disciplinarian";
	else if friend; say "friend";
	else if toady; say "toady";
	else if lover; say "lover";
	else if twitterpated; say "twitterpated";
	else if enemy; say "enemy";
	else if slave; say "slave";
	else if shattered lover; say "shattered lover";
	else if bitter lover; say "bitter lover";
	else; say "no match";
	end if.


Understand "pstatus" as pstatusing. Pstatusing is an action out of world applying to nothing.

Carry out pstatusing:
	say "*** [The Progue] status ***[line break]";
	say "location: [location of Progue][line break]";
	say "1) psyche: [psyche of Progue][line break]";
	say "2) affinity: [affinity of Progue][line break]";
	say "3) paternalism: [paternalism of Progue][line break]";
	say "4) submission: [submission of Progue][line break]";
	say "5) romance: [romance of Progue][line break]";
	say "disposition: [disposition of Progue][line break]";
	say "boredom: [boredom counter of Progue][line break]";
	say "animus: 6) [animus of Progue] 7)([if Progue is wishing]wishing[otherwise]fulfilling[end if], activity counter: [activity counter of Progue]; progue-venue: [progue-venue]; prior: [prior animus of Progue])[line break]";
	if next animus of Progue is not null-endeavour, say "next animus: [next animus of Progue][line break]";
	say "[if Progue is idle]idle[otherwise]attentive[end if][line break]";
	say "[if Progue is annoyed]annoyed[otherwise]not annoyed[end if] / [if Progue is friendly]friendly[otherwise]not friendly[end if][line break]";
	say "last beat: [last beat] ".

Understand "pgod" as pgodding. pgodding is an action out of world applying to nothing. 

Carry out pgodding:
	let inp be 1;
	while inp is not 0 begin;
		clear the screen;
		try pstatusing;
		now inp is single-character - 48;
		say inp;
		if inp is 1, now the psyche of Progue is the psychological state after the psyche of Progue;
		if inp is 2 begin;
			say "Num? ";
			now affinity of Progue is ( single-character - 48 ) ;
		end if;
		if inp is 3 begin;
			say "Num? ";
			now paternalism of Progue is ( single-character - 48 ) ;
		end if;
		if inp is 4 begin;
			say "Num? ";
			now submission of Progue is ( single-character - 48 ) ;
		end if;
		if inp is 5 begin;
			say "Num? ";
			now romance of Progue is ( single-character - 48 ) ;
		end if;
		if inp is 6 begin;
			let tempan be the endeavour after the animus of Progue;
			Progue starts tempan;
		end if;
		if inp is 7 begin;
			if Progue is wishing, now Progue is fulfilling; otherwise now Progue is wishing;
		end if;
	end while.

Does the player mean object-debugging Progue: it is very likely.


Part - Definitions


Chapter - Setup

Progue is a man.  

met_progue is a truth state that varies.

Understand "strange" or "man" or "figure" or "progues" or "progue's" as Progue. Progue is improper-named. The indefinite article of Progue is "[if met_progue is false]a[otherwise if improper-named]the". The printed name of Progue is "[printed_name_progue]".

A thing can be either named or unnamed. A thing is usually unnamed.  

Chapter - Psyche (Long Term Emotions)

[ Psyche is used to trigger specific conversations, and controls what activities Progue might engage in (see Animus) and how extreme the various relationship values can get. ]

Psychological state is a kind of value. The psychological states are ignorance, denial, fear, suppression, uncertainty, emotional, fugue, and resolved.  

Progue has a psychological state called psyche. The psyche of Progue is ignorance.   



Chapter - Attitudes (Long Term Feelings for Player)

Progue has a number that varies called affinity. The affinity of Progue is 0. [ This represents how much Progue likes the player, and can range from -8 (hatred) to 8 (best friends). ]

Progue has a number that varies called submission. The submission of Progue is 0. [ This represents how submissive Progue is in the relationship from the player's perspective, ranging from -8 (alpha male) to 8 (Gollum). ]

Progue has a number that varies called paternalism. The paternalism of Progue is 0. [ This represents how much Progue thinks of the player as a surrogate child figure, ranging from 0 (not at all) to 8 (very much so). ]

Progue has a number that varies called romance. The romance of Progue is 0. [ This models whether Progue has any romantic feelings towards the player, ranging from 0 to 8. However, if trust is violated and Progue becomes a jilted lover, romance is changed to -1 and can never again rise, and affinity is multiplied by -1. ]

[ It's too easy to get Progue irrevocably down some path early on, so we cap the min and max values of the attributes for each stage, which we can think of as corresponding to the growing seriousness of Progue's feelings towards you, the longer he knows you. ]

To decide what number is the psyche-adjusted (num - a number):
	if num > 2 and ( the psyche of Progue is ignorance or the psyche of Progue is denial or the psyche of Progue is fear ) , decide on 2;
	if num > 4 and the psyche of Progue is suppression, decide on 4;
	if num > 6 and the psyche of Progue is uncertainty, decide on 6;
	if num > 8, decide on 8;
	if num < -2 and ( the psyche of Progue is ignorance or the psyche of Progue is denial or the psyche of Progue is fear ) , decide on -2;
	if num < -4 and the psyche of Progue is suppression, decide on -4;
	if num < -6 and the psyche of Progue is uncertainty, decide on -6;
	if num < -8, decide on -8;
	decide on num.

To Progue likes you more, silently:
	increase the affinity of Progue by 1;
	now the affinity of Progue is the psyche-adjusted affinity of Progue;
	if the affinity of Progue is 0, now the affinity of Progue is 1; [ 0 is the initial state; once we've pushed him in one direction, he will always have an opinion one way or the other. ]
	report on Progue's social standing for 1. 

To Progue likes you less, silently:
	decrease the affinity of Progue by 1;
	now the affinity of Progue is the psyche-adjusted affinity of Progue;
	if the affinity of Progue is 0, now the affinity of Progue is -1;
	if romance of Progue > 3 and affinity of Progue < 0:
		now affinity of Progue is romance of Progue * -1;
		now romance of Progue is -1;
		if Progue is enclosed by location, say "A look of betrayal and hurt comes over [the Progue]'s face, and you know whatever you had is over.";
	report on Progue's social standing for 2.

To Progue feels more like a father, silently:
	unless the romance of Progue > 3 or the romance of Progue < 0 begin; [ If we've had a love scene with Progue, he's never going to feel like a father figure. Oedipal relationships are too tricky to model with integers. ]
		increase the paternalism of Progue by 1;
		now the paternalism of Progue is the psyche-adjusted paternalism of Progue;
		if the paternalism of Progue is 0, now the paternalism of Progue is 1;
		report on Progue's social standing for 3;
		if romance of Progue > 0, Progue is losing interest; [ As the feeling of paternalism rises, potential romantic attraction fades. ]
	otherwise;
		if Progue is being debugged, say "// Progue: does not feel more paternalism because romance is [romance of Progue]).[as normal][line break]";
	end unless.

To Progue feels less like a father, silently:
	decrease the paternalism of Progue by 1;
	now the paternalism of Progue is the psyche-adjusted paternalism of Progue;
	if the paternalism of Progue < 0, now the paternalism of Progue is 0;
	report on Progue's social standing for 4.

To Progue is more submissive, silently:
	increase the submission of Progue by 1;
	now the submission of Progue is the psyche-adjusted submission of Progue;
	if the submission of Progue is 0, now the submission of Progue is 1;
	report on Progue's social standing for 5.

To Progue is less submissive, silently:
	decrease the submission of Progue by 1;
	now the submission of Progue is the psyche-adjusted submission of Progue;
	if the submission of Progue is 0, now the submission of Progue is -1;
	report on Progue's social standing for 6.

To Progue is aroused, silently:
	if the romance of Progue >= 0 begin;
		increase the romance of Progue by 1;
		now the romance of Progue is the psyche-adjusted romance of Progue;
		report on Progue's social standing for 7;
		if romance of Progue is 1 or romance of Progue is 3 or romance of Progue is 5, Progue likes you more;
		if submission of Progue >= 2 and ( romance of Progue is 2 or romance of Progue is 4 or romance of Progue is 6 ) , Progue is more submissive;
		if paternalism of Progue > 0, Progue feels less like a father; [ As the feeling of romance rises, paternal feelings fade. ]
		if romance of Progue >= 3, dis Rume;
	otherwise;
		if Progue is being debugged, say "// Progue: does not feel more romance because romance is [romance of Progue]).";
	end if.

To Progue is losing interest, silently:
	decrease the romance of Progue by 1;
	now the romance of Progue is the psyche-adjusted romance of Progue;
	if the romance of Progue < 0, now the romance of Progue is 0;
	report on Progue's social standing for 8.

To Progue is heartbroken:
	now the affinity of Progue is 0;
	Progue likes you less.


[ Various beats can be things like "submissive" or "paternal" to easily adjust the various relationship values when that beat is spoken. ]

To adjust Progue's social standing:
	let target be noun;
	if Progue is being debugged, say "// Progue: adjust Progue's social standing.";
	if target is affinitive, Progue likes you more;
	if target is unaffinitive, Progue likes you less;
	if target is paternal, Progue feels more like a father;
	if target is unpaternal, Progue feels less like a father;
	if target is submissive, Progue is more submissive;
	if target is unsubmissive, Progue is less submissive;
	if target is romantic, Progue is aroused;
	if target is unromantic, Progue is losing interest;
	if target is annoying, annoy Progue;
	if target is impressive, impress Progue;
	continue the action.

[ This is done this way so that if a beat has multiple score changes, each of them get reported. ]

To report on Progue's social standing for (scode - a number):
	if Progue is being debugged or stats mode is true:
		say "[as the parser]([The Progue] [if scode is 1]likes you more: affinity[else if scode is 2]likes you less: affinity[else if scode is 3]feels more fatherly: paternalism[else if scode is 4]feels less fatherly: paternalism[else if scode is 5]feels more submissive: submission[else if scode is 6]feels more dominant: submission[else if scode is 7]feels more romantic: romance[else if scode is 8]feels less romantic: romance[else if scode is 9]is more annoyed: disposition[else if scode is 10]is more impressed: disposition[end if] now ";
		let tarnum be 99;
		if scode is 1 or scode is 2, now tarnum is affinity of Progue;
		if scode is 3 or scode is 4, now tarnum is paternalism of Progue;
		if scode is 5 or scode is 6, now tarnum is submission of Progue;
		if scode is 7 or scode is 8, now tarnum is romance of Progue;
		if scode is 9 or scode is 10, now tarnum is disposition of Progue;
		unless tarnum is 99:
			say "[if tarnum > 0]+[end if][tarnum]).[as normal][line break]".

Section - Attitude Business


[ "attitude-business" is a say statement that can be inserted after a comma and space outside of quotes in Progue dialog. It adds a clause to the sentence that gives hints as to how Progue feels about you. ]
	
To say attitude-business:
	if the psyche of Progue is denial begin; [Early on, Progue's feelings may only be temporary; we don't want to push the player towards thinking Progue is particularly friendly/unfriendly/etc until they have a chance to develop a bit of a history.]
		say "[animus-business]";
	otherwise if ( romance of Progue > 1 or romance of Progue < -1 ) and a random chance of 1 in 2 succeeds;
		if romance of Progue >= 5 begin; say "[one of]rubbing a hand up and down your back[or]kissing your cheek[or]eyeing you suggestively[in random order]";
		otherwise if romance of Progue >= 3; say "[one of]flashing a mad, flirtatious grin in your direction[or]tousling your hair playfully[or]touching his hand to yours for a brief moment[in random order]";
		otherwise if romance of Progue >= 1; say "[one of]poking you playfully in the side[or]giving you a surreptitious wink[or]smiling wryly at you[in random order]";
		otherwise if romance of Progue < -1; say "[one of]pointedly looking away[or]apparently trying hard to keep his tone civil[or]using a nasty, sarcastic tone[in random order]";
		end if;
	otherwise if paternalism of Progue >= 2 and a random chance of 1 in 2 succeeds;
		if affinity of Progue > 0 begin;
			if paternalism of Progue >= 4 begin; say "[one of]in a fatherly tone[or]putting a strong hand on your shoulder[in random order]";
			otherwise; say "[one of]regarding you fondly[or]tapping you on the knee[or]seeming to find quiet reassurance in your company[in random order]"; end if;
		otherwise;
			if paternalism of Progue >= 4 begin; say "[one of]conveying [if affinity of Progue < -3]strong[otherwise]faint[end if] disapproval with his body language[or]frowning disapprovingly at you[in random order]";
			otherwise; say "[one of]sternly[or]in a stern tone[or]shooting you a look of mild disapproval[in random order]"; end if;
		end if;
	otherwise if ( submission of Progue >= 2 or submission of Progue <= -2 ) and a random chance of 1 in 2 succeeds;
		if submission of Progue >= 4 begin; say "[one of]watching nervously for your reaction[or]moving quickly aside as you lean forward[or]hesitantly, as if afraid of your reaction[or]with an embarrassed laugh[in random order]";
		otherwise if submission of Progue >= 2; say "[one of]glancing surreptitiously at your reaction[or]a bit hesitantly[or]awkwardly[or]drawing back a little[in random order]";
		otherwise if submission of Progue <= -3; say "[one of]enjoying your reaction[or]watching with interest to see your reaction[or]loudly[or]holding your gaze[in random order]";
		otherwise; say "[one of]confident and commandingly[or]without waiting for a reply[or]clapping you roughly on the back[or]stepping forward a little[in random order]";
		end if; 
	otherwise;
		if affinity of Progue >= 4 begin; say "[one of]touching his hand warmly to your shoulder[or]regarding you fondly[or]smiling broadly at you[in random order]";
		otherwise if affinity of Progue >= 2; say "[one of]smiling a little[or]giving you a cautious smile[or]nodding at you[in random order]";
		otherwise if affinity of Progue < 2; say "[one of]cautiously glancing in your direction[or]weighing your reaction[or]watching you intently[in random order]";
		otherwise if affinity of Progue <= -2 and affinity of Progue > -5; say "[one of]avoiding your eyes[or]after an awkward silence[or]a bit distantly[or]studiously avoiding your glance[in random order]";
		otherwise; say "[one of]making sure to keep his distance from you[or]with harsh sarcasm[or]coldly[or]in an unfriendly tone[in random order]";
		end if;
	end if.


Chapter - Archetypes

[ Near the end of the game, we can take the various relationship values and classify Progue into one of a dozen or so archetypes, which represent a best-guess characterization of Progue based on his relationship with the player. For example, high paternalism but low submission and affinity result in the Disciplinarian, a disapproving father figure who is constantly trying to correct the behavior of the player. The archetypes are mainly used in the Confrontation and Epilogue sequences. ]














To decide whether father knows best: if submission of Progue <= -1 and paternalism of Progue > 1 and affinity of Progue > 0, decide yes; decide no.

To decide whether bitter dad: if submission of Progue >= 1 and paternalism of Progue > 1 and affinity of Progue < 0, decide yes; decide no.

To decide whether disciplinarian: if submission of Progue <= -1 and paternalism of Progue > 1 and affinity of Progue < 0, decide yes; decide no.

To decide whether neurotic dad: if submission of Progue >= 1 and paternalism of Progue > 1 and affinity of Progue > 0, decide yes; decide no.

To decide whether friend: if submission of Progue < 0 and paternalism of Progue <= 1 and affinity of Progue > 0 and romance of Progue < 4, decide yes; decide no.

To decide whether toady: if submission of Progue > 1 and paternalism of Progue <= 1 and affinity of Progue > 0 and romance of Progue < 4, decide yes; decide no.

To decide whether lover: if submission of Progue < 0 and paternalism of Progue <= 1 and affinity of Progue > 0 and romance of Progue >= 4, decide yes; decide no.

To decide whether twitterpated: if submission of Progue > 0 and paternalism of Progue <= 1 and affinity of Progue > 0 and romance of Progue >= 4, decide yes; decide no.
To decide whether enemy: if submission of Progue < 0 and paternalism of Progue <= 1 and affinity of Progue < -1 and romance of Progue < 4, decide yes; decide no.
To decide whether slave: if submission of Progue > 0 and paternalism of Progue <= 1 and affinity of Progue < -1 and romance of Progue < 4, decide yes; decide no.
To decide whether bitter lover: if submission of Progue < 0 and paternalism of Progue <= 1 and affinity of Progue < 0 and romance of Progue < 0, decide yes; decide no.
To decide whether shattered lover: if submission of Progue > 0 and paternalism of Progue <= 1 and affinity of Progue < 0 and romance of Progue < 0, decide yes; decide no.

Section - Archetype Message

[ This prints a dramatic clause based on Progue's archetype. This should only be used in the confrontation, since some of the drama levels wouldn't make sense in a normal conversation.]

To say archetype message:
	if neurotic dad:
		say "[one of]hurriedly interrupting you in a consoling tone[or]making anxious placating motions with his hands[or]smiling nervously while trying to seem tall and inspiring[in random order]";
	else if father knows best:
		say "[one of]giving you a chiding look[or]confident in his lecturing[or]fully expecting you to listen[in random order]";
	else if bitter dad:
		say "[one of]speaking quickly as if sure you plan to interrupt him[or]waving a desperate finger at you as if in weak admonishment[or]trying and failing to adopt a stern, paternal tone[in random order]";
	else if disciplinarian:
		say "[one of]cutting you off with a stern glare[or]grabbing your arm as if expecting you to run away[or]rooting you to the spot with an angry, commandeering gaze[in random order]";
	else if toady:
		say "[one of]grabbing your sleeve in an almost pathetically eager attempt to secure your attention[or]eyes wide with pleading, begging you to hear his say[or]clutching your hand fawningly[in random order]";
	else if lover:
		say "[one of]closing his hands around yours[or]putting his hands on your shoulders[or]stepping close to you[in random order]";
	else if twitterpated:
		say "[one of]falling to his knees and clutching your hand desperately[or]taking your head in his hands and looking into your eyes with pleading[or]hugging you fiercely for a moment before breaking away and staring into your eyes[in random order]";
	else if enemy:
		say "[one of]regarding you cooly[or]folding his arms as he watches you warily[or]tones clipped as he speaks with forced over-politeness[in random order]";
	else if slave or shattered lover:
		say "[one of]falling to the ground and groveling at your ankles[or]sniveling and only glancing up at your eyes in furtive intervals[or]wringing his hands and looking up at you with desperate pleading in his eyes[in random order]";
	else if bitter lover:
		say "[one of]looking at you with barely concealed contempt[or]dark lines around red-rimmed eyes telegraphing his hatred[or]cold fury making his movements short and clipped[in random order]";
	else:
		say "[one of]body tense but tone calling on your easy familiarity[or]making eye contact to impress upon you how important this is to him[or]touching a hand to your arm for a moment as if invoking your friendship[in random order]".


Chapter - Disposition (Short Term Feelings for Player)

[ During an individual conversation, the player might take annoying actions like not responding, repeating the same topic, or just choosing dialog options that piss off Progue. Disposition represents a way we can keep track of how Progue feels about the player *just for the duration of the current conversation*, without affecting the relationship variables, so Progue can get annoyed at the player but still remember a lasting friendship.

However, if we *do* piss off Progue to a high degree (or impress him inordinately) after the conversation is over we'll adjust Progue's affinity. Too many extremely annoying conversations and he really will start to dislike you. ]

Progue has a number called disposition. Definition: a person is friendly if its disposition is 2 or more. Definition: a person is annoyed if its disposition is -2 or less. The disposition of Progue is 0. 

Before greeting Progue (this is the reset Progue's disposition rule):
	now the disposition of Progue is 1;
	if Progue is being debugged, say "// Progue: disposition set to 1 (After greeting Progue).";
	continue the action.

Every turn when Progue is not enclosed by location and the disposition of Progue is not 0 (this is the process Progue's disposition rule):
	if Progue is being debugged, say "// Progue: processing disposition (because Progue is not enclosed by location and disposition of Progue is not 0).";
	now the disposition of Progue is 0.

To annoy Progue:
	decrease disposition of Progue by 3;
	report on Progue's social standing for 9.

To impress Progue:
	increase disposition of Progue by 3;
	report on Progue's social standing for 10.


Chapter - Animus (Long Term Movements)

[ Animus represents what Progue is doing in the medium-term, a series of activities which he will decide upon, prepare for, and then carry out. Each psyche has an allowed list of animuses which Progue randomly selects from after he has been working at one for a while.

Sometimes Progue is engaged in conversation, or in the middle of an episode. There is no animus that specifies these two conditions, so care must be taken to account for them if necessary. ]

Endeavour is a kind of value. The endeavours are null-endeavour, ruminating, resting, fishing, mending, hand-standing, frog-catching, spying, hiding, swimming, conch-blowing, player-seeking, convalescing, beach-combing, hottubbing, cleaning, paint-making, loitering, scrapbooking, stoicising.

Progue has an endeavour called animus. The animus of Progue is ruminating. Progue has an endeavour called prior animus. The prior animus of Progue is resting. Progue has an endeavour called next animus. The next animus of Progue is null-endeavour.

Progue's animus table is a table-name that varies. Progue's animus table is Table of Progue Default. 

Progue is either fulfilling or wishing. Progue is fulfilling. [ When Progue is wishing, he has decided to do something new, but is still in the goal-seeking stage; he hasn't started doing it yet. ]

progue-venue is a room that varies.  progue-venue is UnRoom. [ progue-venue stores the location Progue has decided to do a new activity at.]

Table of Progue Ignorance Endeavours
pick
beach-combing

Table of Progue Denial Endeavours
pick
mending
fishing
beach-combing
beach-combing
frog-catching
hand-standing
swimming

Table of Progue Fear Endeavours
pick
spying
spying
spying
hiding
hiding

Table of Progue Suppression Endeavours
pick
ruminating
fishing
mending
hottubbing
swimming
beach-combing
with 4 blank rows

Table of Progue Uncertainty Endeavours
pick
ruminating
beach-combing
cleaning
scrapbooking
with 2 blank rows

Table of Progue Emotional Endeavours
pick
resting
convalescing

Table of Progue Fugue Endeavours
pick
hiding

Section - Describing Progue's Animus

[ These are like printed names for each animus.]

To say Progue-animus:
	let anim be animus of Progue;
	if Progue is wishing begin; say "going somewhere";
	otherwise if anim is ruminating; say "thinking";
	otherwise if anim is scrapbooking; say "sifting through old things";
	otherwise if anim is resting; say "sleeping";
	otherwise if anim is fishing; say "fishing";
	otherwise if anim is mending; say "stitching";
	otherwise if anim is hand-standing; say "hand-standing";
	otherwise if the anim is cleaning; say "cleaning the studio";
	otherwise if the anim is paint-making; say "mixing paints";
	otherwise if anim is frog-catching; say "creeping slowly through the marsh";
	otherwise if anim is spying; say "behaving mysteriously";
	otherwise if anim is hiding; say "hiding";
	otherwise if anim is swimming; say "swimming";
	otherwise if anim is conch-blowing; say "[if we have not discussed tcp_greeting]holding some large object in his hands[otherwise]scrutinizing the conch";
	otherwise if anim is player-seeking or anim is loitering; say "hesitating";
	otherwise if anim is convalescing; say "resting";
	otherwise if anim is beach-combing; say "cleaning the beach";
	otherwise if anim is hottubbing; say "relaxing";
	otherwise; say animus of Progue;
	end if.


[ Describe Progue getting back to what he was doing. In certain cases, we want to avoid saying the animus if it would sound awkward in that context; print a more generic message in that case. ]

To say Progue-resumes:
	if the animus of Progue is hand-standing:
		say "And he suddenly falls forward flat on his face; at the last moment pushing forward with his hands until he's once again balancing on them";
	else if the animus of Progue is resting:
		say "He [if affinity of Progue < 0]grumpily [end if]lies back down on the [surface-material] and closes his eyes";
	else if the animus of Progue is swimming:
		say "He kicks a few strokes away from you and stretches out his arms, bobbing lazily in the swell";
	else if the animus of Progue is player-seeking or animus of Progue is loitering or animus of Progue is spying or animus of Progue is hiding or Progue is wishing:
		say "He [if affinity of Progue >= 0][one of]nods to you[or]waves farewell[or]turns away, glancing at the sky appraisingly[or]looks around vaguely, as if trying to remember what he was doing[in random order][else][one of]turns away angrily[or]pointedly turns his back on you[or]nods curtly to you[at random][end if]";
	else:
		say "He [if affinity of Progue >= 0][one of]goes back to[or]resumes[or]continues[or]turns his attention back to[or]goes on[in random order][else][one of]angrily goes back to[or]turns away with a frown and resumes[or]nods curtly to you and continues[at random][end if] [Progue-animus]";
		if romance of Progue > 1 and a random chance of 1 in 2 succeeds:
			say "[one of] with a wink[or], poking you playfully[or], smiling flirtatiously[in random order]";
		else if paternalism of Progue > 1 and a random chance of 1 in 2 succeeds:
			say "[if affinity of Progue > 0][one of], regarding you fondly[or] with a fatherly smile[at random][else][one of], shaking his head at you disapprovingly[or] with a stern glance in your direction[at random][end if]";
		else if submission of Progue > 1 and a random chance of 1 in 2 succeeds:
			say "[if affinity of Progue > 0][one of], stepping graciously out of your way[or], first catching your glance to make sure you approve[at random][else][one of], fidgeting nervously in your presence[or], grimacing nervously[or], taking a few nervous steps back[in random order][end if]";
		else if submission of Progue < -1 and a random chance of 1 in 2 succeeds:
			say "[if affinity of Progue > 0][one of] and whistling cheerfully[or] and cheerfully ignoring you[or] without waiting for any response[in random order][else][one of] and pointedly ignoring you[or] with a dismissive glance in your direction[or], seemingly dismissing you for now[in random order][end if]".
 


[ "animus-business" is a say tag which can be included after a comma and space to add some color to conversations related to what Progue is doing. ]

To say animus-business:
	if Progue is wishing begin; say "[one of]shifting anxiously from foot to foot[or]glancing past you towards his destination[or]tapping one foot rhythmically on the [surface-material][or]drumming his fingers against his thigh[or]a bit impatiently[or]scratching one foot with the other[in random order]";
	otherwise if the animus of Progue is fishing; say "[one of]twitching the line absently with his finger[or]pulling in the line and casting it out again[or]snapping the fishing pole reflexively[or]resetting his grip on the fishing pole[in random order]";
	otherwise if the animus of Progue is beach-combing; say "[one of]flexing his toes in the spotless sand beneath him[or]running a finger idly along a broken shell[or]frowning at a speck of seaweed near your foot[or]brushing a piece of green weed from his shirt[in random order]";
	otherwise if the animus of Progue is mending; say "[one of]tapping the rounded top of the needle absently[or]running his hands across the rags in his lap[or]fingering a hole in the cloth[or]scratching the garments in his lap[in random order]";
	otherwise if the animus of Progue is hand-standing; say "[one of]flexing his wrists back and forth[or]poking at a scratch on his palm[or]pinching his knuckles one by one[or]flexing his toes as if he'd prefer they were back in the air[in random order]";
	otherwise if the animus of Progue is cleaning; say "[one of]wiping dust from the workbench with a bit of rag[or]stacking old pots of paint[or]pulling up a vine that's crept through the window[or]frowning at a spot of spilled paint on the workbench[in random order]";
	otherwise if the animus of Progue is paint-making; say "[one of]stirring a pot of paint vigorously[or]wiping a droplet of paint from his forehead[or]scraping some paint from the sides of a pot[or]studying the consistency of the paint in a nearby pot with a frown[in random order]";
	otherwise if the animus of Progue is hottubbing; say "[one of]flicking the water absently with his fingers[or]sinking down till the water reaches his chin[or]kicking his legs languidly in the water[or]tickling water from an ear with one finger[or]pulling up his knees till they just poke out of the water[or]ducking his head half-under the water for a moment to blow little bubbles before resurfacing[in random order]";
	otherwise if the animus of Progue is swimming; say "[one of]floating serenely[or]opening one eye to squint balefully at you[or]scissoring his arms gently at his sides[or]bobbing gently on a swell[in random order]";
	otherwise if the animus of Progue is frog-catching; say "[if caught-frog is true][one of]rocking his frog-cage hands gently back and forth[or]peering at his caught frog[or]holding his frog close to his body[in random order][otherwise][one of]peering under an overhanging rock[or]making patterns in the mud with one bare toe[or]slapping a mosquito[or]brushing some wet grass from his knees[or]keeping one eye trained on a patch of rustling weeds[or]wiping his brow in the humid marsh air[or]tilting his head at a half-heard distant croak[in random order][end if]";
	otherwise; say "[one of]scratching his elbow[or]flexing a tanned foot appraisingly[or][attitude-business][or]shuffling his feet over the [surface-material][in random order]";
	end if.

Part - Description











Section - Printed Name

spotted-progue is a truth state that varies.

To say printed_name_progue:
	if spotted-Progue is false begin;
		now spotted-Progue is true;
		say "distant [o]figure[x] dressed in rags";
	otherwise if Progue is idle and already-highlighted-progue < 2 and ( Progue is enclosed by location or distant-progue is enclosed by location ) ; [It's not that we want to highlight it twice, but printing routines are actually run twice each time they are called, the first to print the name to an internal memory buffer.]
		say "[if met_progue is false][o]figure[x][otherwise if improper-named]strange [o]man[x][otherwise][o]Progue[x]";
		increase already-highlighted-progue by 1;
	otherwise;
		say "[if met_progue is false]figure[otherwise if improper-named]strange man[otherwise]Progue";
[	otherwise;
		say "He";]
	end if.

already-highlighted-progue is a number that varies. already-highlighted-progue is 0. Before reading a command (this is the reset Progue highlighting variable rule): now already-highlighted-progue is 0.

Section - Initial Appearance

The initial appearance of Progue is "[initialapp-Progue]".

Before writing a paragraph about Progue when Progue is wishing (this is the don't describe Progue when he's about to move rule): now Progue is mentioned. [Since we'll be describing him moving anyway, omit printing an initial appearance.]

To say initialapp-Progue:
	repeat through Table of Progue's Initial Appearance:
		[say "**[episode entry] (curr is [current episode]: [if current episode is episode entry]Y[else]N[end if])**[line break]";]
		if there is an episode entry and current episode is episode entry:
			say desc entry;
			stop;
	repeat through Table of Progue's Initial Appearance:
		if there is an animus entry and animus entry is the animus of Progue:
			say desc entry;
			stop;
	say "[The Progue] is here[if Progue is being debugged] ([animus of Progue])[end if].".

Table of Progue's Initial Appearance
animus		episode		desc
fishing		an episode		"[The Progue] is here, trolling the shallows near the beach with a fishing line."
ruminating	--			"[if the psyche of Progue is resolved]Progue stands nearby, trembling, tired, but somehow also suffused with real peace[else][The Progue], perched on [Progue's perch], seems deep in thought[end if]."
scrapbooking	--		"Progue sits on the ledge, rummaging listlessly through his pile of possessions."
mending	--			"[The Progue] is sitting on [Progue's perch], mending his tattered clothes with a needle and thread."
hand-standing	--		"[The Progue] is walking carefully across the [surface-material] on his hands, a look of upside-down concentration on his face."
cleaning		--			"Progue is scrubbing the surface of the workbench, whistling cheerfully."
paint-making	--		"Progue, surrounded by baskets, pots, konokuk leaves, and crude tools, is cheerfully mixing paints."
frog-catching	--		"[The Progue] is here, [if caught-frog is true]kneeling on the ground with a small green frog cradled in his hands[mf2l][otherwise]crawling through the marsh, eyes pinned on the ground[end if]."
swimming	--			"[The Progue] is a few swells away, bobbing lazily as he floats on his back, eyes closed."
beach-combing	--		"[The Progue] is here, walking carefully up and down the beach and studying the sand critically. His arms are full of bits of wood, seaweed, and broken shells."
resting		--			"Lying on the [surface-material] is [the Progue], [if the psyche of progue is emotional]covered in blankets and sleeping uneasily[otherwise]sound asleep[end if]."
convalescing		--	"Progue sits up weakly back against the wall, watching you as you enter."
loitering			--	"[The Progue] [if we are going or we are landmark-going]looks up eagerly as you approach[else]stands nearby, [proguedeciding][end if]."
player-seeking	--	"[The Progue] [if we are going or we are landmark-going]looks up as you approach[else]stands nearby, [proguedeciding][end if]."
hottubbing	--	"[The Progue] relaxes on the edge of the pool, flexing shriveled toes just under the surface."
stoicising	--	"Progue is nearby, solemn, lost within his own thoughts."

To say mf2l: move frog to Progue. 

To say proguedeciding: say "[one of]peering intently at a fingernail[or]idly stretching[or]momentarily distracted by one patchwork-covered sleeve[or]tapping a finger thoughtfully against his nose[in random order]".

Section - Description

The description of Progue is "[description-Progue]". 

To say description-Progue:
	if Progue is wishing:
		if an unimportant episode is playing, say "He looks like he's on his way somewhere.";
		else say "He's engrossed in the conversation.";
		stop;
	repeat through Table of Progue's Description:
		if there is an episode entry and current episode is episode entry:
			say "[desc entry]";
			unless the animus of Progue is resting or the psyche of Progue is emotional:	
				if ( an episode is playing and current episode is serendipitous ) or no episode is playing, say "[paragraph break][Progue-mood-summary]";
			stop;
	repeat through Table of Progue's Description:
		if there is an animus entry and animus entry is the animus of Progue:
			say "[desc entry]";
			unless the animus of Progue is resting or the psyche of Progue is emotional:
				if ( an episode is playing and current episode is serendipitous ) or no episode is playing, say "[paragraph break][Progue-mood-summary]";
			stop;
	say "He is a tall and spindly figure whose age has been clouded by castaway years to become unsure and irrelevant, bleached hair and bushy eyebrows lifting a contented face scrubbed clean by sea breeze and sunlight. He wears pants that were once white, and a shirt that was once blue but now falls in grey threadbare tatters and streams from bony arms and scratched elbows, a dancer's costume twirling alike with the breeze and his jittery movements. These seem focused in his large, rough hands, as if they house some sleeping power that swells joints and sharpens sinews in constant, futile struggle to escape.".

Table of Progue's Description
animus		episode		desc
ruminating	--			"[The Progue] sits on [Progue's perch], seemingly lost in thought."
resting		--			"[if the psyche of Progue is emotional]His skin is pale and clammy, and his breathing labored. He does not look well[otherwise]Sleeping deeply, he seems at first glance the picture of a shipwreck victim: faded and torn rags akimbo on bony joints, long hair touched with grey, matted and thinning, and a sun-worn face.[paragraph break]Even in rest, however, there is some vague power in his figure, some animus that decrepitude has yet to touch[end if]."
fishing		--			"[The Progue] trolls the shallows along the lagoon with a crude line, eyes focused intently on the tiny shapes darting through the water near his ankles."
swimming	--			"Bobbling like a tan cork on the waves, [the Progue] floats serenely, eyes shut, a faint smile on his face."
mending	--			"[The Progue], perched on [Progue's perch], mends his clothes with a needle and thread."
hand-standing	--		"He seems to be utterly enjoying himself."
cleaning		--			"He has made good headway already, throwing everything hopelessly corroded or damaged into a pile and sorting and ordering what's left, while scrubbing the years of dirt and neglect from the workbench."
paint-making	--		"Dotted with specks of color and drenched in sweat, he nevertheless seems cheerful as he mixes the crushed ingredients you brought him in a large pot."
frog-catching	--		"Crawling through the marsh heedless of the muck and grime, [the Progue] is focused intently on [if caught-frog is true]the small frog caught in the cage of his hands[otherwise]the ground, moving his attention slowly from one clump of grass and rocks to another[end if]."
beach-combing	--		"He seems intent on his task, which seems to be nothing less than keeping the entire beach immaculately spotless."
hottubbing	--			"[The Progue] seems to enjoy the hot, swirling waters of the spring."
convalescing		--	"His skin is pale, and he looks incredibly weak. You are not sure he is going to survive."
stoicising	--	"Some inner strength has returned. He looks down at his hands and rubs his fingertips together, and the faintest touch of a smile reaches his lips."

[ Examining Progue reveals information about his internal state.]

To say Progue-mood-summary:
	say "He ";
	if submission of Progue is 8 begin; say "practically grovels, flinching at your every sudden move, but";
	otherwise if submission of Progue >= 6; say "rubs his hands nervously, watching your every move for cues, and";
	otherwise if submission of Progue >= 4; say "stands back a few feet from you respectfully and";
	otherwise if submission of Progue >= 2; say "seems hesitant and ready to defer to you, but";
	otherwise if submission of Progue >= -1; say "seems a bit out of sorts around you, and";
	otherwise if submission of Progue >= -3; say "seems to know what he is doing, and";
	otherwise if submission of Progue >= -5; say "seems confident and in command of the situation, and";
	otherwise if submission of Progue >= -7; say "commands a wide arc of personal space, and";
	otherwise if submission of Progue is -8; say "seems to tower over you commandingly and";
	end if;
	say " [one of]regards[or]fixes[in random order] you with ";
	if romance of Progue > 0 begin;
		if romance of Progue is 1, say "a wink";
		if romance of Progue is 2, say "a cocky smirk";
		if romance of Progue is 3, say "a knowing smile and raised eyebrow";
		if romance of Progue is 4, say "a flirtatious smile";
		if romance of Progue >= 5, say "a contented, twitterpated smile";
		if romance of Progue < -1, say "a dirty, hateful glance";
	otherwise;
		if affinity of Progue is 8, say "the trusting smile of a lifelong friend";
		if affinity of Progue is 7, say "a trusting smile that reaches his eyes";
		if affinity of Progue is 6, say "genuine friendliness";
		if affinity of Progue is 5, say "a sparkling grin";
		if affinity of Progue is 4, say "a friendly smile";
		if affinity of Progue is 3, say "a guarded smile";
		if affinity of Progue is 2, say "an amused smirk";
		if affinity of Progue is 1, say "one corner of his mouth lifted";
		if affinity of Progue is 0, say "an indifferent expression";
		if affinity of Progue is -1, say "a raised eyebrow";
		if affinity of Progue is -2, say "a look of annoyance";
		if affinity of Progue is -3, say "a frown";
		if affinity of Progue is -4, say "narrowed eyes";
		if affinity of Progue is -5, say "unconcealed anger";
		if affinity of Progue is -6, say "contempt";
		if affinity of Progue is -7, say "a look of hatred";
		if affinity of Progue is -8, say "a look of total hatred";
	end if;
	if paternalism of Progue > 1 begin;
		if paternalism of Progue is 8 begin; say ", ";
		otherwise if paternalism of Progue >= 6; say ", like ";
		otherwise if paternalism of Progue >= 4; say ", almost like ";
		otherwise; say ", reminding you a bit of ";
		end if;
		say "a";
		if affinity of Progue > 4 begin; say " proud father";
		otherwise if affinity of Progue >= 0; say " father figure";
		otherwise if affinity of Progue >= -5; say " disappointed father";
		otherwise; say "n angry father";
		end if;
	end if;
	say ".";
	continue the action.


Section - Distant Description

[ We often describe Progue at a distance; when we do, we move this object into scope, which lets the player examine Progue. We can set him to be "out-of-sight" to indicate that he has just left visibility.]

Distant-progue is minor set dressing. The printed name of distant-Progue is "[the Progue]". Understand "figure/form/man/Progue" as distant-Progue. The provoke message of distant-Progue is "He's not nearby."

Check following distant-progue: try following Progue instead. Does the player mean following Progue: it is likely. 

Rule for supplying a missing noun when saying farewell to and distant-Progue is in location: say "He's already out of earshot." instead.

Distant-progue can be in-sight or out-of-sight. Distant-progue is in-sight. Every turn when distant-progue is out-of-sight and distant-progue is off-stage: now distant-progue is in-sight. [ This object can be used both when we're seeing Progue at a distance, and when Progue has just vanished from our sight, in which case the "out-of-sight" flag is used. ]

The description of distant-Progue is "[if out-of-sight]He is no longer in sight.[otherwise if the psyche of Progue is resolved]He raises a single hand to you silence.[otherwise if current episode is Rayfish Suicide]He's not moving.[otherwise if current episode is Word Day]The figure stands atop one of the rounded boulders and shouts at the surf.[otherwise if Progue is wishing][The Progue] seems to be on his way somewhere.[otherwise][The Progue], off near [prose name of location of Progue], seems to be [Progue-animus].[end if]".

Understand "[greeting word]" or "say [greeting word]" or "[greeting word] [distant-Progue]" as a mistake ("[if current episode is Word Day]The figure seems completely oblivious to your attempts to gain his attention; maybe if you got closer to the [d]boulders[x] he could see you better[otherwise]You're too far away to easily attract his attention; maybe if you made some noise or got closer[end if].") when distant-Progue is enclosed by location. 

First Instead of waking or kissing or touching or hugging or pushing or attacking distant-Progue: say "He's too far away." instead.

First report remembering Progue:
	say "The last time you saw him, [the Progue] was [if remembered spot is location]right here[otherwise if remembered spot is unvisited]heading towards an area you haven't explored[otherwise]at [the prose name of remembered spot][end if]." instead.



Part - Progue's Behavior

Chapter - Movement & Occupations

Section - Progue's Motivation Rule

[ When Progue is fulfilling (i.e. doing something), we don't have much to do; he just keeps doing it until his activity counter runs over. When he's wishing, we follow the Progue's motivation rule, which deals with choosing a new activity, determining where it should be done, moving Progue there, beginning the new activity, and describing any part of this process that should happen to be visible to the player. ]

Every turn when Progue is wishing and Progue is idle and the player is regionally in Lacuna and Progue is on-stage and the psyche of Progue is not fugue and the psyche of Progue is not resolved (this is the trigger Progue's motivation rule):
	if Progue is being debugged, say "// Progue: trigger Progue's motivation rule (because Progue is wishing and Progue is idle and etc.).";
	follow the Progue's motivation rule.

This is the Progue's motivation rule: 	
	if Progue is being debugged, say "// Progue: motivation rule (animus: [Progue-animus]).";
	if animus of Progue is player-seeking, now progue-venue is location of player;
	if progue-venue is UnRoom begin;  [ we need to pick a place to go ] 
		now progue-venue is location;
		let counter be 0;
		while progue-venue is location and counter < 5 begin;
			select a progue-venue for Progue;
			increase counter by 1;
		end while;
		if Progue is being debugged begin;
			if counter >= 5, say "// Progue: trying to pick a fresh progue-venue but keep selecting present location ([location of Progue]); giving up.";
			otherwise say "// Progue: picked a fresh progue-venue for Progue ([progue-venue]).";
		end if;
	end if;
	if progue-venue is not the location of Progue begin;  [ we've been assigned a place to go but we aren't there ]
		if progue-venue is Lower Beach and tidein, now progue-venue is North Beach;
		if progue-venue is off limits to Progue begin;
			do nothing; [ stays put]
		otherwise if exploring Progue's turf;
			let aim be the Lacuna route from the location of Progue to progue-venue; 
			if aim is not a direction begin;
				if Progue is being debugged, say "// Progue ERROR: [aim] is not a direction. ";
				do nothing instead;
			end if;
			if the room aim from the location of Progue is not a room begin;
				if Progue is being debugged, say "// Progue ERROR: the room [aim] from the location of Progue ([location of Progue]) is not a room.";
				do nothing instead;
			end if;
			if the room aim from the location of Progue is off limits to Progue begin;
				if Progue is being debugged, say "// Progue (in [location of Progue]) hesitates instead of going [aim] to reach destination [progue-venue].";
				do nothing instead;
			end if;
			if Progue is being debugged, say "// Progue (in [location of Progue]) tries going [aim] to reach destination [progue-venue].";
			let frmrl be location of Progue;
			move Progue to the room aim from frmrl;
			describe Progue moving from frmrl to the location of Progue;
			if distant-Progue is in location of Progue, remove distant-Progue from play; [ so if Progue arrives somewhere, we get rid of the far off version of him. ]
		otherwise;  [ not nearby  ]
			if Progue is being debugged, say "// Progue (in [location of Progue]) teleports to [progue-venue] (because not exploring Progue's turf).";
			move Progue to progue-venue;
		end if;
	otherwise; [ we've arrived and are ready to go. ]
		if Progue is being debugged, say "// Progue: arrived at progue-venue ([progue-venue]); setting to fulfilling.";
		now Progue is fulfilling;
		if the animus of Progue is ruminating begin;
			if Progue is enclosed by location and dont_describe_progue is false, say "[The Progue] sits on [Progue's perch], puts his chin in his hands, and stares into the distance moodily.";
			now Progue's animus table is Table of Progue Ruminating;
		otherwise if the animus of Progue is scrapbooking;
			if Progue is enclosed by location and dont_describe_progue is false, say "Progue sits down and begins rummaging through his strange assembly of possessions in a listless, sad manner.";
			now Progue's animus table is Table of Progue Scrapbooking;
		otherwise if the animus of Progue is resting;
			if Progue is enclosed by location and dont_describe_progue is false, say "[The Progue] [if psyche of Progue is emotional]drifts off into an uneasy, labored sleep[otherwise]falls lightly to the ground, curls up, and shuts his eyes tightly[end if].";
			now Progue's animus table is Table of Progue Sleeping;
			now the animus of Progue is resting;
		otherwise if the animus of Progue is fishing;
			if Progue is enclosed by location and dont_describe_progue is false, say "[The Progue] wades into the surf, fiddles for a few moments with his fishing pole, then casts it into the water.";
			now Progue's animus table is Table of Progue Fishing;
		otherwise if the animus of Progue is mending;
			if Progue is enclosed by location and dont_describe_progue is false, say "[The Progue] perches on [Progue's perch], pulls out a bone needle and a bundle of brown fibers, and begins mending his patchy pants.";
			now Progue's animus table is Table of Progue Mending;
		otherwise if the animus of Progue is hand-standing;
			if Progue is enclosed by location and dont_describe_progue is false, say "[The Progue] flexes his hands, then dives forward onto the [surface-material] and ends up standing on them, tanned feet flailing in midair.";
			now Progue's animus table is Table of Progue Hand-Standing;
		otherwise if the animus of Progue is paint-making;
			if Progue is enclosed by location and dont_describe_progue is false, say "Progue takes the basket out, grabs some implements, a few pots filled with various other materials, and begins to mix.";
			now Progue's animus table is Table of Progue Paint-Making;
		otherwise if the animus of Progue is cleaning;
			if Progue is enclosed by location and dont_describe_progue is false, say "Progue studies the mess on the workbench sadly, then rolls up his sleeves and gets to work cleaning it off.";
			mark workbench cleaned;
			now Progue's animus table is Table of Progue Cleaning;
		otherwise if the animus of Progue is frog-catching;
			if Progue is enclosed by location and dont_describe_progue is false, say "[The Progue] crouches on his knees in the muck and begins slowly waddling around, peering in clumps of grass, under rocks, and letting a quiet, low whistle out from between his teeth.";
			now Progue's animus table is Table of Progue Frog-Catching;
		otherwise if the animus of Progue is conch-blowing;
			if Progue is enclosed by location and dont_describe_progue is false, say "Progue spies something on the ground and bends down. He digs a little in the sand and pulls up an enormous conch shell. Grinning, he cleans the wet sand from it and admires it.";
			now Progue's animus table is Table of Progue Conch-Blowing;
		otherwise if the animus of Progue is hiding;
			now Progue's animus table is Table of Progue Hiding;
		otherwise if the animus of Progue is swimming;
			if Progue is enclosed by location and dont_describe_progue is false, say "[The Progue] swims up to within a few swells of you, then kicks back and floats on the surface of the water, hands folded behind his head.";
			now Progue's animus table is Table of Progue Swimming;
		otherwise if the animus of Progue is beach-combing;
			if Progue is enclosed by location and dont_describe_progue is false, say "[The Progue] begins gathering up pieces of seaweed, shells, and other debris, cupping them in his hands.";
			now Progue's animus table is Table of Progue Beach-Combing;
		otherwise if the animus of Progue is hottubbing;
			if Progue is enclosed by location and dont_describe_progue is false, say "[The Progue] [one of]cannonballs into the water with a little whoop[or]dives lithely into the center of the pool[in random order], before surfacing and swimming to a good sitting spot near one side to relax.";
			now Progue's animus table is Table of Progue Hottubbing;
		otherwise if the animus of Progue is convalescing;
			if Progue is enclosed by location and dont_describe_progue is false, say "Progue stirs, then coughs suddenly and opens his eyes. Blinking at you blearily, he sits up and rests against the wall of the cabin weakly.";
			now Progue's animus table is Table of Progue Convalescing;
		otherwise;
			if Progue is being debugged and Progue is enclosed by location, say "// Progue: begins [the animus of Progue] (for which there is no initial msg or animus table).";
			now Progue's animus table is Table of Progue Default;
		end if;
	end if.

Section - Picking a New Activity for Progue


[ To decide what to do next, Progue consults his animus table, and also considers such factors as whether it is time for bed or whether it is raining. Once decided, if present we describe him completing the old activity (stored in prior animus).]

To pick a new activity for Progue: 
	if Progue is being debugged, say "// Progue: pick a new activity.";
	now the prior animus of Progue is the animus of Progue;
	if the next animus of Progue is not null-endeavour begin;
		now the animus of Progue is the next animus of Progue;
		now the next animus of Progue is null-endeavour;
	otherwise if it is after 7:00 PM or it is before 4:59 AM;
		now the animus of Progue is resting;
	otherwise;
		if the psyche of Progue is ignorance begin; choose a random row in the Table of Progue Ignorance Endeavours;
		otherwise if the psyche of Progue is denial; choose a random row in the Table of Progue Denial Endeavours;
		otherwise if the psyche of Progue is fear; choose a random row in the Table of Progue Fear Endeavours;
		otherwise if the psyche of Progue is suppression; choose a random row in the Table of Progue Suppression Endeavours;
		otherwise if the psyche of Progue is uncertainty; choose a random row in the Table of Progue Uncertainty Endeavours;
		otherwise if the psyche of Progue is emotional; choose a random row in the Table of Progue Emotional Endeavours;
		otherwise; choose a random row in the Table of Progue Fugue Endeavours;
		end if;
		if raining and the psyche of Progue is denial, now the animus of Progue is ruminating;
		otherwise now the animus of Progue is pick entry;
	end if;
	now Progue is wishing;
	now the activity counter of progue is 0;
	if Progue is being debugged, say "// Progue: picked a new animus ([animus of Progue]) replacing [prior animus of Progue].";
	if the prior animus of Progue is cleaning begin;
		mark workbench cleaned;
	end if;
	if the prior animus of Progue is paint-making begin;
		while there is a pick of paint-making in Table of Progue Suppression Endeavours begin;
			choose row with pick of paint-making in Table of Progue Suppression Endeavours;
			blank out the whole row;
		end while;
		while there is a pick of paint-making in Table of Progue Uncertainty Endeavours begin;
			choose row with pick of paint-making in Table of Progue Uncertainty Endeavours;
			blank out the whole row;
		end while;
		while the number of paintpots enclosed by Progue > 0 repeatedly move a random paintpot enclosed by Progue to Studio;
	end if;
	if the prior animus of Progue is beach-combing and location of Progue is regionally in Beachfront, cleanify the beach in location of Progue;
	if the prior animus of Progue is the animus of Progue begin;
		unless current episode is rendezvous and location is not meeting place of current episode, now Progue is fulfilling; [ already there; job's done ]
	otherwise if location of Progue is not progue-venue and location of Progue is not UnRoom;
		if progue is being debugged, say "// Progue: skipping description because location of Progue ([location of Progue]) is not progue-venue ([progue-venue]).";
		do nothing; [ Progue was pulled away from the natural location of his last task, so it may not be safe to describe him finishing it here. ]	
	otherwise if Progue is enclosed by location and dont_describe_Progue is false;
		let skipdecision be false; [ We can set this to true if we don't want to show Progue deciding what to do for various reasons; this later adjusts line breaks as necessary.]
		if the prior animus of Progue is ruminating begin; say "[The Progue] [one of]stands[or]gets up[or]gets to his feet[at random], [one of]seems to shake himself[or]rubs his face and blinks a few times[or]stretches[at random], and [one of]looks around, seemingly surprised at the time[or]glances around him, bemused[at random]";
		otherwise if the prior animus of Progue is scrapbooking; say "Finally putting the items aside, Progue rises with a sigh, brushing his hands off on his pants";
		otherwise if the prior animus of Progue is resting; if the psyche of Progue is emotional, say "Progue opens his eyes slowly, blinking and seeming unable to focus. Finally he stretches and sits up a little bit, glancing around the room blearily"; otherwise say "[one of]With a great yawn, [the Progue] opens his eyes and stretches[or][The Progue] suddenly sits up with a start, looking around wildly for a moment before calming down[or][The Progue] rolls over and opens his eyes, scratching his eyes and then blinking them blearily open[at random]. After a moment, he gets to his feet and rubs his hands together"; 
		otherwise if the prior animus of Progue is fishing; say "[one of]With a look of disgust, [the Progue] gathers in his fishing line and wades back to dry land[or]With a satisfied grunt, [the Progue] disassembles his pole and brushes off his hands[or][The Progue] reels in his fishing line hand over hand, returns it to a pocket, and sloshes noisily back to shore[at random]"; 
		otherwise if the prior animus of Progue is mending; say "[The Progue] [one of]tucks[or]puts[at random] the needle and thread [one of]back in his pocket[or]away[at random] and [one of]gets up[or]stands[or]rises[at random]";
		otherwise if the prior animus of Progue is hand-standing; say "Balancing carefully, [the Progue] executes a neat little flip that leaves him standing back on his feet again. He brushes his hands off in satisfaction, as if something terribly important has been accomplished";
		otherwise if the prior animus of Progue is cleaning; say "Progue nods at the cleaned-up workbench in satisfaction. 'Good then, ready to be used again,' he says";
		otherwise if the prior animus of Progue is paint-making; say "Progue sets the pot full of vivid paint on the counter and wipes his hands off on a konokuk leaf. 'Excellent: should last for weeks,' he says";
		otherwise if the prior animus of Progue is frog-catching; say "[if caught-frog is true]Sadly, [the Progue] puts his hands near the ground and lets his captive leap away[otherwise]Grunting, [the Progue] rises to his feet and brushes his hands on his pants, sighing despondently[end if]";
		otherwise if the prior animus of Progue is beach-combing; say "[The Progue] takes one final look around the now-immaculate beach, and nods in satisfaction"; 
		otherwise if the prior animus of Progue is hottubbing; say "Hopping lithely from the water, [the Progue] quickly slips back into his patchwork garments and dances from foot to foot in a beam of sunlight, shaking his arms"; move Progue to Hot Springs;
		otherwise if the prior animus of Progue is swimming; say "Abruptly, [the Progue] kicks and sinks backwards into the water, only to surface again and begin kicking back to shore with a powerful stroke";
		otherwise; now skipdecision is true; [ If the animus of Progue was something else, we were probably talking to him, and so we probably already described him finishing what he was doing (talking).]
		end if;
		if the prior animus of Progue is not swimming and the animus of Progue is fishing begin; say ". He pulls out a short length of bamboo with a line attached to it from somewhere in his patchwork costume.";
		otherwise if skipdecision is false; say "."; end if;
	end if;
	unless current episode is rendezvous and location is not meeting place of current episode, now progue-venue is UnRoom;
	if the prior animus of Progue is fishing, remove fishing-pole from play;
	if the animus of Progue is fishing, move fishing-pole to Progue.

[ To determine where to perform an animus at, we define valid locations for each one by hand.]

To select a progue-venue for Progue:
	if the animus of Progue is ruminating begin; now progue-venue is a random room in Beachfront;
	otherwise if the animus of Progue is resting;
		if the psyche of Progue is fear begin;
			now progue-venue is Ledge;
		otherwise;
			if the psyche of Progue is emotional begin; now progue-venue is Hut;
			otherwise if a random chance of 1 in 2 succeeds and nothing dramatic is up; now progue-venue is a random room in Beachfront;
			otherwise; now progue-venue is Ledge; end if;
		end if;
		if progue-venue is Lower Beach, now progue-venue is North Beach;
	otherwise if the animus of Progue is fishing; if tidein, now progue-venue is a random room in Beachfront; otherwise now progue-venue is Lower Beach;
	otherwise if the animus of Progue is swimming; now progue-venue is Ocean Waters;
	otherwise if the animus of Progue is mending; now progue-venue is a random room in Beachfront;
	otherwise if the animus of Progue is loitering; now progue-venue is location of Progue;
	otherwise if the animus of Progue is hand-standing; let brp be a random number from 1 to 3; if brp is 1, now progue-venue is Stumps; if brp is 2, now progue-venue is Rise; if brp is 3, now progue-venue is Chairlift Base;
	otherwise if the animus of Progue is cleaning; now progue-venue is Studio;
	otherwise if the animus of Progue is paint-making; now progue-venue is Studio;
	otherwise if the animus of Progue is frog-catching; now progue-venue is a random room in Marshlands;
	otherwise if the animus of Progue is hiding or the animus of Progue is spying or the animus of Progue is scrapbooking; now progue-venue is Ledge;
	otherwise if the animus of Progue is conch-blowing; now progue-venue is Center Beach;
	otherwise if the animus of Progue is player-seeking; now progue-venue is location of player;
	otherwise if the animus of Progue is beach-combing; now progue-venue is Among the Boulders; while progue-venue is Among the Boulders begin; now progue-venue is a random room in Beachfront; end while;
	otherwise if the animus of Progue is hottubbing; now progue-venue is Hot Springs;
	otherwise if the animus of Progue is convalescing; now progue-venue is Hut;
	otherwise; now progue-venue is a random room in Beachfront;
	end if;
	if Progue is being debugged, say "// Progue: selected a progue-venue ([progue-venue]).".


Section - Activity Counter

[ Progue's activity counter is used to keep track of how long he is doing something. By default, when it reaches 15 (about 45 minutes by the in-game clock) he'll pick something new to do.]

Progue has a number called activity counter. The activity counter of Progue is 0.

Every turn when the player is awake and the player is regionally in Lacuna and Progue is fulfilling and Progue is idle and the animus of Progue is not spying and the psyche of Progue is not resolved (this is the Progue hates monotony rule):
	if Progue is being debugged, say "// Progue (now in [location of Progue]): Progue hates monotony rule (because player is awake and Progue is fulfilling and the animus of Progue is not spying) (increasing activity counter by 1 to [activity counter of Progue]).";
	increase the activity counter of Progue by 1;
	if we are waiting, increase the activity counter of Progue by 1;
	if the animus of Progue is loitering and no episode is playing, pick a new activity for Progue.	[ Progue keeps spying until a scene has been triggered. ]

Every turn when the activity counter of Progue is at least 15 and Exploring Lacuna is happening and no episode is playing and Progue is on-stage and Progue is idle and the psyche of Progue is not resolved (this is the trigger Progue to pick a new activity rule):
	if the animus of Progue is cleaning and the activity counter of Progue < 75, stop;
	if Progue is being debugged, say "// Progue (now in [location of Progue]): picking a new activity (because activity counter of Progue is at least 15 ([activity counter of Progue]) and Exploring Lacuna is happening and Progue is on-stage and Progue is idle.";
	 pick a new activity for Progue.


Section - Movement Processing

[ Because pathfinding is an inherently time-intensive operation, especially with a map as large as ours, and because Progue confines himself to a relatively small part of the island, we include some shortcut code and lookup tables to speed up the process when Progue needs to move.]

To decide which direction is the Lacuna route from (origin - a room) to (destination - a room):
	if origin is Tidepools, decide on northeast;
	if origin is Ocean Waters, decide on east;
	if origin is Chairlift Base, decide on southeast;
	if origin is Ledge, decide on down;
	if origin is Hot Springs, decide on west;
	let dirnum be 0;
	if there is a dest of destination in Table of PPF begin;
		if origin is North Beach, now dirnum is the nbc corresponding to a dest of destination in Table of PPF;
		if origin is Center Beach, now dirnum is the cbc corresponding to a dest of destination in Table of PPF;
		if origin is South Beach, now dirnum is the sbc corresponding to a dest of destination in Table of PPF;
		if origin is Among the Boulders, now dirnum is the atb corresponding to a dest of destination in Table of PPF;
		if origin is Lower Beach, now dirnum is the lb corresponding to a dest of destination in Table of PPF;
		if origin is Tidepools, now dirnum is the td corresponding to a dest of destination in Table of PPF;
		if origin is Rise, now dirnum is the rise corresponding to a dest of destination in Table of PPF;
		if origin is Stumps, now dirnum is the stp corresponding to a dest of destination in Table of PPF;
		if origin is West-Marsh, now dirnum is the wm corresponding to a dest of destination in Table of PPF;
		if origin is East Marsh, now dirnum is the em corresponding to a dest of destination in Table of PPF;
		if origin is North Marsh, now dirnum is the nm corresponding to a dest of destination in Table of PPF;
		if origin is Hut, now dirnum is the ht corresponding to a dest of destination in Table of PPF;
		if origin is Studio, now dirnum is the std corresponding to a dest of destination in Table of PPF;
		if origin is Back Room, now dirnum is the br corresponding to a dest of destination in Table of PPF;
		if origin is Ocean Waters, now dirnum is the ow corresponding to a dest of destination in Table of PPF;
		if dirnum is 0 begin;
			if Progue is being debugged, say "// Progue: ERROR: can't find a route from [origin] to [destination]; resetting progue-venue to Center Beach.";
			decide on the best route from origin to destination;
		otherwise;
			if dirnum is 1, decide on north;
			if dirnum is 2, decide on northeast;
			if dirnum is 3, decide on east;
			if dirnum is 4, decide on southeast;
			if dirnum is 5, decide on south;
			if dirnum is 6, decide on southwest;
			if dirnum is 7, decide on west;
			if dirnum is 8, decide on northwest;
			if dirnum is 9, decide on up;
		end if;
	otherwise;
		decide on the best route from origin to destination;
	end if.

Table of PPF [ Progue PathFinding]
dest					nbc	cbc	sbc	atb	lb	td	rise	stp	wm	em	nm	ht	std	br	ow
North Beach			--	1	1	2	2	2	4	5	6	7	6	7	5	7	3
Center Beach		5	--	1	2	3	2	4	5	6	7	6	7	5	7	3
South Beach			5	5	--	2	4	2	4	5	6	7	6	7	5	7	3
Among the Boulders	5	5	6	--	5	2	4	5	6	7	6	7	5	7	3
Lower Beach			6	7	8	1	--	2	4	5	6	7	6	7	5	7	3
Tidepools			5	5	6	6	5	--	4	5	6	7	6	7	5	7	3
Ocean Waters		6	7	8	1	7	2	4	5	6	7	6	7	5	7	--
Hut					5	3	1	2	3	2	4	5	6	7	6	7	5	7	3
Rise					8	1	1	2	2	2	--	5	6	7	6	7	5	7	3
Stumps				8	1	1	2	2	2	1	--	6	7	6	7	5	7	3
Chairlift Base		8	1	1	2	2	2	1	8	6	7	6	7	5	7	3
West-Marsh			8	1	1	2	2	2	1	2	--	7	6	7	5	7	3
East Marsh			8	1	1	2	2	2	1	2	3	--	5	7	5	7	3
North Marsh			8	1	1	2	2	2	1	2	2	1	--	7	5	7	3
Ledge				8	1	1	2	2	2	1	2	2	1	9	7	5	7	3
Hot Springs			8	1	1	2	2	2	3	5	6	7	6	7	5	7	3
Studio				5	3	1	2	3	2	4	5	6	7	6	1	--	7	3
Back Room			5	3	1	2	3	2	4	5	6	7	6	3	5	--	3

[ Progue will never venture into certain parts of the island; if he is tracking down the player, he needs to know where the boundaries are.]

To decide whether (destination - a room) is off limits to Progue:
	if Progue is being debugged, say "// Progue: deciding whether [destination] is off limits to Progue.";
	if destination is Jumble or destination is Fork or destination is Cliffside or destination is Saddle, decide yes;
	if destination is regionally in Beachfront or destination is regionally in Progue's Domain or destination is Tidepools or destination is Lower Beach or destination is Ocean Waters or destination is Rise or destination is Hot Springs or destination is regionally in North Island or destination is regionally in Marshlands or destination is Ledge, decide no;
	decide yes.

To decide whether exploring Progue's turf:
	if the player is in North Island or the player is in Marshlands or the player is in Beachfront or the player is in Progue's Domain or the player is in Tidepools or the player is in Lower Beach or the player is in Ocean Waters or the player is in Ledge, decide yes;
	decide no.

Section - Something to Sit On


The perch is a thing that varies. 

To say Progue's perch:
	now the perch is a random perchable setpiece in location;
	if the perch is nothing begin;
		if location of Progue is not pp-l begin;
			now pp-l is location of Progue;
			now pp-wd is "[one of]a rock[or]a boulder[or]the [surface-material][or]a log[at random]";
		end if;
		say "[pp-wd]";
	otherwise;
		say "[the perch]";
	end if. 

pp-l is a room that varies. pp-wd is an indexed text that varies.


Section - Describing Progue's Movement

[ Sightlines depend less on map connections than on geography, which is invisible to the parser. We decide by hand whether the player can see Progue from any given location. ]
	
To decide whether (area - a room) is Proguevisible:
	if Progue is being debugged, say "// Progue: decide whether [area] is Proguevisible.";
	if location is Among the Boulders, decide no; [ no good sightlines from here ]
	if location is in Tiderooms and ( area is in Beachfront or area is Lower Beach or area is in Tiderooms or area is Rise or area is Tidepools ) , decide yes;
	if location is in Beachfront and ( area is in Tiderooms or area is Lower Beach or area is in Beachfront or area is Rise or area is Tidepools ) , decide yes;
	if location is Ocean Waters and ( area is in Tiderooms or area is Lower Beach or area is in Beachfront or area is Rise or area is Tidepools ) , decide yes;
	if location is in Beachfront and current episode is Word Day, decide yes;
	if location is Tidepools and ( area is in Tiderooms or area is in Beachfront or area is Lower Beach or area is Rise ) , decide yes;
	if location is Rise and ( area is in Tiderooms or area is Lower Beach or area is in Beachfront or area is in Marshlands or area is Stumps ) , decide yes;
	if location is Stumps and ( area is Rise or area is Chairlift Base or area is West-Marsh ) , decide yes;
	if location is in Marshlands and area is in Marshlands, decide yes;
	if location is Chairlift Base and area is Stumps or area is West-Marsh or area is Rise, decide yes;
	if location is Ledge and ( area is in Marshlands or area is Stumps or area is Rise ) , decide yes;
	decide no.



[ Descriptions of Progue moving can vary based on the kind of terrain he is moving through, whether the origin, destination or both are visible to the player, whether one of those rooms is the one the player currently occupies or Progue's initial or final destination, and other factors. In addition, we might have set the dont_describe_Progue variable to true if we've already mentioned him moving and want to override the automatic mechanism, perhaps for a dramatic entrance or exit.]

dont_describe_Progue is a truth state that varies. dont_describe_Progue is false.

The last every turn rule (this is the clean up Progue's business rule): now dont_describe_Progue is false; if Progue is being debugged, say "//Progue: clean up: Progue is now in [location of Progue] and [psyche of Progue] and [Progue-animus] and [if Progue is attentive]attentive[otherwise]idle[end if] and [if Progue is wishing]wishing[otherwise]fulfilling[end if]; activity counter is [activity counter of Progue].".

To describe Progue moving from (origin - a room) to (destination - a room):
	if Progue is being debugged, say "// Progue: describe Progue moving from [origin] to [destination][if dont_describe_Progue is true] (skipping since dont_describe_Progue is true)[end if].";
	note position of Progue;
	if dont_describe_Progue is false and the player is awake:
		if origin is location:
			move distant-Progue to location;
			say "[The Progue]";
			if destination is Ocean Waters:
				say " wades into the surf, dives lithely into a rolling wave, and surfaces beyond it, kicking out into the ocean";
			else if location is Ocean Waters:
				say " swims off towards [the prose version of destination]";
			else if destination is Ledge:
				say " climbs up the cliff face at an astounding speed";
			else if destination is North Marsh and location is Ledge:
				say " kneels on the edge of the ledge and flips himself off it, spinning around in midair to grab the crack and start shimmying down it";
			else:
				if the animus of Progue is fishing:
					say " [one of]grasps the fishing pole loosely slung over his shoulder[or]bounces his fishing pole cheerfully against his shoulder[in random order]";
				else if the animus of Progue is swimming:
					say " [one of]strips out of his threadbare rags unselfconsciously[or]stretches one arm then the other[at random]";
				else if the animus of Progue is mending:
					say " [one of]rubs his threadbare clothes absently[or]glances down at his threadbare clothes and mutters disapprovingly to himself[or]rummages through his pockets for something[in random order]";
				else if the animus of Progue is hand-standing:
					say " [one of]rolls up his sleeves[or]half-dances as he hops lightly from foot to foot[or]holds out his hands and twirls his fingers in excitement[in random order]";
				else if the animus of Progue is cleaning:
					say " clutches a handful of dirty rags";
				else if the animus of Progue is paint-making:
					say " balances a jumble of baskets, pots, and crude implements";
				else if the animus of Progue is frog-catching:
					say " [one of]has a wistful, eager look in his eyes[or]mutters something about 'little ones'[or]whistles quietly to himself[in random order]";
				else if the animus of Progue is player-seeking:
					say " waves a hand in your direction";
				else if the animus of Progue is ruminating or the animus of Progue is scrapbooking:
					say " [one of]has a pensive expression[or]thoughtfully plucks one ear[in random order]";
				else if the animus of Progue is resting:
					say " [one of]stifles a yawn[or]looks exhausted[or]stretches his arms[in random order],";
				else if the animus of Progue is beach-combing and ( location is Rise or location is regionally in Beachfront or location is Tidepools or location is Lower Beach ) :
					say " [one of]studies the beach intently[or]eyes the tideline critically[or]keeps his eyes on something terribly important just in front of his feet[in random order],";
				else:
					say " [one of]scratches his nose[or]clears his throat with vigor[or]coughs once[or]itches his arm[or]glances up at the sky[or]tugs on his beard[in random order]";
				if the psyche of Progue is not denial and the psyche of Progue is not fear:
					if romance of Progue > 2 and a random chance of 2 in 3 succeeds:
						say " and [one of]winks slyly at you[or]tickles you in the ribs[or]grins at you with one raised eyebrow[in random order]";
					else if paternalism of Progue > 2 and a random chance of 1 in 2 succeeds:
						say " and [one of]regards you fondly[or]claps a hand to your shoulder[or]nods approvingly[in random order]";
					else if the affinity of Progue < 0:
						if submission of Progue > 0, say " and [one of]gives you a wide berth[or]fails to meet your eye[or]hurries past you nervously[in random order]";
						else say " and [one of]quickly brushes past you[or]strides by, ignoring you[or]marches past without even glancing at you[in random order]";
					else: [ affinity >= 0]
						if submission of Progue > 0, say " and [one of]smiles and nods deferentially[or]slips by with a smile and a wave, not getting in your way[in random order]";
						otherwise say " and [one of]strides by with a smile and a wave[or]jovially punches you in the arm[or]claps you strongly on the shoulder[in random order]";
				say " as he heads towards [the prose version of destination], [one of]leaving the vicinity[or]soon passing out of earshot[or]leaving the area[in random order]"; 
			  say ".";
		else if destination is location:
			move distant-Progue to location;
			say "[The Progue] ";
			if location is Ocean Waters:
				say "swims up to your vicinity from the shore";
			else if location is Ledge:
				say "suddenly pops into view, pulling himself up onto the ledge from the crack, fingers and hands flexing like two lithe spiders as he stands to his feet";
			else if location is North Marsh and origin is Ledge:
				say "shimmies lithely down the crack, using hands and feet more to deflect his course than anything else, and finally jumps onto the springy marsh nearby with a satisfied grunt";
			else:
				say "[one of]arrives in the vicinity[or]approaches[or]comes within speaking distance[or]walks by[in random order] from [the prose version of origin]"; 
			if the psyche of Progue is fear:
				say ". He catches sight of you and freezes, then dodges back out of sight";
				now Progue is fulfilling;
				Progue starts hiding;
				if location is Ledge, move Progue to Tidepools;
				otherwise move Progue to Ledge;
			say ".";
			if location of Progue is location and the animus of Progue is player-seeking, follow the Progue's motivation rule; [ So he starts talking immediately.]
		else if origin is Proguevisible and destination is Proguevisible:
			move distant-Progue to location;
			say "[inthedistance], you [glimpse] [the Progue] ";
			if destination is Ocean Waters:
				say "dive into the water and swim ";
			else:
				if the psyche of Progue is fear, say "fleeing ";
				else say "[one of]moving[or]heading[or]ambling[or]walking[or]making his way[in random order] ";
			if the prose name of origin is the prose name of destination, say "[one of]along[or]across[or]through[in random order] [the prose version of origin].";
			else say "from [the prose version of origin] to [the prose version of destination].";
		else if origin is Proguevisible:
			move distant-Progue to location;
			say "[inthedistance] [one of]near[or]by[at random] [the prose version of origin], you [glimpse] [the Progue] [if destination is Hut]step into the cabin[else if destination is Studio]step into the studio[else]moving out of sight[end if].";
			now distant-Progue is out-of-sight;
		else if destination is Proguevisible:
			move distant-Progue to location;
			say "[inthedistance], you [glimpse] [the Progue] [if origin is Studio]step out from the studio[else if origin is Hut]step out from the cabin[else]move into sight near [the prose version of origin][end if]";
			if the psyche of Progue is fear:
				say ". He catches sight of you and freezes, then dodges back out of sight";
				now Progue is fulfilling;
				Progue starts hiding;
				if location is Ledge, move Progue to Tidepools;
				otherwise move Progue to Ledge;
			say ".".

To say inthedistance: say "[one of]In the distance[or]Some distance away[in random order]". To say glimpse: say "[one of]see[or]spot[or]notice[or]glimpse[in random order]".

To say the prose version of (place - a room): if the prose name of place is "NULL", say "[printed name of place]"; otherwise say "[prose name of place]".


[ Normally, Progue is only described at a distance when he's in motion. If the player arrives in Progue's territory after being away, we break this rule to describe where Progue is and what he's doing, since this would be a highly noticeable part of the scenery.]

To decide whether arriving at a new vantage point:
	if location is Rise, decide yes; 
	if location is Center Beach and former location is Hut, decide yes;
	if location is South Beach and ( former location is Fork or former location is Among the Boulders ) , decide yes;
	decide no.

Every turn when ( we are going or we are landmark-going ) and arriving at a new vantage point and Progue is not enclosed by the location and Progue is on-stage and nothing dramatic is up and dont_describe_Progue is false and Progue is fulfilling (this is the noticing what Progue is doing rule):
	if Progue is being debugged, say "// Progue: noticing what Progue is doing rule (because we are going and arriving at a new vantage point).";
	if the location of Progue is Proguevisible, say "[inthedistance], [if location of Progue is Ocean Waters]in[otherwise]by[end if] [the prose version of location of Progue], you [if current episode is not Word Day and spotted-Progue is false]see a [o]figure[x] dressed in rags. He appears to be[otherwise][glimpse] [the Progue],[end if] [Progue-animus].";[aardist]
	now spotted-Progue is true;
	move distant-Progue to location;
	note position of Progue.

The noticing what Progue is doing rule is listed after the check episodes rule in the every turn rules. [ Since the start of an episode might drastically change what Progue is up to, we don't want to describe him doing anything until we're sure that's what he's actually doing.] 

To note position of Progue: [ This is the interface with Remembering.]
	if there is a character of Progue in Table of Remembered NPC Locations:
		choose row with a character of Progue in Table of Remembered NPC Locations;
		change area entry to location of Progue;
	otherwise:
		if the number of blank rows in Table of Remembered NPC Locations is at least 1:
			choose a blank row in Table of Remembered NPC Locations;
			change character entry to Progue;
			change area entry to location of Progue.





Chapter - Ambient Messages

[ Each animus has a table of ambient messages associated with it, which add color to the descriptions when the player is near Progue but not speaking to him.]

Every turn when Progue is enclosed by location and Progue is fulfilling and Progue is idle and nothing dramatic is up and we are not going and we are not looking (this is the reporting on Progue rule):
	if Progue is being debugged, say "// Progue: reporting on Progue rule (because Progue is enclosed by location ([location of Progue]) and Progue is fulfilling and Progue is idle ([Progue-animus])).";
	fire one off by frequency from Progue's animus table.  

Table of Progue Default
freq		start time	end time	text	table		trigger	flag
a frequency	an interval	an interval	text		a table-name	a thing	a number

Table of Progue Ruminating
freq		start time	end time	text	table		trigger	flag
common	--	--	"[The Progue] [one of]runs his hand through his beard, eyes locked on the horizon[or]emits a satisfied grunt and scratches his knee absently[or]chews his lower lip absently, lost in thought[in random order]."

Table of Progue Scrapbooking
freq		start time	end time	text	table		trigger	flag
common	--	--	"Progue [one of]picks up a piece of crystal, rubbing his fingers over and over across its smoothed surface[or]lifts a necklace of shells sadly, letting them twirl in the light[or]rummages through a pile of junk listlessly[in random order]."

Table of Progue Sleeping
freq		start time	end time	text	table		trigger	flag
common	--	--	"[The Progue] [if the psyche of Progue is emotional][one of]wheezes sickly in his sleep[or]tosses and turns restlessly in his sleep[or]mutters something indeterminable in his sleep[in random order][else][one of]emits a particularly loud snore[or]mutters something indeterminable in his sleep[or]rolls over and scratches himself[in random order][end if]."

Table of Progue Fishing
freq		start time	end time	text	table		trigger	flag
common	--	--	"[The Progue] [one of]walks slowly parallel to shore, flicking his line with one hand and watching the water intently[or]yanks the line suddenly up from the water, but is disappointed to find it empty. With a wry glance in your direction, he returns it to the water[or]flexes his toes happily in the wet sand as he monitors his fishing pole[in random order]."

A fishing-pole is a thing. Understand "fishing pole" or "pole" or "line/bamboo" as fishing-pole. The printed name is "fishing pole". The description is "Simply made out of a length of bamboo, some hairy brown twine, and a carefully sharpened stone hook, the pole looks well-used and often repaired.".

Table of Progue Swimming
freq		start time	end time	text	table		trigger	flag
common	--	--	"[The Progue] floats serenely on the surface of the water, eyes closed."
uncommon	--	--	"Kicking a little, [the Progue] adjusts his position a bit in some presumably advantageous fashion."
superrare			--	--	"[The Progue] suddenly sputters and sinks under water. He surfaces a moment later, treading water and looking down in annoyance.[paragraph break]'Fish up my shorts,' he says shortly, before returning to his floating position again."

Table of Progue Mending
freq		start time	end time	text	table		trigger	flag
common	--	--	"[The Progue] [one of]finishes mending a patch and studies it critically. With a noncommittal grunt, he turns to another small rip and begins to repair it[or]pricks his finger on the needle and winces[or]sticks his finger through a rip and wiggles it, carefully studying the material from all angles[in random order]." 

Table of Progue Hand-Standing
freq		start time	end time	text	table		trigger	flag
common	--	--	"[The Progue] [one of]takes a few steps on his hands, swaying dangerously[or]rebalances his weight to one hand, lifting the other up to scratch his nose[or]kicks his legs back and forth through the air lazily[or]watches a beetle scurry across the ground below his nose with great interest[or]hand-walks in a swaying circle around you[in random order]."

Before discussing when Progue is enclosed by location and Progue is fulfilling and the animus of Progue is hand-standing and is-hand-standing is true: now is-hand-standing is false; say "[one of]With a resigned sigh[or]Shifting position[in random order], [the Progue] [one of]tumbles to the ground[or]lets himself down[or]collapses in a heap[in random order] before leaping spryly to his feet, brushing off his hands.". 

Every turn when the animus of Progue is hand-standing and Progue is idle: now is-hand-standing is true. is-hand-standing is a truth state that varies.

Table of Progue Cleaning
freq		start time	end time	text	table		trigger	flag
frequent		--	--	"Progue [one of]picks up a broken pot, frowns, and tosses it into a pile of garbage[or]scrubs intently at the dusty surface of the workbench[or]pokes the hardened end of a brush sadly then tosses it into a pile of junk[or]delicately removes a spider's egg sac from the workbench and redeposits it in the windowsill[in random order]."

Noticing-Progue-Cleaning is a scene. Noticing-Progue-Cleaning begins when the animus of Progue is cleaning and ( location is Center Beach or location is Back Room or location is Hut ) and we-are-landmark-going is true. Noticing-Progue-Cleaning ends when Noticing-Progue-Cleaning begins. When Noticing-Progue-Cleaning begins: tidy landmark-go; clean up landmark-go.

cleaning_honeypot is a number that varies. cleaning_honeypot is 1.

Every turn when animus of Progue is cleaning and Progue is fulfilling and a random chance of 1 in cleaning_honeypot succeeds and ( location is Center Beach or location is Back Room or location is Hut ) :
	if cleaning_honeypot < 3, increase cleaning_honeypot by 1;
	say "[one of]An armful of mouldering paintbrushes[or]A dusty cloud of refuse[or]A broken paint pot[in random order] [one of]flies out[or]sails out[in random order] [if location is Center Beach]of the cabin window, joining a pile of other refuse in the sand[otherwise]the door of the studio, joining a pile of other refuse on the floor[end if].".

Table of Progue Paint-Making
freq		start time	end time	text	table		trigger	flag
frequent		--	--	"Progue [one of]sorts through his implements with an annoyed expression, before finally grabbing one and vigorously applying it to the bowl of paint[or]scrapes paint off the sides of a bowl and studies its consistency skeptically[or]adds something that looks like mud from another pot and mixes with vigor[in random order]."

Table of Progue Frog-Catching
freq		start time	end time	text	table		trigger	flag
common	--	--	"[The Progue] [if caught-frog is true][one of]sings quietly to his frog, stroking it gently[or]strokes his captive frog with one bony finger, smiling peacefully[or]holds the frog up to his eyes and studies it intently[or]whispers quietly to his frog, which seems content in his hands[in random order][otherwise][one of]moves slowly forward on his knees, eyes intent on the marsh vegetation[or]lunges suddenly towards a clump of grass, descending on it with a huge splash, but comes up empty-handed[or]freezes, cocking his head to listen for some noise you can't hear[or]stalks a muddy pool, moving slowly forward with hands outstretched[in random order][end if]." 

Caught-frog is a truth state that varies. [ Used when the animus of Progue is frog-catching to determine whether he's caught one.] 

Table of Progue Hiding
freq		start time	end time	text	table		trigger	flag	
frequent	--	--	"[one of]A clatter of rockfall and a whispered curse drift out from[or]The faint rustle of movement comes from[or]A quiet cough and a surussus of falling dirt whisper from[in random order] [if location is Ledge]somewhere in the crack[else]the top of one of the rounded boulders[end if]."

Table of Progue Convalescing
freq		start time	end time	text	table		trigger	flag	
common	--	--	"[The Progue] [one of]lets out a whimper of pain[or]rolls his head back and forth, grimacing[in random order]."

Table of Progue Conch-Blowing
freq		start time	end time	text	table		trigger	flag	
frequent	--	--	"[The Progue] turns the conch over in his hands, running fingertips over its pearlescent ridges and bumpy spirals."

Table of Progue Beach-Combing
freq		start time	end time	text	table		trigger	flag	
frequent	--	--	"[The Progue] putters along the beach, gathering everything other than the sand into his hands."
frequent	--	--	"[The Progue] darts from here to there, carefully extracting pieces of seaweed and seagull feathers from the wet sand."
common	--	--	"[The Progue] takes a few paces into the surf, and flings his handful of debris as far out as it will go. Satisfied, he returns his attention to the beach again."

Table of Progue Hottubbing
freq		start time	end time	text	table		trigger	flag	
common	--	--	"[The Progue] [one of]kicks his legs languidly in the hot water[or]swims to the other side of the pool to a slightly different seat[or]ducks completely under the water for a long moment before returning with a sputter[or]gazes absently at the blue [o]crystals[x] for a long moment[or]leans his head back and looks up at the sky, letting his body float aimlessly in the pool[in random order]."

Table of Progue Resting
freq		start time	end time	text	table		trigger	flag	
common	--	--	"[The Progue] [if psyche of Progue is emotional]sleeps uneasily with labored breathing, his skin looking pale and clammy[otherwise][one of]snores[or]mumbles something in his sleep[or]shifts restlessly in his sleep[in random order][end if]."

Chapter - Scheduling

[ Some episodes are really multi-part affairs, where Progue first negotiates a meeting with the player at a certain time, and then, if the player shows, the scene commences. So as not to confuse things, we schedule the second part through a table that tracks (a maximum of 2) future appointments. If it's time or almost time for a scheduled episode, new scenes won't be triggered.

When the appointed time arrives, we begin the episode; if it's a rendezvous episode, Progue should go to the appropriate spot and begin conversation automatically; if the player misses the episode, after its defined expiration time its completion rule can do stuf. 

This proves useful in other ways: we have Progue call out a reminder to the player about future appointments when conversations end, for example.]

Table of Progue's Appointment Book
date		event
an interval	an episode
with 2 blank rows.

To decide whether Progue has free time:
	if the number of blank rows in Table of Progue's Appointment Book > 0, yes;
	no. 

To decide whether Progue has pending appointments:
	repeat through Table of Progue's Appointment Book begin;
		let moment be date entry;
		if ( current interval is moment or the interval before current interval is moment ) and the episodic status of event entry is unaired, decide yes;
	end repeat;
	decide no.

To decide whether Progue is booked for (int - an interval):
	if there is a date of int in Table of Progue's Appointment Book, yes;
	no.

To decide whether Progue is booked for (ev - an episode):
	if there is an event of ev in Table of Progue's Appointment Book, yes;
	no.

To schedule Progue for (ev - an episode) at (int - an interval):
	if the number of blank rows in Table of Progue's Appointment Book > 0 begin;
		choose a blank row in Table of Progue's Appointment Book;
		now date entry is int;
		now event entry is ev;
		if Progue is being debugged, say "// Progue: scheduled [ev] for [int].";
	otherwise;
		if Progue is being debugged, say "// Progue ERROR: could not schedule [ev] for [int] because appointment book is full.";
	end if.

Every turn when the number of filled rows in Table of Progue's Appointment Book > 0 (this is the check Progue's appointment book rule):
	if Progue is being debugged, say "// Progue: checking appointment book.";
	if there is a date of current interval in Table of Progue's Appointment Book begin;
		choose row with a date of current interval in Table of Progue's Appointment Book;
		begin event entry;
		blank out the whole row;
	end if.

To unbook Progue for (ev - an episode):
	choose row with an event of ev in Table of Progue's Appointment Book;
	blank out the whole row.

Chapter - Beach Cleanliness Subplot

[ The cleanliness of the beach is sort of a metaphor for the blank slate of Progue's mind when the player first meets him. As more and more memories come back, the beach becomes progressively dirtier and dirtier. Below are defined mechanisms to simulate this, describe it, and allow the player to help Progue keep it clean. ]

Cleanliness is a kind of value. The cleanlinesses are spotless, flecked, marred, and strewn. South Beach has a cleanliness. The cleanliness of South Beach is spotless. North Beach has a cleanliness. The cleanliness of North Beach is spotless. Center Beach has a cleanliness. The cleanliness of Center Beach is spotless. Lower Beach has a cleanliness. The cleanliness of Lower Beach is spotless.

To cleanify the beach in (spot - a room):
	unless the cleanliness of spot is spotless, now the cleanliness of spot is the cleanliness before the cleanliness of spot.

To dirtify the beach in (spot - a room) to a worst of (level - a cleanliness):
	unless the cleanliness of spot >= level, now the cleanliness of spot is the cleanliness after the cleanliness of spot.

Every turn when time-to-adjust-filth is false and falling downtide (this is the dirty the beach rule):
	now time-to-adjust-filth is true;
	if the psyche of Progue is ignorance or the psyche of Progue is denial:
		let clean-level be spotless;
	otherwise if the psyche of Progue is fear or the psyche of Progue is suppression:
		let clean-level be flecked;
	otherwise if the psyche of Progue is uncertainty:
		let clean-level be marred;
	otherwise:
		let clean-level be strewn;
	dirtify the beach in South Beach to a worst of clean-level;
	dirtify the beach in Center Beach to a worst of clean-level;
	dirtify the beach in North Beach to a worst of clean-level.

Every turn when not falling downtide and time-to-adjust-filth is true:
	now time-to-adjust-filth is false;
	now tired-of-cleaning is 0.

time-to-adjust-filth is a truth state that varies. tired-of-cleaning is a number that varies.

Beach-cleaning is an action applying to one thing. Understand "clean [something]" as beach-cleaning. Check beach-cleaning: say "You brush away some of the dirt and grime, but don't reveal any new details." instead.

Instead of beach-cleaning the nearby beach:
	if Progue is attentive and Progue is enclosed by location, say "Not while you're in the middle of talking to [the Progue]." instead;
	if location is not regionally in Beachfront, say "The terrain here is too complex to effectively clean." instead;
	if tired-of-cleaning > 4, say "Your back and hands are killing you-- you will collapse if you try to do any more cleaning right now." instead;
	[if something dramatic is up, say "Now's not a good time for that." instead;]
	increase tired-of-cleaning by 1;
	pass 68 minutes of time;
	say "Working systematically, you scour the beach for impurities. After an hour or so of backbreaking work you have [if cleanliness of location is spotless]found only a handful of material to cast in the ocean; the beach looks more or less as flawless and pristine as it did when you started[otherwise if cleanliness of location is flecked]restored it to a spotless expanse of nothing but smooth, white sand[otherwise if cleanliness of location is marred]removed all the major pieces of debris, leaving only the odd fleck of seaweed or shell to mar its white surface[otherwise]gotten rid of the largest and ugliest pieces of seaweed, but the beach is still strewn with countless smaller leaves, sticks, shells, and other debris[end if].";
	cleanify the beach in location;
	if Progue is enclosed by location:
		say "[one of]'Good work,' [the Progue] says, nodding in satisfaction. 'I do like a clean beach.'[pclikesmore][or]'Excellent! Fantastic!' [the Progue] says. 'Keep it up!'[pcmaybelikesmore][stopping]".

To say pclikesmore: Progue likes you more, silently. To say pcmaybelikesmore: if a random chance of 1 in 3 succeeds, Progue likes you more.

Part - Episodes

Every episode has some text called the summary. The summary of an episode is usually "". Definition: an episode is verbosely described: if its summary is not "", yes; no. [ We use this to allow Progue to refer to past episodes, a trick we use once or twice.]

To decide whether an unimportant episode is playing: if current episode is Denial Dislike Convo or current episode is Denial Animus Convo or current episode is Denial General Convo or current episode is Denial Interrupted or current episode is Suppression Dislike Convo or current episode is Suppression Animus Convo or current episode is Suppression General Convo or current episode is Uncertainty General Convo, decide yes; decide no. [ Progue can make a reference in certain greeting beats to the last episode that happened, but for this to work, we want to exclude the regular conversation episodes that aren't unique.]

A condition for an episode (this is the episodes only happen on Lacuna rule):
	if Exploring Lacuna is not happening:
		if drama manager is being debugged, say "failed the episodes only happen on Lacuna rule.";
		rule fails.

A commencement rule for an episode (this is the allow episodes to interrupt landmark-going on commencement rule):
	if we-are-landmark-going is true:
		tidy landmark-go;
		clean up landmark-go.

A finishing rule for an episode (this is the allow episodes to interrupt landmark-going on finishing rule):
	if we-are-landmark-going is true and Progue is enclosed by location and Progue is attentive:
		tidy landmark-go;
		clean up landmark-go;
	decide no.

A finishing rule for an episode (this is the episodes usually end when conversation does rule):
	if icebreaker of current episode is not silence and icebreaker of current episode is spoken and Progue is idle, rule succeeds.


When play begins: now episode schedule is Table of Ignorance Episodes.

Table of Ignorance Episodes
eptitle
an episode

Word Day is a guaranteed triggered instant rendezvous episode. [ The rest defined in Denial.]

Section - Serendipitous

A condition rule for a serendipitous episode (this is the Progue must be present to begin episodes rule):
	if Progue is not enclosed by location:
		if drama manager is being debugged, say "failed the Progue must be present to begin episodes rule.";
		 rule fails.

A condition rule for a serendipitous episode (this is the Progue must be awake to begin episodes rule):
	if the animus of Progue is resting:
		if drama manager is being debugged, say "failed the Progue must be awake to begin episodes rule.";
		rule fails.

A condition rule for a serendipitous episode (this is the episodes can't begin when something dramatic is up rule):
	if something dramatic is up:
		if drama manager is being debugged, say "failed the episodes can't begin when something dramatic is up rule.";
		rule fails.

A condition rule for a serendipitous episode (this is the episodes can't begin immediately after conversation ends rule):
	if conversation fuse < 3:
		if drama manager is being debugged, say "failed the episodes can't begin immediately after conversation ends rule.";
		rule fails.

A condition rule for a serendipitous episode (this is the Progue is chattier the more he likes you rule):
	let odds be 8 - the affinity of Progue;
	if a random chance of 3 in odds succeeds begin;
	otherwise;
		if drama manager is being debugged, say "failed the Progue is chattier the more he likes you rule.";
		rule fails;
	end if.	

A condition rule for a serendipitous episode (this is the Progue doesn't like to be interrupted rule):
	if Progue is wishing:
		if drama manager is being debugged, say "failed the Progue doesn't like to be interrupted rule";
		rule fails.

A condition rule for a serendipitous episode (this is the episodes can't happen while Progue is swimming rule):
	if the animus of Progue is swimming:
		if drama manager is being debugged, say "failed the episodes can't happen while Progue is swimming rule.";
		rule fails.

First completion rule for a serendipitous episode (this is the Progue's life goes on after serendipitous episodes rule):
	Progue's life goes on, as before.



Section - Rendezvous

First condition rule for a rendezvous episode: abide by the Progue must be awake to begin episodes rule.

First condition rule for a rendezvous episode: abide by the episodes can't begin when something dramatic is up rule.

First condition rule for a rendezvous episode: abide by the episodes can't begin immediately after conversation ends rule.

Every turn when a current episode is rendezvous (this is the Progue heads towards meeting place in rendezvous episodes rule):[aar]
	if location of Progue is not meeting place of current episode and Progue is idle and meeting place of current episode is not UnRoom:
		if Progue is being debugged, say "// Progue: impelling Progue to meeting place of current episode ([meeting place of current episode]).";
		impel Progue to meeting place of current episode.

The Progue heads towards meeting place in rendezvous episodes rule is listed before the trigger Progue's motivation rule in the every turn rules.

Section - Urgent

First commencement rule for an urgent episode (this is the Progue starts player-seeking when urgent episodes begin rule):
	Progue starts player-seeking.

Section - Instant

First commencement rule for an instant episode (this is the teleport Progue to mark rule):
	unless meeting place of current episode is UnRoom or location of Progue is meeting place of current episode:
		summon Progue to meeting place of current episode.

Last completion rule for an instant episode (this is the Progue needs something new after instants rule):
	if the animus of Progue is player-seeking, now Progue is wishing.


Section - Misc

The Progue begins episode dialogue rule is listed after the check episodes rule in the every turn rules. Every turn (this is the Progue begins episode dialogue rule):
	if drama manager is being debugged, say "// Drama manager (Progue begins episode dialogue rule): [if an episode is playing]an episode is playing ([current episode])[else]no episode[end if] and [if Progue is enclosed by location]Progue is enclosed by location[else]no progue[end if] and [if Progue is idle]Progue is idle[else]Progue is attentive[end if] and [if conversation fuse > 2]conversation fuse > 2[else]conversation fuse <= 2[end if].";
	if an episode is playing and Progue is enclosed by location and Progue is idle and conversation fuse > 2:
		unless icebreaker of current episode is silence or ( icebreaker of current episode is spoken and icebreaker of current episode is unrepeatable and nothing replaces icebreaker of current episode ) :
			pre-conversation processing;
			force discuss icebreaker of current episode;
			follow the conversation bookkeeping rule.[ this line added 12/18 because insistent beats on first move on convo weren't properly removing other answers.]

After greeting Progue when no episode is playing (this is the find something to talk about rule): 
	if drama manager is being debugged, say "// Drama manager: find something to talk about.";
	now conversation fuse is 3; [ Since otherwise all episodes would fail.]
	now Progue is idle; [ ditto]
	let looper be 1;
	while looper is at most 5 and no episode is playing:
		if drama manager is being debugged, say "// Drama manager: about to follow check episodes rule (loop [looper]).";
		follow the check episodes rule;
		increase looper by 1;
	now Progue is attentive;
	if an episode is playing:
		unless conversation fuse is 0: [ if we already said something when the episode began, we don't need to say anything now.]
			if drama manager is being debugged, say "// Drama manager: an episode is playing, so follow Progue begins episode dialogue rule.";
			now Progue is idle; [ one of the conditions for the below rule.]
			follow the Progue begins episode dialogue rule;
	else:
		if drama manager is being debugged, say "// Drama manager: no episode found, so force discuss conversation_beat of Progue ([conversation_beat of Progue]).";
		force discuss the conversation_beat of Progue.




Part - Progue's Reactions

Chapter - Conversation Tools


To say progue-time-of-day:
	if dawn or sunrise or morning or midmorning begin; say "morning";
	otherwise if midday; say "day";
	otherwise if afternoon; say "afternoon";
	otherwise if evening or sunset or twilight; say "evening";
	otherwise; say "night";
	end if. 
	
[ Progue develops a pet name for the player over time. This should be consistent as long as no emotion values change before printing it again.]

To say animal-nickname:
	if ( romance of Progue > 1 or paternalism of Progue > 2 or submission of Progue < -2 ) , say "little ";
	if player is male:
		if submission of Progue > 2 and romance of Progue > 1:
			say "stallion";
		if submission of Progue > 4:
			say "tiger";
		otherwise if submission of Progue > 2:
			say "boar";
		otherwise if submission of Progue < -2:
			say "rabbit";
		otherwise if paternalism of Progue > 4:
			say "tomcat";
		otherwise if affinity of Progue > 2:
			say "rooster";
		otherwise if affinity of Progue < -2:
			say "wolf";
		otherwise:
			say "gander";
	otherwise:
		if submission of Progue > 2 and romance of Progue > 1:
			say "vixen";
		otherwise if submission of Progue > 3:
			say "tigress";
		otherwise if submission of Progue < -2:
			say "bunny";
		otherwise if affinity of Progue > 2:
			say "kitten";
		otherwise if affinity of Progue < -4:
			say "sow";
		otherwise if affinity of Progue < -1:
			say "hen";
		otherwise:
			say "duckling".



Chapter - Summon Progue

[ This is used to bypass the normal movement rules and have Progue instantly appear somewhere. ]
To summon Progue to (place - a room):
	if Progue is being debugged, say "// Progue: summoning Progue to [place].";
	now Progue is in place;
	now Progue is attentive;
	now Progue is fulfilling;
	now the prior animus of Progue is the animus of Progue;
	Progue starts loitering. [The point is it has to be something else, because otherwise Progue might be described swimming or something that makes no sense at his new location.] 

[ This is used to give Progue a new activity, and ensure he begins carrying it out.  ]
To Progue starts (activity - an endeavour):
	if Progue is being debugged, say "// Progue: Progue starts [activity].";
	now the next animus of Progue is activity; 
	pick a new activity for Progue.

[ This is used to move Progue to a certain room, usually to trigger a certain scene if the player discovers him there. ]
To impel Progue to (place - a room):
	if Progue is being debugged, say "// Progue: impelled to [place].";
	now progue-venue is place;
	Progue starts ruminating.

First before greeting Progue when we-are-landmark-going is true (this is the stop landmark-going when Progue speaks rule):
	tidy landmark-go;
	clean up landmark-go;
	continue the action.

Whistling is an action applying to nothing. Understand "whistle" or "yell" or "shout" or "scream" or "make noise" or "make some noise" as whistling.

Carry out whistling:
	let atd be indexed text;
	let atd be the player's command;
	if atd matches the text "shout" or atd matches the text "yell", say "You shout at the top of your lungs.";
	if atd matches the text "scream", say "You scream at the top of your lungs.";
	if atd matches the text "whistle" or atd matches the text "noise", say "You let out a loud, piercing whistle.";	
	if Progue is enclosed by location, say "[The Progue] gives you an annoyed glance. 'Sausages, there's no need for that,' he says, 'I'm standing right here.'";
	if ( the psyche of Progue is denial or the psyche of Progue is suppression or the psyche of Progue is uncertainty ) and nothing dramatic is up and the animus of Progue is not resting and exploring Progue's turf and a random chance of 4 in 5 succeeds, begin Summoning Progue.


Summoning Progue is a rerunnable guaranteed triggered urgent episode.  The expiration date is 40 minutes. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence.

A commencement rule for Summoning Progue:
	if the location of Progue is Proguevisible, say "[line break][inthedistance], [the Progue] looks in your direction.";
	now the icebreaker of Summoning Progue is the summon_beat of Progue.

A completion rule for Summoning Progue:
	now the summon_beat of Progue is unspoken;
	Progue's life goes on.

[ We actually want to forget what Progue was doing before, since we might have pulled him out of its natural environment, and the message describing him finishing it would be inappropriate.]





Section - Conversation

[ 	As we move around the island, we make note of certain things we may want to talk to Progue about. This can happen automatically or manually.]

After going when location is regionally in Lacuna (this is the noting referencable things rule):
	truncate the list of convo stuff to the last 12 entries;
	repeat with candidate running through things enclosed by location:
		repeat with subcandidate running through beats referenced by candidate:
			if subcandidate is unspoken or subcandidate is repeatable or something replaces subcandidate, manually reference subcandidate;
	continue the action.

To manually reference (subj - a thing):
	if subj is not a beat, now subj is a random thing referenced by subj;
	if subj is in current_thread of Progue:
		if subj is not listed in list of convo stuff, add subj at entry 1 in list of convo stuff;
		if conversation is being debugged, say "// Conversation: noting that [subj] is referenced by something nearby-- list now [list of convo stuff].".


Section - Misc

Instead of taking Progue (this is the hug not take Progue rule): try hugging Progue.





Chapter - Stock Behavior



To Progue's life goes on, as before:
	if Progue is being debugged, say "// Progue: Progue's life goes on[if as before], as before[end if].";
	if Progue is attentive, post-conversation processing; [ if we use saying farewell it might conflict with a scene's outtro.]
	if as before and the animus of Progue is not loitering and the animus of Progue is not player-seeking begin;
	otherwise;
		if Progue is not wishing, pick a new activity for Progue; 
	end if. 

Carry out exhausting when Progue is in the location:
	if Progue is being debugged, say "// Progue: exhausting.";
	annoy Progue;
	if the disposition of Progue <= -8 begin;
		force discuss the overexhaust_beat of Progue;		
	otherwise;
		force discuss the exhaust_beat of Progue;	
	end if;
	stop the action.

[ As Progue moves through the different psyches, his stock behavior changes. Each of the following beats can be changed for the different psyches.]

Progue has a thread called current_thread. [ The thread that all the general conversation topics for each psyche go into.]
Progue has a beat called dontlike_beat. [ If we've annoyed Progue too much, he rejects attempts to start a conversation.]
Progue has a beat called exhaust_beat. [ If we try to discuss something we've previously discussed that's no longer available.)]
Progue has a beat called overexhaust_beat. [ If Progue is temporarily annoyed with the player and ends the conversation. ]
Progue has a beat called bored_beat. [ If the player stops talking.]
Progue has a beat called naughttosay_beat. [ this is used if the player tries to change the subject when there is nothing to change it to.]
Progue has a beat called noanswer_beat. [ If the player does not answer an insistent beat.]
Progue has a beat called angryending_beat. [ If the player still does not answer an insistent beat.]
Progue has a beat called randomyes_beat. [ If the player says yes with no provocation. (Candidate for deletion?)]
Progue has a beat called randomno_beat. [ see above]
Progue has a beat called abruptbye_beat. [ If the player leaves without saying goodbye.]
Progue has a beat called rudebye_beat. [ If the player leaves without saying goodbye, after an insistent beat.]
Progue has a beat called bye_beat. [ Response to bye.]
Progue has a beat called redundantbye_beat. [ If the player says bye while not talking to Progue. ]
Progue has a beat called disgusted_beat. [ If Progue is actually angry with the player and decides to leave.]
Progue has a beat called redundanthi_beat. [ If the player says hi while already talking to Progue.]
Progue has a beat called nudity_beat. [ If the player gets naked.]
Progue has a beat called wakeup_beat. [ If the player wakes him up.]
Progue has a beat called summon_beat. [ If the player calls for him.]
Progue has a beat called the conversation_beat. [ For general chit-chat. ]

Instead of greeting Progue when Progue is enclosed by the location:
	if Progue is attentive begin;
		force discuss redundanthi_beat of Progue;
	otherwise if the disposition of Progue <= -6;
		annoy Progue;
		force discuss dontlike_beat of Progue;
	otherwise;
		continue the action;
	end if.

To decide whether Progue can be glib: if the animus of Progue is not resting and the psyche of Progue is not emotional and the psyche of Progue is not fugue and the psyche of Progue is not resolved and current episode is not Water Works, decide yes.

The bye bye Proguie rule is listed last in the instead rules. Instead of saying farewell to Progue when Progue is enclosed by location (this is the bye bye Proguie rule):
	if the animus of Progue is resting and Progue is idle, say "He's asleep." instead;
	if last beat is insistent begin; force discuss the abruptbye_beat of Progue;
	otherwise if Progue is attentive; force discuss the bye_beat of Progue;
	otherwise; force discuss the redundantbye_beat of Progue;
	end if;
	if Progue is attentive, continue the action.

Report saying farewell to Progue: do nothing instead. [ We've already taken care of this earlier. ]

First before getting bored when Finishing-The-Prologue is complete and Progue is enclosed by location:
	if ( the psyche of Progue is denial or the psyche of Progue is suppression ) and an unimportant episode is playing and a random chance of 1 in 3 succeeds:
		force discuss conversation_beat of Progue;
		stop the action. 

Carry out getting bored when Progue is in the location:
	if Progue is being debugged, say "// Progue: getting bored.";
	force discuss the bored_beat of Progue;
	annoy Progue;
	stop the action.

Every turn when Progue is enclosed by location and Progue is attentive and the disposition of Progue < -9 (this is the Progue only takes so much abuse rule):
	if Progue is being debugged, say "// Progue: only takes so much abuse rule (because Progue is in location and the disposition of Progue < -10 ([disposition of Progue]).";
	if a random chance of 1 in 2 succeeds, Progue likes you less;
	force discuss the overexhaust_beat of Progue.

Every turn when Progue is enclosed by location and conversation fuse is at least 3 and player is not wearing homemade outfit and Progue can be glib (this is the Progue notices nudity rule):
	if Progue is being debugged, say "// Progue: notices nudity (because Progue is enclosed by location ([location]) and conversation fuse is at least 3 ([conversation fuse]) and player is not wearing homemade outfit).";
	force discuss the nudity_beat of Progue. 

The Progue can't stand to be near you rule is listed before the Progue only takes so much abuse rule in the every turn rulebook. Every turn when Progue is enclosed by location and Progue can be glib and ( the disposition of Progue < -12 or the affinity of Progue < -4 ) (this is the Progue can't stand to be near you rule):
	if Progue is being debugged, say "// Progue: can't stand to be near you rule (because Progue is in location and disposition < -13 ([disposition of Progue]) or affinity < -7 ([affinity of Progue]).";
	force discuss the disgusted_beat of Progue;
	Progue's life goes on;
	follow the Progue's motivation rule.

Instead of saying farewell to Progue when Progue is attentive and last beat is insistent (this is the Progue won't let you escape insistent beats rule):
	extend beats;
	force discuss rudebye_beat of Progue;
	annoy Progue.

After going when Progue is enclosed by former location and Progue is attentive (this is the Progue reacts to sudden departure rule):
	if Progue is being debugged, say "// Progue: reacts to sudden departure rule (because After going and Progue is enclosed by former location and Progue is attentive).";
	if last beat is insistent begin;
		if Progue is annoyed begin;
			force discuss the angryending_beat of Progue;
		otherwise;
			annoy Progue;
			force discuss the rudebye_beat of Progue;
			move Progue to the room noun from location of Progue;
			if Progue is enclosed by location begin;
				now conversation fuse is 1;
				say "[The Progue] follows you.";
			otherwise;
				say "You leave [the Progue] behind.";
				Progue's life goes on;
			end if;
		end if;
	otherwise;
		force discuss the abruptbye_beat of Progue;
		Progue's life goes on, as before;
	end if;
	continue the action.

Instead of saying yes:
	if Progue is enclosed by location and Progue is attentive begin;
		if the animus of Progue is resting, say "There's no one (awake) here to say that to." instead;
		force discuss the randomyes_beat of Progue;
	otherwise if a conversing person is enclosed by the location;
		say "There is no response.";
	otherwise;
		speak as the parser "You're not talking to anyone.";
	end if.

Instead of saying no:
	if Progue is enclosed by location and Progue is attentive begin;
		if the animus of Progue is resting, say "There's no one (awake) here to say that to." instead;
		force discuss the randomno_beat of Progue;
	otherwise if a conversing person is enclosed by the location;
		say "There is no response.";
	otherwise;
		speak as the parser "You're not talking to anyone.";
	end if.

Instead of waking, pushing, touching, or attacking Progue when the animus of Progue is resting (this is the waking up Progue rule):
	if Progue is being debugged, say "// Progue: waking up Progue rule.";
	pre-conversation processing;
	annoy Progue;
	force discuss wakeup_beat of Progue.

Instead of greeting Progue when the animus of Progue is resting and Progue is fulfilling: say "[The Progue] snores, but does not otherwise respond.". 



	


Part - Fast Forwarding

A fast-forward rule for Meeting-Progue:
	now Progue is awake;
	now the psyche of Progue is denial;
	now Word Day is successful;
	now current episode is no-episode;
	now the episode schedule is Table of Denial Episodes;
	now spotted-Progue is true;
	now met_Progue is true;
	now unavailable-beat of Progue is pd_unavailable;
	Progue's life goes on.

A fast-forward rule for The-Mysterious-Door:
	now current episode is no-episode;
	now the psyche of Progue is denial.

A fast-forward rule for Getting-To-The-Lawn:
	now current episode is no-episode;
	now the psyche of Progue is fear.

A fast-forward rule for Finding-The-Egg:
	now current episode is no-episode;
	now the psyche of Progue is suppression;
	now the episodic status of Crack Coaxing is completed;
	now the episodic status of Building To Revelations is completed;
	now the episodic status of Suppression Revelations is completed;
	now Progue references depc_departure;
	choose a blank row in Table of Progue Suppression Endeavours;
	change pick entry to cleaning;
	Progue's life goes on.

A fast-forward rule for Powering-Both-Devices:
	now the psyche of Progue is uncertainty;
	now the episodic status of The Conch Portends is completed;
	now the episodic status of Earthquake is completed;
	now the episodic status of Water Works is completed;
	now the episodic status of Post-Storm Conversation is completed.

A fast-forward rule for Opening-The-Pyramid:
	now the psyche of Progue is emotional;
	summon Progue to Hut;
	now the animus of Progue is resting;
	now Progue is fulfilling;
	now the episodic status of Rayfish Suicide is completed.

A fast-forward rule for Contacting-All-The-Trees:
	now the psyche of Progue is fugue;
	remove Progue from play;
	now Word Day is successful;
	now current episode is no-episode;
	now spotted-Progue is true;
	now met_Progue is true.

Completing-Progue's-Character-Arc requires Finishing-Confrontation.

Finishing-Confrontation is a task. Definition: Finishing-Confrontation is complete: if Epilogue is happening, yes; no.

A fast-forward rule for Completing-Progue's-Character-Arc:
	now the psyche of Progue is resolved;
	now ep-trigger is true.





Lacuna-Progue ends here.
