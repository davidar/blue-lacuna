Lacuna-Progue-Denial by Blue Lacuna begins here.

Use authorial modesty.

Book - DENIAL

[Progue has forgotten much, due to both his own pain and the somenium. He refers to his daughters lightly as "those two little girls" who used to live here, but doesn't remember what happened to them. Mentions of "wayfaring" etc produce only laughter--- "what rot!" He says he's lived here a long time, doesn't remember how long, doesn't want to. He cheerfully agrees that he built the door, treehouse, etc., but doesn't know anything about how they work (except for perhaps some cryptic clues.) He doesn't remember the trees at all, although he will never go to that part of the island. He is always on the lookout for "The Creeper," some force which he says lurks on the east island and pounces on you when you least expect it, causing terrible pain. (really a representation of his fear of remembering his pain.)]

Table of Ignorance Episodes (continued)
eptitle
Word Day
Discovering the Open Door

Table of Denial Episodes
eptitle
Delayed Greeting
Sleepless Rayfish Encounter
Denial Dislike Convo
Denial Animus Convo
Denial General Convo
Denial Interrupted
Just Teasing
Rainfall Rhapsody
Backseat Dooring
Discovering the Open Door
Play Catch
Ring of Truth
Make-Way
Hey That's Mine
Art Critic

[Older And Wiser]

An episode can be denialy. An episode is usually not denialy.

First condition for a denialy episode:
	if Word Day is not successful and Delayed Greeting is not successful, rule fails. [We want to make sure that we've gotten the greeting scene somehow before we allow anything else to start happening.]

DenialC is a thread. The current_thread of Progue is DenialC. The escape clause of DenialC is pd_bye.

Section - Standard Behavior

The wakeup_beat of Progue is pd_wakeup. pd_wakeup is a repeatable beat in DenialC with reaction "[The Progue] opens one eye warily, then reluctantly hoists the other wide and clambers to his feet with a throng of creaks, groans and sighs.[paragraph break]'Can't even get a moment's sleep?' he says grumpily[if a random chance of 1 in 2 succeeds], [attitude-business][end if]. 'Oh well oh, what do you want then?'". pd_wakeup enqueues denial keywords.

The exhaust_beat of Progue is pd_exhausted. pd_exhausted is a repeatable beat in DenialC with reaction "[pdexhaust]". To say pdexhaust: say "[one of]'Oh, let's not talk about that any more,' [the Progue] says[or]'I haven't much else to say about that,' [the Progue] says lightly[or]'Oh, but we've been over all that already,' [the Progue] says with a sigh[or]'It's not something I care to discuss any more, to be perfectly honest,' he says[or]'Enough about that when there are so many other delicious things to talk about!' he says[in random order][if a random chance of 1 in 2 succeeds], [animus-business][end if].".

The overexhaust_beat of Progue is pd_overexhausted. pd_overexhausted is a repeatable terminal beat in DenialC with reaction "'[one of]I've had enough chatter-chat for now,[or]Look, I'm not used to talking so much,[or]Look, [animal-nickname], can we mayhaps just stop the talking for a while?[in random order]' [the Progue] says[if a random chance of 1 in 2 succeeds], [attitude-business][end if]. '[one of]Jump off for a while, won't you? Eh?[or]Come back later maybe. Maybe later.[or]I can't hear myself think, not that usually I can, but the point's the point.[in random order]' [Progue-resumes].". After discussing pd_overexhausted: Progue's life goes on, as before.

The dontlike_beat of Progue is pd_dontlike. pd_dontlike is a repeatable beat in DenialC with reaction "'[one of]Buzz off[or]Get lost[or]Moisty hells[or]Not now[in random order],' [the Progue] says[one of], looking extremely annoyed[or] impatiently[or] with an exhausted expression[in random order]. '[one of]I need some me time[or]Go find someone else to pester for a while[or]I'm tired of your babbling[or]You're giving me a splitting headache[or]You're climbing up my nerves[in random order].'".

The bored_beat of Progue is pd_bored. pd_bored is a repeatable terminal beat in DenialC with reaction "'[one of]Well, if you don't mind,[or]If it's all the same to you,[or]Pardon me, but[or]Please excuse me, but[in random order] [one of]I'm going to get back to this[or]there's only so many hours in the day[or]I've got such a lot to do[or]duty calls[or]I really ought to get back to this[in random order][pgb1b].". To say pgb1b: say ",' [the Progue] says, [one of][animus-business][or][attitude-business][purely at random]. '[pgb2][pdb-2]". To say pgb2: say "[one of]See you around[or]Take care[or]Enjoy the [progue-time-of-day][or]Good [progue-time-of-day][or]We'll talk again later[or]See you later[or]So long[or]Watch out for the Creeper[in random order]". To say pdb-2: say "!' [Progue-resumes]".

The unavailable-beat of Progue is pd_unavailable. pd_unavailable is a repeatable ephemeral beat in DenialC. The reaction is "[if last beat is insistent][uad-insis][otherwise][pdexhaust][end if]". To say uad-insis: say "[one of]'Not now, not now,' he says in annoyance, 'I'm asking you a question.'[or]'Wait a ment,' [the Progue] says, 'we're in the middle of something here.'[or]'I'll have none of that,' [the Progue] says, 'until you've answered my question.'[or]'No, no, no,' [the Progue] says, 'that isn't how conversation works at all. I ask you a question, then you answer it. Then you ask another question.'[or]'Later,' [the Progue] says, waving a hand in annoyance, 'I'm interested in this.'[in random order]". After discussing pd_unavailable: annoy Progue; if penultimate beat suggests a beat (called subj) begin; force discuss subj; continue the action; end if.

The naughttosay_beat of Progue is pd_naughttosay. pd_naughttosay is a repeatable terminal beat in DenialC with fuse 9999 and reaction "'[one of]Really, I can't think of a thing to talk about just now[or]For life and strife, I don't know what else we could discuss right now[or]Terrible sorries, but I ratherly think I need a rest from all this discussion and conversion[or]What else is there to talk about? I'm bats at noon[or]Oh well oh, this conversation's thoroughfully lost its momentum[in random order],' he says, [animus-business]. '[one of]We'll talk again soon[or]Let's take a rest for now[or]We'll chat again before too much longering[in random order]. [pgb2]!'".

[[one of]'Don't change the subject,' he snaps.[or]'We weren't talking about that,' he responds testily, crossing his arms. 'I'm not senile, well, at least not at the moment.'[or]'Eh?' he says.[in random order]]

The noanswer_beat of Progue is pd_noanswer. pd_noanswer is a repeatable dogged beat in DenialC. The reaction is "He crosses his arms. 'Well?' he barks, annoyance creeping into his voice. 'Are you mute? Dumb? By choice or chance? I've had enough one-sided conversations for a lifetime already so this isn't endearing. Say [t]something[x]!'". pd_noanswer suggests pd_angryending. pd_noanswer summons p_smartass. [  [or]He taps his foot impatiently. 'Reticence, reticence,' he mutters, 'is not a virtue in conversation. Your answer, please!' [or]He folds his arms and sets a grim, steely gaze on you, obviously still waiting for your answer.[stopping]  ] Instead of discussing pd_noanswer when actual last beat is pd_noanswer, try getting bored Progue. After discussing pd_noanswer: now bp_alphamale suggests bp_friendsmaybe; continue the action.

Understand "something/answer" as p_smartass. p_smartass is a dogged beat in DenialC with fuse 2 and keyword name "something" and reaction "'Cute,' he says, 'cheeky. Smarmy even. Ordinarily I'd be amused, but I'm still waiting for your answer.'".

The angryending_beat of Progue is pd_angryending. pd_angryending is a terminal unaffinitive beat in DenialC. The reaction is "He makes an indignant noise in his throat. 'Moisty hells,' he says with a dismissive wave of the hand, and marches off across the [surface-material]." After discussing pd_angryending: Progue's life goes on.

The randomyes_beat of Progue is pd_randomyes. pd_randomyes is a repeatable dogged beat in DenialC with reaction  "[PDenialYesFirstHalf][if a random chance of 1 in 2 succeeds]I don't recall doing so. I may have done[otherwise]Can't remember[end if]. [if a random chance of 1 in 2 succeeds]Mayhaps[otherwise]Could be, I suppose[end if]. I've forgotten it, though. [if a random chance of 1 in 2 succeeds]Let's change the subject, shall we?'[otherwise]Doesn't matter.'[end if]". To say PDenialYesFirstHalf: say "'Yes[if a random chance of 1 in 2 succeeds]? Yes?' [otherwise]?' [end if]He [if a random chance of 1 in 2 succeeds]furrows his brows[otherwise]crosses his arms[end if]. [yes2bit]". To say yes2bit: say "'[if a random chance of 1 in 2 succeeds]Yes what? [end if][if a random chance of 1 in 2 succeeds]Did I ask a question with a yes or no answer[otherwise]Was there a question asked that required you to say yes[end if]? ". 

The randomno_beat of Progue is pd_randomno. pd_randomno is an repeatable dogged beat in DenialC with reaction "'No? No what?' [the Progue] asks, scratching his head.".

[The question_beat of Progue is pd_question. pd_question is an ephemeral repeatable beat in DenialC. The reaction is "[one of]'Yes, the question I just asked you,' he snaps in annoyance. 'Have you forgotten already? Can't say I care much for your memory.' [or]'Are you even listening to what I'm saying?' he shouts angrily. 'Pay attention, won't you?' [or]'Oh, this is tiresome,' he says with a sigh. [stopping]". pd_question suggests pd_avoidingq.]

pd_avoidingq is a repeatable beat in DenialC. The reaction is "'Don't try and change the subject,' he says, 'I'm not so easily distracted. Your answer, please.'". pd_avoidingq suggests pd_angryending.


The rudebye_beat of Progue is pd_rudebye. pd_rudebye is a  repeatable ephemeral beat in DenialC with reaction "'Excuse me,' [the Progue] says haughtily. 'We're middling in conversation just now.'". 

The abruptbye_beat of Progue is pd_abruptbye. pd_abruptbye is a beat in DenialC with reaction "'Oh well oh, so long, then,' [the Progue] says in surprise as you turn to go.". pd_abruptbye2 replaces pd_abruptbye. pd_abruptbye2 is an beat in DenialC with reaction "'You know, that's trickling rude!' [the Progue] shouts after you. 'Where I come from we say [']goodbye['] to people before we wander off!'". pd_abruptbye3 replaces pd_abruptbye2. pd_abruptbye3 is an unaffinitive submissive beat in DenialC with reaction "'Good riddance then!' [the Progue] shouts furiously to your retreating back. 'Good [if evening]evening[otherwise if night]night[otherwise if morning or sunrise]morning[otherwise]day[end if] to you, [if player is male]sir[otherwise]madam[end if], and,' he adds, building up steam as the distance increases, 'I hope you enjoy stimulating conversations with the octopi and konokuk trees,' he yells, 'since those are the only things you'll be having the privilege of---' The voice trails off as you get out of earshot.". pd_abruptbye4 replaces pd_abruptbye3. pd_abruptbye4 is a repeatable beat in DenialC with reaction "[one of]Sniffing[or]Wrinkling his nose in distaste[or]Yawning[in random order], [the Progue] looks [one of]disdainfully [or]angrily [or][in random order]away as you [one of]depart[or]leave[or]move away[in random order].".
		

The bye_beat of Progue is pd_bye. pd_bye is a repeatable beat in DenialC with reaction "'[pgb2][pdb-2].". 

The redundantbye_beat of Progue is pd_redundantbye. pd_redundantbye is a repeatable beat in DenialC with reaction "[one of]'We call that one [']hello['] where I come from,' [the Progue] says amiably, 'but whatever.'[or]'Uh, hello and goodbye then,' [the Progue] says in confusion.[or]'What?' [the Progue] says, looking around. 'Are you talking to me?'[cycling]". After discussing pd_redundantbye: annoy Progue; continue the action.

The redundanthi_beat of Progue is pd_redundanthi. pd_redundanthi is a repeatable ephemeral beat in DenialC with reaction "[one of]'Yes, hello,' [the Progue] says, blinking rapidly. 'Did I black out? What happened? How many minutes did I lose?'[or]'And hello and hello,' [the Progue] says with a bow.[in random order]". After discussing pd_redundanthi: annoy Progue; continue the action.

The disgusted_beat of Progue is pd_disgusted. pd_disgusted is a repeatable nonverbal beat in DenialC with reaction "[one of]'I can't take any more of this,' [the Progue] says in anger. 'So long.'[or]'This is gushing ridiculous,' [the Progue] snaps in anger, 'I'm leaving.'[or]'You're impossible,' [the Progue] says furiously. 'I shall take my madness elsewhere.'[in random order]".

Instead of pushing Progue when the psyche of Progue is denial, try hugging Progue. Instead of hugging Progue when the psyche of Progue is denial: if Progue is idle, pre-conversation processing; force discuss dc_hug.

dc_hug is an annoying dogged beat with reaction "You step forward, but [the Progue] jumps nervously back. 'No thank you,' he says, casting a wary eye on you. 'I'm not ready to be taken off to the land of the dead just yet, thank you very much. You just keep your distance, [dc_player].'". dc_hug2 replaces dc_hug. dc_hug2 is an annoying unaffinitive beat with reaction "You lunge at [the Progue] but he leaps backwards, crying out, then turns and flees over the [surface-material], shouting 'Leave me alone, evil spirit!'". After discussing dc_hug2: now dont_describe_Progue is true; Progue's life goes on; follow the Progue's motivation rule; continue the action. dc_hug3 replaces dc_hug2. dc_hug3 is a repeatable annoying unaffinitive beat with reaction "[The Progue] [one of]shrieks and tumbles backwards[or]dodges out of the way[at random], then twists and gallops off down the [surface-material], crying 'leave my soul alone!'". After discussing dc_hug3: now dont_describe_Progue is true; Progue's life goes on; follow the Progue's motivation rule; continue the action.

The nudity_beat of Progue is pd_nudity. pd_nudity is a romantic nonverbal beat in DenialC with reaction "[The Progue] notices your nudity and reddens. 'My oh my oh,' he says, 'this hallucination has certainly taken a turn for the interesting. Can't remember the last time I was visited by nude [if player is male]satyrs[otherwise]nymphs[end if].'". pd_nudity2 replaces pd_nudity. pd_nudity2 is a repeatable nonverbal beat in DenialC with reaction "'[one of]Mind you don't sunburn, [animal-nickname],' [the Progue] calls out, 'the tropical sun can be murder on rarefied skin.'[or]Still enjoying yourself, eh?' [the Progue] asks, eyeing your body deliberately.[or]Watch out for the giant mosquitos,' [the Progue] says with something you're almost but not quite sure is sarcasm, 'they can bite in the most inappropriate places.'[or]That's quite the tan you're developing there,' [the Progue] says, glancing at your naked skin. 'It's almost as if you're trying to impress a body.'[in random order]".

The summon_beat of Progue is pd_summon. pd_summon is a repeatable beat in DenialC with reaction "'[one of]Ah, there you are[or]I heard you call[in random order],' [the Progue] says. '[one of]What did you want[or]What do you need[or]What can I help you with[in random order]?'".

Section - Keywords


denial keywords is a repeatable beat. denial keywords summons dc_gesundheit, dc_creeper, dc_player, dc_girls, dc_name, dc_island, dc_cabin, dc_windsigh, learn_capalla_name, dc_food, dc_berries, dc_crabs, dc_konokuk, learn_rayfish_name, [dc_marsh, dc_frogs,] dc_sculpture, dc_waterfall, dc_ropeway, dc_sketchbook, dc_compass, dc_treehouse, dc_head, dc_paintings, dc_bridge, [dc_pyramid, ]dc_door1b.

Understand "painting/paintings" as dc_paintings when last beat is in DenialC. dc_paintings is a beat in DenialC with fuse 9999 and keyword name "paintings" and reaction "'Oh,' he says, brightening up considerably, 'those beautiful paintings in the cabin, yes? I remember them. No idea how they got there. Mayhaps the [dc_sculptor] was a painter alsowards. All a bit jumbled and confused,' he adds, twirling a finger haphazardly near his head.". Phoebe-canvas references dc_paintings. Check examining by name an artwork: if dc_paintings is available, try discussing dc_paintings instead.

[Understand "pyramid" as dc_pyramid when last beat is in DenialC. dc_pyramid is a repeatable beat in DenialC with fuse 9999 and keyword name "pyramid" and reaction "'[one of]Pyramids? Sausages,' he says, waving a hand dismissively. 'There certainly isn't anything like that around here. Claim to have seen one, do you? Well and I suppose it's only to be expected a hallucination would have middling hallucinations of [if player is male]his[otherwise]her[end if] own, and for each of them to have their own tiny hallucinationlets, and who knows what it is they dream about, who indeed.'[or]Ridiculous,' he says, 'there's no such thing.'[stopping][if distant-pyramid is very near location or distant-pyramid is near location or distant-pyramid is far from location or distant-pyramid is very far from location][paragraph break]You point out the distant pyramid, clearly visible atop the mountain, but he merely squints and then pats you consolingly on the back. 'Like knives, these eyes, though don't be embarrassed, not everyone is so blessed,' he says. 'No, friend, that's obviously just a large blurry boulder.'". distant-pyramid references dc_pyramid. Check examining by name distant-pyramid: if dc_pyramid is available, try discussing dc_pyramid instead.] [Sadly this bit doesn't jive with the Secrets quest.]

Understand "chasm/stairs" as dc_bridge when last beat is in DenialC. dc_bridge is a beat in DenialC with fuse 9999 and keyword name "chasm" and reaction "'Moisty sausages, I'd stay away from that part of the island, were I be you,' [the Progue] warns, [attitude-business]. 'Leave and believe, there's nothing interesting on the other side of that chasm anyway, and the [dc_creeper] lives to prowl for victims over therewards. Stay in the beach and on the marsh like I do! Only way to be safe.'". the bridge references dc_bridge.

Understand "waterfall/crystal/crystals/spring/pool" or "hidden pool" or "hot spring" or "hot springs" as dc_waterfall when last beat is in DenialC. dc_waterfall is a beat in DenialC with fuse 9999 and keyword name "waterfall" and reaction "'Ah yes,' he says, smiling fondly, 'lovely place for a soak. Where the [dc_sculptor] first found that gushing pretty blue crystal, too, that he made so many statues and figurines withwards. Now whatever did happen to all those I suppose?' He scratches his head.". the waterfall references dc_waterfall. Check going east when location is Rise: if dc_waterfall is available, try discussing dc_waterfall instead.

[Understand "marsh" or "swamp" as dc_marsh when last beat is in DenialC. dc_marsh is a beat in DenialC with fuse 9999 and keyword name "marsh" and reaction "'A trickling dismal place, have my words,' he says idly, [animus-business], 'but I ratherly love the little frogs that croak and flop there.'". the spire references dc_marsh.]

[Understand "frog/frogs" as dc_frogs when last beat is in DenialC. dc_frogs is a beat in DenialC with fuse 9999 and keyword name "frogs" and reaction "'So cute,' he smiles.".]

Understand "sculpture" as dc_sculpture when last beat is in DenialC. dc_sculpture is a beat in DenialC with fuse 9999 and keyword name "sculpture" and reaction "'Over and by the volcano, yes?' [the Progue] says suspiciously. 'Well and but Who knows what's over there, and where is He, if you snag my reason. That's [t]Creeper[x] country is the point. [if dc_creeper is spoken]I already warned you about that[otherwise]I'd stay away from there were I you[end if].'". volcano sculpture references dc_sculpture.

Understand "phoebe/lethe" as dc_gesundheit when last beat is in DenialC. dc_gesundheit is a repeatable ephemeral beat in DenialC with reaction "[one of]'Gesundheit!' [the Progue] says agreeably.[or]'Sorry, never heard of them,' [the Progue] says, pulling one ear, 'I don't follow popular music.'[cycling]".

[Understand "wife/love/partner/married/mother" as dc_wife. dc_wife is an ephemeral beat in DenialC with fuse 9999 and keyword name "wife" and reaction "'Married? Me?' he looks around, then gives a little giggle. 'Don't see any women here to marry, do you?' He sidles closer and lowers his voice. 'Or mayhaps there were some, once,' he says conspiratorially, 'before they were all eaten by the [dc_creeper].'".]

Understand "creeper/wrong" as dc_creeper. dc_creeper is a beat in DenialC with fuse 9999 and keyword name "[if last beat is dc_berries]wrong[else]creeper" and reaction "[The Progue] shudders, his vacant smile suddenly gone. 'Terrible thing,' he says, looking over his shoulder nervously. 'Lurking and slurking around, spying for victims, then [dc_pounce]! Pounce! Of course, there're a few [dc_safe] places round the [dc_island]; stick to those, [animal-nickname], and you'll be mostly usually safe. Usually.'". dc_creeper2 replaces dc_creeper. 

dc_creeper2 is a beat in DenialC with reaction "'What, have you seen it?' [the Progue] asks, gripping your shirt for a moment with white knuckles. 'Are you full on? What did it look like? Did it have hair, wings, terrible red claws, something sharp and teethwise? What? No? Yes?'[paragraph break]'Words and sausages,' he says, releasing you, 'don't get me upended like that. Thought you'd [dc_seen] the thing. Personally. Visually. Actually.'". dc_creeper3 replaces dc_creeper2.

dc_creeper3 is a beat in DenialC with reaction "'And what for and why do you keep mentioning it?' [the Progue] says in annoyance, [animus-business]. 'You certainly seem to have some morbid fascination with the thing. I'd rather not discuss it any more, if same's the same; I just had [if dawn or sunrise or morning or midmorning]breakfast[else if midday or afternoon]lunch[else]dinner[end if]!'".

Understand "seen" as dc_seen. dc_seen is an ephemeral beat in DenialC with keyword name "seen" and reaction "'Well of course I've never seen it!' he says indignantly. 'Would I be standing here alive and talking to myself if I had? Moisty hells. You hallucinations don't make much use of those imaginary brainwaves.'".

Understand "pounce" as dc_pounce. dc_pounce is a beat in DenialC with keyword name "pounce" and reaction "'It feeds on fear and memory, if you ring,' [the Progue] says, crouching down to the ground and shuffling forward on his haunches, hands spread out like claws before him. 'Lurks and hides, hurks and lies in shadows, tree roots, vines, waiting and waiting to tangle...' He saws the air with his hands, then leaps back up to full height, shivering. 'Nasty nasty.'".

Understand "safe/territory" as dc_safe. dc_safe is an ephemeral beat in DenialC with keyword name "safe" and reaction "'The beach is mostly usually safe,' [the Progue] says, counting on his fingers, 'and the [dc_waterfall], and the marsh and most of the northern parts. But once you gallop up that path into the forest, that's [dc_creeper] land. Best to stay ambly down here by sand and marsh, where you know and know what's safe.'".

[Understand "fantasy/fantasies" as dc_fantasies. dc_fantasies is an ephemeral beat in DenialC with keyword name "fantasies" and reaction "[The Progue] nods soberly, as if considering. 'Yes, yes, I'm well aware the Creeper is probably just a paranoid delusional fantasy. Like yourself. All the signs, do you see.' He turns his head. 'But then again, one can't deny the utter feeling of dread that floods me every time I even think of going into its [dc_safe]. No, on the other hand, I'm quite sure it's real,' he says musingly, 'real, or at least, almost so.'".]

Understand "sketchbook" as dc_sketchbook when last beat is in DenialC. dc_sketchbook is a beat in DenialC with fuse 9999 and keyword name "sketchbook" and reaction "'Hmm,' [the Progue] says, [attitude-business]. 'Doesn't sound something familiar. Mayhaps something the [dc_sculptor] left lying around I suppose.' He frowns. 'So long ago. Can't remember. Or even member, really. Oh well oh.". Progue's sketchbook references dc_sketchbook.

[Understand "painter/sculptor" as dc_sculptor2 when last beat is in DenialC. dc_sculptor2 is a beat in DenialC with keyword name "sculptor" and reaction "'Crazy man!' [the Progue] says, nodding. 'Built all kinds of contraptions everywhere. Used to live here, years ago. Never knew what happened to him in the end. Probably swallowed by the [dc_creeper].'".]

Understand "ropeway" as dc_ropeway when the psyche of Progue is denial. dc_ropeway is a beat in DenialC with fuse 9999 and keyword name "ropeway" and reaction "'Yes and but what an eyesore, eh?' [the Progue] says, [animus-business]. 'Urban blight even on my abandoned tropical [dc_island], industrial pollution all the way to the [dc_mountain] of the mountain. Don't worry-worry though; there's no [dc_ropewaypower] anyway, so you won't have to hear that tooth-bouncing racket it makes.'". ropeway-shack references dc_ropeway. Check examining by name ropeway-shack: if dc_ropeway is available, try discussing dc_ropeway instead. Check examining by name distant-ropeway: if dc_ropeway is available, try discussing dc_ropeway instead.

Understand "top" as dc_mountain when last beat is in DenialC. dc_mountain is a beat in DenialC with keyword name "top" and reaction "'Quite a ride, though, if memory rings,' he adds, smiling broadly. 'Wonderful view. Heart-stopping. Breath-catching. Bone-smashing too if the cablings gone fray-ey over the years. Hold your care with the thing.'".

Understand "power" as dc_ropewaypower when last beat is in DenialC. dc_ropewaypower is a beat in DenialC with keyword name "power" and reaction "'Needs steam from the volcano floor to run, I think I remember knowing,' [the Progue] says, [attitude-business]. 'The [dc_sculptor] told me that once. I think. Course that's in [dc_creeper] territory now, the volcano floor is, so I'd forget the whole idea were I you. Too dangerous now.' He shudders.".

Understand "compass" as dc_compass when last beat is in DenialC. dc_compass is a beat in DenialC with keyword name "compass" and fuse 9999 and reaction "[if player wears compass]'Oh, how fancy fancy!' [the Progue] says, peering at it with interest. 'I used to have one just like, years and fears ago. Now, I wonder whatever happened to that thing?' He frowns, staring off into the distance.[paragraph break]'Must have been stolen,' he finally declares, 'by that [dc_sculptor] I suppose. Hrmph. Thieving artists.'". [dc_compass references compass.] [this is made true when we wear the compass.] Check examining by name compass: if dc_compass is available, try discussing dc_compass instead.

Instead of giving compass to Progue when last beat is in DenialC: force discuss dc_givecompass. dc_givecompass is an affinitive beat in DenialC with reaction "'Oh, that's very kind of you, but really, you keep it,' [the Progue] says, waving you off. 'I've no use for it any more, really. Keep it; do, but sweet of you to offer.'".



Understand "treehouse" as dc_treehouse when last beat is in DenialC. dc_treehouse is a beat in DenialC with keyword name "treehouse" and fuse 9999 and reaction "'Ah yes,' he says, 'I remember it. Charming. Those two raven-haired little [dc_girls] used to sleep there, when they lived here. Never liked the [dc_cabin] much. Needed their own little place, I suppose. Aren't still there, are they? No?'[paragraph break]He rubs his beard. 'Trickling pity. I do still wonder sometimes where and where they went off to.'". tree2 references dc_treehouse.

Understand "head" as dc_head when last beat is in DenialC. dc_head is a beat in DenialC with keyword name "head" and fuse 9999 and reaction "'Never heard of something thatwise,' says [the Progue], who bears more than a passing resemblance to the clockwork head. 'Maybe some crazy thing of that old [dc_sculptor], or some toy of those two little [dc_girls]. Or both, mayhaps even.'". clockwork head references dc_head.

Understand "hallucination/hallucinations/me/noncorporeal/figment/imagination/imaginary/spirit/representation" as dc_player when the psyche of Progue is denial. dc_player is an insistent beat in DenialC with keyword name "[if last beat is dc_creeper or last beat is dc_six or last beat is dc_chat2 ]hallucinations[otherwise if last beat is dc_chat4 or last beat is in PC]noncorporeal[otherwise if last beat is dc_hug]spirit[otherwise]figment" and fuse 9999 and reaction "'It's not that I'm surprised you're here, if you ring,' he says, [animus-business], 'it's just I've had expected strange visions and imaginary friends to start appearing green [dc_longlived] ago[if The-Path-Of-Love has happened]. You're late, see, by about oh twenty years, give or get[end if].'[paragraph break]A sudden thought strikes him and he gives you a sidelong glance. 'But dear oh dear oh,' he says, 'are you the sort that likes to pretend you're a real person?'". The yes-beat is dc_real. The no-beat is dc_notreal. The maybe-beat is dc_notreal. dc_player2 replaces dc_player. dc_player suggests dc_notreal. 

dc_player2 is a beat in DenialC with keyword name "hallucination" and reaction "[if dc_real is spoken or dc_notreal is spoken]'You've made your case, [animal-nickname], you've made your case,' he says with a smile, [animus-business]. 'There's no need to recapitch.'[otherwise]'You never answered my questionings earlier,' he says, [attitude-business]. 'You really expect me to believe you're actually here and not just a fig in my braincase?'". The yes-beat of dc_player2 is dc_real. The no-beat of dc_player2 is dc_notreal. The maybe-beat of dc_player2 is dc_notreal. dc_player2 suggests dc_notreal.


dc_notreal is a beat in DenialC with keyword name "no" and reaction "'Good,' [the Progue] says, nodding in satisfaction. 'I can see we're going to get along all splend. Now what did you want to pretend to talk about?'".  After discussing dc_notreal: adjust dcp2; continue the action.

To adjust dcp2: now the yes-beat of dc_player2 is silence; now the no-beat of dc_player2 is silence; now the maybe-beat of dc_player2 is silence; now dc_player2 suggests silence.

Understand "real/figment" as dc_real. dc_real is an insistent beat in DenialC with keyword name "[if last beat is dc_name3]figment[otherwise]yes" and reaction "'Ha! Ha! Impossible!' [the Progue] shouts, leaping to his feet and beginning to pace. 'Fact the first: nobody has footed this [dc_island] in twenty years but me. Well, there's the [dc_creeper]. And those two little [dc_girls] who used to live here. And myself, of course. Did I already count myself? And the Three Great Men. And, well, you, I suppose, if we want to count you, which we mostly usually don't. Sausages, that's actually quite a lot.' He scratches his head. 'But where was I? Had I gotten as far as Fact the Second?'". The yes-beat is dc_real3. The no-beat is dc_real2. The maybe-beat is dc_keepup. dc_real suggests dc_keepup.  After discussing dc_real: adjust dcp2; continue the action.

dc_keepup is an insistent beat in DenialC with keyword name "maybe" and reaction "'Try to keep up,' [the Progue] says. 'Now: Fact the Twain. [real2body].". dc_keepup suggests dc_real3. dc_keepup summons dc_real3. 

dc_real2 is an insistent exciting beat in DenialC with keyword name "no" and reaction "'Excellent,' he says, 'then on to Fact the Twain. [real2body].". dc_real2 suggests dc_real3. dc_real2 summons dc_real3. To say real2body: say "Self-evidently I am a madman: observe the clothes, the mannerisms, the crazed wild look--' (he demonstrates this last by pointing to his eyes and opening them as wide as possible) '--and it's calm and common knowledge that mad persons have visions. Waking dreams. Hallucinations. Yes, so, correlation, causality, all that, but you must admit the odds are high in fave that you're just a fig in my terminally inflamed imagination.' He suddenly stops and looks at a distant [dc_real3] on the horizon with a fierce intensity". 

Understand "speck/yes" as dc_real3. dc_real3 is an insistent beat in DenialC with keyword name "[if last beat is dc_real2 or last beat is dc_keepup]speck[otherwise]yes" and reaction "[if we have not discussed dc_real2 and we have not discussed dc_keepup]'Excellent,' he says, 'then Fact the Third. [otherwise]'FACT THE TREBLE!' [the Progue] suddenly shouts, holding up a bony finger. '[end if]You appeared quite out of the blue, plum in the mid of Word Day, without a boat, spaceship, proper swimwear or even a good walking stick.' He eyes your traveling clothes critically. 'If and if you aren't hallucinatory, how in worlds do you explain yourself?'". dc_real3 summons dc_wayfaring, dc_real4. dc_real3 suggests dc_real4. The maybe-beat of dc_real3 is dc_real4 [shrug].

dc_real4 is a beat in DenialC with keyword name "shrug" and reaction "'Exactly,' he says, nodding, 'impossible.'". dc_real4 enqueues dc_real5.

dc_real5 is an insistent beat in DenialC with reaction "'At any rate, you appeared from nowhere. No Where,' [the Progue] says again with emphasis, 'your where is unfound and unfounded, and is this, I ask again, the behavior of a corporeal, logical, secular, effably terrestrial person?' He glares at you.". The yes-beat is dc_realyes. The no-beat is dc_realno. The maybe-beat is dc_realno. dc_real5 suggests dc_realno.

dc_realyes is a beat in DenialC with keyword name "yes" and reaction "He nods in satisfaction. 'Ah yes! Just as I hypothesized. Spirits and hallucinations would naturally be immune to logic and reason.'". dc_realyes enqueues dc_realfinish.

dc_realno is a beat in DenialC with keyword name "no" and reaction "'Of course it isn't,' he says forcefully. 'I think therefore you are not.'". dc_realno enqueues dc_realfinish.

dc_realfinish is a beat in DenialC with reaction "He grins broadly and claps you on the back. 'Well oh, now that we've proven your nonexistence we can get down to having some gushing nice conversations. Oh, don't take it so hard, even we factual beings have to cope with nonexistence eventually. Now. What [t]subject[x] were we talking about?'". dc_realfinish cancels dc_realyes, dc_realno.

Understand "wayfaring" as dc_wayfaring. dc_wayfaring is an ephemeral beat in DenialC with keyword name "wayfaring" and reaction "He listens to your explanation with an ever-growing smirk, and finally bursts out in a torrent of hysterical giggling. 'Terrible sorries,' he says, still struggling to control himself, 'it's just such a delicious story. Deathly serious artists flittering about the universe with magical paintbrushes, sending out psychic emergency beacons when they get into trouble?'[paragraph break]He starts giggling again, then holds up a hand and makes a serious effort to regain control. 'No but really, but it's delicious,' he whispers[if last beat is in DenialC], 'but oh, where was I?'[otherwise].[end if]". dc_wayfaring enqueues dc_real5. 

Understand "girl/girls/daughter/daughters/they" as dc_girls. dc_girls is a beat in DenialC with fuse 9999 and keyword name "[if last beat is dc_six2]they[otherwise]girls" and reaction "'Ah yes,' he says, his face lighting up, 'I remember them, I do. Charming little girls, raven black hair. Used to live around herewards, somewhen. Haven't seen them in eons and ages. Now what were their names?' He scratches his head. 'Ah well-oh, not important I suppose.'". dc_girls2 replaces dc_girls. dc_girls summons dc_gesundheit.

dc_girls2 is a repeatable beat in DenialC with reaction "[one of]'Used to play on the beach here,' he says fondly. 'Cute as beetles. I wonder what ever and ever happened to them?'[or]'They had a queer [dc_treehouse] somewhere,' [the Progue] says vaguely, gesturing off towards the southern half of the island. 'Spent buckets of time there, up to whatever it is little girls get up to.'[or]'They were fond of the little blue [dc_mussels],' [the Progue] says, smiling. 'I remember now. We'd steam them up on the beach, have a regular feast. Haven't thought about that in years and fears.'[or][all_i_remember][stopping]". dc_girls2 summons dc_gesundheit.

Understand "cabin/house/shack/hut" as dc_cabin. dc_cabin is an ephemeral beat in DenialC with fuse 9999 and keyword name "cabin" and reaction "He looks surprised and confused until you point it out to him. 'Oh!' he says when he finally notices it, 'that moldy thing. Haven't set foot in there for years. I usually just sleep out under the [learn_capalla_name] now, mostly usually. Healthier. Sea breeze, all that. Makes it easier to run, too,' he adds casually, 'if the [dc_creeper] attacks.'". log cabin references dc_cabin. Check examining by name the log cabin: if dc_cabin is available, try discussing dc_cabin instead. [Check wordgoing Center Beach: if dc_cabin is available, try discussing dc_cabin instead. Check wordgoing Hut: if dc_cabin is available, try discussing dc_cabin instead.]

Understand "dream/dreams" as dc_dreams. dc_dreams is a beat in DenialC with fuse 9999 and keyword name "dreams" and reaction "'Now what now?' he says in astonishment, 'you've been sleeping over in [dc_creeper] territory? Well but of blessed courses you're having bad dreams, [animal-nickname]. It's gushing terrifying over by those creepy creeping [t]windsigh[x] trees. Sure as sure you're better off sleeping on the beach, or maybe mountain-ledgewards like I do.' He grins, [animus-business].". d1-door references dc_dreams. dc_dreams summons dc_windsigh, dc_gesundheit.

Understand "blue flash" or "flash" as dc_flash. dc_flash is a repeatable beat in DenialC with fuse 9999 and keyword name "flash" and reaction "'[one of]The queerest thing[or]Gushing strange[or]Quite the phoneme[in random order],' he says, '[one of]Seems to trig something up in the old braincase[or]I've seen all kinds of strange things when I stare into it[or]I've seen Flashes on other worlds but they were always sort of a let-down to be square[in random order]. [one of]Just stay by the ocean and stare into the sun at the moment of sunset and you're bound to catch it[or]From anywhere near the ocean, watch the sun as it's setting and you'll see it, sure as blue is blue[in random order].'". 

Understand "island/lacuna" as dc_island1. dc_island1 is a beat in DenialC with keyword name "[if last beat is dc_job]Lacuna[otherwise]island" and fuse 9999 and reaction "'Oh, it's trickling pleasant here for a desert island,' he says with a wide grin, waving a hand delicately to encompass the whole scene. 'Beautiful [learn_capalla_name], wonderful [dc_food], no tax collectors. Not one. Think on that a spell, [animal-nickname]. And a pretty pretty place to lose one's mind. As [dc_longlived] as I've lived here, it's been my home.' He frowns, then smiles. 'That's redundant,' he adds happily, 'but true.'". dc_island2 replaces dc_island1.

Understand "island/lacuna" as dc_island. dc_island is a beat in DenialC with keyword name "[if last beat is dc_job]Lacuna[otherwise]island" and fuse 9999 and reaction "'But Something Further, you haven't been officially welcomed yet!' he says, leaping onto [Progue's perch] and spreading his arms wide, spinning around dizzily to take in the whole island. 'Welcome welcome,' he says grandly, 'to Lacuna!'[paragraph break]'That's what it's called, if you ring,' he adds. 'Or [']My Lacuna['] if I'm feeling territorialish. There's a trickling good story about how it acquired that name but,' he leaps back down to the [surface-material] again, 'I'm afraid I've entirely forgotten it. Ah well-oh. Lacuna!'[paragraph break]He holds up three fingers. 'There's Three Great Men who used to live here,' he says, 'the [dc_toursculptor], the [dc_tourfather], and the [dc_tourmadman]. All gone as gone now, but each left a secret, oh! green eons ago, and now they're sort of tourist attractions. You get a prize if you find them all! The secrets. Or so the tourist board says. Of course there aren't any tourists here. Real ones I mean, no offenses[if puzzle mode]. But tell you this: you find all three [dc_secrets] and I'll give you a little something anyway[end if].'". After discussing dc_island: now yourself references dc_secrets; continue the action. dc_island1 replaces dc_island. tree1-nook references dc_island.

Every turn when weather state is undecided and afternoon and yourself references dc_secrets and the psyche of Progue is denial (this is the ensure it rains during secrets quest rule): now the weather state is decided to rain. The ensure it rains during secrets quest rule is listed before the deciding on the weather rule in the every turn rules.

Understand "secret/secrets" as dc_secrets when last beat is in DenialC. dc_secrets is a repeatable beat in DenialC with keyword name "secrets" and fuse 9999 and reaction "[one of]'Yes,' he says, 'the Grand Tour of Lacuna, to find the Three Secrets of the Three Great Men, the [dc_toursculptor], the [dc_tourfather], and the [dc_tourmadman]. Goodness but that's a lot of capitals, sounds dreadfully important[or][dcsecmsg2][stopping]. So and but, have you found any yet?'". The yes-beat of dc_secrets is dc_secretsyes. The no-beat of dc_secrets is dc_secretsno. dc_secrets summons dc_secretsyes, dc_secretsno. To say dcsecmsg2: say "'[one of]Yes[or]Of course[or]Right[in random order], the [one of]Three Secrets of the Three Great Men of Lacuna[or]secrets of the island's former inhabitants[at random], the [dc_toursculptor], the [dc_tourfather], and the [dc_tourmadman]".

dc_secretsyes is a repeatable beat in DenialC with keyword name "yes" and fuse 2 and reaction "'Fantastic!' he says. 'Splend and charm! Well and what are they then?'". dc_secretsyes suggests dc_secretsno. dc_secretsyes cancels dc_tourfather, dc_toursculptor, dc_tourmadman. 

After discussing dc_secretsyes:
	if Lower Beach is visited and dc_secretsmanta is unspoken:
		now tempfuse of dc_secretsmanta is 5;
		now tempfuse of learn_rayfish_name is 0;
	if treehouse-in-rain is true and dc_secretsface is unspoken:
		now tempfuse of dc_secretsface is 5;
		now tempfuse of dc_treehouse is 0;
	if ( pyramid-seen is true or Observatory Exterior is visited or Viewpoint is visited ) and dc_secretspyramid is unspoken:
		now tempfuse of dc_secretspyramid is 5;
[		now tempfuse of dc_pyramid is 0;]
	continue the action. 

Understand "no" as dc_secretsno when last beat is in DenialC. dc_secretsno is a repeatable beat in DenialC with keyword name "no" and fuse 2 and reaction "'Keep looking!' he says[if dc_tourfather is spoken and dc_toursculptor is spoken and dc_tourmadman is spoken]. 'Remember, night, rainstorms, and tides.'[else].[end if]".

Understand "manta/rayfish" as dc_secretsmanta when last beat is in DenialC. dc_secretsmanta is a beat in DenialC with keyword name "manta" and fuse 5 and reaction "'Yes,' [the Progue] sighs, 'something beautiful, isn't it? The rayfish, they're called. Well and if you like the sculpture, you should see them when they come out in the bay every night, great glowing angels. Beautiful. The sculptor's secret, good as good.'". After discussing dc_secretsmanta: if dc_secretsface is spoken and dc_secretspyramid is spoken, force discuss dc_secretswon; continue the action. [Check wordgoing the manta sculpture: if dc_secretsmanta is available, try discussing dc_secretsmanta instead.] Check examining by name the manta sculpture: if dc_secretsmanta is available, try discussing dc_secretsmanta instead.

Understand "face" as dc_secretsface when last beat is in DenialC. dc_secretsface is a beat in DenialC with keyword name "face" and fuse 5 and reaction "'So beautiful,' [the Progue] says with a sort of wistful sigh, staring off into the distance. 'Haven't seen it in green eons but I remember sometimes looking at her and thinking, thinking I could almost but almost remember her...' He shakes his head. 'But that's silly, I never met her, it was the Father. And you found his secret. Excellent!'". After discussing dc_secretsface: if dc_secretsmanta is spoken and dc_secretspyramid is spoken, force discuss dc_secretswon; continue the action. Check discussing dc_treehouse: if treehouse-in-rain is true and dc_secretsface is unspoken begin; force discuss dc_secretsface; stop the action; end if.

Understand "pyramid" as dc_secretspyramid when last beat is in DenialC. dc_secretspyramid is a beat in DenialC with keyword name "pyramid" and fuse 5 and reaction "'And what a queer and plexing thing it is!' he says. 'Just sits up there, doing nothing! Ages and ages to build I expect and why? Ah well-oh, it's pretty, don't you think? Just don't go near it is all; probably filled with radiation and cooties. The Madman's secret; good work.'". After discussing dc_secretspyramid: if dc_secretsface is spoken and dc_secretsmanta is spoken, force discuss dc_secretswon; continue the action. Check examining by name distant-pyramid: if dc_secretspyramid is available, try discussing dc_secretspyramid instead.[ Check discussing dc_pyramid: if ( pyramid-seen is true or Observatory Exterior is visited or Viewpoint is visited ) and dc_secretspyramid is unspoken, force discuss dc_secretspyramid instead.] 

dc_secretswon is a beat in DenialC with reaction "'Sausages, you found them all!' he says, clapping you on the back. 'Good job for somebody who's not even real. Well and I promised you a reward, and here it is[if player wears compass].' He reaches out to the compass around your neck[else].' He reaches into a deep pocket and pulls out a beautiful brass compass on a chain, putting it around your neck. As if in afterthought, he reaches out to the compass around your neck[end if] and fiddles with the back. Suddenly the brass plating swings aside, revealing a hidden compartment with a seven-pointed star.[paragraph break]'One of them made that before he came here,' he says fondly. 'No idea what that star's for, but fancy fancy, eh?'". dc_secretswon summons dc_secretsthanks. After discussing dc_secretswon: now player wears compass; now compass is revealed; now nothing references dc_secrets; continue the action.

Understand "thanks" as dc_secretsthanks when last beat is in DenialC. dc_secretsthanks is a beat in DenialC with keyword name "thanks" and reaction "'You're mostly usually welcome,' he says, 'enjoy now.'".


Understand "sculptor" as dc_toursculptor when last beat is in DenialC. dc_toursculptor is a repeatable beat in DenialC with keyword name "Sculptor" and fuse 5 and reaction "'The Sculptor left all kinds of strange and strange art scattered round the island,' he says, 'but the secret one's somewhere on the beach. Look for it when the tide is low, and have my words you'll find it.'".

Understand "father" as dc_tourfather when last beat is in DenialC. dc_tourfather is a repeatable beat in DenialC with keyword name "Father" and fuse 5 and reaction "'The Father built a treehouse,' he says, 'for his children. Oh! Must be those two little girls. The children. That'd make sense. Well and but the point is, the treehouse has a secret,' he continues, 'that can only be seen in the [dc_tourrain].'".

Understand "rain" as dc_tourrain when last beat is in DenialC. dc_tourrain is a repeatable beat in DenialC with keyword name "rain" and reaction "'Hang about in the afternoons,' [the Progue] says, [animus-business], 'and you're bound to get caught in a shower. Lacuna's famous for the afternoon showers. Or gushing would be if anyone knew about it.'".

Understand "madman" as dc_tourmadman when last beat is in DenialC. dc_tourmadman is a repeatable beat in DenialC with keyword name "Madman" and fuse 5 and reaction "'Gushing bonkers!' he says. 'The Madman built all sorts of queer contraptions and devices and detraptions all over the place. But his mad masterpiece is up by the peak of the mountain, and from down here you can really only see what it is at night.'".

dc_island2 is a repeatable beat in DenialC with keyword name "[if last beat is dc_island]Lacuna[otherwise]island" and reaction "'[one of]I'm quite fond of it[or]Decent place to be exiled[or]Not a bad place, really[or]Lovely[or]I quite like it here[in random order],' he says. '[dcis2].". To say dcis2: if dc_konokuk is unspoken begin; say "So many delicious things to eat, like the [dc_konokuk] fruits, for instance"; otherwise if learn_rayfish_name is unspoken; say "And such a variety of unusual creatures, like the [learn_rayfish_name] out in the lagoon"; otherwise if learn_capalla_name is unspoken; say "I'm in love with the [learn_capalla_name] in this place"; otherwise if dc_crabs is unspoken; say "Have you seen the little [dc_crabs] scampering around? Dinner and entertainment combined"; otherwise; say "[one of]Of course, as I can't remember anywhere else, it may be a garbage dump comparatively. But that's the beauty of losing your mind; there's comparatively no comparatively at all[or]I hope you're enjoying your stay[or]Won my Best Island of the Annum award last year, you know. And the year before, really[or]Although to be frankfurters with you, [animal-nickname], I'm getting trickling weary of you bringing it up all the time[or]And really, there's hardly mostly nothing else at all to say about it[cycling]"; end if; say ".' He smiles, [animus-business]".

Understand "year/years/eons/long" as dc_longlived. dc_longlived is a beat in DenialC with fuse 9999 and keyword name "[if last beat is dc_player]eons[otherwise]long" and reaction "[The Progue] taps his head sharply. 'The memory's not what it used to,' he says, [attitude-business], 'at least so I assume. Most days I actually don't remember ever living anywhere but here. I've forgotten what I remember on the days I do remember.' He giggles, then frowns. 'From the circumstantial there's evidence I've been here for green as green eons, though. Pretty place to lose one's mind. Did I say that already? Yes? Ah well-oh.'".


[Understand "door" as dc_doorpuzzle2. dc_doorpuzzle2 is a beat in DenialC with keyword name "door" and fuse 9999 and reaction "[The Progue] grows annoyed as you try to explain. 'I don't know why you're bothering me about it,' he says. 'Why don't you knock on it and see if anyone's home?'". dc_door1b replaces dc_doorpuzzle2. lava tunnel door references dc_doorpuzzle2. After discussing dc_doorpuzzle2: now lava tunnel door references dc_door1b; continue the action.]

Understand "door" as dc_door1b. dc_door1b is a beat in DenialC with keyword name "door" and fuse 9999 and reaction "'That thing,' [the Progue] says. 'Haven't seen it for years. Barely remember it. Probably some nonsense of that [dc_sculptor].' A thought occurs to him. 'That does sound something familiar, though. Bands of [dc_doorcolors], row of [dc_buttons]. Hmm.'". dc_door1b summons dc_doorcolors, dc_buttons. dc_door2 replaces dc_door1b. lava tunnel door references dc_door1b.

dc_door2 is a repeatable beat in DenialC with reaction "'[one of]Still can't get through that wretched door[or]What, still harping on that silly door[or]Not the door again[or]Moisty hells, that old door again[cycling]?' [the Progue] asks[one of] wearily[or] tiredly[or], rolling his eyes[in random order]. '[one of]Really don't see what you want with it[or]What could possibly be so interesting about it[or]Why in worlds you're so obsessed with it I can't imagine[in random order]. [dcdoor22]". To say dcdoor22: say "[one of]Nothing through there but the other half of the island[or]Nothing on the other side but a volcano, a rain forest, and a rather scenic chasm[or]Not much through it worth seeing, anyway[in random order]. [one of]You'll just have to figure out the [dc_order] to push the [dc_buttons] in, I suppose[or]I expect you'll need to push the [dc_buttons] in the right [dc_order] if you want it open[in random order],' he says, [animus-business].". 

Understand "sculptor" as dc_sculptor. dc_sculptor is a beat in DenialC with keyword name "sculptor" and reaction "'Crazy old hermit!' [the Progue] says, nodding. 'One of the Three Great Men with their [dc_secrets]. Built all kinds of contraptions everywhere. Used to live here for a span, years ago. Never knew what happened to him in the end. Probably swallowed by the [dc_creeper][if dc_door1b is spoken]. Oh!' He adds suddenly. 'He built it for those lovely little [dc_girls]. That [dc_door1b]. To keep them [dc_safety] from, you know, something or other[end if].'".

Understand "button/buttons" as dc_buttons. dc_buttons is a repeatable beat in DenialC with keyword name "buttons" and fuse 5 and reaction "[one of]'Oh, now that does tickle the brainwaves, doesn't it?' [the Progue] says thoughtfully, scratching his head. 'Yes, those beautiful buttons, each inscribed with something found about the [dc_island]. Work, craft, and show; all sorts of manshippage!' He smiles, then tilts his head, [animus-business]. 'There was something frightful important about the [dc_order] you pressed them in, if I recall,' he says. 'Frightful, frightful important.'[or]'Yes,' he says again, 'definitely something of prime importance related to the [dc_order] you pressed them in.'[stopping]".

Understand "order" as dc_order when last beat is in DenialC. dc_order is a beat in DenialC with keyword name "order" and reaction "'Ye-es,' he says, slowly, lifting his finger and punching imaginary buttons in the air. 'Click click, click click click, click. [if puzzle mode][dc_six] of [']em, made thrilling little clunks when pressed.[otherwise]One for each color, and what thrilling little clunks![end if]' He smiles, half closing his eyes in memory, it would seem, of this tiny pleasure.". dc_positioned replaces dc_order. dc_order suggests dc_six.

Understand "six" as dc_six when last beat is in DenialC. dc_six is a beat in DenialC with keyword name "Six" and reaction "'Which six? What order?' he asks in astonishment. 'Well why should that matter? Honest, you [dc_player] are obsessed with the strangest things. [if puzzle mode]Which six buttons indeed. [end if]My worlds.' But he pauses and half closes an eyelid, as if something occurs to him, and falls silent for a musing moment.". dc_six suggests dc_six2. dc_six2 replaces dc_six.

dc_six2 is a repeatable beat in DenialC with reaction "[one of]'Something to do with the [dc_doorcolors], though,' he says slowly. 'Yes, I'd forgotten that. The colors were important in case I forgot. He forgot, I mean. The [dc_sculptor]. Something [dc_girls] wouldn't know about,' he adds half in a trance, a faint smile touching his face, 'the little angels.'[or]'It was all about the [dc_doorcolors] somehow,' he says again, nodding, 'to keep those [dc_girls] from getting into danger. To keep them [dc_safety].[stopping]". 

Understand "safe" as dc_safety when last beat is in DenialC. dc_safety is a beat in DenialC with keyword name "safe" and reaction "'Yes,' [the Progue] says vaguely, waving a floppy hand in the direction of the volcano, 'the lava flow, too dangerous for little girls, all sharp edges and chasms and steam vents. And of course the [dc_creeper] lives over there. Or at least, it does now.' He frowns. 'Was it around back then? Can't remember. Was I? Or was it just the [dc_sculptor] then? Can't remember. Oh well oh.'".

Understand "color/colors/vertical/bands/band" as dc_doorcolors when last beat is in DenialC. dc_doorcolors is a beat in DenialC with keyword name "colors" and fuse 6 and reaction "'Bands of colors?' [the Progue] says vaguely. 'Well, yes, that does sound something familiar now that you mention. The door was built by that [dc_sculptor], if you ring; I think he's the one who painted the colors on there too. [dc_positioned] them in a certain way. Something to do with the [dc_buttons], I suppose.' He shrugs, [animus-business].".

Understand "position/positioned" as dc_positioned when last beat is in DenialC. dc_positioned is a repeatable beat in DenialC with keyword name "Positioned" and reaction "'[one of]Oh, a sculptor does nothing by accident, lie assured,' he says, warming to his subject. 'They're deliberate, precise. [or][stopping]Yes, I'm gushing sure each of those colors, [t]red[x], [t]blue[x], [t]black[x] and all the others, was where it was for a very deliberate, precise, important [dc_purpose].' He nods authoritatively.". dc_positioned summons dph_red, dph_blue, dph_white, dph_black, dph_yellow, dph_green.

Understand "purpose" as dc_purpose when last beat is in DenialC. dc_purpose is a beat in DenialC with keyword name "purpose" and reaction "'A very important purpose indeed,' [the Progue] says vaguely, 'its importance was never in doubt by all. Yes, no, never.'[paragraph break]'Sorry I can't be more helpfulable,' he adds, 'it was just a notion. Flew in then right back out again! Don't remember much these days, mostly usually. Remember much, that is. What were we talking about?'".

the puzzle_color is a beat that varies. the puzzle_color is silence.

Understand "red" as dph_red when last beat is in DenialC or puzzle_color is not silence. dph_red is a repeatable beat in DenialC with keyword name "red" and reaction "[pc_red][color_hint1]". dph_red enqueues dph_postcolor.

Understand "yellow" as dph_yellow when last beat is in DenialC or puzzle_color is not silence. dph_yellow is a repeatable beat in DenialC with keyword name "yellow" and reaction "[pc_yellow][color_hint1]".  dph_yellow enqueues dph_postcolor.

Understand "black" as dph_black when last beat is in DenialC or puzzle_color is not silence. dph_black is a repeatable beat in DenialC with keyword name "black" and reaction "[pc_black][color_hint1]".  dph_black enqueues dph_postcolor.

Understand "white" as dph_white when last beat is in DenialC or puzzle_color is not silence. dph_white is a repeatable beat in DenialC with keyword name "white" and reaction "[pc_white][color_hint1]".  dph_white enqueues dph_postcolor.

Understand "blue" as dph_blue when last beat is in DenialC or puzzle_color is not silence. dph_blue is a repeatable beat in DenialC with keyword name "blue" and reaction "[pc_blue][color_hint1]".  dph_blue enqueues dph_postcolor.

Understand "green" as dph_green when last beat is in DenialC or puzzle_color is not silence. dph_green is a repeatable beat in DenialC with keyword name "green" and reaction "[pc_green][color_hint1]".  dph_green enqueues dph_postcolor.

To say color_hint1: say "[one of]'Moisty hells,' [the Progue] says, throwing up his hands, 'you expect me to remember some obscure bit of color symbolism that crazy sculptor left behind, all these years later? You expect a two-thirds mad castaway to know what a dash of [noun] paint on a door he hasn't seen in decades is meant to represent? No, don't answer; I can see by your ingratiating expression that you do.'[paragraph break]He sighs, [attitude-business]. 'Look, I'm trickling busy here at the moment,' he says. 'Why don't you come back later, say tomorrow maybe, and ask me then? I'll think about it; no really I will. Come back tomorrow, my [animal-nickname], tomorrow.' [Progue-resumes].[or][color_hint2][stopping]". 

To say pc_red: if puzzle_color is silence, now puzzle_color is dph_red.
To say pc_yellow: if puzzle_color is silence, now puzzle_color is dph_yellow.
To say pc_blue: if puzzle_color is silence, now puzzle_color is dph_blue.
To say pc_green: if puzzle_color is silence, now puzzle_color is dph_green.
To say pc_white: if puzzle_color is silence, now puzzle_color is dph_white.
To say pc_black: if puzzle_color is silence, now puzzle_color is dph_black.

dph_postcolor is a repeatable beat in DenialC. [dph_postcolor2 replaces dph_postcolor. dph_postcolor2 is a beat in DenialC. ][and does nothing.] Instead of discussing dph_postcolor when dc_colorsolution is spoken: do nothing.

After discussing dph_postcolor:
	post-conversation processing;
	now tomorrow-flag is true;
	continue the action.

Every turn when Progue is attentive and puzzle_color is not silence and an unimportant episode is playing: add puzzle_color to list of convo stuff, if absent; now tempfuse of puzzle_color is 5; remove dc_door1b from list of convo stuff, if present.

To say color_hint2:
	if dc_colorsolution is spoken begin;
		force discuss dc_toomanycolors;
	otherwise if noun is puzzle_color;
		if Waiting-For-Tomorrow is happening begin;
			force discuss dc_colorbugearly;
		otherwise;
			force discuss dc_colorsolution;
			now puzzle_color is silence;
		end if;
	otherwise;
		force discuss dc_colorundecided;
	end if.

dc_colorbugearly is a repeatable beat in DenialC with reaction "'[one of]I said tomorrow![or]Tomorrow! Tomorrow![or]What did I say?[in random order]' [the Progue] says[one of], almost jumping up and down in fury[or], mouth gaping open in astonishment at what he seems to view as utterly incurable stupidity[or] angrily[in random order]. '[one of]Can't you blind? Are you see?[or]How many times do I have to sound this to you?[or]It's not that difficult a concept, really.[in random order] It's not tomorrow yet[one of], or,' he adds, managing somehow to be both infuriated and speculative at the same time, 'if it is, it's not tomorrow enough yet[or][stopping]. Later! Come back later!'".

dc_colorsolution is an ephemeral beat in DenialC with reaction "'Oh, that!' [the Progue] says. 'Well, I think I may have remembered something, but first I have to say I really don't ring this part of the haunting business at all.' He shakes his head. 'Why [puzzle_color]? Does it represent something about my life? Association! Representation! Hmm, mayhaps... yes, yes, peeking through the [']locked door,['] discovering what's on the [']other side,['] something thatwise, eh? Ah! So metaphorical of you, so neurological! I'm sure exciting personal breakthroughs are about to made once this [puzzle_color] curtain is peeled from the depths of my [puzzle_color]-strewn psyche.' He nods in satisfaction.[paragraph break]'Oh,' he adds as an afterthought. It's [dc_puzzbit]. That's where the [puzzle_color] paint came from. You're welcome.'". To say dc_puzzbit: say "[if puzzle_color is dph_red]the berries. The berries are red[otherwise if puzzle_color is dph_yellow]the leaves of the [dc_windsigh]. The tree leaves are yellow[otherwise if puzzle_color is dph_white]the snails. Their shells are white[otherwise if puzzle_color is dph_black]the [learn_rayfish_name], that swim in the lagoon at night. Their ink is black[otherwise if puzzle_color is dph_green]the [dc_mussels] down by the boulders. Their shells are green[otherwise]crystal by the waterfall. It matches that blue[end if]". After discussing dc_colorsolution: now puzzle_color is silence; continue the action.

dc_colorundecided is a repeatable beat in DenialC with reaction "[one of]'Oh, now it's [noun], is it?' [the Progue] says, [attitude-business]. 'First [puzzle_color], now [noun], then aquamarine and mauve and gamboge I expect. Listen, [animal-nickname], choosers can't be beggars; you've chosen your color so don't come begging for another one now.' He sniffs indignantly.[or]'Look, [animal-nickname], [puzzle_color] you said and [puzzle_color] it is, and that's it.'[stopping]".

dc_toomanycolors is a beat in DenialC with reaction "'Oh now really, this is too much,' he says indignantly. 'I really can't be bothered with that silly door any more. Figure it out yourself and stop pestering me!'".

tomorrow-flag is a truth state that varies. Waiting-For-Tomorrow is a recurring scene. Waiting-For-Tomorrow begins when tomorrow-flag is true. Waiting-For-Tomorrow ends when Having A Dream is happening or the time since Waiting-For-Tomorrow began is at least 23 hours. When Waiting-For-Tomorrow ends: now tomorrow-flag is false.


Understand "mussel/mussels" as dc_mussels when last beat is in DenialC. dc_mussels is a beat in DenialC with keyword name "mussels" and reaction "'Mmm,' [the Progue] says, rubbing his belly, 'they'd be delicious with a nice pale wine, if such things existed here. I like to imagine they do when I eat them; the delicate green of their shells a rich contrast against the faint yellow sheen of the wine, distorted through the glass...' He sighs in contentment.". small blue mussels references dc_mussels.


Understand "tree/trees/windsigh/vine/holes/leaves" as dc_windsigh. dc_windsigh is a beat in DenialC with fuse 9999 and keyword name "trees" and reaction "'Hmm,' [the Progue] says absently. 'Yes, I remember them. They gave off such a queer noise. I called them [remember_windsigh_name].' He scratches his chin. 'Now why did I remember that? Windsigh. Curious curious. Haven't seen or been near one for green eons, and there that word pops in.' He frowns. 'That's [dc_creeper] territory over there, if you ring; I stay away and you'd do well to too, too true.'". remember_windsigh_name replaces dc_windsigh. After discussing dc_windsigh: now tree1 is named; continue the action. tree1 references dc_windsigh. Check examining by name some konokuk trees: if dc_windsigh is available, try discussing dc_windsigh instead; if remember_windsigh_name is available, try discussing remember_windsigh_name instead. Check examining by name distant-tree3: if dc_windsigh is available, try discussing dc_windsigh instead; if remember_windsigh_name is available, try discussing remember_windsigh_name instead. 

remember_windsigh_name is a repeatable beat in DenialC with keyword name "windsigh" and reaction "'The windsigh,' [the Progue] says musingly, [animus-business]. '[one of]All I remember[or]I just remembered. All those little holes in the branches, big and small, even inside their trunk. They're called lacunae[or]Strange little trees[in random order].'". Check examining by name distant-tree3: if remember_windsigh_name is available, try discussing remember_windsigh_name instead. Check examining by name background-scenery: if remember_windsigh_name is available, try discussing remember_windsigh_name instead.

dc_alliremember is a repeatable ephemeral beat in DenialC with fuse 9999 and reaction "[one of]'Terrible sorries, can't remember anything else,' [the Progue] says whimsically.[or]'Hmm, can't remember much else about it,' [the Progue] says, scratching his chin.[or]'Surprised I remembered that much,' he mutters.[or]'Sorry, what were we just talking about?' [the Progue] says vaguely.[in random order]". To say all_i_remember: force discuss dc_alliremember. 

Understand "heavens/capalla" as learn_capalla_name. learn_capalla_name is a beat in DenialC with fuse 9999 and keyword name "heavens" and reaction "'Great place for astronomers, astrophiles, astromancers,' [the Progue] says agreeably. 'So many stars, and the great [remember_capalla_name] running through them all. Capalla; that's the galaxy, you know. I named it. I named everything here, every mostly. Why not, really.'". remember_capalla_name replaces learn_capalla_name. After discussing learn_capalla_name: now galaxy is named; continue the action. galaxy references learn_capalla_name. 

Understand "capalla" as remember_capalla_name when last beat is in DenialC. remember_capalla_name is a repeatable beat in DenialC with keyword name "Capalla" and reaction "'The galaxy's Capalla,' [the Progue] says, 'and to save you some time I won't bore you with my names for all the stars.'".

Understand "food" as dc_food. dc_food is a beat in DenialC with fuse 9999 and keyword name "food" and reaction "'Plenty to eat,' [the Progue] says. 'There's the [dc_berries], the fish, the [dc_crabs], the [dc_konokuk] fruit[if location is North Beach or location is Rise]...' Progue kicks one of the hairy brown spheres by way of illustration to this last example -- '[otherwise]-- the hairy brown round ones, you know--[end if]even the [learn_rayfish_name] are tender, but damn hard to catch,' he adds with a smile.". After discussing dc_food: now konokuk trees are named; continue the action. 

Understand "coconut/konokuk" as dc_konokuk. dc_konokuk is a repeatable beat in DenialC with fuse 9999 and keyword name "konokuk" and reaction "'Just give the konokuk fruits a good solid punch and they'll split right open,' [the Progue] says cheerfully. 'Delicious delicious.'". konokuk trees references dc_konokuk. After discussing dc_konokuk: now konokuk trees are named; continue the action. Check examining by name konokuk trees: if dc_konokuk is available, try discussing dc_konokuk instead. Check examining by name tree-konokuk: if dc_konokuk is available, try discussing dc_konokuk instead. Check examining by name ground-konokuk: if dc_konokuk is available, try discussing dc_konokuk instead. Does the player mean doing anything to dc_konokuk: it is very likely.

dc_fish is a beat in DenialC with fuse 9999 and keyword name "fish" and reaction "'They're all edible, to varying degrees,' he says [attitude-business]. 'But I've found the more colorful they are, the prettier, but the less tasty. Your experience may differ, being [t]noncorporeal[x].".

Understand "crab/crabs" as dc_crabs. dc_crabs is a beat in DenialC with fuse 9999 and keyword name "crabs" and reaction "'Sneaky little devils, aren't they?' [the Progue] says with a fond expression. 'Steam up quite nicely. Three or four make for quite some meal.'". crab references dc_crabs.

Understand "berry/berries/bush/bushes/fruit" as dc_berries. dc_berries is a beat in DenialC with fuse 9999 and keyword name "berries" and reaction "'Mmm,' [the Progue] says, 'I remember the flavor something strongwards. Haven't had any in years and fears; they're in the [dc_creeper] part of the island, if you ring.'". berries references dc_berries.

Progue references dc_name.
Understand "himself/name" as dc_name. dc_name is a beat in DenialC with fuse 9999 and keyword name "[if last beat is dc_name or last beat is dc_name2 or last beat is dc_name3]name[otherwise]himself" and reaction "He bows. 'So pleased to formally make your acquaintance,' he says, straightening with a grandiose flourish. 'I am the hermit without a hermitage, the shipwreck without a ship, the man without a memory. Or a wreck. A shipwreck without a wreck. That's better. Yes. But my personal history, allergic reactions, and [dc_name2], date, place of birth have all become mere hypothetical constructions, lost in unkept corners of the mind. Oh, that's good too. [']Unkept corners.['] I'd write that down if I didn't forget to.'".  dc_name2 replaces dc_name. 

dc_name2 is a beat in DenialC with keyword name "name" and reaction "He looks annoyed. 'I thought I told you,' he begins, 'that I can't remember my---'[paragraph break]He breaks off suddenly, a look of astonishment on his face. 'Oh well and there it is again,' he says faintly. 'How about that. Ten years it's been gone and now there it pops in just again like that. The blessed [dc_name3]. How very very extra-ordinary.'".  dc_name3 replaces dc_name2. After discussing dc_name2:  continue the action.

dc_name3 is a beat in DenialC with keyword name "name" and reaction "'Got it right up here,' he says cheerfully, tapping his head rather forcefully. 'What, you want to know it too? Rather forward of you isn't it? We've only just met!' He pauses, considering. 'Of course, that would provide some insurance against losing it again, I suppose.' He shifts his weight, frowning. 'On the other hand it wouldn't at all, as you're a [dc_real] of my imagination, so if I forget it you're liable to as well. Conundrum.' He taps his foot for a moment, staring off into the horizon, lost in thought.[paragraph break]'On the third hand,' he finally adds, scratching his beard, 'if your figmentation was fermenting in the same slice of mind where my name is, you'd know it already. So mayhaps this could be useful.' He thinks a moment more, then nods and looks you straight in the eye.[paragraph break]'Alright,' he says firmly, '[dc_nameguess2].'". After discussing dc_name3: activate guessing mode; continue the action. dc_nameguess2 replaces dc_name3. dc_postnameguess replaces dc_nameguess2.

dc_postnameguess is a beat in DenialC with keyword name "himself" and reaction "'I'm so happy to have it back!' he says, beaming. 'The name, that is. I'll take better care of it henceforthwithwards, I promise.'". After discussing dc_revealname: deactivate guessing mode; now Progue references nothing; continue the action. dc_png2 replaces dc_postnameguess.

dc_png2 is a repeatable beat in DenialC with keyword name "himself" and reaction "'[one of]Enjoying the [progue-time-of-day][or]Doing fine[or]Fantastic, [animal-nickname], thanks and thanks for asking[or]Quite well, quite well[or]Never better[in random order],' he says, [if a random chance of 1 in 2 succeeds][animus-business][otherwise][attitude-business][end if].".

Understand "guess" as dc_nameguess2. dc_nameguess2 is a beat in DenialC with keyword name "guess" and reaction "'Yes, guess my name,' he says, folding his arms. 'Go on, guess one. Just say it. Blurt one out, do.'". After discussing dc_nameguess2: activate guessing mode; continue the action.

player-name-guess is an indexed text that varies. player-name-guess is "no.guess".

Yourself is either active-guessing or not-guessing. Yourself is not-guessing. 

To activate guessing mode:
	unless Progue is named begin;
		now yourself is active-guessing;
		now boredom counter of Progue is 0;
		repeat with target running through available beats begin;
			unless target is dc_nameguess2, now tempfuse of target is 0; 
		end repeat; 
	end unless.

To deactivate guessing mode: now yourself is not-guessing.

[After reading a command when yourself is active-guessing:
	if Progue is idle:
		deactivate guessing mode; [sanity check.]
	otherwise:
		let testtext be indexed text;
		let testtext be the player's command;
		replace the player's command with "guess2 [the player's command]".]

[Guessing is an action applying to one topic. Understand "guess2 [text]" as guessing. Carry out guessing: say "Nothing happens."]

After reading a command when yourself is active-guessing and last beat is in DenialC:
	let spoken_word be indexed text;
	now spoken_word is the player's command;
	if a meta command matches spoken_word begin;
		say "[as the parser]Can't use meta commands while guessing. Try again in a moment[as normal].";
		stop;
	end if;
	if spoken_word exactly matches the text "no" begin;
		force discuss dc_refusetonameguess;
	otherwise if spoken_word exactly matches the text "yes";
		force discuss dc_nameyes;
	otherwise if spoken_word exactly matches the text "guess";
		force discuss dc_nameguess2;
	otherwise if spoken_word exactly matches the regular expression "\b(listen|nothing|z|wait)\b";
		deactivate guessing mode;
		force discuss dc_nameyes;
	otherwise if the number of characters in spoken_word is less than 3;
		let noise be indexed text;
		now noise is spoken_word;
		if the number of characters in noise is 1, now noise is "[noise][noise][noise][noise][noise]" in sentence case;
		otherwise now noise is "[noise][character number 2 in noise][character number 2 in noise][character number 2 in noise][character number 2 in noise]" in sentence case;
		say "[one of]'[noise]?' he says skeptically. 'That's a noise, not a name. Come on, now, I thought you were taking this seriously. Try again.'[or][twostrikes][stopping]";
	otherwise if the number of words in spoken_word is greater than 2;
		say "[one of]'Gesundheit,' he says. 'Sounds like quite a nasty cold you're coming down with there. You might want to try guessing just one name at a time until you're feeling a bit better, so you don't overdo things.'[or][twostrikes][stopping]";
	otherwise if the number of characters in spoken_word is greater than 13;
		say "[one of]'Same to your mother,' he says, crossing his arms. 'If that's what passes for a name where you come from, I don't believe I care to hear any cursing. Now come on, take this seriously. Guess again.'[or][twostrikes][stopping]";
	otherwise if spoken_word exactly matches the text "progue";
		deactivate guessing mode;
		force discuss dc_guessprogue;
	otherwise if spoken_word matches the text "ogue";
		force discuss dc_guessnameclose;
	otherwise;
		if player-name-guess is "no.guess", now player-name-guess is spoken_word in sentence case;
		force discuss dc_guessname;
	end if;
	stop the action.

Instead of getting bored when yourself is active-guessing:
	deactivate guessing mode;
	force discuss dc_nameyes;
	now boredom counter of Progue is 0;
	now Progue is attentive.

To say twostrikes: force discuss dc_refusetonameguess. [BUG: This may not work because its coming from a meta action?]

dc_guessname is an ephemeral beat in DenialC with reaction "He bursts out laughing. '['][player-name-guess]?[']' he says. 'Is that what you said? No, no. Ah well-oh, let me give you a hint. It rhymes with 'rogue.' You know, like scoundrel, vagabond. Try again?'". dc_guessname2 replaces dc_guessname. After discussing dc_guessname: if dc_rtlhint is unspoken, activate guessing mode; continue the action.

dc_guessname2 is an ephemeral beat in DenialC with reaction "'Oh, you're so far off,' he says, giggling. 'You were closer with ['][player-name-guess].['] Want another guess?'". dc_guessname3 replaces dc_guessname2. After discussing dc_guessname2: activate guessing mode; continue the action.

dc_guessname3 is an ephemeral beat in DenialC with reaction "'Ridiculous,' he says. 'Preposterous. I can see you aren't taking this seriously. Very well, I'll just tell you. Here it is.'". dc_guessname3 enqueues dc_revealname. After discussing dc_guessname3: deactivate guessing mode; continue the action.

dc_nameyes is a repeatable ephemeral beat in DenialC with reaction "[one of]'Well, go on,' he says.[or]'Still waiting,' he says.[or][twostrikes][stopping]". After discussing dc_nameyes: activate guessing mode; continue the action.

dc_guessnameclose is an ephemeral beat in DenialC with reaction "'Close!' he says, jumping up and down on the [surface-material], 'oh ever so ever so close. You've almost got it. Want one last guess?'". After discussing dc_guessnameclose: activate guessing mode; continue the action. dc_guessnameclose2 replaces dc_guessnameclose.

dc_guessnameclose2 is an ephemeral beat in DenialC with reaction "'Ooh, oh! Gushing close, my [animal-nickname]!' he shouts. 'I'm too upended to hold it in much longer; I'll just tell you tell you. Ready? Here it is.'". dc_guessnameclose2 enqueues dc_revealname. After discussing dc_guessnameclose2: deactivate guessing mode; continue the action.

dc_refusetonameguess is a beat in DenialC with reaction "'Something Further,' he says, waving a hand dismissively at you, 'there's so little entertainment round here to begin with I would have expected you to be more of a sport. Very well then, I'll tell you. Here it is.'". dc_refusetonameguess enqueues dc_revealname. After discussing dc_refusetonameguess: deactivate guessing mode; continue the action. 

dc_revealname is an affinitive beat in DenialC with reaction "Beaming happily at you, he clears his throat dramatically, looks around, then spreads his arms wide and proclaims, 'My name is, my name is, my name is...'[paragraph break]He scratches his head. 'Moisty hells, it's gone again,' he says glumly, then brightens. 'No! Yes! That's it! My name is... Progue!'". dc_revealname enqueues dc_rtlhint. After discussing dc_revealname: deactivate guessing mode; now dc_postnameguess replaces dc_name; continue the action. [[if a random setpiece is enclosed by location]leaps to the top of [a random setpiece enclosed by location][otherwise]spreads his arms wide[end if]]

dc_rtlhint is a beat in DenialC with reaction "He grabs a stick and scratches four quick symbols in the [surface-material], writing right to left. 'Progue,' he says again, nodding and erasing them again, 'an ancient name with a long and noble history and tradition. At least so I like to imagine. Can't remember sausages about my history and traditions unfortunately. Ah well-oh.'". After discussing dc_rtlhint: now dc_postnameguess replaces dc_name3; now Progue is named; now Progue is proper-named; deactivate guessing mode; continue the action. dc_rtlhint cancels dc_nameguess2, dc_nameyes.

dc_guessprogue is an affinitive beat in DenialC with reaction "He laughs triumphantly, flashing a wild grin. 'No, that's not it,' he says. 'Close though. No wait a ment, what did you say? Progue?' He crosses his arms and frowns. 'Actually I suppose that [italic type]is[roman type] the correct name, technically, although your pronunciation was something atrocious. But ah well-oh, never mind never mind.'". dc_guessprogue enqueues dc_rtlhint. After discussing dc_guessprogue: deactivate guessing mode; continue the action.


	

Chapter - Word Day

[ This is most likely the player's first contact with Progue. (The other possibility is if the player injures himself before waking Progue, in which case first contact is the Tending-to-Wounded-Player scene. ]

[ In this scene, Progue is standing atop a boulder in "Among the Boulders," loudly reading some bad poetry he has written. He will at first ignore the player, then jump cheerfully down to speak with him. Progue is sure you are a mere hallucination, and treats you thusly. ]

[ Possible endpoints: By default, Progue will have a breezy conversation about the weather, the poem, and the poor reception by the sea creatures, before waving and setting off to go about his business. Rude behavior by you may cause him to leave in a cheery huff, but not actually affect his disposition. Asking Progue about mentally charged keywords will cause a bit of hurt, and make Progue reveal he doesn't like this hallucination, before leaving (but still have no permanent effects). The player may attack Progue, or say the keyword "wayfaring" or "call" to jump immediately to the Shocking Revelation conversation. Progue does not reveal his name during this scene. ]

[Word Day is a guaranteed triggered instant rendezvous episode.][defined in Progue main] The expiration date of Word Day is 6 hours. The meeting place of Word Day is Among the Boulders. The icebreaker of Word Day is bp_verse1.

Last condition rule for Word Day:
	if player is in Fork, rule succeeds.

A commencement rule for Word Day:
	now time-wd-started is current interval;
	now the unavailable-beat of Progue is bp_dontinterrupt.

A finishing rule for Word Day:
	ignore the episodes usually end when conversation does rule;
	if bp_introduction is spoken and Progue is idle, rule succeeds;
	if Jumble is visited, rule succeeds. 

A completion rule for Word Day: [aar]
	now dont_describe_Progue is true;
	manually reference dc_flash;
	remove bp_flash from list of convo stuff, if present;
	Progue's life goes on;
	if Progue is enclosed by location begin;
		now Word Day is successful;
		if the psyche of Progue is denial, say "Just before getting out of sight, he turns. 'Oh!' he shouts back to you. 'Welcome welcome I suppose and all that. To the island!' He turns, disappearing behind the boulders, but his voice carries back: 'To my Lacuna!'";
		follow the Progue's motivation rule;
		print a section break;
	end if;
	if the episodic status of Word Day is expired begin;
		now the episode schedule is Table of Denial Episodes;
		now the icebreaker of Word Day is spoken; [This prevents it being put back in the queue.]
	end if;
	now the unavailable-beat of Progue is pd_unavailable.

time-wd-started is an interval that varies. [May be used much later for Progue's reminiscing. ]

[Table of Progue's Description (continued)
animus	episode		desc
--		Word Day	"At first glance, he seems the picture of a shipwreck victim: faded and torn rags akimbo on bony joints, long hair touched with grey, matted and thinning, and a sunworn face. As he stands atop the boulder shouting at the horizon, he seems like a madman. But something about the way he holds himself, the piercing blue of his eyes, and the way he moves his hands hints at some vague power, some animus that decrepitude or madness have yet to touch."]

Table of Progue's Initial Appearance (continued)
animus	episode		desc
--		Word Day	"[if we have not discussed bp_introduction]A strange little [o]man[x] stands atop the largest of the boulders, dressed in a patchwork costume of ragged and threadbare clothes. He faces the ocean and vigorously shouts at it.[otherwise]The curious old [o]man[x] watches you earnestly."

The subchange beat of Word Day is bp_dontinterrupt. After discussing bp_introduction: now the subchange beat of Word Day is bp_dontchangesubject; continue the action.
The boredom beat of Word Day is bp_bored.
The bye beat of Word Day is bp_earlybye.
The abruptbye beat of Word Day is bp_earlybye.

	
[Every turn when current episode is Word Day and ( location is Center Beach or location is Center Low Tide or location i ) : add potential messages from the Table of Distant Boulder Poetry. ] Every turn when current episode is Word Day and ( location is Tidepools or location is Ocean Waters or location is South Beach or location is Center Beach or location is North Beach or location is Rise ) and bp_introduction is unspoken: fire one off by frequency from the Table of Closeby Boulder Poetry, definitely selecting; now spotted-progue is true. 



[ Table of Distant Boulder Poetry
frequency	start time	end time	text	table		trigger	flag	
frequent	an interval	an interval	"From somewhere in the distance comes the faint sound of someone shouting."	--		Progue's voice
frequent	an interval	an interval	"A muffled voice yells something indistinguishable from somewhere through the trees."	--		Progue's voice
frequent	an interval	an interval	"You pick up the sound of a distant man yelling."	--	Progue's voice ]

Table of Closeby Boulder Poetry
freq		start time	end time	text	table		trigger	flag	
frequent	an interval	an interval	"[one of]Off towards the [if location is South Beach][dr]boulders[x][otherwise]boulders[end if], you can see a [o]figure[x] dressed in rags standing atop them and facing the ocean, shouting and gesticulating wildly[tutorial-distantpeople].[or][boulderpoetrydistant].[stopping]"		--	distant-Progue

To say boulderpoetrydistant: say "The [o][one of]man[or]figure[at random][x] [one of]in the distance[or]off by the [if location is South Beach][dr]boulders[x][otherwise]boulders[end if][at random] [one of]continues[or]is still[at random] [bpd2]". To say bpd2: say "[one of]shouting[or]yelling[or]crying out[or]raving[at random] and [one of]wildly waving his arms[or]gesticulating[or]jumping about[at random] from the top of the boulder".

[Understand "shout" or "shouts" or "shouting" or "voice" or "sound" or "faint" or "muffled" or "distant" or "man" as distant-Progue during Boulder Poetry. The description is "You can't quite make out the words, but it's definitely male, and it's definitely excited about something.".]

BP is a thread. The escape clause of BP is bp_hallucination.

Every turn when current episode is Word Day and location is Among the Boulders and the location was not Among the Boulders: now the psyche of Progue is denial; now the episode schedule is Table of Denial Episodes[; force discuss bp_verse1].

bp_bored is an unaffinitive beat in BP with reaction "'I see,' he says sourly, 'one of the unhelpful spirits then are you? Moisty hells, go and haunt someone else, why don't you, eh? The sea ignores me enough as it is; some Word Days I wonder if it even listens at all. Certain don't want more of that, thank you.'". bp_bored enqueues bp_outtro.

bp_verse1 is an exciting beat in BP with fuse 6 and reaction "'[t]Concordance[x]! Summation! Integration!' he shouts, staring furiously at the waves. 'Deliverance! Reticence! Abolition!'". bp_verse1 suggests bp_verse2. bp_verse1 summons bp_dontinterrupt. After discussing bp_verse1: now met_progue is true; continue the action.

bp_verse2 is an exciting beat in BP with fuse 6 and reaction "'[t]Proposition[x]! Elucidation!' he shouts. 'Deterrence!' He thinks for a moment, seemingly stumped, then his face lights up and he shouts 'Obsequious!'[tutorial-listening]". bp_verse2 suggests bp_verse3. bp_verse2 summons bp_dontinterrupt.

bp_verse3 is an exciting beat in BP with fuse 6 and reaction "He pauses for a moment to catch his breath, looking down at his bare toes, flexing thoughtfully. '[t]Ribaldness[x]?' he mutters. 'Torque. Serendipity, ahhhh.'". bp_verse3 suggests bp_verse4. bp_verse3 summons bp_dontinterrupt.

bp_verse4 is an exciting beat in BP with fuse 6 and reaction "He scrunches his face up, then belts out a string of words as quick as he can shout them: '[t]Singularity[x]- Perpetuity- Mendacity- Parasitic- Gregarious- Intolerance!' He beams proudly.". bp_verse4 suggests bp_poemover. bp_verse4 summons bp_dontinterrupt.

Instead of greeting Progue when current episode is Word Day and we have not discussed bp_introduction: force discuss bp_dontinterrupt.

Understand "sorry" as bp_sorry when last beat is in BP. bp_sorry is an ephemeral beat in BP with keyword name "sorry" and reaction "'[']salright,' he hisses, 'Won't be a ment longer, just another word or two to get through.'". 

bp_earlybye is a beat in BP with reaction "He seems to ignore your farewell at first, but then [proguejumpboulder]". bp_earlybye enqueues bp_introduction. 

Instead of hugging Progue when current episode is Word Day and we have not discussed bp_introduction, say "You can't reach him while he's up there."

Instead of hugging Progue when current episode is Word Day and bp_introduction is spoken, force discuss bp_hug. bp_hug is an ephemeral beat in BP with reaction "You step forward with your arms spread out, but he backs up, eyes wide. 'Back! Retreat, you soul drinking spirit!' he shouts, grabbing a handful of [surface-material] and preparing to throw it. 'Not my time yet! Get back! Back!'".

Understand "word/day/now/ruining/concentrate/blather/concordance/summation/integration/proposition/elucidation/ribaldness/singularity" as bp_dontinterrupt when last beat is in BP. bp_dontinterrupt is an ephemeral beat in BP with fuse 8 and keyword name "[if last beat is bp_verse1]concordance[otherwise if last beat is bp_verse2]proposition[otherwise if last beat is bp_verse3]ribaldness[otherwise]singularity[end if]" and reaction "He does not even glance at you, but waves a hand dismissively. 'Not [t]now[x]!' he hisses. 'Not not not on [t]Word[x] Day!'". bp_notnow replaces bp_dontinterrupt. bp_dontinterrupt summons bp_notnow.

bp_notnow is an ephemeral beat in BP with keyword name "now, word" and reaction "He glances at you in annoyance. 'What, you're [t]ruining[x] it!' he hisses, as if trying to prevent something out in the ocean from hearing. 'Can't [t]concentrate[x] if you're going to pratter on like that. Go away!'". bp_notnow summons bp_poeminterrupted, bp_sorry. bp_poeminterrupted replaces bp_notnow. bp_notnow summons bp_poeminterrupted. Before discussing bp_notnow: if last beat is bp_verse4, force discuss bp_poeminterrupted instead. [This prevents us saying the above then thanking the player for not interrupting. ]

bp_poeminterrupted is a submissive beat in BP with keyword name "ruining, concentrate" and reaction "He lets out a little sigh, then turns to you with a look of beaten finality.[paragraph break]'Ah well-oh, that's it,' he says unhappily. 'Concentration broken. Vocabularizing aborted. No [bp_wordday] Day today. Hope you're well and pleased.' And with a surprising little flip, [proguejumpboulder].". bp_poeminterrupted enqueues bp_introduction. bp_wordday replaces bp_poeminterrupted.

bp_poemover is an exciting beat in BP with reaction "[if conversation fuse is 0]He glances down at you with a frown, then shrugs and lowers his hands. 'Never mind, I'm done anyway,' he says. 'Thanks for understanding. [otherwise]Satisfied, he finally turns to you with a smile. 'Thank you much for waiting,' he says, '[end if]I so do hate my [bp_wordday] Days interrupted.' And then with a surprising little flip, [proguejumpboulder].". bp_poemover enqueues bp_introduction. 

To say proguejumpboulder: say "he leaps off the top of the boulder to come crashing down in the sand at your feet. Before you can even think to start moving forward to see if he is all right, he is on his feet and standing just a pace before you".

bp_introduction is an insistent beat in BP with reaction "He pokes you [if player is male]sharply in the chest[else]on the forehead[end if]. 'I know your game,' he says disapprovingly. 'Been expecting you for quite a [bp_time], really. I'm two-thirds mad you see, at least; have been for green eons, and it's often I wonder when the other third would show up and so here you are.'[paragraph break]He folds his arms skeptically. 'So what do we do, then, eh? Flashbacks to every dark corner of my past failings? Hauntings, waking nightmares? You're my first [bp_hallucination], so I'm unclear, unsure as to the procedures and protocols.' He regards you with wary eyes.".  bp_introduction suggests bp_hallucination. bp_introduction summons bp_hallucination, bp_time. bp_introduction cancels bp_notnow, bp_dontinterrupt, bp_poeminterrupted. bp_hallucination replaces bp_introduction. After discussing bp_introduction: now bp_dontchangesubject replaces bp_dontinterrupt; now unavailable-beat of Progue is bp_dontchangesubject; continue the action.

bp_dontchangesubject is an ephemeral repeatable beat in BP with reaction "He cuts you off in annoyance. 'I'll do the asking, thank you,' he says, 'you just deal the answering for now.'".

Understand "time" as bp_time when last beat is in BP. bp_time is a beat in BP with keyword name "time" and reaction "'Years now,' he says, nodding. 'If you'd been shipwrecked or exiled or [bp_memory] as long as I have, you'd know, I'm gushing sure: funny feelings, queer twitches here and there when something's primed to happen.' He shrugs. 'Not that anything does mostly usually around here. But the Blue [bp_flash] has been trickling queer lately so I'd wondered.'". bp_time suggests bp_hallucination.

Understand "blue/flash" as bp_flash when last beat is in BP. bp_flash is a beat in BP with keyword name "Flash" and reaction "'Old maritime phoneme,' he says, pointing up to the [o]sun[x]. 'Moment suns [bp_sunset] over oceans there's sometimes a flash of blue. The one on this world seems something potent. Sometimes there's visions, premonitions, [bp_hallucination].' He glances at you critically. 'Seems I may have stared into it too long this time.'". bp_flash suggests bp_hallucination.

Understand "sink" as bp_sunset when last beat is in BP. bp_sunset is a beat in BP with keyword name "sink" and fuse 5 and reaction "'Stick around on the beach till sunset some evening,' he says airily, 'and mayhaps you'll see it.'". bp_sunset enqueues bp_hallucination.

Understand "whatever" as bp_memory when last beat is in BP. bp_memory is a beat in BP with keyword name "whatever" and reaction "He waves a hand vaguely through the air. 'Oh, you know,' he says, 'however it is that ones end up on deserted tropical islands all alone. The usual method. For [bp_hallucination] beings I mean,' he adds knowingly, 'no offense.'". bp_memory suggests bp_hallucination.

Understand "hallucination/drown/drowned/corporeal/spook/specters/specter" as bp_hallucination when last beat is in BP. bp_hallucination is an insistent beat in BP with keyword name "[if last beat is bp_memory]corporeal[otherwise if last beat is bp_alphamale]spook[otherwise if last beat is bp_flash]specters[otherwise]hallucination" and reaction "'Ratherly strange,' he says, walking in a circle around you studying you carefully. 'I assumed that you'd take the guise of some Figure From The Past, some One, if you ring, terrible important in my life, meaningful, lesson-worthy, all that.' He frowns, tilting his head to one side. 'Then again, mayhaps you have. Can't remember much about my past. Mostly usually nothing at all, to be perfect honest. You could be my own [if player is male]son[otherwise]daughter[end if] for all I know.' His eyes narrows. 'Are you?'". The yes-beat of bp_hallucination is bp_yeschild. The no-beat of bp_hallucination is bp_nochild. The maybe-beat of bp_hallucination is bp_maybechild. bp_hallucination suggests bp_maybechild. bp_alphamale replaces bp_hallucination.

bp_yeschild is a paternal beat in BP with keyword name "yes" and reaction "'Somehow I doubt it,' he says, patting your shoulder in a fatherly fashion just the same, 'but a sweet-sweet thought anyhow. Something poetic about dying mongst family. You are here to take me off to the land of the dead? No? Well but that's what you'd say anyway, isn't it. Hrmph.'". bp_yeschild enqueues bp_alphamale.

bp_nochild is an unpaternal beat in BP with keyword name "no" and reaction "He shrugs. 'Ah well-oh. Makes this less awkward then I suppose. Would have been interesting, though.'". bp_nochild enqueues bp_alphamale.

bp_maybechild is a beat in BP with keyword name "maybe" and reaction "The man's eyes narrow. 'Sausages,' he says critically, 'you're just as confused as me. Not what this island needs is more of the confused scampering about. I urge you, [animal-nickname], do please try and make only authoritative statements around here, even if you've had no idea if they're true or not. It will make things so much more the pleasant.'". bp_maybechild enqueues bp_alphamale.

Understand "word/day" as bp_wordday when last beat is in BP and bp_introduction is spoken. bp_wordday is a beat in BP with fuse 9 and keyword name "word" and reaction "'Ah yes, Word Day!' he says, spreading his arms wide and spinning in a dizzy circle. 'I try and have one semiannually or demiweekly or hemicalendrically, whichever of those it is that usually comes first. The point is, you see, to prove to the ocean that I still remember everything I used to.'[paragraph break]He puts an arm around your shoulder conspiratorially and throws a guarded glance at the waves. 'It's a bluff, though,' he whispers loudly. 'The vocabulary's doing fine, but mostly usually everything else has slipped away. Don't really remember who I am or where I got here or how I came from. But don't tell.'". bp_wordday suggests bp_hallucination. 

bp_alphamale is an insistent beat in BP with reaction "Before you can quite figure out a response, he abruptly steps back and gives you an appraising glare, lifting a long and firm finger. 'Now look now,' he says, 'I hope you don't expect my schedule, my routines, to dive in lakes just cause some shabby-dressed [bp_hallucination] has popped by. I may be two-thirds mad but I have things, essential things that must and must be done around here, and I don't want visions or phantoms or strange afterimages from the Blue [bp_flash] interfering. This is my island, I was here first, I'm in charge, everything thatwise. Are we in agreement then on that then?'". The yes-beat of bp_alphamale is bp_alphayes. The no-beat of bp_alphamale is bp_alphano. The maybe-beat of bp_alphamale is bp_alphano. bp_alphamale suggests pd_noanswer. bp_outtro replaces bp_alphamale.

bp_alphayes is a unsubmissive beat in BP with keyword name "yes" and reaction "'Good good,' he grunts, stepping up closer. 'And I ratherly hope you aren't one of these terrible teeth-gnashing woe and grime spirits, but more one of the cheerful sort. Do you think mayhaps we can make the best of this awkwardness and be friendly whilst you're about?'". bp_alphayes enqueues bp_befriends.

bp_alphano is a submissive beat in BP with keyword name "no" and reaction "'Ah,' he says, drawing back a little, 'you're one of those unpleasant sorts of hallucinations. Thought I'd seen the last of you when I stopped eating the purple sunfish. Well we shall just see who it is who haunts who. But even so, do you have the decency to be a friendly sort whilst you're about?'". bp_alphano enqueues bp_befriends.

bp_alphamaybe is a paternal beat in BP with keyword name "maybe" and reaction "He smiles a bit, tousling your hair. 'Not too quick to jump to conclusions then I see. Wise. Are we going to be friends, do you expect?'". bp_alphamaybe enqueues bp_befriends.

bp_befriends is an insistent beat in BP. bp_befriends suggests pd_noanswer. bp_befriends summons bp_friendsyes, bp_friendsno, bp_friendsmaybe. Instead of saying yes when last beat is bp_befriends, force discuss bp_friendsyes. Instead of saying no when last beat is bp_befriends, force discuss bp_friendsno. Instead of saying maybe when last beat is bp_befriends, force discuss bp_friendsmaybe.

bp_friendsyes is an affinitive beat in BP with keyword name "yes" and reaction "'There, then,' he says, nodding happily at you, 'mayhaps this won't be so unpleasant after all.'". bp_friendsyes enqueues bp_outtro.

bp_friendsno is an unaffinitive beat in BP with keyword name "no" and reaction "He raises his eyebrows skeptically. 'Delightful,' he says, 'just the kind of hallucination I deserve, really.'". bp_friendsno enqueues bp_outtro.

bp_friendsmaybe is a beat in BP with keyword name "maybe" and reaction "He cocks his head to one side. 'You're a strange one, [animal-nickname],' he says appraisingly. 'For life and strife and I'm not sure I'll like you either.'". bp_friendsmaybe enqueues bp_outtro.

bp_outtro is a terminal beat in BP with reaction "'I'll be about and aroundabout,' he says, eyeing you appraisingly, 'so whistle or shout or something thatwise if you need.' He pauses for a moment, shaking his head. 'Sausages, I'm telling my visions how to find me. Mad as a mackdaw.' He gives you one last incredulous stare, then turns and slips away with surprising speed[if location is Among the Boulders], weaving between the rounded boulders towards[otherwise] down[end if] the beach.". 



Chapter - Delayed Greeting

[ If the player just walks past Progue's boulder poetry, or never goes to investigate. Progue eventually moves on with his life, randomly walking around and doing stuff. The odds are high that the player will eventually bump into him, in which case we reframe some of Boulder Poetry to work in a new setting. ]

Delayed Greeting is a guaranteed serendipitous triggered episode. The icebreaker is bp_introduction.

Last condition rule for Delayed Greeting:
	if Word Day is failed or Word Day is expired, rule succeeds.

First commencement rule for Delayed Greeting:
	say "The strange man looks up from [Progue-animus] and frowns at you suspiciously.";
	now met_progue is true.

A completion rule for Delayed Greeting:
	now dont_describe_Progue is true;
	manually reference dc_flash;
	remove bp_flash from list of convo stuff, if present;
	print a section break;
	now the episode schedule is Table of Denial Episodes;
	now the icebreaker of Word Day is spoken; [This prevents it being put back in the queue.]
	now the unavailable-beat of Progue is pd_unavailable;
	Progue's life goes on.[aar]


Chapter - Denial Conversations

[ For each of the various activities Progue might be performing during this phase (where he thinks the player is just a hallucination), there are seperate, mostly light conversations where Progue talks airily about what's he's doing. During this stage of Progue's psyche, he carries a thread containing light, trivial answers to any questions the player has about the island. The player can learn Progue's name during this time.

Another conversation during this phrase is Denial Interrupted, if the player accosts Progue on his way somewhere. Progue will be vaguely impatient. 
 ]

Denial Dislike Convo is a serendipitous rerunnable guaranteed triggered denialy episode. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence. The icebreaker is dc_unfriendlyconversation.

Last condition rule for Denial Dislike Convo:
	if affinity of Progue < -1, rule succeeds.

dc_unfriendlyconversation is a repeatable beat in DenialC with reaction "'Stay back now,' [the Progue] says warningly. You remember the rule about my proximity to [dc_player] people.'".


Section - Denial Animus Convo

Denial Animus Convo is a serendipitous rerunnable guaranteed triggered denialy episode. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence.

Last condition rule for Denial Animus Convo: rule succeeds.

First commencement rule for Denial Animus Convo:
	ignore the Progue begins episode dialogue rule;
	pre-conversation processing;
	if the animus of Progue is fishing and a random chance of 1 in 2 succeeds begin;
		force discuss dc_fishing;
	otherwise if the animus of Progue is beach-combing and a random chance of 1 in 2 succeeds;
		force discuss dc_combing;
	otherwise if the animus of Progue is mending and a random chance of 1 in 2 succeeds;
		force discuss dc_mending; 
	otherwise if the animus of Progue is frog-catching;
		force discuss dc_frogcatching;
	otherwise;
		force discuss dc_makeconversation;
	end if.

First finishing rule for Denial Animus Convo:
	if Progue is idle, rule succeeds.

To add denial animii to tl:
	if the psyche of Progue is denial:
		remove {dc_fishing, dc_combing, dc_mending, dc_frogcatching} from list of convo stuff, if present;
		if the animus of Progue is fishing, add dc_fishing to list of convo stuff, if absent;
		if the animus of Progue is beach-combing, add dc_combing to list of convo stuff, if absent;
		if the animus of Progue is mending, add dc_mending to list of convo stuff, if absent;
		if the animus of Progue is frog-catching, add dc_frogcatching to list of convo stuff, if absent.

Understand "fishing/pole" as dc_fishing. dc_fishing is a repeatable beat in DenialC with keyword name "fishing" and fuse 9999 and reaction "[one of]'No [dc_fishingtechnique] today,' [the Progue] says breezily, tugging his line back and forth.[or]'Got one rascal keeps giving me [dc_fishingtechnique],' [the Progue] says conversationally, keeping his attention on the line, 'but doesn't want to take the bait.'[in random order]". dc_fishing summons dc_fishingtechnique. 

Understand "biting/bites" as dc_fishingtechnique. dc_fishingtechnique is a beat in DenialC with keyword name "bites" and reaction "'Very [dc_relax],' he says, nodding, 'very peaceful. Never used to do it since those idiotic [dc_crabs] are tastier and walk right into your hands, but then discovered I trickling enjoy it. Sometimes don't even bait the hook, if I'm not feeling up to doing all the cleaning.'". 

Understand "relax/relaxing/peaceful" as dc_relax. dc_relax is a beat in DenialC with keyword name "relaxing" and reaction "'I do a lot of relaxing,' [the Progue] says musingly, scratching a chin with the hand not holding the pole. 'Good [dc_island] for it.'". 

Understand "cleaning" as dc_combing. dc_combing is a repeatable beat in DenialC with keyword name "cleaning" and fuse 9999 and reaction "[one of][The Progue] picks up a misshapen hunk of fist-sized driftwood from the beach and eyes it critically. 'Such a [dc_chore], keeping it clean,' he says, turning it over in his hands. 'But a nice [dc_clean] beach is worth and worth the effort.'[or][The Progue] turns around and scans the area behind him critically, then grunts in evident satisfaction. 'So [dc_clean]; not much debris today,' he says. 'Makes my [dc_chore] easier.'[or][The Progue] wades into the surf with an armful of beach debris and tosses it far out into the surf. 'Hardly feels like a [dc_chore] today!' he says cheerfully, moving on to the next part of the beach and bending down to pluck more small imperfections from the sand.[in random order]". 

Understand "chore" as dc_chore when last beat is in DenialC. dc_chore is a beat in DenialC with keyword name "chore" and reaction "'Why do I do it?' [the Progue] says, looking offended. 'Strange question! Who'd do it other than me, eh? It's my [dc_job]. Won't clean itself, you know, oh ho no. Believe me, I've asked. Why do I do it, indeed. Hrmph!' He shakes his head at you with a little chuckle before bending down to carefully unearth a coil of mushy seaweed from the sand.".

Understand "pristine" as dc_clean when last beat is in DenialC. dc_clean is a beat in DenialC with keyword name "pristine" and reaction "'Really such a filthy place, the ocean,' he says, shaking his head sadly at the clump of detritus in his hand. 'Dead things, mostly. Seaweed, shark teeth, whale bones. Pieces and bits of fish and clams and weensy sea snails. Clumps of tree from far cold lands. All drifting, drifting till they smash a shore and turn to sand and dust.' He runs a finger delicately along a broken shell in his hand. 'Up too high, it doesn't happen, if you ring. Transformation's unfinished. Back in the sea, their journey to nothingness goes on and on.'".

Understand "job" as dc_job when last beat is in DenialC. dc_job is a beat in DenialC with keyword name "job" and reaction "'Yes, I suppose it is,' he says musingly. 'Mayhaps I was a janitor in distant pasts, before [dc_island]. Only, what a plain, unennobled word!' he adds. 'Janitor I mean. Why not [apostrophe]beautifier?[apostrophe] [apostrophe]Restorer?[apostrophe] [apostrophe]Rightener?[apostrophe] Oh yes, I like that. I am the Rightener of the Beach.' He smiles broadly.".

Understand "mending" as dc_mending. dc_mending is a repeatable beat in DenialC with keyword name "mending" and fuse 9999 and reaction "[one of]'Amazing!' [the Progue] says, looking up at you in excitement from the rags on his lap. 'Do you have any idea how long these clothes have lasted me? No, neither do I. But from the state I'd guess it's been quite some [dc_while].'[or]'A tragic rip,' [the Progue] says sadly, holding up a grey-brown piece of threadbare fabric for your inspection. 'Really, at my age I should be more careful when [dc_climbing], but when one dangles from a cliff one can't afford to worry about one's clothes, can one?' He sighs.[in random order]". 

Understand "climbing" as dc_climbing when last beat is in DenialC. dc_climbing is a beat in DenialC with keyword name "climbing" and reaction "'Oh, I'm quite some scamperer!' he says fondly, the needle momentarily forgotten. 'I suppose it's because I lost my fear of dying. Or was it my fear of flying? Hmm. Probably they both ran off with my mind somewhere. But the lack actually rings quite useful for all sorts of things: finding the best spots to view the [dc_island], getting away from the [dc_creeper], exercising. Fun too.'".

Understand "while" as dc_while when last beat is in DenialC. dc_while is a beat in DenialC with keyword name "while" and reaction "'Such a useful word, [apostrophe]while,[apostrophe] [the Progue] says, nodding. 'In its inexactitude it encompasses all possible lengths a madman sans memory could have occupied the [dc_island]. Yes, I've been here a while indeed.'". 

Understand "manta/mantas/ray/rays/rayfish/glowing/lights" as learn_rayfish_name when last beat is in DenialC. learn_rayfish_name is a repeatable beat in DenialC with fuse 9999 and keyword name "rayfish" and reaction "'Beautiful things,' [the Progue] murmurs, 'great aquatic angels. I call them rayfish, you see. Like a ray of light. Only [if story mode]inky black[else]dark[end if] instead.'". After discussing learn_rayfish_name: now rayfish is named; continue the action.

Every turn when the animus of Progue is frog-catching and Progue is regionally in Marshlands and Progue is fulfilling and caught-frog is false: if a random chance of 1 in 8 succeeds begin; now caught-frog is true; if Progue is enclosed by location, say "[one of]Suddenly, [the Progue] pounces and snakes out his hand, emerging a moment later from the splash with a small green frog encased in his fingers[or][The Progue] suddenly dives forward in a frantic tackle, belly flopping into the marsh, but then scrambles to his feet a moment later with a green frog in his hands[in random order]. [one of]'Well oh well oh,' he says to his tiny captive, 'we meet at last.'[or]'Gotcha!' he says, immensely pleased, and peering in at his tiny captive. 'Gotcha gotcha!'[cycling]"; move frog to Progue; end if. Every turn when caught-frog is true and the animus of Progue is not frog-catching: now caught-frog is false; remove frog from play.

Understand "hunting" as dc_frogcatching. dc_frogcatching is a repeatable beat in DenialC with keyword name "hunting" and fuse 9999 and reaction "[one of]'Shh!' [the Progue] says, holding up a hand in your direction. 'You'll scare the little [dc_frthem] off!'[or]'Ah,' [the Progue] says, beaming, 'come to go frog [dc_frfrog]? An excellent day for it.'[in random order]".

Understand "ones" as dc_frthem when last beat is in DenialC. dc_frthem is a repeatable beat in DenialC with keyword name "ones" and reaction "'The frogs!' he says. 'They're ratherly sensitive to noises, and footsteps, and, vibrations, and well, everything and anything really,' he says, 'poor [dc_frfrog].'".

Understand "hunting/creatures" as dc_frfrog when last beat is in DenialC. dc_frfrog is a repeatable beat in DenialC with keyword name "[if last beat is dc_frthem]creatures[otherwise]hunting" and reaction "'They like to hide down in the weeds,' he says seriously, 'in this part of the [dc_island]. They believe they're quite clever, but I've got years, years of practice. Been here a [dc_longlived] time.'". 

Section - Rainfall Rhapsody

Rainfall Rhapsody is a serendipitous rerunnable guaranteed triggered denialy episode. The icebreaker is rr_intro. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence.

Last condition rule for Rainfall Rhapsody:
	if raining, rule succeeds.

RR is thread. rr_intro is a beat in RR with reaction "'[one of]Ahhh[or]Perfect[or]Wonderful[at random],' [the Progue] says eagerly, [one of]throwing back his head in the rain[or]stretching out his arms[or]closing his eyes and letting the rain stream down his face[in random order]. '[one of]Nothing better than a brisk afternoon rain shower[or]I love a good rain shower[in random order].'".


Section - Interrupt-Swimming


First instead of greeting Progue when the animus of Progue is swimming  and Progue is fulfilling: say "[one of]'I'm imagining,' [the Progue] says, keeping his eyes firmly closed and a serene smile firmly on his face, 'a wonderful time before you appeared, when a man could have a relaxing [progue-time-of-day] swim without being pestered by obnoxious spirits. I wonder when such a time will come again?'[or]The strange man hums some tune quietly to himself, ignoring you.[or]Other than scissoring himself slightly farther away from you, [the Progue] makes no response.[or]'Can't hear you,' [the Progue] says, 'only the sweet songs of the fish.'[cycling]".

Section - Backseat Dooring

[This is a hinty puzzle to give the player more opportunities to get clues about the door.]

Backseat Dooring is a guaranteed urgent triggered denialy episode. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence. The icebreaker is bd_intro.

A condition for Backseat Dooring:
	if dph_postcolor is spoken or tomorrow-flag is true, rule fails; [Don't need this scene if player's already asked for a hint.]
	if the player is in Back Room for at least the third time and lava tunnel door is closed and Jumble is unvisited and the animus of Progue is not resting, rule succeeds.

BD is a thread.  

bd_intro is a beat in BD with reaction "'Oh! Trying to get that strange [dc_door1b] open, are you?' he asks. 'Wouldn't bother myself; hasn't been opened in years. Probably doesn't even lead anywhere.'". Check examining by name the lava tunnel door when Progue is attentive: try discussing dc_door1b instead. Check examining by name the arc of small buttons when Progue is attentive: try discussing dc_buttons instead. Check examining by name the small bands of vertical color when Progue is attentive: try discussing dc_doorcolors instead. 

Check examining by name the red band when dph_red is available: try discussing dph_red instead. Check examining by name the blue band when dph_blue is available: try discussing dph_blue instead. Check examining by name the yellow band when dph_yellow is available: try discussing dph_yellow instead. Check examining by name the black band when dph_black is available: try discussing dph_black instead. Check examining by name the white band when dph_white is available: try discussing dph_white instead. Check examining by name the green band when dph_green is available: try discussing dph_green instead.

A finishing rule for Backseat Dooring:
	ignore the episodes usually end when conversation does rule;
	if location is not Back Room, rule succeeds;
	if bd_intro is spoken and ( Progue is idle or last beat is bd_banter ) and a random chance of 1 in 5 succeeds, rule succeeds;
	if dph_postcolor is spoken or tomorrow-flag is true, rule succeeds;
	if the setting of the lava tunnel door is getting close to ltr combination of the lava tunnel door or setting of the lava tunnel door is getting close to rtl combination of the lava tunnel door, rule succeeds. [We don't want him to be around when the door gets opened.]

A completion rule for Backseat Dooring:
	if Progue is enclosed by location, say "'Well, that's enough excitement for me,' [the Progue] says. 'Best of luck!'[paragraph break]";
	post-conversation processing;
	Progue starts fishing;
	follow the Progue's motivation rule.

After pushing a lava door button when Progue is enclosed by location and psyche of Progue is denial: if Progue is idle, pre-conversation processing; force discuss bd_banter; continue the action. Instead of getting bored when current episode is Backseat Dooring: force discuss bd_banter.

bd_banter is a repeatable terminal beat in BD with reaction "'[one of]Ooh, good guess![or]Well, that's not the one I'd have pressed, but whatever,[or]I'd try pressing the whale one over and over again, just to see what happens,[or]You don't suppose those buttons have anything to do with this band of colors, do you?[or]Oh, this is exciting![or]Oh! Maybe it's a trap. I'd be careful, were I you,[or]Glad you've found a little project,[in random order]' he says.".


Section - Just Teasing

[Progue teases and pokes you. You can poke back (romantic), smile (affinitive), frown (submissive), or snarl (unaffinitive/submissive) or do nothing (unsubmissive)]

Just Teasing is a serendipitous triggered denialy episode. The icebreaker is jt_intro. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence.

Last condition for Just Teasing: rule succeeds.

JT is a thread. The escape clause is jt_nothing.

jt_intro is a beat in JT with reaction "'Playing explorer, are we?' [the Progue] asks, [animus-business]. 'The brave hero[if player is female]ine[end if] on the tropical [dc_island]?' He giggles and pokes you. 'My [animal-nickname], the explorer.'[paragraph break]He playfully pokes you again, and you wonder whether you should [jt_poke] him back, [jt_smile] politely, [jt_frown], angrily [jt_rebuke] him, or just do [t]nothing[x].". jt_intro suggests jt_nothing. 

Understand "poke" as jt_poke when last beat is in JT. jt_poke is a romantic beat in JT with keyword name "poke" and reaction "You wait till he moves in for his next strike, then give him a solid poke straight in the ribs, with a bit of tickle worked in. He opens his eyes wide in surprise, then laughs. 'Learn fast for a [animal-nickname],' he says. 'Think I'll ratherly enjoy having you around after all. How are you then anyway? Some [t]subject[x] you wanted to talk about?'". jt_poke cancels jt_smile, jt_frown, jt_rebuke. 

Understand "smile" as jt_smile when last beat is in JT. jt_smile is an affinitive beat in JT with keyword name "smile" and reaction "You grin and [the Progue] smiles back, but puts away his poking finger. 'How are you then anyway?' he asks. 'Something you wanted to talk about?'". jt_smile cancels jt_poke, jt_frown, jt_rebuke.

Understand "frown" as jt_frown when last beat is in JT. jt_frown is a submissive beat in JT with keyword name "frown" and reaction "'Sorries,' [the Progue] says, 'didn't mean to offend. [if the psyche of Progue is denial]You're rather fleshier than I expected I must say. Didn't think you spirits had the concept of personal space. [end if]But how are you then anyway? Something you wanted to talk about?'". jt_frown cancels jt_poke, jt_smile, jt_rebuke.

Understand "rebuke" as jt_rebuke when last beat is in JT. jt_rebuke is an unaffinitive beat in JT with keyword name "rebuke" and reaction "'Sausages,' he says in annoyance, 'just a friendly bit of fun, no need to get upended over it. Ah well-oh, was there something you wanted then?'". jt_rebuke cancels jt_poke, jt_smile, jt_frown.

jt_nothing is an unsubmissive beat in JT with reaction "He pokes you a few more times, but, failing to get a reaction, gives up and shrugs. 'Ah well-oh, how are you then? Was there something you wanted to talk about?'". jt_nothing cancels jt_poke, jt_smile, jt_frown, jt_rebuke.




Section - Denial General Convo

Denial General Convo is a serendipitous rerunnable guaranteed triggered denialy episode. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence. The icebreaker is dc_makeconversation.

Last condition rule for Denial General Convo: rule succeeds.

First finishing rule for Denial General Convo:
	if Progue is idle, rule succeeds.

First report greeting Progue when the psyche of Progue is denial: force discuss dc_intro instead.

dc_intro is a repeatable beat in DenialC with reaction "[The Progue] looks up from his [Progue-animus] and [if affinity of Progue >= 0]nods cheerfully. 'Good [progue-time-of-day], my hallucinatory friend!' he says good-naturedly[otherwise if affinity of Progue < -3]scowls darkly. 'What do you want?' he asks[otherwise if affinity of Progue < 0]regards you warily. 'Good [progue-time-of-day], [t]spirit[x],' he says cautiously[end if].".

The conversation_beat of Progue is dc_makeconversation. dc_makeconversation is a beat in DenialC.

Check discussing dc_makeconversation:
	let beatlist be {dc_chat1, dc_chat2, dc_chat3, dc_chat4, dc_chat5};
	remove the list of spoken beats from beatlist;
	sort beatlist in random order;
	if the number of entries in beatlist is at least 1, force discuss entry 1 of beatlist instead;
	else force discuss dc_chat5 instead.

dc_chat1 is an insistent beat in DenialC with reaction "'I'm curious,' [the Progue] says, [attitude-business], 'have you been a professional [dc_player] long? Fairly unrespectable line of work, isn't it?' He narrows his eyes.". The yes-beat of dc_chat1 is dc_chat1yes. The no-beat of dc_chat1 is dc_chat1no. The maybe-beat of dc_chat1 is dc_wishywashy. dc_chat5 replaces dc_chat1.

dc_chat1yes is an insistent beat in DenialC with keyword name "yes" and reaction "[dc_chat1clarify].". dc_chat1no is an insistent beat in DenialC with keyword name "no" and reaction "[dc_chat1clarify]". To say dc_chat1clarify: say "He turns his head sideways. 'Was in that in response to the [dc_chat1first] question or the [dc_chat1second]?' he says". dc_chat1yes summons dc_chat1first, dc_chat1second. dc_chat1no summons dc_chat1first, dc_chat1second.

Understand "first/both" as dc_chat1first. dc_chat1first is a beat in DenialC with keyword name "first" and reaction "He grunts. '[if dc_chat1yes is spoken]You don't seem very good at it[otherwise]Would explain why you aren't very good at it[end if].'". dc_chat1first enqueues dc_chat1questions. dc_chat1first cancels dc_chat1second.

Understand "second" as dc_chat1second. dc_chat1second is a beat in DenialC with keyword name "second" and reaction "He [if dc_chat1yes is spoken]nods sagely. 'At least you can admit it,' he says[otherwise]clucks in disapproval. 'Seems rather sketchy to me,' he says[end if], 'but whatever keeps you in meat, I suppose.'". dc_chat1second enqueues dc_chat1questions. dc_chat1second cancels dc_chat1first.

dc_chat1questions is an insistent beat in DenialC with reaction "'Terrible sorries for the confusion,' he adds, [animus-business]. 'I always ask too many questions at once. Comes from talking to things like the ocean which don't answer back. It may not be healthy. Is it, do you suppose? Should I stop? Does it matter since there's no one to talk to anyway?' He narrows his eyes at you, and barks, 'Well?'". dc_chat1questions summons dc_chat1ending. The yes-beat of dc_chat1questions is dc_chat1ending. The no-beat of dc_chat1questions is dc_chat1ending. The maybe-beat of dc_chat1questions is dc_chat1ending.

dc_chat1ending is a beat in DenialC with keyword name "yes, no, and shrug" and reaction "He waves a hand at you. 'Only fooling,' he says, [attitude-business]. 'Carry on with whatever it was you were jabbering about or looking for or whatever.'".

dc_wishywashy is a repeatable dogged beat in DenialC with keyword name "shrug" and reaction "[one of]'Oh, I dislike that,' [the Progue] says sternly. 'Either hold an opinion and stick to it or stay at home and don't bother the world with your wishy-washy indecisiveness. Now which is it?'[or][The Progue] rolls his eyes. 'Can't have a conversation like that,' he says, 'or we'll never get anywhere. Can you not decide or do you just not care?'[in random order]".

dc_chat2 is an insistent beat in DenialC with reaction "'So how is the corporeal world finding you? Is this dimension meeting your satisfaction? Do you [dc_player] prefer the remote island [dc_likeithere] or are you more [dc_dontlike] gloom and graveyard types?' [the Progue] asks [if the affinity of Progue > 0]breezily[otherwise]skeptically[end if], [animus-business].". dc_chat2 summons dc_likeithere, dc_dontlike. dc_chat5 replaces dc_chat2.

Understand "paradise" as dc_likeithere. dc_likeithere is a beat in DenialC with keyword name "paradise" and reaction "[The Progue] nods in satisfaction. 'Good,' he says. 'Glad you like my [dc_island]. Sun, sea, air; what more could a physical being want?' He smiles, [animus-business], then takes a deep breath and exhales with gusto. 'Well, other than things to do, physical companionship, a sense of purpose, civilization, art, history, memory, and some sort of identity.'".

Understand "urban" as dc_dontlike. dc_dontlike is a beat in DenialC with keyword name "urban" and reaction "'Oh?' [the Progue] asks, nonplussed. 'Well, a pity. Mayhaps your next assignment will be more to your liking. Although,' he adds, looking around and then leaning forward conspiratorially, 'this [dc_island] isn't entirely without macabre. There's the [dc_creeper], of course, and those mysterious little [dc_girls]; whatever happened to them? Haven't spied them around for green eons.'".

dc_chat3 is a beat in DenialC with reaction "'You seem to be doing quite some wandering around for a [dc_player],' [the Progue] says skeptically. 'I always assumed your kind spends most of its time floating and flying and trying to lend me a scare. And you're a good deal less transparent than I'd expected.' He frowns. 'Hmm.[last-ep-msg-denial]' he adds.". dc_chat5 replaces dc_chat3.

[dc_chat4 is a beat in DenialC with reaction "'Have you taken a dip in the hot spring yet?' [the Progue] says, [attitude-business]. 'Just poke through the vegetation at the top of the rise. Sublime. Of course,' he adds sadly, 'mayhaps a [dc_player] entity like you can't enjoy such things. My condolences, if so.'". dc_chat5 replaces dc_chat4.]

dc_chat4 is a beat in DenialC with reaction "'[one of]Oh[or]Ah[or]Ha[at random]! There you are.[last-ep-msg-denial]' he says, [animus-business]. 'So and seen the Blue [dc_flash] yet? Best way to spend a sunset on the beach, asking myways,' he says.". dc_chat5 replaces dc_chat4.

[Once we've run out of chats, go with this next one.]

dc_chat5 is a repeatable beat in DenialC with reaction "'[one of]Still here?[or]Height of the [progue-time-of-day] to you![or]Greetings again![or]Enjoying the [progue-time-of-day]?[in random order][last-ep-msg-denial]' [the Progue] says, [attitude-business].".

[This creates some illusion that Progue has a medium-term memory and recalls what the last important conversation with the player was about.]

To say last-ep-msg-denial:
	if last episode is Sleepless Rayfish Encounter, say " Hope you're rested up after your night swim with the rayfish,";
	if last episode is Just Teasing, say " Promise I won't poke you this time,";
	if last episode is Backseat Dooring, say " Sure as sure you'll get through that mysterious door before long,";
	if last episode is Rainfall Rhapsody, say " That was quite some rainstorm we had,";
	if last episode is Play Catch, say " Won't try to lob any more konokuk fruits at you, really,";
	if last episode is Make-Way, say " Didn't mean to almost bowl you over by the rise earlier,";
	if last episode is Hey That's Mine, say " No hard feelings about the pendant, I hope,";
	if last episode is Art Critic, say " I've mostly really forgotten all about that terrible sculpture by the volcano, really I have,";
	if last episode is Tending-to-Wounded-Player, say " Your leg's feeling better I hope? Excellent,".



Section - Denial Interrupted

[If we interrupt Progue on his way somewhere, we get a slightly different segue into the normal Denial Conversation. Progue is anxious to move on and will do so if the player gives him a moment.]

Denial Interrupted is a serendipitous rerunnable guaranteed triggered denialy episode. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence. The icebreaker is di_1.

The allow Denial Interrupted rule is listed before the Progue is chattier the more he likes you rule in the condition rules [which is also before the Progue doesn't like to be interrupted rule]. A condition rule for Denial Interrupted (this is the allow Denial Interrupted rule): if we are greeting and the animus of Progue is not resting and the animus of Progue is not swimming and Progue is wishing, rule succeeds.

di_1 is a repeatable beat with reaction "[The Progue] [one of]comes to a halt[or]stops[at random] and [if affinity of Progue < 0]flashes you a look of minor annoyance. 'Flagging me down now, eh?'[otherwise]gives you a cheerful wave. 'Fine day for [animus of Progue], isn't it?'[end if] he says. 'What can I do for you?'". di_1 suggests di_leave. 

di_leave is an exciting repeatable terminal beat with fuse 9999 and reaction "'[one of]Well, I must be off[or]It's been fun, but I've got to go[or]I'll see you later[in random order],' [the Progue] says, [if affinity of Progue > 0]flashing a smile[else]looking pointedly away[end if]. '[one of]Insanity to get on with, all that[or]Things to do, more things to see[or]Busy schedule today[or]Lots going on, you know[in random order]. Enjoy your [progue-time-of-day]!'".




Chapter - Play Catch

[ This episode is triggered by the player arriving within eyesight of North Beach. Progue is up in a konokuk tree. He shouts for the player to come closer. (Ignoring him is submissive). Upon arrival in North Beach, there is a moment of banter (where the player can learn the name konokuk) and then Progue says to not move, but catch a fruit. The fruit is described as plummeting rather quickly. The player has 2 options: move to catch it (paternal), or don't try to catch it (unpaternal). Afterwards Progue shows the player how to open one and the conversation can shift into a default one.
]

Play Catch is a instant triggered uncommon denialy episode. The meeting place is North Beach. The icebreaker is pc_intro. The expiration date is 1 hours. The bye beat is pc_dodge. The abruptbye beat is pc_dodge. The subchange beat is pc_subchange.

pc_subchange is an ephemeral beat with reaction "There's not really any time for that right now."

Last condition for Play Catch:
	if we are not going, rule fails;
	if Progue is enclosed by location, rule fails;
	if location is in Center Beach and former location is Hut, rule succeeds;
	if location is South Beach and former location is Fork, rule succeeds;
	if location is Rise and former location is not North Beach and Progue is not regionally in North Island and Progue is not regionally in Marshlands, rule succeeds;
	rule fails.

A commencement rule for Play Catch:
	now dont_describe_Progue is true;
	move distant-Progue to location;
	add some konokuk;
	say "Off by the [if location is Rise][d]beach[x] below you[else]beach near the [d]rise[x][end if], one tree shakes madly, green fronds waving as something moves around inside it. Suddenly [the Progue] sticks out his head from the tree, spots you, and waves madly.[paragraph break]'Spirit!' he shouts faintly, 'over here! Quickly!'".

Every turn when current episode is Play Catch and pc_intro is unspoken and North Beach is Proguevisible and location is not North Beach and location is not Ocean Waters: say "The tree near the [d][if location is Rise]beach[else]rise[end if][x] continues to shake. '[one of]Hurry[or]Come on[or]What's waiting[in random order]!' [the Progue] calls, '[one of]get over here[or]come here[at random]!'".

First finishing rule for Play Catch:
	ignore the episodes usually end when conversation does rule;
	if the number of spoken terminal beats in PC > 0:
		if the animus of Progue is player-seeking, now Progue is wishing;
		now current episode is Denial General Convo;
		now Progue is attentive;
		now tempfuse of dc_konokuk is 5;
		now tempfuse of dc_player is 5;
		now Play Catch is successful;
		if there is a eptitle of Play Catch in episode schedule:
			choose row with a eptitle of Play Catch in episode schedule;
			blank out the whole row;
			sort episode schedule in random order;
		consider the completion rules for Play Catch.
		
Instead of examining distant-Progue when current episode is Play Catch, say "All you can really make out is a distant konokuk tree that's thrashing around like mad.".

A completion rule for Play Catch:
	if Play Catch is expired:
		Progue is more submissive;
		now icebreaker of Play Catch is spoken. [to prevent reruns.]

Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Play Catch	"[The Progue] is up in the tree, which sways madly."

PC is a thread. The escape clause is pc_catch.

pc_intro is a beat in PC with reaction "'There you are,' [the Progue] says from his elevated perch, pushing aside green fronds to get a glimpse of you. 'Just harvesting a few of these delicious konokuk fruits. Now, don't move. Stay right there.'[paragraph break]There is a further rustling in the trees, and suddenly a hairy brown fruit the size of your head and looking hard as a rock is plummeting down towards you. You could probably [pc_catch] it, but it might be wiser to [pc_dodge].". pc_intro suggests pc_dodge. Instead of taking tree-konokuk when last beat is pc_intro, force discuss pc_catch. Rule for supplying a missing noun when taking and last beat is pc_intro: change noun to tree-konokuk.

Understand "dodge" as pc_dodge when last beat is in PC. pc_dodge is an unpaternal terminal beat in PC with keyword name "dodge" and reaction "You leap to one side just as the hairy cannonball plummets into the sand near your feet, leaving a sizable impact crater.[paragraph break][catchbit].'[paragraph break]He shimmies down the tree and jumps lightly to the sand. 'But sausages, I forgot; you're [dc_player], you can't touch our crude physical matter!' he says, reaching out a hand to help you up and apparently not noticing the contradiction. 'Means you probably won't be able to enjoy any of this delicious [dc_konokuk] either, pity pity.' He breaks one of the fruits open and begins devouring the pink-white flesh inside.". pc_dodge cancels pc_catch.

To say catchbit: say "'Catch!' [the Progue] shouts helpfully from above. 'No, wait a ment, that's wrong as wrong. Shout first, then throw, yes yes, that's it. Throw first then shout is for war".

Understand "catch" or "catch fruit" or "catch konokuk" as pc_catch when last beat is in PC. pc_catch is a paternal insistent beat in PC with keyword name "catch" and reaction "You look up at the plummeting hairy cannonball and hold up your hands, but [if sunup]the sun glares in your eyes and...[otherwise]trip on the unevenly lit beach and...[end if][paragraph break]With a noise like a hollow plonk, the konokuk fruit smacks into your head, sending you backwards onto the sand with stars radiating out from your vision.[paragraph break][catchbit]. Terrible sorries!' he shouts down at you. 'Dear oh dear oh, spirit, are you all right?'". pc_catch suggests pc_notokay. Instead of going or landmark-going when last beat is pc_catch, say "You're still too dazed to go anywhere.". The yes-beat of pc_catch is pc_okay. The no-beat of pc_catch is pc_notokay. pc_catch summons pc_okay, pc_notokay. pc_notokay replaces pc_catch. pc_catch cancels pc_dodge.

pc_notokay is a beat in PC with keyword name "no" and reaction "[The Progue] shimmies down the tree as you sit up weakly, stars still swarming through your vision. He bounds over to your side and examines your head critically. 'Quite a red hill you've got there,' he shouts, as if not realizing you're much closer now, 'my most gushing of apologies. Thought the thing would go right through, being noncorporeal and all.'". pc_notokay enqueues pc_trans.

pc_okay is a terminal beat in PC with keyword name "yes" and reaction "'Splend and charm,' he says, shimmying down the tree as you rub a swelling goose egg tenderly, 'just as my theories theorized; solid objects should pass right through you [dc_player] entities.'". 

pc_trans is an insistent beat in PC with reaction "'Well and look here now!' he says, picking up the fruit in delight; it's split in two, revealing delicate pink-white flesh inside. 'Why you've discovered a new way to open a [dc_konokuk]. Mayhaps you could stay right there and I could throw a few dozen more down, eh?'". The yes-beat of pc_trans is pc_masochist. The no-beat of pc_trans is pc_notmaso. pc_trans suggests pc_masochist. pc_notmaso replaces pc_trans.

pc_notmaso is a terminal beat in PC with keyword name "sure" and reaction "'Only fooling,' he says with a wild grin, 'turtles work much better for that anyway, have my words.'".

pc_masochist is an unsubmissive beat in PC with keyword name "no". pc_masochist enqueues pc_notmaso.


Chapter - Ring of Truth

[ Progue asks to see the player's ring from Rume. The player doesn't know Progue that well yet, so it's an exercize in trust. Letting Progue see the ring is affinitive; refusing is unaffinitive. ]

Ring of Truth is an uncommon serendipitous triggered denialy episode. The expiration date is 3 hours. The icebreaker is rot_intro.

Last condition for Ring of Truth:
	if player holds Rume's bracelet, rule succeeds.

A completion rule for Ring of Truth:
	Progue's life goes on.

ROT is a thread. The escape clause is rot_cantkeep.

rot_intro is a beat in rot with reaction "'Ah, there you are,' [the Progue] says, [attitude-business]. 'Been looking. I remembered what it was I wanted to ask you about earlier. That bracelet of yours-- something about it's getting me upended. Can't get a grip on it. Can I hold it for a span, see if I can fly what it is I'm reminded of?' He holds out his hand.". The yes-beat of rot_intro is rot_yes. The no-beat of rot_intro is rot_no. rot_intro suggests rot_no.

rot_yes is an affinitive insistent beat in ROT with keyword name "yes" and reaction "You pull the bracelet off and hand it carefully to [the Progue], who takes it and studies it carefully, holding it up to the light and twirling it in his fingers, running them delicately over the texture of the grain.[paragraph break]'Curi-curious,' he muses, 'almost familiar somehow. Mayhaps she had one like this or something thatwise. Mayhaps-- mayhaps I made one for---?'[paragraph break]He shakes his head, then grins disarmingly, the memory seemingly vanished. 'I'm bats at noon,' he says, 'no idea. Pretty pretty thing, true too. Excellent manshippage. Can I keep it?'". The yes-beat of rot_yes is rot_cankeep. The no-beat of rot_yes is rot_cantkeep. rot_yes suggests rot_cantkeep.

rot_cankeep is a romantic terminal beat in ROT with keyword name "yes" and reaction "'Splend and charm,' he says brightly, slipping it into a pocket, 'aren't you a kind one. I'll take great cares with it, [animal-nickname], lie assured. Well and I don't intend to distract you from your business. Be well now!'". After discussing rot_cankeep: remove Rume's bracelet from play; dis Rume a lot; continue the action.

rot_cantkeep is a terminal beat in ROT with keyword name "no" and reaction "'Just asking,' [the Progue] says, placing it back in your hand, 'just asking, no need to get upended. Pretty as pretty thing is all. Remembers me of something but for life and strife I can't think of what. Ah well-oh. Didn't mean to distract from your business!' He smiles broadly and claps you on the back. 'Be well now!'".

rot_no is an unaffinitive terminal beat in ROT with keyword name "no" and reaction "'Ah well-oh,' he says, disappointed. 'Would have gushing taken care of it, you know. Just wanted a look. Well and nothing to get upended over. Remembers me of something is all. Didn't mean to distract from your business! Be well now!'".


Chapter - Make-Way

[ This is a quick submissive/unsubmissive scene. As the player is going either from Rise to North Beach or vice versa, they pass Progue on the way and have a chance to either force him to make way (submissive) or step aside to let him pass (unsubmissive).]

Make-Way is an instant uncommon triggered denialy episode. The icebreaker is mw_intro.

Last condition for Make-Way:
	if night, rule fails;
	if we are not going, rule fails;
	if location is Rise and former location is North Beach and ( Progue is regionally in Marshlands or Progue is regionally in North Island ) , rule succeeds;
	if location is North Beach and former location is Rise and ( Progue is regionally in Beachfront or Progue is in Progue's Domain or Progue is in Ocean Waters ) , rule succeeds;
	rule fails.

First commencement rule for Make-Way:
	now dont_describe_Progue is true;
	now the animus of Progue is ruminating;
	summon Progue to location;
	now Progue is attentive;
	force discuss mw_intro.

First completion rule for Make-Way:
	if former location is North Beach, summon Progue to South Beach;
	otherwise summon Progue to North Marsh;
	now the animus of Progue is hand-standing;
	Progue's life goes on, as before.

MW is a thread. The escape clause is mw_dodge.

mw_intro is a beat in MW with reaction "Suddenly [the Progue] barrels towards you, balancing a huge armful of [if konokuk trees are named]konokuk[otherwise]hairy brown[end if] fruits and heading for the path [if former location is North Beach]down[else]up[end if] the rise. 'Look out!' he shouts, 'coming through!' If you don't [mw_dodge], he's going to have a [mw_problem].". mw_intro suggests mw_problem.

Understand "dodge" as mw_dodge when last beat is in MW. mw_dodge is an unsubmissive terminal beat in MW with keyword name "dodge" and reaction "You jump to one side, only just keeping your balance on the edge of the lava flow, as Progue tumbles [if former location is North Beach]down[else]up[end if] the path, barely but somehow managing to keep the fruits balanced. 'Close as close!' he shouts back, 'thanks!' and is gone.".

Understand "problem" as mw_problem when last beat is in MW. mw_problem is a submissive terminal beat in MW with keyword name "problem" and reaction "Annoyed, you stand your ground, forcing [the Progue] to veer wildly around you. The armful of fruits go flying, bouncing noisily [if former location is North Beach]down the face of the lava flow to plunk noisily into the sand below[otherwise]off the face of the lava flow and rolling gently across the sand nearby[end if] as he watches sadly.[paragraph break]'Dear oh dear oh,' he mutters, moving to gather them up, 'terrible sorries, [animal-nickname], just didn't see you there. Not used to things being there if you ring.' And with a quick nod of the head is gone.".


	


Chapter - Watching For Signs

[ This conversation, triggered after the player has had a few dreams, triggers an oblique warning from Progue about the dangers of the trees. ]

[
Watching For Signs is a scene. Watching For Signs begins when ( the psyche of Progue is suppression or the psyche of Progue is uncertainty ) and Progue is in the location and The-Mysterious-Door is solved and time for a common scene.

When Watching For Signs begins:
	if Progue is wishing begin; [ he's on his way somewhere ]
		now Progue is attentive;
		now Progue is fulfilling;
		say "Progue gives you a [if the affinity of Progue > 0]friendly[otherwise]curt[end if] nod, but then stops and stares at you suspiciously.";
	otherwise;
		say "Progue looks up at you with a [if the affinity of Progue > 0]friendly[otherwise]curt[end if] nod, but holds his gaze for a long moment before frowning suspiciously.";
	end if;
	try greeting Progue.

After greeting Progue during Watching For Signs, force discuss wfs_intro.

WFS is a thread.

wfs_intro is a terminal beat in WFS with reaction "'Been sleeping well?' he asks gruffly. {Progue proceeds to ask about your dreams, then warn you obliquely to be careful. 'This island may not be as empty as it seems,' he says. 'Make sure you know which thoughts are yours. Make sure you do only what you intend.' He refuses to elaborate, but walks off with a suspicious glance.}". 

Watching For Signs ends when Progue is idle.

When Watching For Signs ends: Progue's life goes on, as before.
]


Chapter - Sleepless Rayfish Encounter

[ This is a scene that happens if the player is wandering at night. It's an example of Progue sharing one of his semi-private rituals with the player. This is Progue-dominated, although we can get him to drop some tantalizing hints about his past if we want. ]

Sleepless Rayfish Encounter is a triggered common denialy episode with summary "swimming with the rayfish under the stars".

Last condition rule for Sleepless Rayfish Encounter:
	if night and
	location is regionally in Beachfront and
	former location is not regionally in Beachfront and
	we are going,
	rule succeeds.

A commencement rule for Sleepless Rayfish Encounter:
	now Progue is awake;
	now dont_describe_Progue is true;
	summon Progue to a random room in Tiderooms;
	now the animus of Progue is swimming;
	now the activity counter of Progue is -50;
	say "Out in the lagoon, amongst the weaving, bobbing lights, stands a dark [o]figure[x].";
	move distant-Progue to location.
	
A finishing rule for Sleepless Rayfish Encounter:
	if Progue is not regionally in Tiderooms, rule succeeds.


Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Sleepless Rayfish Encounter	"[one of][The Progue] stands waist deep in the water, staring the the moving lights with a quiet smile[or][The Progue] swims gracefully among the rayfish[stopping]."

SWTR is a thread. 

Every turn when current episode is Sleepless Rayfish Encounter and Progue is enclosed by location and we have not discussed swtr_intro: pre-conversation processing; now tempfuse of swtr_intro is 4. swtr_intro is an exciting beat in SWTR with reaction "As you approach, [the Progue] half turns his head to see you, then grunts to look back at the swirling lights.[paragraph break]'So beautiful,' he murmurs, staring at the glowing creatures silently gliding by around you. 'Some nights I can't sleep. They help. Helpers. I call them rayfish.'[paragraph break]He wades forward into the ocean, and swims away, alongside the great graceful creatures.". After discussing swtr_intro: now rayfish is named; post-conversation processing; continue the action.

First instead of greeting when current episode is Sleepless Rayfish Encounter: say "[The Progue] doesn't respond; his eyes are locked on the rayfish." instead.

Instead of vague swimming when current episode is Sleepless Rayfish Encounter: say "You dive forward, half afraid and half excited, and in a moment you two are swimming amongst the creatures.

All is strangely silent. You and [the Progue] do not speak, but stay together, floating or swimming alongside the graceful glowing mantas as they glide noiselessly through the lagoon.  Once you reach out to touch one and feel its silky-smooth skin brush past your finger. But then it startles, and darts away, leaving behind a cloud of dense black ink.

At some point you realize [the Progue] has slipped away. Contented, you return to shore, wet but warm in the dense tropical night air."; summon Progue to Stumps; Progue starts resting; move player to South Beach.



Chapter - Shocking Revelation

[ Progue moves into the "fear" psyche when he finally realizes that the player is really there, not just a hallucination. This happens automatically if the player gets through the lava tunnel door (since Progue no longer remembers how to open it), or if the player breaks a leg and Progue rescues him. The player can also be proactive in bringing this about by taking drastic physical action with Progue: either punching him (submissive) or kissing him (romantic).

In either case, the player needs to repeat the command several times to indicate their seriousness about going through with the action: this is to prevent just a casual attempt from skipping past some of the good stuff in the denial stage. If we confirm, we segue into the Discovering the Open Door convo. ]

Instead of kissing Progue when the psyche of Progue is denial and current episode is not Discovering the Open Door: if Progue is idle, pre-conversation processing; force discuss sr_kiss1.[aar]

sr_kiss1 is a dogged beat in DenialC with reaction "He leans deftly back. 'Whoah there, my [animal-nickname],' he says with a chuckle. 'Let's just wait to get to know each other a little better first, eh?' He waits nervously to see if you will try [t]again[x] or say [t]nothing[x].". sr_kiss2 replaces sr_kiss1. sr_kiss1 suggests sr_kissclear.

sr_kiss2 is a dogged beat in DenialC with reaction "'Now really,' [the Progue] says, leaping back as you step forward again, 'it's not that I'm not gushing flattered, [if player is male]my boy[else]darling[end if], but that's not the sort of hallucination I expected to be expecting just now, if you ring.' As he babbles, though, you can see something strange in his eyes, some curdling combination of desire and a growing terror as he waits for you to try [t]again[x] or change the [t]subject[x].". sr_kiss3 replaces sr_kiss2. sr_kiss2 suggests sr_kissclear.

sr_kiss3 is a romantic beat in DenialC with reaction "You lean forward. 'What in the--' is as far as he has time to get before you've planted a firm kiss on his lips. His eyes open wide in astonishment, or perhaps something else, but then...[paragraph break]He leaps backwards, suddenly in a panic, face flushing red. 'But what... how... I haven't... been so long since...' He raises a hand and touches them to his lips, eyes momentarily dissolved into some distant memory.". sr_kiss3 enqueues sr_shocking. sr_shocking replaces sr_kiss3.

sr_kissclear is a repeatable dogged beat in DenialC. After discussing sr_kissclear: now sr_kiss1 is unspoken; now sr_kiss2 is unspoken; continue the action.

Before attacking Progue when the psyche of Progue is denial:
	if current episode is Word Day and we have not discussed bp_introduction begin;
		say "He's up too high for you to reach him." instead;
	otherwise if animus of Progue is swimming or animus of Progue is hottubbing;
		say "It's a little awkward to start a fight in the water." instead;
	otherwise if the animus of Progue is resting;
		say "It's a little unsporting to do that while he's asleep." instead;
	otherwise if current episode is Discovering The Open Door or last beat is in DTOD;
		say "It looks as if you've already unsettled him quite enough." instead; 
	otherwise;
		if Progue is idle, pre-conversation processing;
		force discuss sr_hit1 instead;
	end if.

sr_hit1 is a annoying dogged beat in DenialC with reaction "You take a swing at [the Progue], but he dodges lithely out of the way, does a neat roll on the [surface-material], and comes up with his fists raised. 'Oh ho, so you're an angry spirit, are you?' he asks with glee, bouncing back and forth from foot to foot. 'Haven't been in a good fight since that walrus attack. You try anything like that [t]again[x], I'll sock you a good one!' He lowers his hands a little. 'Or we can change the [t]subject[x], if you prefer. It's too hot for fighting really.'". sr_hit2 replaces sr_hit1. sr_hit1 suggests sr_hitclear.

sr_hit2 is a dogged beat in DenialC with reaction "You step closer and take a harder swing, but [the Progue] twists aside and then uppercuts your face.[paragraph break]'Ahh!' he cries out, clutching his hand and staggering back. 'That hurt! I thought you hallucinations were meant to be insubstantial, lighter than air, all that!' But he looks at you now with a hint of something growing in his eyes, waiting for you to advance yet [t]again[x] or back off and do [t]nothing[x], some spark of terror on the verge of kindling.". sr_hit3 replaces sr_hit2. sr_hit2 replaces sr_hitclear.

sr_hit3 is a beat in DenialC with reaction "You strike him hard across the face. His expression turns to shock as he lifts a hand to the white mark left there. He stares at you in a kind of growing horror.". sr_hit3 enqueues sr_shocking.

sr_hitclear is a repeatable dogged beat in DenialC. After discussing sr_hitclear: now sr_hit1 is unspoken; now sr_hit2 is unspoken; continue the action.


Chapter - Discovering the Open Door

[ The player should almost inevitably encounter Progue during the Boulder Poetry scene, Delayed Conversation, or Tending-to-Wounded-Player. It is likely that you will figure out how to snap Progue out of his denial phase; however if you don't, either by accident or design, Progue needs to figure this out on his own eventually. Once the player has solved the first puzzle, Progue will discover the open door and realize the player is really there... thus triggering a scene that transitions him to the fear stage. 


]

Discovering the Open Door is a triggered guaranteed instant rendezvous episode. The subchange beat is dtod_farewell. The bye beat is dtod_farewell. The abruptbye beat is dtod_farewell. The boredom beat is dtod_irrelevant. The icebreaker is dtod_intro. The meeting place is Back Room.

Last condition rule for Discovering the Open Door:
	if location is Jumble, rule succeeds.

Every turn when current episode is Discovering the Open Door and dtod_intro is unspoken (this is the position Progue for Discovering the Open Door rule):
	if location is North Beach or location is South Beach begin;
		move Progue to Center Beach;
		now meeting place of Discovering the Open Door is Center Beach;
	otherwise if location is Jumble;
		move Progue to Back Room;
		now meeting place of Discovering the Open Door is Back Room;
	end if.

A commencement rule for Discovering the Open Door:
	now the exhaust_beat of Progue is dtod_irrelevant;
	now the overexhaust_beat of Progue is dtod_irrelevant;
	now the randomyes_beat of Progue is dtod_irrelevant;
	now the randomno_beat of Progue is dtod_irrelevant.

A finishing rule for Discovering the Open Door:
	if dtod_intro is spoken and Progue is idle, rule succeeds.

A completion rule for Discovering the Open Door:
	now dont_describe_Progue is true;
	if location is Back Room begin;
		now wooden cube is Progue-disturbed;
		now the current page of sketchbook is 4;
		move Progue to North Beach;
	otherwise;
		move Progue to Rise;
	end if;
	now the psyche of Progue is fear.


Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Discovering the Open Door		"[The Progue] stands [if location is Center Beach]just outside the cabin[otherwise]near the exit to the front room[end if], watching you incredulously[if location is Back Room] as you step through the door[end if]."

DTOD is a thread. The escape clause of DTOD is dtod_irrelevant.

Before discussing dtod_intro when we-are-landmark-going is true:
	if location is Back Room, say "As you pass through the lava tunnel door into the back room of the cabin, [the Progue] blocks your way.";
	tidy landmark-go;
	clean up landmark-go, silently.

Instead of attacking or pushing or hugging or kissing Progue when current episode is Discovering the Open Door: say "Not now.".

dtod_intro is an insistent beat in DTOD with reaction "'You opened it!' he says in an astonished stammer. 'This old door-- but how-- [if location is Back Room]' he runs a hand across the front, lightly across the buttons. '[end if]I could never remember--' His eyes widen, and he steps back from you in shock.[paragraph break]'You-- you're really here, aren't you? But-- but how?'". After discussing dtod_intro: now met_progue is true; continue the action. dtod_intro summons dtod_call, dtod_shrug, dtod_swam. dtod_intro suggests dtod_shrug. The maybe-beat of dtod_intro is dtod_shrug. Before discussing dtod_intro: repeat with item running through available beats begin; unless item is dtod_intro, now tempfuse of item is 0; end repeat; continue the action.

sr_shocking is an insistent beat in DTOD with reaction "His eyes widen, and he steps back from you in shock. 'You-- you're really here, aren't you?' he stammers. 'But-- but how?'". sr_shocking summons dtod_call, dtod_shrug, dtod_swam, dtod_spaceship. sr_shocking suggests dtod_shrug. The maybe-beat of sr_shocking is dtod_shrug. [Alternate entry point.] After discussing sr_shocking: now dtod_intro is spoken; now current episode is Discovering the Open Door; now the exhaust_beat of Progue is dtod_irrelevant; now the overexhaust_beat of Progue is dtod_irrelevant; now the randomyes_beat of Progue is dtod_irrelevant; now the randomno_beat of Progue is dtod_irrelevant; continue the action. dtod_flee replaces sr_shocking.

Understand "swam" as dtod_swam. dtod_swam is a dogged beat in DTOD with keyword name "swam" and reaction "His eyes narrow. 'No,' he says, 'no no no. Too far. I tried once, to get to the cliffs to the east. You're liaring, you liar. I tried. Too far. The truth, tell me the truth, tell me.'". dtod_swam suggests dtod_figureout. 

Understand "spaceship" or "space ship" as dtod_spaceship. dtod_spaceship is a dogged beat in DTOD with keyword name "spaceship" and reaction "'That's an unrhymable story,' he says, 'I would have heard you land. Nonsuss. Prepostersense. Give me the real reason.'". dtod_spaceship suggests dtod_figureout.

dtod_shrug is a dogged beat in DTOD with keyword name "shrug" and reaction "He blinks rapidly. 'But you must have-- unless-- could I have opened the door? Remembered, combination springing up after all these--' He paces back and forth, running his face over his hands, then whirls on you. 'No,' he says, 'I refuse. You must be here. Now tell me. Tell me how.'". dtod_shrug suggests dtod_figureout. dtod_figureout replaces dtod_shrug.

dtod_figureout is a beat in DTOD with reaction "Suddenly he stiffens, and stands straight up.". dtod_figureout enqueues dtod_foundme.

Understand "wayfaring" as dtod_call. dtod_call is a beat in DTOD with keyword name "wayfaring" and reaction "You tell him about the Call you felt, how it brought you here, your [dtod_wayfaring]. He listens in what seems to be growing horror, slowly backing farther and farther away from you.". dtod_call enqueues dtod_foundme.

dtod_foundme is a beat in DTOD with reaction "'Oh no oh no,' he says, shaking his head. 'Impossible. Terrible. It's happened. It's happened. You've found me. The [dtod_creeper].  After all this time. All this time---' He gives a crazy glance [if location is Back Room]at the door to the cabin's front room[otherwise]behind him[end if], poised to flee.". dtod_foundme suggests dtod_flee. dtod_flee replaces dtod_foundme.

Understand "wayfaring" as dtod_wayfaring when last beat is in DTOD. dtod_wayfaring is a beat in DTOD with keyword name "wayfaring" and reaction "'Stop saying that!' he shrieks, bringing hands up to claw frantically at his ears. 'Not true, impossible, I don't believe-- just lies, lies from the Creeper, stop it! Stop-- you won't take me-- not again--'". dtod_wayfaring enqueues dtod_flee.

Understand "creeper" as dtod_creeper when last beat is in DTOD. dtod_creeper is a beat in DTOD with keyword name "creeper" and reaction "'Stupid of me!' he says, quivering, 'stupid not to recognize-- been so long-- but of course you wouldn't look fearful, of course you'd try to trap, trick, treacher--". dtod_creeper enqueues dtod_flee.

dtod_flee is a terminal beat in DTOD with reaction "Suddenly he leaps [if location is Back Room]for the front door with surprising speed, flinging himself across the front room of the cabin, but he trips over the cube and sprawls into the sand drifting across the floor, limbs flopping wildly, ankles and elbows catching on the door to the beach. Before you can react he has picked himself up and tripped outside, [otherwise]backwards, and before you can stop him he is [end if]running frantically up the beach, shouting behind him, 'Alone! Alone! Leave me alo-one!'[paragraph break]And then all is silent.". 


dtod_farewell is an ephemeral repeatable beat in DTOD with reaction "[if last beat is not dtod_call]He shakes his head, blocking your way. 'Oh no oh no,' he says, 'just a ment, you mystery, you phantom, I want answers, answers first.'[otherwise]'Can't be,' he mutters, panicked, 'can't, can't, can't...'". 

dtod_irrelevant is a beat in DTOD with reaction "He shakes his head. 'Can't think,' he says, 'no sense. What, what, what can I do?'". dtod_irrelevant enqueues dtod_figureout.



Chapter - Art Critic

[Another way the player can push Progue into "fear" is by pushing the volcano sculpture off the edge]

Art Critic is a guaranteed triggered rendezvous denialy episode. The icebreaker is ac_intro.

Last condition for Art Critic:
	if volcano sculpture is off-stage, rule succeeds.

First commencement rule for Art Critic:
	if the psyche of Progue is denial, now the icebreaker of Art Critic is ac_denialintro.

AC is a thread. The escape clause is ac_destruction.

ac_denialintro is a beat in AC with reaction "'My statue!' he says. 'You-- you pushed it off the edge. Spirits don't do that. Spirits don't-- oh, oh no oh no...'". ac_denialintro enqueues sr_shocking.

ac_intro is an unaffinitive submissive beat in AC with reaction "'Are you quite pleased with yourself then?' Progue asks angrily. 'You see I didn't think to bother to put up signs reading [']don't push the statues off the edges of volcanoes['] because besides from the obvious fact that there wasn't anyone to read them until just recently, it was the sort of thing I would have expected to fall under the rubric of common decency.'[paragraph break]He folds his arms. 'Well and care to explain yourself then?' he asks. 'In the mood for a meaningless act of [ac_destruction], or have you become an art [ac_critic]?'". ac_intro summons ac_power. ac_intro suggests ac_destruction.

Understand "power" as ac_power when last beat is in AC. ac_power is a terminal beat in AC with keyword name "power" and reaction "He listens, but seems unimpressed. 'Hardly seems worth destroying a work of art for,' he says, but waves you off before you can say anything more. 'Suppose it's not important anyway; haven't been up to look at it in green eons, but...' He bites his lip, then turns away abruptly.".

Understand "destruction" as ac_destruction when last beat is in AC. ac_destruction is an unaffinitive terminal beat in AC with keyword name "destruction" and reaction "He nods. 'What I thought,' he says, 'violent. Destructive. Something thatwise. Have to keep my eye on you,' he adds darkly, 'who knows what else you might try and destroy.'".

Understand "critic" as ac_critic when last beat is in AC. ac_critic is a terminal beat in AC with keyword name "critic" and reaction "He listens incredulously, and you think he's about to strangle you. Then suddenly he bursts into a long fit of helpless laughter.[paragraph break]'No and no,' he says finally, wiping tears from his eyes in a fit of helpless giggles, 'I suppose it wasn't that good after all, was it? Amateurish in the extreme. Ah well-oh. One less crystal brick dragging me down to the abandoned past then. Nothing to get upended over. Enjoy the rest of the [Progue-time-of-day], [animal-nickname]; just try not to cause too much damage, eh?'".


Chapter - Tending to Wounded Player Conversation

[ If you do something stupid and wound yourself, Progue will find you and take you back to the hut for treatment. Since this scene could happen at nearly any point along Progue's psychological development, there are several variations, but the two biggest are:
	-- Progue has not yet gone through the fear phase, and your unconcious body is the trigger he needs to convince him you are real. He will heal you and leave you food but not stick around to talk.
	-- Progue has moved past this phase, and will wait until you wake up to have a conversation with you. This scene offers a good chance to increase Progue's paternalism number. ] 

Tending-to-Wounded-Player is a guaranteed instant triggered episode.

First condition for Tending-to-Wounded-Player:
	if chasm-jump-try is 2 or cliff-climb-try is 2, rule succeeds.

A commencement rule for Tending-to-Wounded-Player:
	move the player to Hut, without printing a room description;
	now the player is wounded;
	move the pile of fresh fruit to Hut;
	Progue feels more like a father;
	Progue is less submissive;
	print a section break;
	if the psyche of Progue is suppression or the psyche of Progue is uncertainty or the psyche of Progue is emotional begin;
		say "Waves.[paragraph break]You open your eyes. Progue is standing above you. Somewhere near your feet is a dull, throbbing pain.[paragraph break]'The bone's set,' he says simply, arms folded as he looks at you with something between annoyance and fondness. 'Now there's something I haven't done in a while. You'll be full on before long. Do try and try to be a little more careful when climbing and crawling and jumping, eh [animal-nickname]? I'm not the most credentialed of doctors.'[paragraph break]He winks and turns to leave as you slip back into sleep.[paragraph break]Some time later, you open your eyes.";
	otherwise;
		now the psyche of Progue is fear;
		summon Progue to Ledge;
		now the animus of Progue is hiding;
		say "Waves.[paragraph break]Pain ripples through you, somewhere near your feet, and definitely in your skull. But your whole body ripples, sways, and you sense dimly that someone is carrying you.[paragraph break]The voice is muttering something, repeating it. 'Can't, can't, can't be,' it sounds like. 'Real. [if player is male]H[otherwise]Sh[end if]e's real.' And then you slip beneath the surface again, where all is still.[paragraph break]Time passes, and when you breach again you're lying in comfort, and despite the hurt you can feel that someone has tended to the wound. Surf crashes somewhere.[paragraph break]You open your eyes.";
		try looking;
	end if.

A finishing rule for Tending-to-Wounded-Player:
	if location is not Hut, rule succeeds.

The pile of fresh fruit is described set dressing. The initial appearance is "Within reach of you is a pile of fresh [o]fruit[x].". The description is "Berries and some hairy brown half-spheres with white, succulent flesh inside.". Instead of tasting or taking the pile of fresh fruit: say "You find yourself ravenously hungry, and quickly devour the pile of fruit. Afterwards you feel a little better."; remove pile of fresh fruit from play.

Before going or exiting or landmark-going when current episode is Tending-to-Wounded-Player:
	if Progue is attentive, say "You eye your leg gingerly, and decide you're not feeling up to walking just yet." instead.

First before going or exiting when current episode is Tending-to-Wounded-Player: acknowledge injury. [First check wordgoing when current episode is Tending-to-Wounded-Player: acknowledge injury.]

To acknowledge injury: say "[one of]Gingerly, testing your weight carefully, you get to your feet. You're relieved to find that you'll be able to walk, but running and jumping will probably be out of the question for quite a while.[or][stopping]".


Lacuna-Progue-Denial ends here.
