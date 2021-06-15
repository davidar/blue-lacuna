Lacuna-Progue-Fear by Blue Lacuna begins here.

Use authorial modesty.

[Understand "killprogue" as Proguekilling. Proguekilling is an action out of world applying to nothing. Carry out Proguekilling: remove Progue from play; speak as the parser "Removed Progue from game world.".]

Book - FEAR

Table of Fear Episodes
eptitle
Crack Coaxing
Futzing at North Beach
Futzing at South Beach
Rockfall at Springs
Leaving Ocean
Drawings During Sleep
Leaving Hut
Watching From Rise

Section - Setup

Transition Progue To Fear is a scene. Transition Progue To Fear begins when the psyche of Progue is fear. Transition Progue To Fear ends when Transition Progue To Fear begins.

When Transition Progue To Fear begins:
	post-conversation processing;
	Progue starts hiding;
	truncate the list of convo stuff to 0 entries; [get rid of old keywords]
	now the exhaust_beat of Progue is p_fear_exhausted;
	now the overexhaust_beat of Progue is p_fear_exhausted;
	now the disgusted_beat of Progue is p_fear_exhausted;
	now the randomyes_beat of Progue is p_fear_exhausted;
	now the randomno_beat of Progue is p_fear_exhausted;
	now episode schedule is Table of Fear Episodes;
	now disposition of Progue is 0;
	begin chapter 3.

Section - Standard Behavior

[player sneaking up during sleep?] [BUG]

FearC is a thread. The escape clause is p_fear_Exhausted.

p_fear_exhausted is a repeatable terminal beat in FearC with reaction "'[one of]Enough! That's enough, please! Please! Go away, go away![or]Stop it, please... stop talking, stop...[in random order]' he says.".





Chapter - Crack Coaxing

[ This conversation takes place if the player pursues Progue to his hiding place on the Ledge during his Fear phase. It ends successfully if the player manages to navigate the conversation stream to a good ending. Upon completion, a change will come over Progue, and he will say he needs to think. He will go ruminate for a while. Once he is done, he will be in the Supresssion phase. If the player disturbs him during this rumination, or treats him poorly during this conversation, he will earn negative affinity points. The player may also finish this conversation with no change in Progue's state. 

There are two major ways to end this: one, affinitive, by answer Progue's questions, and the second, unaffinitive, by attacking/threatening him. At the end, Progue asks the player which role he is: father (paternal), madman (submissive), or sculptor (affinitive). 
]

Crack Coaxing is a rerunnable guaranteed triggered instant episode. The subchange beat is cc_notnow. The boredom beat is cc_bored. The bye beat is silence. The abruptbye beat is silence.

A condition for Crack Coaxing:
	if ( location is Ledge or location is North Marsh or location is Cliffside ) and Progue is in Ledge, rule succeeds;
	if ( location is Ocean Waters or location is South Beach or location is Among the Boulders ) and Progue is in Among the Boulders [and yourself is wounded], rule succeeds.

A commencement rule for Crack Coaxing:
	ignore the Progue begins episode dialogue rule;
	now the rudebye_beat of Progue is cc_rudebye;
	now the animus of Progue is hiding;
	now Progue is fulfilling.

First finishing rule for Crack Coaxing:
	ignore the episodes usually end when conversation does rule;
	if the psyche of Progue is suppression, rule succeeds;
	if ( location of Progue is ledge and location is not Ledge and location is not Cliffside and location is not North Marsh ) or
	( location of Progue is Among the Boulders and location is not Among the Boulders and location is not Ocean Waters and location is not South Beach and location is not Among the Boulders ) , rule succeeds.

A completion rule for Crack Coaxing:
	if the psyche of Progue is suppression, now the episodic status of Crack Coaxing is successful; 
	Progue likes you more;
	Progue's life goes on;
	follow the Progue's motivation rule.

First before going up in Ledge when current episode is Crack Coaxing: say "You hear frantic scrabbling from inside the crack; a bony hand juts out from it and makes angry swatting motions in your direction. 'Get back!' a voice calls from inside. 'Go away!'" instead. First check entering the weather-worn crack: if current episode is Crack Coaxing or ( the psyche of Progue is fear and location of Progue is Ledge and location is Ledge ) , try going up instead.

CC is a thread. The escape clause is cc_bored.

cc_rudebye is a repeatable terminal beat in CC with reaction "'Yes, that's right,' the voice says, 'go away now and stop pestering. Go creep someone else!'".

cc_rudebye2 is a dogged repeatable beat in CC with reaction "'No,' he says, 'answer me.'".

cc_notnow is a repeatable ephemeral beat in CC with reaction "'No,' the voice says petulantly, 'not now.'".

Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Crack Coaxing	"[ccdesc]"
--		Futzing at South Beach	"[ccdesc]"

To say ccdesc: say "[if location was not Ledge and location of Progue is Ledge]Just as you pull yourself up, you see a [o]shadow[x] dart into the crack and disappear.[otherwise if location is Ledge]Faint scrambling noises and breathing come from a [o]shadow[x] inside the crack.[otherwise if location was not Among the Boulders and location of Progue is Among the Boulders]Just as you arrive, you hear a quiet gasp and a scrambling of rock, from above you. Looking up, you see one bony [o]toe[x] poking out from the rounded top of a boulder well above your head.[otherwise]Quiet scrambling noises come from the top of one of the boulders, above your head.[end if]".

Table of Progue's Description (continued)
animus		episode		desc
--			Crack Coaxing	"[if location is Among the Boulders]You crane your neck back and peer up, but he seems to lying flat on the top of the boulder, and you can only see the odd finger or toe or the top of his head[otherwise]You peer into the shadows of the crack and see a slight movement, but can't make out any details[end if]."

Every turn when location is Among the Boulders and the psyche of Progue is fear and Progue is enclosed by Among the Boulders and current episode is no-episode and Crack Coaxing is unaired: begin Crack Coaxing. [Normally the mechanism would keep Crack Coaxing from starting until the next turn if we're transitioning from Futzing at South Beach; we need to give it an extra jump start.]

Every turn when current episode is Crack Coaxing: now the activity counter of Progue is 1. [ Prevents Progue from leaving while we're standing there. ]

[ Ambient message covered by Table of Progue Hiding. ]

Understand "clatter" or "rockfall" or "curse" or "rustle" or "cough" or "shadow" or "falling" or "dirt" or "whisper" or "toe" as Progue when location is Ledge or location is Among the Boulders.


After greeting Progue when current episode is Crack Coaxing: force discuss cc_greeting.

cc_bored is a repeatable beat in CC with reaction "You hear some cautious scrabbling from [if location is Among the Boulders]atop the boulder[otherwise]inside the crack[end if]. 'Are you still [if location is Among the Boulders]down[otherwise]out[end if] there?' the muffled voice hisses.". The yes-beat of cc_bored is cc_boredyes. The no-beat of cc_bored is cc_boredno.

cc_boredno is a terminal repeatable beat in CC with keyword name "no" and reaction "'Oh, good,' says the voice, relieved. 'I was starting to think you'd never leave.'". 

cc_boredyes is a repeatable beat in CC with keyword name "yes" and reaction "'Then get on with the test!' the voice shouts.". cc_boredyes enqueues cc_challenges.

cc_greeting is a beat in CC with reaction "You call out a tentative greeting[if location is Ledge] into the crack[end if].[paragraph break]'No one here!' replies an angry, almost desperate shout. 'There's [cc_nobody], no body at all. Go away, go away, away away away!'". cc_greeting2 replaces cc_greeting.

cc_jumpstartgreeting is a beat in CC with reaction "You hear some cautious scrabbling from [if location is Among the Boulders]atop the boulder[otherwise]inside the crack[end if]. 'Are you still [if location is Among the Boulders]down[otherwise]out[end if] there?' a muffled voice hisses. 'There's nobody here, really, [cc_nobody], so you can go away now. Go, go away!'". cc_greeting2 replaces cc_jumpstartgreeting.

Understand "nobody" as cc_nobody when last beat is in CC. cc_nobody is a beat in CC with keyword name "nobody" and reaction "A pause. 'Yes,' the voice finally calls out, 'a good point. If nobody was here, you wouldn't hear a voice. Deductive [cc_stilltalk]. You're very good.' A sniffle.

'But I'm on to you,' the voice continues evenly, 'you won't be tricking me any more, oh ho no, so clever, crafty of you, [cc_creeper], sneaking out of your usual bounds, pretending to be [if affinity of Progue > 1]so nice, a kind stranger[otherwise if affinity of Progue < 1]just an ill-tempered stranger[otherwise]a confused stranger[end if] washed up on my island. Well I've figured you out. Now go away!''". cc_nobody summons cc_stilltalk, cc_creeper.

Understand "reason/reasoning/conversation" as cc_stilltalk when last beat is in CC. cc_stilltalk is a beat in CC with keyword name "reasoning" and reaction "'No, you see,' the voice says, 'you're still talking. This isn't working out.'". [***]

Understand "creeper" as cc_creeper when last beat is in CC. cc_creeper is an insistent beat in CC with fuse 6 and keyword name "creeper" and reaction "'Terrible thing,' the muffled voice says angrily, 'beast, monster! Keeping me out of half the island with your fearsome presence! Scaring away those little girls, and the sculptor. Whispering at me, oh, always whispering in my sleep. Why? Why? What do you want from me?'[paragraph break]'Well?' he cries desperately. 'What, are you going to claim now you're NOT the Creeper? Is that what you're saying?'". The yes-beat of cc_creeper is cc_challenges. The no-beat of cc_creeper is cc_creepno.

Understand "no" as cc_creepno when last beat is in CC. cc_creepno is a terminal repeatable beat in CC with keyword name "no" and reaction "'Good,' he says, 'then [one of]go away and haunt somebody else[or]leave me alone[in random order]! I'm quite comfortable in here and can [one of]AHH--' sounds of scrabbling and flesh rubbing against rock [if location is Among the Boulders]float down, and for a moment you see a bony foot desperately clawing the smoothed top of the boulder[otherwise]drift out from the depths of the crack[end if]. '--and can [or][stopping][if location is Among the Boulders]wait up here[otherwise]wait in here[end if] [one of]till the moon comes up and down and up again[or]indefinitely[stopping]. Go AWAY!' And the voice falls silent.".

cc_greeting2 is a repeatable beat in CC with reaction "'[one of]Back to torment me more, are you[or]Don't you have anything better to do than terrify a poor old man[or]Why don't you just leave me alone[in random order]?' the voice from the [if location is Among the Boulders]top of the boulder[otherwise]crack[end if] says shrilly. '[one of]You're not fooling anyone with your silly human disguise[or]Well it won't. Work, won't work at all. Your clever disguise is lost on me[in random order]. Or are you still trying to claim you're not the Creeper?'". The yes-beat of cc_greeting2 is cc_challenges. The no-beat of cc_greeting2 is cc_creepno.

After saying farewell to Progue when current episode is Crack Coaxing: say "You call out a friendly goodbye. There is no response.".

Instead of taking or touching or attacking Progue when current episode is Crack Coaxing and location is Ledge, try entering crack. Instead of taking or touching or attacking Progue when current episode is Crack Coaxing and location is Among the Boulders, try climbing great round boulders.

Understand "yes" as cc_challenges when last beat is in CC. cc_challenges is an insistent repeatable beat in CC with keyword name "yes" and reaction "[one of]'Then you'll have to prove it!' The voice shouts shrilly. 'Yes, that's it, a test. Logic. Reason. Those things. A test for creeperdom. Let's see, now, what are the qualities of creeperliness? Hmmm, mmm...' Some quiet muttering drifts [if location is Among the Boulders]down[otherwise]out of the crack[end if].[paragraph break]'All right,' the voice says at last, 'three tests. The [cc_1], the [cc_2], and the [cc_3]. Which one do you want first?'[or]'[one of]Three tests[or]Three simple tests[in random order],' he says again, 'the [cc_1], the [cc_2], and the [cc_3]. [one of]Which one do you want first[or]Tell me which one you want first[in random order]?'[stopping]". cc_challenges summons cc_1, cc_2, cc_3. Instead of discussing cc_challenges when cc_2ndtest is spoken, force discuss cc_2ndtest.

Understand "1st/first/1" as cc_1 when last beat is in CC. cc_1 is a beat in CC with keyword name "first" and reaction "'Ha! Ha! That was the first test! Predictability!' the voice shouts. 'First first, second second, third third third, oh so very predictable, just like the Creeper! It always gets you when you go into its terrain; always watching; always there, always always always. That's one against you now. Ah well-oh, here's the second test then.'". cc_1 enqueues cc_2ndtest.

Understand "2nd/second/2" as cc_2 when last beat is in CC. cc_2 is a beat in CC with keyword name "second" and reaction "[test1zag]Second[test2zag]". cc_2 enqueues cc_2ndtest.

Understand "3rd/third/3" as cc_3 when last beat is in CC. cc_3 is a beat in CC with keyword name "third" and reaction "[test1zag]Third[test2zag]". cc_3 enqueues cc_2ndtest.

To say test1zag: say "'Ha! Ha! That was the first test! Predictability!' the voice shouts. 'Zagging when zigging's expected, the unexpected choice, pounce, pounce! Just like the Creeper! Always watching, always when you least expect. ". To say test2zag: say " first indeed. Off to a bad start I'm afraid. Ah well-oh, here's the second test then.'".

cc_2ndtest is an insistent repeatable beat in CC with reaction "[one of]'Right,' the voice says, still [if location is Among the Boulders]floating down unseen from the top of the boulder[otherwise]lost somewhere in the darkness of the crack[end if], 'perception. Try and say how many [cc_fingers] I've got holding up. Go on, give us a guess.'[or]'[one of]We're still on perception[or]You still haven't done perception[in random order],' [the Progue]'s voice calls out with a sniff from [if location is Among the Boulders]the top of the boulder[otherwise]inside the crack[end if]. '[one of]Tell me how many [cc_fingers] I'm holding up[or]How many [cc_fingers] do I have held up[in random order]?'[stopping]". cc_2ndtest summons cc_fingerguess, cc_fingers, cc_fingerdunno. The maybe-beat of cc_2ndtest is cc_fingerdunno. cc_2ndtest suggests cc_fingerwait. Instead of discussing cc_2ndtest when cc_3rdtest is spoken, force discuss cc_3rdtest.

Understand "1/one/2/two/3/three/4/four" as cc_fingerguess when last beat is in CC. cc_fingerguess is a beat in CC with fuse 9 and keyword name "1, 2, 3, 4" and reaction "A gasp. 'How did you-- oh, you terrible thing,' it says, 'you crepuscular Creeper, you knew! Night vision, infraeyeing, ultralooking, mental telepathy and cranial mind reading. With my hand behind my back, too. That's two against. Not looking well.'". cc_fingerguess enqueues cc_3rdtest. cc_fingerguess cancels cc_fingers, cc_fingerdunno.

Understand "finger/fingers" as cc_fingers when last beat is in CC. cc_fingers is a dogged ephemeral beat in CC with fuse 9 and keyword name "fingers" and reaction "You [if location is Among the Boulders]crane your neck back[otherwise]peer into the crack[end if], but you can't even make out [the Progue], let alone his fingers.". 

cc_fingerwait is a dogged repeatable beat in CC with reaction "'Come on now,' the voice says, 'how many fingers?'". 

Understand "dunno" as cc_fingerdunno. cc_fingerdunno is a dogged ephemeral beat in CC with fuse 9 and keyword name "dunno" and reaction "'Don't try and get clever with me,' the voice snaps, 'I know perfectly well you can see exactly how many with your nasty nasty monster powers. Now answer. How many?'".

cc_3rdtest is an insistent beat in CC with reaction "'Final test,' the voice says briskly, 'psychology. Word associations. I'll say something, you say the first thing that jumps into your head. Right. Ready? Eggs!'". After discussing cc_3rdtest: now yourself is active-guessing; continue the action. cc_3rdtest summons cc_3guess.

word3 is an indexed text that varies. word3 is "no.guess".

After reading a command when yourself is active-guessing and last beat is in CC:
	now word3 is the player's command;
	if a meta command matches word3 begin;
		say "[as the parser]Can't use meta commands while guessing. Try again in a moment[as normal].";
		stop;
	end if;
	if last beat is cc_3rdtest and word3 exactly matches the text "eggs" begin;
		force discuss cc_3eggs;
	otherwise if word3 exactly matches the text "stop";
		now yourself is not-guessing;
		force discuss cc_3stop;
	otherwise if word3 matches the text "creep" or word3 matches the text "pounce" or word3 matches the text "guilt" ;
		now yourself is not-guessing;
		force discuss cc_3creeper;
	otherwise;
		force discuss cc_3guess;
	end if;
	stop the action.

cc_3eggs is a dogged beat in CC with reaction "'No, see, you're doing it wrong,' the voice says impatiently. 'You say something else when I say 'eggs.' Something you think of when I say 'eggs,' something other than eggs I mean, mostly usually other words. Right? Let's try again. Eggs.".

cc_3guess is a repeatable dogged beat in CC with keyword name "{type a word or say 'stop' to stop guessing.}" and reaction "'[one of]Hmm[or]Interesting[or]Yes[or]Mmmm[or]Ah ha[or]Strange[or]Curious[or]I see[or]Huh[or]Of course[or]I suppose[or]Intriguing[in random order],' he says. '[associationword].'". After discussing cc_3guess: increase cc_3guessctr by 1; continue the action. cc_3guessctr is a number that varies. Instead of discussing cc_3guess when cc_3guessctr >= 10: force discuss cc_3giveup.

cc_3giveup is an insistent beat in CC with reaction "'Cheater!' the voice shouts, [if location is Among the Boulders]jumping down from the top of the boulder[otherwise]gravel spills echoing indignantly through the crack[end if]. '[if penultimate beat is cc_3stop]Not willing to finish the test, what do you have to hide?[otherwise]That's not what you thought of first![end if] You're a liar, a cheat, it's you, you're the Creeper, you! Admit it! Aren't you?'". The yes-beat of cc_3giveup is cc_yescreeper. The no-beat of cc_3giveup is cc_nocreeper. cc_3giveup suggests cc_nocreeper. After discussing cc_3giveup: now tempfuse of cc_3guess is 0; now yourself is not-guessing; now the rudebye_beat of Progue is cc_rudebye2; continue the action.

[ The idea here is to try to trick the player into saying a word related to the Creeper (or "creeper" itself), by presenting words that suggest or sound like them in response to words the player types that have similar sounds. ]

To say associationword:
	if word3 matches the text "sh" begin;
		say "[one of]Shallow[or]Shade[or]Splash[in random order]";
	otherwise if word3 matches the text "th";
		say "[one of]Thimble[or]Hearth[or]Earth[or]Bath[in random order]";
	otherwise if word3 matches the text "dg" or word3 matches the text "j";
		say "[one of]Judge[or]Jury[or]Jump[in random order]";
	otherwise if word3 matches the text "x";
		say "[one of]Execution[or]Axe[in random order]";
	otherwise if word3 matches the text "ss";
		say "[one of]Confess[in random order]";
	otherwise if word3 matches the text "oo";
		say "[one of]Courtroom[or]Loom[in random order]";
	otherwise if word3 matches the text "tr";
		say "[one of]Trial[or]Trail[or]Treat[or]Treason[in random order]";
	otherwise if word3 matches the text "re";
		say "[one of]Wreck[or]Redecorate[or]Relish[in random order]";
	otherwise if word3 matches the text "er";
		say "[one of]Sneaker[or]Sleeper[or]Lawyer[or]Murder[in random order]";
	otherwise if word3 matches the text "cr" or word3 matches the text "kr";
		say "[one of]Crimper[or]Creature[in random order]";
	otherwise if word3 matches the text "ee" or word3 matches the text "eap";
		say "[one of]Sleeper[or]Reaper[or]Keeper[or]Plead[in random order]";
	otherwise if word3 matches the text "ow" or word3 matches the text "ou" or word3 matches the text "ah";
		say "[one of]Trounce[or]Ounce[or]Renounce[in random order]";
	otherwise if word3 matches the text "p";
		say "[one of]Pow[or]Power[or]Pound[in random order]";
	otherwise;
		if a random chance of 1 in 2 succeeds, say "[one of]Hide[or]Shadow[or]Lurk[or]Steep[or]Quiet[or]Leap[or]Night[or]Ball[or]Trampoline[in random order]";
		otherwise say "[one of]Hill[or]Slope[or]Angle[or]Tired[or]Yawn[or]Innocent[or]Destroy[or]Trick[or]Tight[or]Alarm[in random order]";
	end if.

cc_3creeper is an insistent beat in CC with reaction "'Ah HA!' the voice shouts, and with a frantic scrambling [the Progue] [if location is Among the Boulders]leaps down from the top of the boulder[otherwise]emerges from the crack[end if], one wild finger pointed in your face and a triumphant look on his face. 'It is you! I knew it! I knew it!'[paragraph break]'Admit it!' he says angrily. 'You're the Creeper, aren't you? Aren't you?'". The yes-beat of cc_3creeper is cc_yescreeper. The no-beat of cc_3creeper is cc_nocreeper. cc_3creeper suggests cc_nocreeper. After discussing cc_3creeper: now the rudebye_beat of Progue is cc_rudebye2; continue the action.

cc_3stop is a beat in CC. cc_3stop enqueues cc_3giveup.

cc_yescreeper is a beat in CC with keyword name "yes" and reaction "The look of victory freezes on [the Progue]'s face, then slowly crumples. 'No,' he says, 'no, of course it's not you, of course... why would I... what's... it's not you...'". cc_yescreeper enqueues cc_nocreeper2.

cc_nocreeper is a beat in CC with keyword name "no" and reaction "'No? No?' he shouts, whirling around desperately. 'But the tests, you failed all the tests, you have to be, it's got to be you, you, you...'". cc_nocreeper enqueues cc_nocreeper2.

cc_nocreeper2 is an insistent beat in CC with keyword name "no" and reaction "'Well then who is?' he says. 'Who are you if not that thing? Who-- who am I?' He stops and bends over, hands on his knees, panting, suddenly seeming desperate and sad and tired.[paragraph break]'There's too many,' he mutters, 'too many people here, too... [t]sculptors[x] and spirits, [t]fathers[x] and daughters, wayfarers and [t]madmen[x] and explorers and whisperers in dreams...'[paragraph break]He looks up at you, plaintively. 'Tell me, then, stranger,' he cries, voice cracking in anguish, 'tell who, tell me, tell me which one I am?'". cc_nocreeper2 summons cc_sculptor, cc_madman, cc_father, cc_all3. cc_nocreeper2 suggests cc_nocreepernoans.

Understand "everyone" as cc_all3 when last beat is in CC. cc_all3 is a beat in CC with keyword name "everyone" and reaction "[if last beat is not cc_nocreepernoans][cc_finish1][end if]'Yes,' comes a whisper, so quiet you barely hear, 'of course. They're all me. Broken fragments of me, twirling in bottomless tides... I am the father of two vanished daughters, the sculptor who lost his gift, the madman who built mad machines and then forgot the why. I am them all, and me.'". cc_all3 enqueues cc_finish3.

Understand "sculptors/sculptor/wayfarer/wayfarers" as cc_sculptor when last beat is in CC. cc_sculptor is an affinitive nonverbal beat in CC with keyword name "sculptor" and reaction "[if last beat is not cc_nocreepernoans][cc_finish1][end if]'Yes...' comes a whisper, so quiet you barely hear, 'a sculptor. I am a sculptor. Even if my mind could forget it, my hands--' and he stares down at them, silent, awestruck, infinitely sad.[paragraph break]'How many worlds...' he whispers.". cc_sculptor enqueues cc_finish3.

Understand "father/fathers" as cc_father when last beat is in CC. cc_father is a paternal nonverbal beat in CC with keyword name "father" and reaction "[if last beat is not cc_nocreepernoans][cc_finish1][end if]'Oh...' comes a whisper, so quiet you barely hear, 'my angels, my couplets. A father. Yes, of course. I am a father, before everything else.'[paragraph break]He looks into some invisible distance neither up nor down, and whispers again, 'Where are you, my angels?'". cc_father enqueues cc_finish3.

Understand "madman/madmen/mad" as cc_madman when last beat is in CC. cc_madman is a submissive nonverbal beat in CC with keyword name "madman" and reaction "[if last beat is not cc_nocreepernoans][cc_finish1][end if]'Yes,' comes a whisper, so quiet you barely hear, 'I am a madman. The past is gone, and all that's left is what I am, what I do. A crazy old man, broken, forgotten, alone.' He looks down at his rags as if seeing them for the first time, and brushes them in some half-heartened attempt to straighten them, as if unable to lift his head again.[paragraph break]'The Creeper,' he whispers finally, 'the Creeper is me.'". cc_madman enqueues cc_finish3.

cc_nocreepernoans is a dogged beat in CC with reaction "[The Progue]'s eyes pierce yours as he waits for your answer.". cc_nocreepernoans suggests cc_nocreepernoans2. cc_nocreepernoans2 replaces cc_nocreepernoans. cc_nocreepernoans2 is an unsubmissive beat in CC with reaction "Finally he breaks the gaze, and looks down again. 'No,' he says, 'I'm sorry. It's not your burden. I must find myself, or no one... no one will.[paragraph break]He stands that way for a long while, barely breathing before finally, slowly, lifting his head.". Before discussing cc_nocreepernoans2: if submission of Progue > 1 begin; now cc_nocreepernoans2 enqueues cc_madman; otherwise if paternalism of Progue > 1; now cc_nocreepernoans2 enqueues cc_father; otherwise; now cc_nocreepernoans2 enqueues cc_sculptor; end if; continue the action.

To say cc_finish1: say "For a moment, everything is frozen: your gaze locked on [the Progue][']s, his breath in his chest, perhaps even heartbeats.[paragraph break]Then he draws a long, deep, breath, and straightens to his full height, slowly, slowly.[paragraph break]".

[cc_finish2 is a beat in CC with reaction "Then shakes his head, and looks up at you[if last beat is not cc_madman]. A different man[end if].[paragraph break]'Thank you,' he says. '[if Progue is improper-named]I am Progue Attay, and [end if]I have been lost, and I think you have found me.'". After discussing cc_finish2: now the psyche of Progue is suppression; begin the next chapter; continue the action. cc_finish2 enqueues cc_finish3.]

Before discussing cc_finish3: begin Building To Revelations.

cc_finish3 is a terminal beat in CC with reaction "'And I am Progue Attay,' he says, 'and I think you have found me.'[paragraph break]He shakes his head again, as if dizzy. 'Time,' he says, 'I need time to think, to... remember. You deserve explanation. But first I need time.' He nods, brushing past you as he starts to move away. '[ccfin3date],' he says, 'on the rise north of the beach. Meet there and we'll talk.'". After discussing cc_finish3: now the psyche of Progue is suppression; now Progue is named; now Progue is proper-named; print a section break; continue the action. To say ccfin3date: choose row with an event of Suppression Revelations in Table of Progue's Appointment Book; say "[if date entry is evening]This evening[else]Tomorrow morning".

Test cc with "ff / ff / ff / ff / ff / open compass / w / z / z / z / w / w / n / nw / n / ne / ne / u / u".

Section - CC Hinting

[Stuck players get a hint when going to the Rise that they can climb the crack (if they've never done it) or that that's where Progue is hiding out.]

Crack-Coaxing-Hint is a scene. Crack-Coaxing-Hint begins when the psyche of Progue is fear and time for excitement, ignoring drama and location is Rise and ( former location is North Beach or former location is Hot Springs ) . Crack-Coaxing-Hint ends when 1 is 1.

When Crack-Coaxing-Hint begins:
	assuage boredom with "cc hint";
	say "From the corner of your eye, you catch a hint of furtive movement from the ledge halfway up the distant mountain[if Ledge is visited], halfway up the crack[else] along the vertical crack that splits it. You wonder if it's possible to climb the crack up to the ledge[end if].";
	move distant-ledge to location.

The distant-ledge is minor set dressing with printed name "distant ledge". Understand "ledge" as distant-ledge. The description is "The ledge is bisected by the crack that runs up the mountain's cliff.".
	
[For players who reach the ledge but don't realize they need to say "hello" to begin the conversation.]

Crack-Coaxing-Jumpstart is a scene. Crack-Coaxing-Jumpstart begins when current episode is Crack Coaxing and time for excitement, ignoring drama and Progue is enclosed by location and Progue is idle. Crack-Coaxing-Jumpstart ends when 1 is 1.

When Crack-Coaxing-Jumpstart begins:
	pre-conversation processing;
	force discuss cc_jumpstartgreeting.


Chapter - Spying

[ While Progue is in the fear psyche stage, he is sometimes hiding and sometimes keeping an eye on the player. This manifests itself in a number of little vignettes in which we cannot usually interact with Progue but are aware of his distant presence. Each of these can only happen once. ]

Section - Watching From Rise

Watching From Rise is an uncommon triggered instant episode with expiration date 15 minutes.

A condition for Watching From Rise:
	if night, rule fails;
	if location is Lower Beach or location is South Beach or location is Among the Boulders or location is Tidepools, rule succeeds.

First commencement rule for Watching From Rise:
	ignore the teleport Progue to mark rule;
	say "From the corner of your eye, you catch movement [if dir]to the north[otherwise]from the other side of the lagoon[end if]. You turn your head just in time to see a figure duck down behind the rise, leaving behind tiny rockfall and a little cloud of dust."; 
	move distant-progue to location;
	now distant-progue is out-of-sight;
	now the animus of Progue is hiding;
	now Progue is wishing;
	move Progue to Stumps.

Understand "figure" or "rockfall" or "cloud" or "little" or "dust" or "man" or "Progue" as distant-progue when current episode is Watching From Rise. 

Section - Leaving Hut

Leaving Hut is a common triggered instant episode with expiration date 15 minutes. 

A condition for Leaving Hut:
	if night, rule fails;
	if location is Center Beach and the player was in Hut and conversation fuse > 30, rule succeeds. 

First commencement rule for Leaving Hut:
	ignore the teleport Progue to mark rule;
	say "Strange. You could swear there are more [o]footprints[x] in the sand out here than there were when you stepped inside.";
	move progue-footprints to Center Beach;
	now the animus of Progue is hiding;
	now Progue is wishing;
	move Progue to Stumps.

The progue-footprints are set dressing. The printed name is "footprints". Understand "footprints" or "prints" or "foot prints" or "print" as progue-footprints. The description is "It looks like somebody came up to just the doorway of the hut, hesitated, then turned and went back the other way in a big hurry, several times. The retreating prints lead back towards the rise.". Instead of following progue-footprints: say "They vanish into the general mish-mash towards the rise.".


Section - Drawings During Sleep

[If the player is sleeping on the beach, this gives them a hint to sleep elsewhere.]

Drawings During Sleep is a guaranteed triggered instant episode with expiration date 15 minutes. 

A condition for Drawings During Sleep:
	if Having a Generic Dream is happening and location is regionally in Beachfront, rule succeeds.

First commencement rule for Drawings During Sleep:
	ignore the teleport Progue to mark rule;
	move tree-sand-drawings to location;
	say "That's funny. You could swear you weren't surrounded by all these [o]drawings[x] and footprints in the sand when you fell asleep.";
	now the animus of Progue is hiding;
	now Progue is wishing;
	move Progue to Stumps.

Some tree-sand-drawings are set dressing. Understand "drawings/drawing" as tree-sand-drawings. The printed name is "tree drawings". The initial appearance is "Surrounding the spot where you slept is a vast expanse of [o]drawings[x] in the sand.". The description is "Crude, hasty, the sand drawings are nevertheless very clear: they seem to show roots and branches of trees, twining in a huge circle around your prone form. Bare footprints deftly step between the branches, then disappear at running speed off towards the rise.". The provoke message of tree-sand-drawings is "There's no point: the next high tide will wash them away.". Instead of attacking tree-sand-drawings: remove tree-sand-drawings from play; say "With some quick work of your feet, you have erased the sand drawings from the beach." Understand the command "erase" as "attack".



Section - Leaving Ocean

Leaving Ocean is a common triggered instant episode with expiration date 15 minutes.

A condition for Leaving Ocean:
	if night, rule fails;
	if location is regionally in Beachfront and former location is regionally in Tiderooms, rule succeeds.

First commencement rule for Leaving Ocean:
	ignore the teleport Progue to mark rule;
	say "As you [if tidein]wade up out of the water and onto the beach[otherwise]climb past the wet sand towards the dryer upper flats of the beach[end if], your eyes catch a movement on the lava ridge forming the back of the lagoon. [The Progue] is sprinting lightly along it, casting nervous glances in your direction.[paragraph break]Before you can do anything, he drops down out of sight behind the ridge.";
	move distant-progue to location;
	now distant-progue is out-of-sight;
	now the animus of Progue is hiding;
	now Progue is wishing;
	move Progue to Stumps.

Section - Rockfall at Springs

Rockfall at Springs is a frequent triggered instant episode with expiration date 15 minutes.

A condition for Rockfall at Springs:
	if night, rule fails;
	if location is Hot Springs, rule succeeds.

First commencement rule for Rockfall at Springs:
	ignore the teleport Progue to mark rule;
	say "A clatter of loose [o]rocks[x] suddenly cascades down from above and alongside the waterfall.";
	move loose rocks to Hot Springs;
	now the animus of Progue is hiding;
	now Progue is wishing;
	move Progue to West-Marsh.

Some loose rocks are set dressing. Understand "clatter" as loose rocks. The description is "They fell into the pool; the accompanying cloud of dust has already dissipated."

Section - Futzing At North Beach

Futzing at North Beach is a frequent rerunnable triggered instant episode with expiration date 15 minutes and meeting place North Beach. 

A condition for Futzing at North Beach:
	if night, rule fails;
	if location is South Beach and the player was in Fork, rule succeeds.

A commencement rule for Futzing at North Beach:
	move distant-Progue to location;
	say "Across the lagoon near the rocky rise, you see [the Progue] [one of]trolling the shallows with his fishing line. As he sees you he quickly pulls in his line[or]standing bent over the surf, his arms full, a swath of immaculately tended sand behind him. As he sees you, he turns[in random order] in a panic.";
	now the animus of Progue is hiding;
	now Progue is wishing;
	follow the Progue's motivation rule.


Chapter - Futzing At South Beach

[ If the player breaks his leg, he will be unable to get to the Ledge for the default venue of Crack Coaxing. If they catch Progue cleaning the beach and manage to corner him in Among the Boulders, we begin Crack Coaxing here. ]

Futzing at South Beach is a frequent rerunnable triggered rendezvous episode with expiration date 2 hours and meeting place Among the Boulders.

A condition for Futzing at South Beach:
	if night, rule fails;
	if location is Rise and ( the player was in Stumps or the player was in Hot Springs ) , rule succeeds.

A commencement rule for Futzing at South Beach:
	summon Progue to South Beach;
	move distant-Progue to location;
	say "Off towards the [if dir]south[otherwise]opposite[end if] end of the lagoon, [the Progue] [one of]trolls the shallows with his fishing line. As he sees you he quickly pulls in his line[or]stands bent over the surf, his arms full, a swath of immaculately tended sand behind him[in random order]. He sees you at about the same time you see him and startles, jumps towards the forest, but stops dead and shakes his head.";
	now Progue is wishing;
	follow the Progue's motivation rule. 

 [When the player leaves, Progue escapes]

A finishing rule for Futzing at South Beach:
	if location is South Beach or location is Lower Beach:
		say "A furtive movement catches your glance off by the [if location is Lower Beach][d]beach[x] near the boulders[else][d]boulders[x][end if], as well as a cough and whispered curse.";
	if location is Stumps or location is Hot Springs or location is Hut or location is Saddle or location is Fork or location is Among the Boulders, rule succeeds. [So that Crack Coaxing can begin.]

A completion rule for Futzing at South Beach:
	if Progue is not enclosed by location:
		summon Progue to Ledge;
		Progue starts hiding.


Lacuna-Progue-Fear ends here.
