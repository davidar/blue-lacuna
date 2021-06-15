Lacuna-Progue-Confrontation by Blue Lacuna begins here.

Use authorial modesty.

Part - Final Confrontation

Table of Fugue2 Episodes
eptitle
Final Confrontation

Transition Progue to Fugue2 is a scene. Transition Progue to Fugue2 begins when the psyche of Progue is fugue. Transition Progue to Fugue2 ends when Transition Progue to Fugue2 begins.

When Transition Progue to Fugue2 begins:
	now withered vine is unlocked;
	now withered vine is open;
	now episode schedule is Table of Fugue2 Episodes.

Transition Progue to Resolved2 is a scene. Transition Progue to Resolved2 begins when the psyche of Progue is resolved. Transition Progue to Resolved2 ends when Transition Progue to Resolved2 begins.

 When Transition Progue to Resolved2 begins:
	now the animus of Progue is ruminating;
	now Progue is fulfilling;
	now Progue's animus table is Table of Progue Default.

Instead of greeting Progue when the psyche of Progue is resolved, say "Right now, there is nothing more to say.". Instead of hugging Progue when the psyche of Progue is resolved: say "He hugs you back, trembling with relief or release, something electric in his hands as they grip your back. When he finally releases you with a deep breath, he only nods once, eyes clouded, as if unafraid to say anything more.". Instead of kissing Progue when the psyche of Progue is resolved, try hugging Progue. Instead of pushing or attacking Progue when the psyche of Progue is resolved, say "The time for that is over."

[Another thing players could try is wanting to choose nobody simply by shutting off the power to the seiver instead of destroying it. If they get to an ending where Progue is dead or allows them to take action, allow for this possibility.] 
To pipechangeending: if ( story mode and pipe-position of boiler handle is not yellow pipe ) or ( puzzle mode and pressure of the related pipe of the pyramid pressure gauge < 22 ) begin; say "[line break]The glow from the egg on the mountain dies away. It's done. The windsigh of Lacuna are cut off from Forest and all other listeners, and when you look at the stars, only you will see them."; try sleeping; end if.

eptrigctr is a number that varies.
Every turn when ( the psyche of Progue is resolved or Progue is dead ) and location is regionally in Lacuna and Epilogue is not happening and Epilogue has not happened:
	now the time of day is time factor minutes before the time of day; [the night never ends.]
	increase eptrigctr by 1;
	if eptrigctr is 10 or ( eptrigctr > 10 and a random chance of 1 in 10 succeeds ) , say "You tremble with exhaustion. But you must either sleep, or see this through. Climb the highest tree and look at the stars[one of][or]. The vine on the beach will lead you to its branches[stopping].".

To decide whether end-rebels: if the machinery-password exactly matches the text rebel-password and pyramid has power, decide yes; decide no. To decide whether end-trees: if the machinery-password exactly matches the text tree-password and pyramid has power, decide yes; decide no. To decide whether end-choice: if end-rebels or end-trees, decide yes; decide no.

To decide whether end-both: if the machinery-password is blank or not end-choice, decide yes; decide no.

To decide whether end-neither: if the mind machinery is off-stage, decide yes; decide no.

To decide whether end-abstain: if end-abstain-trigger is 1, decide yes; decide no. end-abstain-trigger is a value that varies. end-abstain-trigger is 0. [ end-abstain can only be determined through dialogue with Progue. ]

[
After the player has been in both worlds, the storm ends. The player can climb/chairlift down the mountain (quite possibly on the way to the tallest tree to look at the stars), but they will have to pass through RIse, where Progue is waiting for them. Once they enter this room, they can't leave until the scene is resolved.

The player can fundamentally have done one of four things: A) Set the calibration machine for one side or the other (end-choice / end-rebels or end-trees), B) Set the machine for no encryption (choosing both sides) or a completely different encryption (both sides, but harder) (end-both), or C) Destroy the machine (end-neither). The player can also be abstaining from choice, which can't be determined by player actions alone, so Progue's first move in most scenarios is to ask the player whether their current choice is final.

The exact sequence of conversation is very complex here, depending on Progue's archetype, the player's decision above, whether the player tells the truth or not about their choice, and how they respond to Progue's requests. However, the situation is guaranteed to end up with one of two resolutions:

1: The player does not choose; Progue is forced to make the choice for himself and does.
2: Progue is convinced the player is wrong (either for making a choice or not making one) but the player will not relent; they fight. (This will always happen if end-neither).

Option 1 then concludes with one of serveral finales:

1a: Progue decides to destroy the machinery, rejecting the choice. (if neurotic dad, bitter dad, toady, or twitterpated; his lack of confidence erupts in a fit of anger.)
1b: Progue decides to set no encryption; may the best side win. (friend, lover: your example has shown him the choice was never his to make.)
1c: Progue changes the encryption to the trees. (father knows best, disciplinarian: people need guidance and control in their lives.)
1d: Progue changes the encryption to the rebels. (slave; bitter lover: people need to break free of what's keeping them down.)

Alternatively, option 2's fight can be resolved one of three ways, each of which lead to various finales depending on archetype:

2a: The player loses the fight, allowing Progue to have his way.
--> 2a1: If you lied to Progue about your choice, he sees you were right.
-->	else 1a, 1b, 1c, 1d, 1e: as in the Option 1 endings.
2b: The player wins the fight fairly, cementing his choice; or player loses but machinery is destroyed.
--> 2b1: Progue accepts that through inaction he lost his right to make the choice. (all but three below)
--> 2b2: Progue cannot accept this and commits suicide. (slave, bittered lover, shattered lover)
2c: The player wins the fight violently, killing Progue in the process.
--> 2c1: Progue passes the mantle of "hero" to you.

Progue, if alive, realizes a burden has been lifted and he will be able to wayfare again. Finally, if the mind machinery is not destroyed, there is a denouement:

D1: Progue goes alone to look at the stars. (If 1b, 1c, 1d)
D2: Progue and the player go together to look at the stars (same as above, if player consents and Progue likes player)
D3: You go alone to look at the stars. (2a1, 2b1, 2c1)
D4: The mind machinery is destroyed.
D5: The choice still has not been made: you are asked to pick or reject it for good.

]

fc_intro is a beat. FC is a thread.



[Exploring Lacuna ends when current episode is Final Confrontation.]

Final Confrontation is a guaranteed triggered instant episode. The meeting place is Rise. The icebreaker is fc_intro. The bye beat is fc_cantleave. The abruptbye beat is fc_cantleave. The subchange beat is fc_subchange. The boredom beat is fc_subchange.

A condition for Final Confrontation:
	if location is Rise and Rebelworld-Sequence is solved and Treeworld-Sequence is solved, rule succeeds.

Last commencement rule for Final Confrontation:
	now disposition of Progue is 0;
	say "[initial appearance of Progue][line break]";
	force discuss fc_intro.

fc_intro is a beat. Instead of discussing fc_intro:
	if mind machinery is off-stage begin;
		force discuss fc_whathaveyoudone;
	otherwise;
		if neurotic dad begin; force discuss fc_start_neurotic_dad;
		otherwise if father knows best; force discuss fc_start_father_knows_best;
		otherwise if bitter dad; force discuss fc_start_bitter_dad;
		otherwise if disciplinarian; force discuss fc_start_disciplinarian;
		otherwise if lover or twitterpated; force discuss fc_start_lover;
		otherwise if friend; force discuss fc_start_friend;
		otherwise if toady; force discuss fc_start_toady;
		otherwise if shattered lover; force discuss fc_start_shattered_lover;
		otherwise if bitter lover or enemy; force discuss fc_start_enemy;
		otherwise if slave; force discuss fc_start_slave;
		otherwise; if drama manager is being debugged, say "// ERROR: Progue does not fit into any archetype."; force discuss fc_start_friend;
		end if;
	end if.

A finishing rule for Final Confrontation:
	if the number of terminal spoken beats in FC > 0, rule succeeds;
	if Progue is dead, rule succeeds.

A completion rule for Final Confrontation:
	if ending_1a is spoken or fc_destroyed is spoken or fc_proguealonestars is spoken:
		now ep-trigger is true. 

Table of Progue's Initial Appearance (continued)
animus	episode		desc
--	Final Confrontation		"Standing on the rise waiting for you, watching your approach calmly, is Progue."

Table of Progue's Description (continued)
animus	episode		desc
--	Final Confrontation		"He still looks weak, but holds himself up firmly. There is a resolve in his eyes that you have never seen there, but also, something else-- dangerous and unhinged."

Instead of examining Progue when the psyche of Progue is resolved: say "He looks content, at peace with something in himself in a way you've never seen, perhaps a way he hasn't felt for decades.".

fc_cantleave is a dogged repeatable beat in FC with reaction "Progue reaches out with sudden strength and grabs your arm. 'No,' he says, 'we must finish this.'".

fc_subchange is a dogged repeatable beat in FC with reaction "He shakes his head. 'There's only one thing we have to talk about now,' he says.".

fc_whathaveyoudone is an insistent beat in FC with reaction "'I saw,' he says quietly, 'what you did... all that work, all those hours of mine smashed in moments by stupid violence...'[paragraph break]He is trembling, and suddenly he rushes towards you with a scream, and you know the trembling was from an effort to stay standing but from holding himself back from tearing you apart.[paragraph break]He leaps on you, screaming and hammering blows which are so wild that they pose no danger beyond bruises, screaming, 'You destroyed it, how could you? What have you... what have you done?'". fc_whathaveyoudone enqueues fc_fight.



FC_opener is a thread. 

fc_start_neurotic_dad is a beat in FC_opener with reaction "He looks thin, pale, weak, and nervous. 'Saw you go up there,' he says, glancing quickly toward your eyes then away again. 'You know, [if player is male]son[else]my sweet one[end if], I've tried to warn you of the dangers here, guide you, help you, keep you retracing my steps. But you've never listened. You've always done what you want, gotten your way. And now, now... you've come full circle, come to where and where I was those gray years ago. And now you'll finish what I started.'[paragraph break]He rubs his hands together anxiously. 'And well?' he says hopefully, plaintively, 'well? Don't hold me waiting. Tell me do: what did you decide? Oh please, tell, you must and need and have to. I've been waiting, waiting so long to know what's right, the right answer, the right choice. So which one?' he concludes, desperately. 'Tell me, have you decided which one?'". fc_start_neurotic_dad enqueues fc_start_decide.

fc_start_father_knows_best is a beat in FC_opener with reaction "He looks thin and pale, but stands tall, smiling at you with something like pride. 'I saw you go up there,' he says, 'and I knew, my [if player is male]boy[else]girl[end if], I knew-- you'd gone to finish what I started. You know, I've come to think of you as a [if player is male]son[else]daughter[end if], and fancied you've taken my advice to heart. So yes, gushing fitting; full circles and things passed. Well. You've been to both their worlds now, just as I did, and-- and you've made up your mind.' He takes a step closer, studies your face. 'Yes,' he says, 'I can see it in your eyes. You've chosen. You've made your choice.' He frowns a little. 'Well, have you?'". fc_start_father_knows_best  enqueues fc_start_decide.

fc_start_bitter_dad is an beat in FC_opener with reaction "He looks thin and haggard, still sick, but stands subtly in your way, watching you warily. 'And now your great replacement of me has concluded, [if player is male]boy[else]girl[end if],' he says bitterly. 'Once I thought of you as like a [if player is male]son[else]daughter[end if], even though we haven't gotten along, and you've always ignored my advice, done what you want. Everything and everything that once I was you think you are. Even the choice, the great, terrible choice the weak and broken old man couldn't make, a choice between two peoples, two worlds, two ways of life-- even that is yours now.' He coughs, weakly, but never takes his eyes from you.[paragraph break]'Tell, tell, wise one,' he says, 'have you made your decision?'". fc_start_bitter_dad enqueues fc_start_decide.

fc_start_disciplinarian is an beat in FC_opener with reaction "He looks thin, a sickly gauntness accentuated by his rigidly straight posture as he stands in your way, looking towards you distastefully. 'Back already,' he says in a disappointed undertone. 'The fate of three worlds on [if player is male]his[else]her[end if] shoulders, and [if player is male]he[else]she[end if]'s back already. You know, I've always thought of you like a [if player is male]son[else]daughter[end if]; even though we've never gotten along, you've at least been respectful and shown the proper deference to my position. I've had expected you'd have spent more sums of time liberating and deliberating, but.' He coughs, never taking his eyes from you. 'But, but, but. We've learned to disappoint each other. Well. So tell. Have you already decided which it will be?'". fc_start_disciplinarian enqueues fc_start_decide.

fc_start_friend is an beat in FC_opener with reaction "He looks weak and gaunt, but seems calm, collected, watching closely as you approach. 'So my friend returns,' he says, 'And now knows what I knew, and reached the chasm of decision that I never crossed those green eons ago.' He coughs. 'To choose between two worlds, two peoples-- it destroyed me then, such a terrible burden atop all the others I already bore, and as you've retraced my steps, bringing back the memories in twos and clusters-- well. It almost destroyed me again.'[paragraph break]He suddenly steps forward earnestly, searching your face. 'But you're not like me, my friend. No. I see it in your face. You've decided, haven't you? Already decided. Yes? Have you?'". fc_start_friend enqueues fc_start_decide.

fc_start_toady is an beat in FC_opener with reaction "He looks gaunt and hunched, watching you with eager, expectant eyes. 'You've done it,' he says, breathing raggedly, 'been to both their worlds, just like me, just like me. Oh, I remember now, finally remember. And now the choice is yours, that choice I never could make, the one that almost, almost destroyed me.[paragraph break]He suddenly steps forward earnestly, searching your face with a hungered eagerness. 'But you're not like me, friend, no, you're so much stronger, so much... You've decided, haven't you, haven't you already? Already decided. Oh, tell me, then and please, tell, I need knowing. Tell me. Have you decided?'". fc_start_toady enqueues fc_start_decide.

fc_start_lover is an beat in FC_opener with reaction "Progue crosses to you and puts a hand in yours. 'You've done it, then,' he says simply, a shudder running through his body. 'Wonderful and terrible. I'm sorry I couldn't tell you. So much was forgotten, was lost...' He squeezes your hand, looking down at it, and takes a long, deep breath. 'Tell me, then. Have you decided which side to help?'". fc_start_lover enqueues fc_start_decide.

[ twitterpated uses lover ]

fc_start_enemy is an beat in FC_opener with reaction "Progue stands ominously on the rise, looking stronger than you've seen him in days. 'So,' he spits, scorn twisting his face, 'you're back. You think you're going to resolve this; you think you've replaced me. Well they picked me,' he says dangerously, 'they picked me to decide. Have you picked a side?'". fc_start_enemy enqueues fc_start_decide.

fc_start_slave is an beat in FC_opener with reaction "Progue crouches on the rise, eyes never leaving you, dark circles around them. 'You've been there,' he whispers, 'and now you're ready to impose your nasty, hurtful will on two entire planets. Well.' He chuckles quietly to himself. 'You've gotten your way so far. Not surprising.' He gives you a sidelong glance. 'Have you made your choice, then?'". fc_start_slave enqueues fc_start_decide.

[ bitter lover uses _enemy ]

fc_start_shattered_lover is a dogged beat in FC_opener with reaction "Progue sits in your path, rocking back and forth, trembling. 'The choice,' he whispers, 'the choice, the choice. You made it. Not me. A monster like you could do something I could not.' He looks up at you with hateful, tear-filled eyes. 'Have you chosen?' he whispers. 'Have you picked a side?'". fc_start_shattered_lover enqueues fc_start_decide.

fc_start_decide is a beat in FC_opener. The yes-beat is fc_ask_which_side. The no-beat is fc_ask_why_not.

fc_ask_which_side is a repeatable insistent beat in FC_opener with keyword name "yes" and reaction "[one of]'Then which side have you chosen?' he asks, [archetype message]. 'Tell me. Is it[or]'Please,' he says, 'stop climbing my nerves. Tell me. Will it be[stopping] [t]Forest[x] or [t]City[x] who inherits this world?'". fc_ask_which_side summons fc_chose_forest, fc_chose_city, fc_both, fc_have_to_choose, fc_ask_why_not. Instead of saying maybe when last beat is fc_ask_which_side or last beat is fc_whathaveyoudone, force discuss fc_have_to_choose. Instead of saying neither when last beat is fc_ask_which_side or last beat is fc_whathaveyoudone, force discuss fc_ask_why_not. Instead of saying both when last beat is fc_ask_which_side or last beat is fc_whathaveyoudone, force discuss fc_both.


[ Player chose a side. ]

Understand "forest" as fc_chose_forest. fc_chose_forest is a beat in FC with keyword name "Forest" and reaction "'Forest,' Progue breathes, staggering back with eyes wide and darting, running a hand through his hair wildly. 'Forest,' he says again, 'worlds and time, the Forest. The galaxy forest, the symbiont race. There's [fc_Beauty] in them I suppose; no wars, no and those people were mostly probably [fc_happy] it seemed. But no, I was never sure, never knew if I believed in their happiness, never knew if its tang was pure and real or only artificial.'[paragraph break]He whirls, pacing now, mumbling furiously to himself. 'Because how would they ever know,' he says, 'how would they know unhappy? They're told they're happy; they're not free; didn't have to make their own [fc_struggles], craft their own identities, did they? Do they think or do their trees think for them?' He runs his hand over his face, sweating, trembling, considering. 'Then again do we think? Are we happy? Don't know, don't know, don't know...'". fc_chose_forest suggests fc_yourewrong.

Understand "happy" as fc_happy when last beat is in FC. fc_happy is a beat in FC with keyword name "happy" and reaction "'Mayhaps,' he says, pacing frantically, 'mayhaps, mayhaps it less than matters; happy is happy regardless from the cause. Those children, growing into a peaceful world of [fc_beauty] and intellect and knowledge, like well tended shoots...' He bites his lip, eyes racing madly. 'Didn't trust them,' he says, 'or was too jealous to know how to. Happy...' he continues pacing, chewing a knuckle fiercely.". fc_happy suggests fc_yourewrong.

Understand "beauty" as fc_beauty when last beat is in FC. fc_beauty is a beat in FC with keyword name "beauty" and reaction "'Yes, yes, I remember,' he says, pacing across the lava flow wildly, 'memories surged back like neap runoffs; gentle breezes, soft forests, craftiture and gardentude, yes. No dirt, no grime, no, nothing like pollution there in Forest but what nature leaves. A paradise, tempting. But.' He squints, rubbing his hands together with trembling anxious energy. 'But. Man can't truly thrive, live, love, be man, in paradise. No. He always needs [fc_struggles], doesn't he? Don't we?' He squeezes his temples, shutting his eyes in fierce concentration. 'Or is that just the sick and sorrowed assumption of minds who can't conceive, perceive a world without it?' He resumes pacing, muttering furiously to himself.". fc_beauty suggests fc_yourewrong.

Understand "struggle/struggles/conflict" as fc_struggles when last beat is in FC. fc_struggles is a beat in FC with keyword name "[if last beat is fc_beauty]conflict[else]struggles" and reaction "'Yes, struggle,' he says, 'difference, argumentation, accommodation. Something thatwise. Defines us, doesn't it? These ill-fitting things. And they have none there.' He rubs his beard fiercely. 'They may not be one mind but they are of one mind, [fc_happy] and set. All pieces fit together. Moistly hells, can that be for the best? Does that deserve to survive, spread, grow? Do we strive to promote our own ideals grown real, despite the lack we feel something inwardsly of some realful quintessence?' He stares at you with almost desperation.". fc_struggles suggests fc_yourewrong.


Understand "city" as fc_chose_city. fc_chose_city is a beat in FC with keyword name "City" and reaction "'City,' Progue breathes, staggering back with eyes wide and darting, running a hand through his hair wildly. 'City,' he says again, 'worlds and time, the City. The rebels, the underdogs, biting at the heels of would-be [fc_oppressors]. Yes, it seems right on the surface, doesn't it? Symbolic poetry. But.' He whirls, pacing now, mumbling furiously to himself. 'Those people, those people were divided, angry, at throats and snarls. The [fc_Greeneyes], their Other; mayhaps they're more deserving, only seen through eyes of enemies... didn't know, couldn't see. More complicated than the selfsame Forest. And [fc_dirty], skies choked with smog, rubbish in the streets. Think of my Lacuna overrun, get upended. But...' He runs his hand over his face, sweating, trembling, considering.". fc_chose_city suggests fc_yourewrong.

Understand "oppressors" as fc_oppressors when last beat is in FC. fc_oppressors is a beat in FC with keyword name "oppressors" and reaction "'Yes, that was their story,' he says fiercely, pacing back and forth across the lava flow, 'but I wonder. Would Forest have really interfered? Would they not have been happy to let the people of City grow, colonize their own worlds? Looks a gushing big galaxy from here, have my words... Or were the people of City just something bitter, trickling paranoid, would-be friends and would-be enemies the same mishmashed blur? Don't know, don't know.' He squeezes his temples, shutting his eyes in fierce concentration.". fc_oppressors suggests fc_yourewrong.

Understand "greeneyes" as fc_greeneyes when last beat is in FC. fc_greeneyes is a beat in FC with keyword name "Greeneyes" and reaction "'Probably nice people,' he says, 'who can say? Not us, not us. Seen them only through eyes of enemies, no guessing how close to truth, whatever truth is. Mayhaps they're just like City. Mayhaps they deserve to colonize Lacuna and reap the somenium harvest even more. But those people, Leader Tall's people would surely use their new power over the Greeneyes. Who am I, are you, to judge, jury out who deserves it, which among the claves and gangs of those people it best should fall to?' He bites his lip, eyes racing madly.". fc_greeneyes suggests fc_yourewrong.

Understand "dirty" as fc_dirty when last beat is in FC. fc_dirty is a beat in FC with keyword name "dirty" and reaction "'Natural byproducts of a growing society,' he says, stroking his beard fiercely, 'mayhaps. Mayhaps they grow too fast.  Forest at least looked before; City's leaping down abysses and chasms of technology they don't gushing understand. No control in a freefall, no; gravity smashes you through anything delicate and beautiful on your way, pulls you faster and faster and fast. And no knowing, no, when it is they'll hit the bottom.' He stares back at you, thinking with something approaching desperation.". fc_dirty suggests fc_yourewrong.

Understand "both" as fc_both when last beat is in FC. fc_both is a beat in FC with keyword name "both" and reaction "'What?' Progue blinks, confused. 'Both? What do you mean?'[paragraph break]As you explain how you [if machinery-password is blank]simply removed any encryption from the seiver, allowing both sides equal access[otherwise if machinery-password is not rebel-password and machinery-password is not tree-password]set the encryption to a password known to neither side, potentially giving the prize to whoever can break the encryption first[otherwise]intend to neither help nor hinder either side[end if], he stares back in growing disbelief. 'Always with you it's rejecting simple choices, isn't it?' he says. 'Both... I'd never.. I didn't...' But he frowns, starting to shake his head.". fc_both enqueues fc_yourewrong. After discussing fc_both: now end-abstain-trigger is 1; continue the action.



fc_yourewrong is an exciting beat in FC with reaction "'No,' Progue finally says, then again, more firmly: 'No. [if affinity of Progue < -2 or submission of Progue < -2]Of course and always no, I know now, you're wrong as wrong and wrong, [else]Sorries, but oh, I see now, I see, [end if][if fc_chose_forest is unspoken and fc_chose_city is unspoken]failing to choose can never be a choice, despite your despites; just an abdication, isn't it? Shivering off wet responsibility. Not our universe, too true, but we each came here for a reason true too: to help the right cause. That is why we were Called here. To decide. To decide. And the decision should be[otherwise]you made the wrong choice. Oh and it's mirror-clear now, fog dissolves and finally I know what's right. It should be[end if] [Proguesidechoice]. [if side_Progue_picks is 0]Forest has no guardians, no shepherds, don't you see? It will spread across the Galaxy, subsume, overrun, crowd out any other form of thought that cowers in its way. Can't let that happen to City. Gushing no. Life needs escapes from tyrants and freedom for dreams, no matter the cost[otherwise]The people of City are filled up with war, and division, and destruction; they can't be trusted with the keys to a whole galaxy, not yet. Not enough that they think more like us, spark some misplacement of noble ideals; they'd destroy this planet and others with their greed, strip mines of somenium, gushing steel railways blackening every beach. No. Life needs structure, leaders, mentors to bring order from chaos, to teach good from bad[end if].'". fc_yourewrong enqueues fc_intentions.

fc_intentions is an insistent beat in FC with reaction "Progue steps forward. 'Now,' he says[if father knows best or disciplinarian or bitter dad] firmly[otherwise if friend or lover] sincerely[otherwise if enemy or slave or bitter lover] snidely[otherwise if toady or neurotic dad or shattered lover or twitterpated] timidly[end if], [archetype message], 'and now I know at last what needs doing. I'll go back at last to the top, up the mountain and reset the seiver for [if side_Progue_picks is 0]City[else]Forest[end if], as it should be. I remember my secret word, yes, oh, remembered it even when I'd forgotten everything else, and now this must be settled, don't you see? Don't you know; now, and now I finally know what to do.'[paragraph break]He steps forward in the direction of the stumps, but you almost unconsciously move to block him, and he frowns. 'Please now,' he says, 'step [t]aside[x] and let me go, let me finish this for last and always. Don't [t]argue[x], don't at end's end be the last thing to stand in my [t]way[x].'". fc_intentions summons fc_argue, fc_stepaside, fc_lastchance. fc_intentions suggests fc_stepaside. 

Instead of discussing fc_argue when bitter lover or shattered lover or enemy: say "'No more play!' Progue screams at you. 'No more poisoned words, misfit logic, bare cruelties; we end us here and now.'"; force discuss fc_fight.

Understand "argue" as fc_argue when last beat is in FC. fc_argue is an insistent beat in FC with keyword name "argue" and reaction "'I know what I know more than anything known in lifetimes,' he replies, [archetype message], '[if submission of Progue < 0]so you're spending your time on nothing. But very well. I can indulge you[otherwise]but you've always gotten your way before, so I suppose we'll have to talk it through. Very well[end if]. Do you suppose you're somehow more [fc_qualified] to make the choice than me? That the [fc_stakes] are higher for you? That you [fc_deserve] the choice more than I? Or,' he says, stepping closer, 'are you just opposing me from pure [fc_spite]?'". fc_argue suggests fc_spite. fc_argue summons fc_qualified, fc_stakes, fc_deserve, fc_spite.

Understand "qualified" as fc_qualified when last beat is in FC. fc_qualified is a beat in FC with keyword name "qualified" and reaction "'Trash,' he says angrily, 'I spent months building that machine up there, salvaging the Egg for parts, experimenting and reworking. Oh, certain they were helping me, [if side_Progue_picks is 0]cunning whispers of what to try next, which wire to which, egging me along for their own amusement[otherwise]guiding me to see which wires to use, which connections to make[end if], but without my knowledge and my hands it would never have happened. You just came along and figured out how to switch it back on.'[paragraph break]'Convinced?' he says. 'Will you let me pass?'". fc_qualified suggests fc_stepaside. fc_qualified summons fc_stepaside, fc_lastchance. The yes-beat of fc_qualified is fc_stepaside. The no-beat of fc_qualified is fc_lastchance.

Understand "stakes" as fc_stakes when last beat is in FC. fc_stakes is a beat in FC with keyword name "stakes" and reaction "He grabs you, throws you up against a boulder. 'I lost my daughters,' he screams, 'the decision drove me mad and I forgot them, and they left me, they left me...' He breathes deeply,' as they should have. You've helped me remember, [animal-nickname], for that I'm grateful. But this is my decision. What have you lost?' he asks bitterly, 'What have you lost?'". fc_stakes summons fc_rume. fc_stakes suggests fc_nostakes.

Understand "Rume" as fc_rume when last beat is in FC. fc_rume is a beat in FC with keyword name "Rume" and reaction "He looks away. 'Not the same,' he says. 'You lost [himher] before you even came here. I lost my wife before I came as well. But because of what happened I lost the rest of my family as well.'[paragraph break]'It's my decision, and I choose [if side_Progue_picks is 0]City[otherwise]Forest[end if],' he says. 'Let me pass.'". fc_rume suggests fc_stepaside. fc_rume summons fc_stepaside, fc_lastchance. The yes-beat of fc_rume is fc_stepaside. The no-beat of fc_rume is fc_lastchance.

fc_nostakes is a beat in FC with reaction "'That's right,' he says, 'it's my decision, and I choose [if side_Progue_picks is 0]City[otherwise]Forest[end if]. Let me pass.'". fc_nostakes suggests fc_stepaside. fc_nostakes summons fc_stepaside, fc_lastchance. The yes-beat of fc_nostakes is fc_stepaside. The no-beat of fc_nostakes is fc_lastchance.

Understand "deserve" as fc_deserve when last beat is in FC. fc_deserve is a beat in FC with keyword name "deserve" and reaction "'What, because without the [fc_Call] this would never have happened?' he demands angrily. 'I would have stayed a madman, kept shouting words into the ocean so I didn't forget them, as the holes in my mind grew larger and larger until I slipped and vanished into them entirely?' He breathes deeply. 'Yes it's true you saved me from that, brought me back from the edge. But for what, if not to finish what I started?'". fc_deserve suggests fc_stepaside. fc_deserve summons fc_stepaside, fc_lastchance.

Understand "call" as fc_call when last beat is in FC. fc_call is a beat in FC with keyword name "Call" and reaction "[if The-Path-Of-Love has happened]'The Call,' he mutters, slow realization dawning over his face, 'Something Further, the Call. I did Call you. But twenty years ago. And you didn't answer. When I first was asked to choose between two civilizations, when I was going mad from the pressure, when Phoebe and Lethe needed me, I cried out with all my inner voice for help. And you heard me, didn't you? But you didn't answer.' He takes a deep breath, staring at you in fury. 'You didn't answer, and so for twenty years I lingered in madness, slowly forgetting everything, the decision, the windsigh, even my own daughters... you came too late, [animal-nickname], too late, too late...[otherwise]'Yes and don't you see?' he snaps angrily. 'You were Called here to help me. You're not the hero of this story; it's me, Progue; I'm the hero. You've helped me, and now your part is done. Step [fc_stepaside] and let me do what I must. Don't stand in my [fc_lastchance].[end if] Let me help the [if side_Progue_picks is 0]people of City[otherwise]builders and thinkers of Forest[end if] rise to ascendancy.'". fc_call suggests fc_stepaside. fc_call summons fc_stepaside, fc_lastchance

Understand "spite" as fc_spite when last beat is in FC. fc_spite is a beat in FC with keyword name "spite" and reaction "[if affinity of Progue < 0]'I'd expect nothing less from someone like you,' he says with a snarl[otherwise]'I expected so much more from you,' he says with a sad sigh[end if].". fc_spite enqueues fc_lastchance.

Understand "way/resist" as fc_lastchance. fc_lastchance is a beat in FC with keyword name "[if last beat is fc_call]way[else]resist" and reaction "'Last chance,' Progue says, stepping forward threateningly. 'Either step [fc_stepaside] and let me do what I know is right, or [fc_fight] and I'll have to use force to do it. The choice is yours.' He stares at you, [archetype message].". fc_fight replaces fc_lastchance. fc_lastchance summons fc_stepaside, fc_fight. fc_lastchance suggests fc_stepaside.

Understand "resist" as fc_fight when last beat is in FC. fc_fight is a beat in FC with keyword name "resist" and reaction "[if lover or shattered lover or twitterpated]'What an end to us,' he says, tears fighting with anger for control over his eyes, 'of all ends to have.'[otherwise if father knows best or neurotic dad]Progue's eyes harden. 'So much potential in you,' he says bitterly, 'I once thought-- no. You've learned nothing, and now it's come to this.'[otherwise if disciplinarian or bitter dad]His eyes narrow. 'Such a disappointment,' he says, 'very well. You've meddled in this long enough.'[otherwise if enemy or slave or bitter lover or toady]Progue snarls, his eyes filling with hatred.[else]His face hardens, hurt and betrayed. 'For life and strife, I wish this didn't have to happen,' he says, 'but lie assured, it will.'[end if] Then, with surprising speed, he leaps at you and knocks you to the ground. You quickly stagger back up, and begin circling him warily.". fc_fight summons fc_tackle, fc_punch, fc_kick. After discussing fc_fight: now bye beat of Final Confrontation is fc_fightleave; now abruptbye beat of Final Confrontation is fc_fightleave; continue the action. [This beat and the other fighting beats below don't suggest anything, because of the "fight overrules boredom rule" below.]

[
The fight is basically rock paper scissors, with the twist that a losing player can cheat.

Tackle beats punch
Punch beats Kick. 
Kick beats tackle
Rock beats anything.
]

Understand "tackle" or "tackle Progue" as fc_tackle when last beat is in FC. fc_tackle is a repeatable beat in FC with keyword name "tackle" and reaction "[Pfightchoice]You charge Progue [if Progue is tackling]just as he charges you, and the two of you collide heavily, staggering backwards with no ground gained on either side[otherwise if Progue is punching]as he pulls back to swing a punch at you, and tackle him heavily to the ground, pushing him back a few feet. He staggers quickly to his feet[fightplayerscores][otherwise]but he kicks you square in the chest, knocking you back a few feet. You quickly jump up again as he advances[fightProguescores][end if][pfighthint].". fc_tackle summons fc_tackle, fc_punch, fc_kick. After discussing fc_tackle: now tempfuse of fc_tackle is 5; process fight stuff; continue the action.

Instead of attacking progue when last beat is in FC, force discuss fc_punch. fc_punch is a repeatable beat in FC with keyword name "punch" and reaction "[Pfightchoice]You swing your fist at Progue [if Progue is tackling]but he is charging towards you, and slams into you before you can connect, knocking you to the ground. You stagger backwards a few feet and leap up, shaking your head[fightproguescores][otherwise if Progue is punching]just as he does the same at you; your blows connect ringingly but you each keep your ground[otherwise]as he tries to kick you in the chest, but your blow connects and he staggers back, clutching his face in pain[fightplayerscores][end if][pfighthint].". fc_punch summons fc_tackle, fc_punch, fc_kick. After discussing fc_punch: now tempfuse of fc_punch is 5; process fight stuff; continue the action.

Understand "kick" or "kick progue" as fc_kick. fc_kick is a repeatable beat in FC with keyword name "kick" and reaction "[Pfightchoice]You aim a harsh kick at Progue's chest[if Progue is tackling] just as he leaps towards you to tackle; the blow connects and he staggers back, clutching his chest[fightplayerscores][otherwise if Progue is punching], but he dodges and delivers a solid punch to your face; you stagger a few steps back, trying to recover[fightProguescores][otherwise] just as he kicks at yours; your blows both miss and you each recover your positions, not gaining or losing any ground[end if][pfighthint].". fc_kick summons fc_tackle, fc_punch, fc_kick. After discussing fc_kick: now tempfuse of fc_kick is 5; process fight stuff; continue the action.

Understand "rock" as fc_rock when last beat is in FC. fc_rock is a beat in FC with keyword name "rock" and reaction "You scrabble for the rock, holding it up threateningly. It is large and heavy enough to kill.[paragraph break]Progue snarls angrily at you. 'Can't win in a fair fight, so you want to cheat?' he says. 'Doesn't matter. I'll still beat you.'". fc_player_wins_violently replaces fc_rock. After discussing fc_rock when fc_player_wins_violently is unspoken: move fight-rock to player; now tempfuse of fc_player_wins_violently is 50; continue the action.

To say pfighthint:
	if a random chance of 1 in fightpacer succeeds:
		now progue-fight-preordained is true;
		let chc be a random number between 1 and 3;
		if chc is 1:
			now progue-fight-move is 0;
			say ". He hunkers down, preparing for a charge";
		otherwise if chc is 2:
			now progue-fight-move is 1;
			say ". He prepares to kick";
		otherwise:
			now progue-fight-move is 2;
			say ". He pulls back for a punch";
	otherwise:
		now progue-fight-preordained is false.

To say Pfightchoice:
	if progue-fight-preordained is true or a random chance of 1 in fightpacer succeeds: [Progue can sometimes predict your move.]
		if we are discussing fc_tackle, now progue-fight-move is 1;
		if we are discussing fc_punch, now progue-fight-move is 0;
		if we are discussing fc_kick, now progue-fight-move is 2;
	otherwise:
		let chc be a random number between 1 and 3;
		if chc is 1, now progue-fight-move is 0;
		if chc is 2, now progue-fight-move is 1;
		if chc is 3, now progue-fight-move is 2.

progue-fight-move is a number that varies. progue-fight-preordained is a truth state that varies.

To decide whether Progue is tackling:
	if progue-fight-move is 0, yes; no.

To decide whether Progue is kicking:
	if progue-fight-move is 1, yes; no.

To decide whether Progue is punching:
	if progue-fight-move is 2, yes; no.

fightscore is a number that varies. To say fightplayerscores: increase fightscore by 1. To say fightProguescores: decrease fightscore by 1.

fight-counter is a number that varies.

To decide what number is fightpacer: [Increase the odds of the fight being rigged as we go forward, so this doesn't become interminable.]
	if fight-counter < 3, decide on 4;
	if fight-counter < 6, decide on 3;
	if fight-counter < 9, decide on 2;
	decide on 1.

To process fight stuff:
	increase fight-counter by 1;
	if fightscore < -2:
		say "Progue knocks you to the edge. You stumble, arms wheeling, then collapse, clutching carefully at the narrow sharp ridge of lava rock. Progue towers over you, victorious.";
		force discuss fc_surrender;
	otherwise if fightscore > 2:
		say "You knock Progue back to the lip of the drop-off.";
		force discuss fc_player_wins;
	otherwise:
		let tempfightscore be fightscore;
		if tempfightscore < 0, now tempfightscore is tempfightscore * -1;
		now tempfightscore is 3 - tempfightscore;
		if tempfightscore is 3, say "You circle warily, neither one with an advantage.";
		else say "[if fightscore > 0]Progue is[otherwise]You are[end if] [if tempfightscore is 2]a few steps[else]just one step[end if] away from the [one of]drop-off, the knife-sharp edge of the lava cliff above the churning sea[or]edge[stopping].";
		if a random chance of 1 in 2 succeeds, force discuss the taunt-beat;
		if fightscore < -1 and fight-rock is not held:
			say "[line break]Near your feet, you spy a fist-sized [t]rock[x].";
			now tempfuse of fc_rock is 50;
			move fight-rock to location.

Instead of discussing fc_kick when fightscore > 2: process fight stuff. Instead of discussing fc_punch when fightscore > 2: process fight stuff. Instead of discussing fc_tackle when fightscore > 2: process fight stuff.

The fight overrules boredom rule is listed before the episodes overrule getting bored rule in the before rules. Before getting bored when last beat is fc_kick or last beat is fc_punch or last beat is fc_tackle or last beat is fc_rock or last beat is fc_fight (this is the fight overrules boredom rule):
	extend beats;
	say "Progue [one of]kicks you hard[or]punches you[or]tackles you[in random order], pushing you farther back[fightProguescores]." instead.

The taunt-beat is a beat that varies. The taunt-beat is fc_fighttaunt1.

The fight-rock is an undescribed thing. Understand "rock" as the fight-rock. The printed name is "heavy rock". Instead of taking the fight-rock, force discuss fc_rock. Instead of examining by name the fight-rock when fight-rock is held, force discuss fc_rock. The description is "It will do.". Instead of dropping the fight-rock: say "You let it fall from your hands. He's right; you can't do it."; now tempfuse of fc_rock is 0; move fight-rock to Rise. Instead of examining by name the fight-rock when fight-rock is not held: try taking the fight-rock.

fc_fightleave is a repeatable dogged beat with reaction "You struggle to escape, but Progue trips you, raining blows down and driving you farther back.[fightproguescores]". 

[Before attacking Progue when last beat is fc_punch or last beat is fc_kick or last beat is fc_tackle, say "You'll have to specify a tactic: [if fight-rock is held][t]rock[x], [end if][t]punch[x], [t]kick[x], or [t]tackle[x]." instead.]

fc_fighttaunt1 is an ephemeral beat in FC with reaction "'When you came I didn't know, know what to make of you,' he says, circling warily. 'How you fit in. What part you were meant to play.' He lashes out and you twist aside, warily.". fc_fighttaunt2 replaces fc_fighttaunt1.

fc_fighttaunt2 is an ephemeral beat in FC with reaction "'Then,' he says, breathing heavily, 'I wondered. Mayhaps, mayhaps you're not a character in my story. No. Mayhaps I'm a character in yours.' He weaves cautiously from side to side.". fc_fighttaunt3 replaces fc_fighttaunt2.

fc_fighttaunt3 is an ephemeral beat in FC with reaction "'And so sure you are it isn't so,' he shouts, dancing from foot to foot, 'never stopped to wonder, all and always assumed that you were the hero, the noble hero in the story of Lacuna. But you're not.' He wipes sweat from his brow. 'You aren't. It's me. I'm the hero. This is my story.'". fc_fighttaunt4 replaces fc_fighttaunt3.

fc_fighttaunt4 is an ephemeral beat in FC with reaction "'You're the agent of my change,' he shouts, ducking a swipe, 'the mystery stranger, the mentor, the summons to action. You made me realize what it is I must do. And I have. The savior of [if side_Progue_picks is 0]City[else]Forest[end if]; that's the protagonist. He's the hero. And it's me. It's me, it's me, it's me!'". fc_fighttaunt5 replaces fc_fighttaunt4.

fc_fighttaunt5 is an ephemeral beat in FC with reaction "'And you,' he shouts, flinching at a move from you, 'you're the villain, don't you see? And this is the moment, the scene, the climactic pinnacle where you challenge me. And I survive. I survive.'". fc_fighttaunt6 replaces fc_fighttaunt5.

fc_fighttaunt6 is an ephemeral repeatable beat in FC with reaction "'[one of]Let it go[or]Stop it[or]Leave me alone[at random]!' he [one of]shouts[or]snarls[or]spits[or]cries[at random], circling you, [one of]anger marring his face[or]desperate[at random]. '[one of]Stop trying to be the hero! Give me back my story![or]It's my story, not yours! Not yours![or]You've got to give the story back to me![at random]'".

Understand "rock" as fc_player_wins_violently when last beat is in FC. fc_player_wins_violently is a beat in FC with keyword name "rock" and reaction "Progue's eyes dart to the rock; he licks his lips as he circles you. Then lightning-quick he dives for your waist, but faster, faster you bring the rock down and it connects with his skull and he cries out, collapses, crumples to the ground and shudders and moans.". fc_player_wins_violently enqueues ending_2c1. 

fc_player_wins is a beat in FC with reaction "Progue stumbles on the edge, arms spinning wildly, eyes wide in terror, then slips and falls. Faster than lightning you grab his hand; the sea breeze almost slicks him away from you, but he grips with renewed strength and you dig your feet into the rock and at last you pull him back up to the ledge.".

After discussing fc_player_wins: 
	if shattered lover or bitter lover or slave, force discuss ending_2b2; [ suicide ]
	otherwise force discuss ending_2b1. [choose or get off the pot]


Understand "aside/relent" as fc_stepaside. fc_stepaside is a beat in FC with keyword name "[if last beat is fc_lastchance]aside[else]relent" and fuse 35 and reaction "[if affinity of Progue > 0][relentthanks][otherwise][relentnothanks][end if].[paragraph break][proguegoes]". fc_stepaside enqueues fc_Progue_returns. fc_stepaside cancels fc_tackle, fc_punch, fc_kick.

To say proguegoes: say "You watch as he [if chairlift has power]climbs into the chair of the ropeway and rides the coffin-shaped box up the swooping arcs to the mountain's summit, higher and higher above the swamp[else]crosses the swamp and begins the long climb up the crack to the distant summit[end if], then you turn your back and sit to wait, watching the ocean heave and glimmer in starlight.[paragraph break]Long minutes pass.".

To say relentthanks: say "[if fc_kick is spoken or fc_punch is spoken or fc_tackle is spoken]He pauses, breathing heavily, still crouched for a fight. [end if]'You relent?' he says warily, 'you'll let me pass, go up and set the seiver for [if side_progue_picks is 0]City[else]Forest[end if]?' You nod.[paragraph break]He stands to his full height, wiping sweat from his bow, and nods back. 'Thanks then,' he says. 'It's finally time for me to do what I must.' And he passes by you towards the stumps, slowly but assuredly".

To say relentnothanks: say "[if fc_kick is spoken or fc_punch is spoken or fc_tackle is spoken]He pauses, breathing heavily, still in fight posture. [end if]'You relent?' he says warily, 'you'll let me pass, go up and set the seiver for [if side_progue_picks is 0]City[else]Forest[end if]?' You nod.[paragraph break]He stands to his full height, wiping sweat from his brow, then brushes past you angrily, not meeting your eye. 'Now I will do what I must,' he mutters".

Understand "surrender" or "give up" or "you win" or "stop fighting" or "stop struggling" or "uncle" or "mercy" as fc_surrender. fc_surrender is a beat in FC with reaction "A long moment passes between you of deep and heavy breaths.[paragraph break]Then, he stands, and backs away.[paragraph break]'It's over,' he says simply. 'And I must go do what I couldn't do before.' Turning, he walks down towards the stumps and vanishes into the hot wet night, drunk by blackness and silence.". fc_surrender cancels fc_tackle, fc_punch, fc_kick.  [bug: should be this instead of relent.] 

After discussing fc_surrender:
	if mind machinery is off-stage:
		[if slave or bitter lover or shattered lover, force discuss ending_2b2;
		else]
		force discuss ending_2b1;
	else:
		force discuss fc_progue_returns.

To decide whether confro-lie: [If the player lied to Progue about which side was chosen]
	if fc_chose_forest is spoken and end-rebels, yes;
	if fc_chose_city is spoken and end-trees, yes;
	no.



side_Progue_picks is a number that varies. side_Progue_picks is -1.

To say Proguesidechoice:
	if fc_chose_forest is spoken:
		now side_Progue_picks is 0; [city]
	else if fc_chose_city is spoken:
		now side_Progue_picks is 1; [forest]
	else if father knows best or disciplinarian:
		now side_Progue_picks is 1; [trees]
	else if slave or bitter lover:
		now side_Progue_picks is 0; [rebels]
	else if a random chance of 50 in 100 succeeds:
		now side_Progue_picks is 1; [trees]
	else:
		now side_Progue_picks is 0; [rebels]
	say "[if side_Progue_picks is 0]City[else]Forest[end if].' He stops for a moment, then takes a deep breath, confidence suddenly flooding him. 'I'm sure of it".

Understand "neither" as fc_ask_why_not when last beat is in FC. fc_ask_why_not is an insistent repeatable beat in FC with keyword name "[if last beat is fc_ask_which_side]neither[else]no" and reaction "He looks surprised. 'What's this?' he says. 'But that's not an answer. Not a choice. What do you mean by this? You need more [fc_moretime], or something thatwise? Or you somehow, somewhy [fc_reject_choice] the act of choosing? Or... or does this mean you mean for me to [fc_breakdown] instead?'". fc_ask_why_not summons fc_moretime, fc_reject_choice, fc_breakdown. fc_ask_why_not suggests fc_moretime.

fc_have_to_choose is an ephemeral beat with reaction "His brow creases and he steps forward, gripping your arm tightly. 'Can't wait,' he says, 'it's been too, too long already. No more tremblings and second-guesses and puttings-off. It's time, tonight. The choice must and must and must be made. Now.'". fc_have_to_choose enqueues fc_ask_which_side.

Understand "time/more" as fc_moretime when last beat is in FC. fc_moretime is a beat in FC with keyword name "time" and reaction "'More time?' he says, [archetype message]. 'More time? Twenty years have been and gone since they asked, twenty years the decision's been twisting inside me, dissolving through bone and brain and bile till I forgot it even existed. But it was always there, simmering, waiting. No. There is no more time. The choice must be made. Now and here and always.'". fc_moretime enqueues fc_ask_which_side. fc_ask_which_side replaces fc_moretime.

Understand "reject" as fc_reject_choice when last beat is in FC. fc_reject_choice is a beat in FC with keyword name "reject" and reaction "'Can't do that,' he shouts, angry, 'no, can't escape this. You think somehow we're not the ones to choose?' he says. 'Some moral high ground too ragged to climb? Sausages. Don't you see, we're the only ones... there's no one else... it's why we're here, don't you see? Our purpose, destiny, calling. They Called us here, to choose, to decide, to do what's right. And we must and must and must.'". fc_reject_choice enqueues fc_yourewrong. After discussing fc_reject_choice: now end-abstain-trigger is 1; continue the action.

Understand "choose" as fc_breakdown when last beat is in FC. fc_breakdown is a beat in FC with keyword name "choose" and reaction "He staggers back, as if you'd physically struck him, gasping with his eyes and trembling in his chest.[paragraph break]Then, he starts to laugh.[paragraph break]'No,' he says, weak, 'no, no, no. Not what's supposed to happen. You're the one, you're the one who's meant, who's destined to...' The laughter curdles into desperate, sobbing gasps. 'I can't,' he whispers, 'you can't make me. I couldn't, I could never... and now, and now, and now...'[paragraph break]He looks around him, spinning wildly, frantically, as if searching for someplace to run and hide.". fc_breakdown enqueues fc_breakdown2.

Before discussing fc_breakdown: if enemy or shattered lover, now fc_breakdown enqueues fc_fight; continue the action.

fc_breakdown2 is a beat in FC with reaction "But there is nowhere.[paragraph break]He takes a few steps towards you, then collapses to his knees, reaching out a hand, face contorting in pain. You grasp his hand and some electric edge slashes through you and you also collapse, sprawled next to him on the unyielding ripples of the hardened lava, only his hand still real in your mind. You feel the whorls of his fingerprints pressing into yours; the trembling strength of muscles straining and twisting between bone and sinew; the energy in his fingertips and wrists straining to be released from a cage which has imprisoned them for half a lifetime.[paragraph break]For long moments he gasps as if winded, trembling, as strange power or perhaps only empathy flows between your grasped, taut hands.[paragraph break]Then, finally, his breathing slows, and so does yours. You struggle to your feet, and pull him up to his. Your hands release with what seems like a spark, of something not quite electric.". fc_breakdown2 suggests fc_progue_departs.

fc_Progue_departs is a beat in FC with reaction "[paragraph break]'Something Further,' he breathes, 'all right. And all right. I'll go. The choice is mine and mine to make, and so I'll do it. I'll do it. I will.'[paragraph break][proguegoes]". fc_Progue_departs enqueues fc_Progue_returns. After discussing fc_Progue_departs: now end-abstain-trigger is 1; continue the action.



[ Progue makes the choice. ]

fc_Progue_returns is a beat in FC with reaction "[section break]By the time he returns, you've become so lost in your own thoughts that you don't notice him, until he steps onto the ridge just behind you. You turn, expectant, and wait.".

After discussing fc_Progue_returns:
	if confro-lie:
		force discuss ending_2a1;
	else if friend or lover:
		force discuss ending_1b;
	else if father knows best or disciplinarian:
		force discuss ending_1c;
	else if slave or bitter lover:
		force discuss ending_1d;
	else:
		force discuss ending_1a;
	continue the action.

fc_lost_choice is a beat in FC with reaction "He closes his eyes, breathing ragged. 'Too long,' he mutters, 'I waited too long, and now my chance has slipped away, and someone else will make my choices for me.'".


[Ending 1a: Progue is forced to choose and decides to destroy the machinery.]

ending_1a is a terminal beat in FC with reaction "'It's done,' he whispers, 'at last, it's done. What I should have done all and all those years ago. What I should have done from the start.'[paragraph break]He looks down at his hands, and you see they are trembling, marred with scratches and bruises, still clenched in claws.[paragraph break]'I destroyed it,' he whispers, 'the seiver, the mindlink, the pipes, the chair. Gone, smashed. Undone. Should never have built them in the first place. Should never have let them do to me what they did, ask of me what they asked. We came here to heal, not to be an arbitrer of civilizations. No. Now they must solve their own problems, work out their own differences. Just as if I'd never come here. Just as it should be.'[paragraph break]He turns to walk away, then pauses, looking down at the black lava flow. 'They are alone now in the universe,' he says, 'with no one to help them. Like us all.' And he turns and walks down to the darkened beach, alone.".

[Ending 1b: Progue is forced to choose and decides to remove the encryption; let the best side win.]

ending_1b is a beat in FC with reaction "He thinks for a long, long moment, before finally looking up. 'So many years I agonized over the choice. Which side was better or worse, good or bad, right. Wrong. But in the end I never saw the real choice. Whether or not to choose at all.'[paragraph break]He looks up into the sky, tears welling in his eyes, and sighs, long and deep. '[if fc_both is spoken or fc_ask_why_not is spoken]You were right,' he says finally, calmly. '[end if]There is no right or wrong until we choose which one is which. Who are we to choose between worlds, between peoples? No. We are special, you and I, but this is not our calling. We cannot decide the fate of those people. They must make their own choices, solve their own problems.'[paragraph break]'I reject the choice,' he says, conviction trembling his tones as he looks back down to meet your gaze. 'I set the encryption key to something neither of them know. We'll go and look at the stars, you and I, and they'll both get meaningless noise. Whichever side has the courage, the intelligence, the luck, to decode it first...' He smiles. 'Lacuna is theirs.'[paragraph break]He breathes deeply. 'It's the right choice. Thank you. Thank you for helping me find it.'". ending_1b enqueues fc_comewith.

[Ending 1c: Progue is forced to choose and picks Forest.]

ending_1c is a beat in FC with reaction "'If I were a poet,' he says simply, staring into the stars, 'I'd give this galaxy to City. There is romance in their struggle, something stirring in their beautiful dreams of what might be.'[paragraph break]He looks down at you, sighing. 'But they cannot live on dreams,' he says. 'They would destroy this world in their mad rush to progress, if they did not destroy themselves in getting here. No. In the end, dreams are not enough.'[paragraph break]'I chose Forest,' he says, trembling, in a sudden catharsis of words. 'I choose Forest, Forest. Oh, after so long. But it's the right choice. I know that now.' He breathes, deeply. 'And I cry for the dream of City. But Forest has earned the galaxy. They will bring peace to it, and beauty, and order.'[paragraph break]He nods, and a smiles, sudden, unexpected, a smile to break hearts. 'After all this time,' he whispers, 'they will bring order, at last.'". ending_1c enqueues fc_comewith.

[Ending 1d: Progue is forced to choose and picks City.]

ending_1d is a beat in FC with reaction "'The windsigh are wise,' he says, staring down at his fingers as if lost in the eddies and whorls of their prints. 'Oh, yes. And their forest is beautiful. They deserve to be the custodians of this galaxy, by rights. Mayhaps they should.'[paragraph break]He looks up, tears in his eyes. 'But their children are lost,' he says, 'and frightened. Alone. And they'll never grow up unless given the chance.'[paragraph break]'I chose City,' he says, trembling, in a sudden catharsis of words. 'I choose City, City, City. Oh, after so long. But it's the right choice. I know that now.' He takes a deep breath. 'The windsigh will be angry, but... they have to let their children go.'[paragraph break]He nods, looking up to the stars and smiling, sudden, unexpected, a smile to break hearts. 'After all this time,' he whispers,' they have to let them go.'". ending_1d enqueues fc_comewith.

[Ending 2a1: The player lied to Progue, forcing him to fight for the side you'd already picked; he comes back humbled.]

ending_2a1 is a beat in FC with reaction "'He looks down at the black lava flow, hesitates, a corner of his mouth rising slowly. 'And think and imagine my surprise,' he says, 'when after all my passionate arguments against [if end-trees]City[else]Forest[end if], all my pleadings to change your mind to [if end-trees]Forest[else]City[end if]-- when I reach the mountaintop and discover it was [if end-trees]Forest[else]City[end if] you chose after all.'[paragraph break]He looks up at you, seriously. 'You made me fight for what I knew to be right,' he says, 'rather than just tell me your choice. Thank you. It was the only way you could have convinced me of what I already believed, in my heart.'". ending_2a1 enqueues fc_playeralonestars.

[Ending 2b1: Progue loses the fight (or wins and doesn't know what he's fighting for) and realizes that by failing to make the choice for so long he has lost the opportunity to make it. Choose or get off the pot.]

ending_2b1 is a beat in FC with reaction "He lies, breathing hard, eyes shut, for a long time.[paragraph break]'At last and last, I see,' he finally says, quiet and still. 'I waited too long and lost the choice, the chance. Slipped through my fingers while for years I'd clenched them tight, hoarding... and now the choice is yours. You've caught it, and my hands... my hands are open, and empty.'[paragraph break]He sighs heavily, slow, sad. 'Thank you,' he says at last. 'Now I see. Now I know. Mayhaps now... now I can find what I've truly lost, these long and maddening years.'". ending_2b1 enqueues fc_playeralonestars.

[Ending 2b2: Progue loses the fight (or wins and doesn't know what he's fighting for) but has been emotionally destabalized enough that not being able to resolve this pushes him over the edge and he kills himself.]

ending_2b2 is a beat in FC with reaction "His face contorts in an impossible paroxysm of rage and fear. '[if fc_chose_forest is unspoken and fc_chose_city is unspoken]No one can choose! The choice will never be made![else]You can't take this from me! It's my choice, mine, mine![end if]' he screams, hoarse, flinging himself away from you and teetering on edge of the rise. 'I won't choose wrong again, never, never, never...' And before you can stop him he falls, twisting, spiraling akimbo through the salty breeze until his body smashes on the rocks below[Proguedies].[paragraph break]A wave washes in, slow, great, and when the surging foam retreats, he is gone.". ending_2b2 enqueues fc_playeralonestars.

[Ending 2c1: The player wins the fight violently by killing Progue with a rock. Progue realizes he is not the hero of the story and you are destined to get your way, and dies. ]

ending_2c1 is a beat in FC with reaction "Staggering, he clutches his head. Blood seeps between his fingers. He collapses to the ground, whispering something other and over again to himself, and as you move to help him you hear it is 'Over now, over now, over now...'[paragraph break]You lay him down on the ground and know he will not survive.[paragraph break]Clutching your hand weakly, eyes blurring, he smiles. 'It's over,' he breathes, 'at the last of lasts, it's over. The choice is made. You made it. It's you. You're the hero. Not me. No. It was never me. Something Further, it was never me.'[paragraph break]He struggles to breathe now, a red pool of blood mixed with seawater spreading beneath him.[paragraph break]'Go,' he says at last, 'climb the tree, see the stars. Finish the story. Mayhaps...' He coughs, blinks growing longer and longer. 'Mayhaps now at last I'll find my daughters, at last and last and last...' His eyes drift closed, and he grows still.[paragraph break]'How many worlds,' he mutters, and falls silent[Proguedies].". ending_2c1 enqueues fc_playeralonestars. After discussing ending_2c1: remove fight-rock from play; now tempfuse of fc_player_wins_violently is 0; continue the action.

To say Proguedies:
	move proguecorpse to location;
	if ending_2b2 is spoken, move proguecorpse to Your Bedroom; [onstage but inaccessible]
	post-conversation processing;
	remove Progue from play.

proguecorpse is a described prop. Understand "progue/old/man/progues/progue's/corpse/body" as proguecorpse. The printed name is "Progue's body". The description is "He's gone." The initial appearance is "Progue lies here, dead." Instead of taking proguecorpse, say "You'll give him a proper burial later. Now, there is only one thing left for you to do.". Check waking proguecorpse: say "He's dead." instead.

Before discussing fc_playeralonestars:
	if mind machinery is off-stage:
		force discuss fc_destroyed instead;
	else if Progue is dead:
		force discuss fc_deathaftermath instead;
	else if fc_chose_forest is unspoken and fc_chose_city is unspoken:
		force discuss fc_choosenow instead.

fc_deathaftermath is a terminal beat in FC with reaction 	"Sudden weariness sinks over you. Now the choice truly does fall to you.[paragraph break]When you're ready-- all that remains is to look at the stars. Or, if you choose not to-- sleep.". After discussing fc_deathaftermath: post-conversation processing; continue the action.

fc_choosenow is an insistent beat in FC with reaction "'Well,' he says, 'after all that, are you going to make a choice now?'". fc_choosenow summons fc_choosenowcity, fc_choosenowforest, fc_choosenowno. fc_choosenow cancels fc_punch, fc_tackle, fc_kick, fc_rock. The no-beat of fc_choosenow is fc_choosenowno. After discussing fc_choosenow: if Progue is dead, post-conversation processing; continue the action. [Note that if Progue is dead conversation will end since there is no one to talk to.]

Instead of sleeping when fc_choosenow is spoken or Progue is dead: force discuss fc_endsleep.

Understand "city" as fc_choosenowcity when last beat is in FC. fc_choosenowcity is a beat in FC with keyword name "City" and reaction "[finalchoice]. They'll use this place well, I suppose. One day cities will rise from the marsh; art galleries will thrive in the caldera; that silly old cabin on the beach some historic landmark, the paintings preserved forever. They'll fill this world with noise and laughter and people, free, triumphant, together. And Lacuna will finally belong to someone.'". fc_choosenowcity enqueues fc_playeralonestars.

Understand "forest" as fc_choosenowforest when last beat is in FC. fc_choosenowforest is a beat in FC with keyword name "Forest" and reaction "[finalchoice]. They'll shephard this place with care, I suppose. Turn it into another beautiful grove in their endless forest. My cabin, the ropeway, the pipes and sculptures and paintings, will crumble slow and true to fodder for their roots. And their song will ring round this island, this world. Forever.'". fc_choosenowforest enqueues fc_playeralonestars.

To say finalchoice: say "'He sighs. 'There, you see,' he says. 'In the end it wasn't so hard as all that".

fc_choosenowno is a beat in FC with keyword name "no" and reaction "'Well,' he says, 'then that's that. Mayhaps for the best. They'll wonder, you know, what keeps happening to their strange emissaries, appearing and disappearing with mechanisms and motives they can't begin to comprehend. Ah well-oh. That's our way, isn't it? That's our way.'". fc_choosenowno enqueues fc_endsleep.

fc_destroyed is a beat in FC with reaction "Nothing is left to be done.". fc_destroyed enqueues fc_endsleep.

fc_endsleep is a terminal beat in FC with reaction "And suddenly you feel tired, an ache of exhaustion, and you sink to your kness and can't remember a time when you slept real, unwhispered sleep, a time when your dreams were only your own. As your cheek touches the still-warm [surface-material], as the night sky shows faint hints of dawn to the east, sleep finally finds you, before your eyes have finished closing. You sink into it or let it sink into you, deep and complete.". After discussing fc_endsleep: now end-abstain-trigger is 1; now ep-trigger is true; continue the action.[aar]

fc_playeralonestars is a terminal beat in FC with reaction "'I need rest,' he says slowly, 'so much rest. But. But I'll watch while you go perform the final act. Up and up, to the tallest tree, to see the stars, send the map. Finish the story.' He sinks to the ground. 'Go now. Go. They've waited long enough.'". After discussing fc_playeralonestars: now the psyche of Progue is resolved; post-conversation processing; continue the action.

fc_comewith is an insistent beat in FC with reaction "'Only one thing left,' he adds, 'climb the highest tree and look. See the stars. Send the map. Well. Will you come with me?'". The yes-beat of fc_comewith is fc_togetherstars. The no-beat of fc_comewith is fc_proguealonestars. fc_comewith suggests fc_proguealonestars. fc_comewith summons fc_togetherstars, fc_proguealonestars.

fc_togetherstars is a terminal beat in FC with keyword name "yes" and reaction "'Good. We'll do it together,' he says. 'Lead the way.'". After discussing fc_togetherstars: now the psyche of Progue is resolved; continue the action.

Every turn when fc_togetherstars is spoken and Progue is not enclosed by location and location is regionally in Lacuna and Epilogue is not happening and Epilogue has not happened: move Progue to location; say "Progue follows you, wordlessly."; now the activity counter of Progue is 1; now Progue is fulfilling. 

Instead of greeting Progue when fc_togetherstars is spoken: say "There is nothing left to say.". 

Instead of going to Stumps when fc_togetherstars is spoken: prevent-endgame-complications. Instead of going to Jumble when fc_togetherstars is spoken: prevent-endgame-complications. Instead of going to Rockslide when fc_togetherstars is spoken: prevent-endgame-complications. Instead of going to Water Cave when fc_togetherstars is spoken: prevent-endgame-complications. To prevent-endgame-complications: say "Progue gently stops you. 'The time for choices is over,' he says. 'All that is left is to carry them out.'". First Instead of landmark-going when fc_togetherstars is spoken: say "For now, you'd best take things one step at a time.".

fc_proguealonestars is a terminal beat in FC with keyword name "no" and reaction "'I began this myself; I suppose I should finish it myself,' he says. 'And so I will.' And he turns and walks down the rise, leaving you alone.[paragraph break]You watch as he climbs the vine to the top of the saddle, then crane your neck back as he climbs to the top of the windsigh clinging to its summit.[paragraph break]And as he stands there, nearly lost in the blackness, silhouetted against the stars and a shimmering arm of the galaxy, you somehow know or sense something, profound and strong.[paragraph break]The Call, at last, is answered.".






To decide whether progue is dead: if proguecorpse is on-stage, decide yes; decide no. To decide whether Progue is not dead: if progue is dead, decide no; decide yes.

Endgame is a scene. Endgame begins when the episodic status of Final Confrontation is completed.

Check sleeping when Endgame is happening: say "You're tired, but you can't sleep yet. Not until it's done." instead.

Before going to Saddle during Endgame: move distant-Progue to Saddle.

Instead of examining stars when Endgame is happening and end-neither: say "You look and know that none but you sees through your eyes.". Instead of examining stars when the episodic status of Final Confrontation is not unaired and ( end-choice or end-both ) and location is not Atop: say "Not here. Too much of your view is obstructed, and the trees are too far away. Make for the top of the highest tree.".

Instead of examining the stars when Endgame is happening:
	say "Trembling in a sudden chill breeze, you raise your eyes to the stars and drink them in, let the ancient photons travel through your nerves deep into your mind. Behind the thousands of stars you can see, some wayfarish part of you feels the millions you can't. You almost imagine you can feel some tingle on the edge of perception, as the patterns and whorls of Lacuna's night sky seep from your mind to the branches around you, from the branches down into the trunk and through the link to [if end-both]the scientists, some Thinkers, some Makers on two distant worlds[otherwise if end-rebels]the band of desperate, hopeful scientists on a distant world[otherwise]the great, ancient minds on a distant world[end if] who await it.[paragraph break]You look for a long, long time.";
	now ep-trigger is true.





Lacuna-Progue-Confrontation ends here.
