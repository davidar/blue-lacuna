Lacuna-Epilogue by Blue Lacuna begins here.

Use authorial modesty.

[The Epilogue is a complex sequence which attempts to provide emotional closure based on the path the player has taken through the game. Though the complexities of the player's choices will be presented as much as possible, there are basically one of three endings, which happen in the following priority: A) the player likes Rume, B) the player likes Progue, C) the player dislikes both.

There are several possible states we might be in arriving at this sequence, which colors its presentation.

1. Progue is either 1) dead (killed by the player or suicide), 2) healed and happy, or 3) healed and sad. We cannot get ending B if 1.1 is true. (if progue is dead, if progue is healed and happy, if progue is healed and sad.)
2. Irregardless of this, he will be in one of the twelve archetypes. (if neurotic dad, if father knows best, if bitter dad, if disciplinarian, if lover, if twitterpated, if friend, if toady, if shattered lover, if bitter lover, if enemy, if slave)
3. The player chose to put the fate of Lacuna in the hands of the trees, the rebels, Progue, or no one (end-choice [end-trees or end-rebels], end-both, end-abstain, end-neither). The fate of Lacuna actually ended up in the hands of 1) the trees, 2) the rebels, or 3) up for grabs (either no password or the equipment is destroyed). (won-trees, won-rebels, won-neither.)

In all 3 endings, we begin with a dream mirroring the prologue. The player is again asked to choose between art and love, with dialogue differing based on their choice way back at the beginning of the game, and the various factors above. (For instance if Ending C has been chosen, the player is thwarted in their attempt to choose love.)

The dream resolves into a conversation-- with who and about what varies as detailed below, but the first part is about the player's choice, how it compares to their choice at the beginning of the game, and how it relates to their #3 decision.

If ENDING A, the conversation is with Rume about prodding the player to realize that somenium might allow them to return to Rume. Since it makes connections regardless of distance, and Rume's eyes are the exact shade of the crystal... maybe there's a chance.

If ENDING B, the conversation is with a grown Lethe, and about the loopholes in wayfaring, and designed to make the player realize Progue might still have a chance to be reunited with his daughters.

If ENDING C, the conversation is with Doctor Quick, and about how a wayfarer is eternally alone (like the Rebels). Similar themes to the end of the Preludes. To make art is to turn away from life. Is that what you really want?

The player awakens:

If ENDING A, they are in the studio on the beach. Progue (if alive and friendly) is bringing the last of the paints; otherwise they are already there. He gives the player a brush and asks you to choose a color. You choose; if blue, you begin a portrait of Rume; otherwise, you prepare to move on with your life.

If ENDING B, you are on the Rise, and Progue has just started to chisel at his statue. You fill him in on your dream; he carves a beautiful sculpture of Phoebe and Lethe, and vanishes.

If ENDING C, you are in the rain forest. You are hunting boar to make your canvas to leave. You kill one, and reflect on the fate of the island and on solitude as you prepare to depart.


]

To decide whether won-trees:
	if mind machinery is off-stage, no;
	if fc_choosenowno is spoken, no;
	if ending_1c is spoken, yes;
	if ending_1a is spoken or ending_1b is spoken, no;
	if end-trees, yes;
	no.

To decide whether won-rebels:
	if mind machinery is off-stage, no;
	if fc_choosenowno is spoken, no;
	if ending_1d is spoken, yes;
	if ending_1a is spoken or ending_1b is spoken, no;
	if end-rebels, yes;
	no.

To decide whether won-neither:
	if won-trees, no;
	if won-rebels, no;
	yes.
	

Part - Epilogue
 
Epilogue is a scene.

To decide whether ep_likeRume: if Rume-tracker >= 10, decide yes; decide no.

To decide whether ep_likeProgue: if affinity of Progue > 0 and Progue is not dead, decide yes; decide no.

Instead of sleeping when current chapter is 11: say "But you've just woken up.".

[Completing-Progue's-Character-Arc requires done-with-confrontation.]

First before getting bored when Completing-Progue's-Character-Arc is solved: do nothing instead.

Epilogue begins when ep-trigger is true. ep-trigger is a truth state that varies.

When Epilogue begins:       
	now Progue is idle;
	post-conversation processing;
	now the animus of Progue is resting;
[	now done-with-confrontation is met;]
	move the player to Epilogue-Dream, without printing a room description;
	say "[section break][description of Epilogue-Dream][line break]".
 
Chapter - Choice Redux

Epilogue-Dream is a room in Dreamlands with printed name "". The description is "[if ep-concept-art is on-stage]Waves.[paragraph break]Dream seas surge around you, slow, silent, and for a moment it's as if everything you've been through, all you've seen and done, has not yet happened, and again you feel you must make a choice, between [t]art[x] and [t]love[x][else]You float in infinite void[end if].".

ep-concept-art is an abstraction in Epilogue-Dream. Understand "art" as ep-concept-art when location is Epilogue-Dream. ep-concept-love is an abstraction in Epilogue-Dream. Understand "love" as ep-concept-love when location is Epilogue-Dream. 

Instead of doing anything other than examining or examining by name or discussing or exhausting or getting bored when location is Epilogue-Dream: say "[if ep2-door is enclosed by location]All you can seem to focus on is the [o]door[x].[else if an attentive other person is enclosed by location]You can only seem to focus on [a random attentive other person enclosed by the location].[else]There is only the choice: [t]art[x] or [t]love[x]?[end if]".[]

The description of ep-concept-art is "[if we chose art]Yes, and it feels as right as the first time. You are an artist, and nothing can change that.[otherwise if we chose both]{You have chosen. Whereas once you chose both, now you choose art.}[otherwise]It feels right now, where before it did not.[end if]". After examining ep-concept-art: now second-choice-art is true; prep-ep-convo; continue the action.

The description of ep-concept-love is "[if we chose love]Yes, and it feels as right as the first time. You cannot be human without loving, and you cannot be an artist without being human.[otherwise if we chose both]{You have chosen. Whereas once you chose both, now you choose love.}[otherwise]It feels right now, where before it did not.[end if]". After examining ep-concept-love: now second-choice-love is true; prep-ep-convo; continue the action.

second-choice-art is a truth state that varies. second-choice-art is false. second-choice-love is a truth state that varies. second-choice-love is false.

[both]

To prep-ep-convo:
	remove ep-concept-love from play;
	remove ep-concept-art from play;
	if ep_likeRume:
		now tempfuse of eplr_intro is 5;
		if Rume is male, now ep-rume is male;
		else now ep-rume is female;
		move ep-rume to location;
		now ep-rume is attentive;
	otherwise if ep_likeProgue and Progue is not dead:
		now tempfuse of eplp_intro is 5;
		move ep-lethe to location;
		now ep-lethe is attentive;
	otherwise:
		move ep-dr-quick to location;
		now tempfuse of epln_intro is 5;
		now ep-dr-quick is attentive;
	if ( we chose love and second-choice-art is true ) or ( we chose art and second-choice-love is true ) :
		now eplr_intro suggests eplr_diffchoice;
		now eplp_intro suggests eplp_diffchoice;
		now epln_intro2 enqueues epln_diffchoice;
	if end-neither:
		if second-choice-art is true, now eplr_junction enqueues eplr_neitherart;
		otherwise now eplr_junction enqueues eplr_neitherlove;
		now epln_junction enqueues epln_destroy;
	else if end-abstain:
		now eplr_junction enqueues eplr_abstain;
		now epln_junction enqueues epln_abstain;
	else if end-rebels:[aar]
		now eplr_junction enqueues eplr_rebels;
		now epln_junction enqueues epln_city.




Chapter - Epilogue A (Rume)

Section - Dream

ep-rume is a person with printed name "Rume". Understand "Rume" as ep-rume. The description is "Rume looks achingly familiar.".

EPLR is a thread [Epilogue - Like Rume] with escape clause eplr_escape. Instead of exhausting when last beat is in EPLR: force discuss eplr_escape. Instead of getting bored when last beat is in EPLR: force discuss eplr_escape. eplr_escape is a repeatable dogged ephemeral beat in EPLR with reaction "'Well,' [heshe] says, 'but there is more to say.'". eplr_escape enqueues eplr_intro.

eplr_intro is an exciting beat in EPLR with reaction "The moment you choose the dream-sea fades away, and you are left alone in a tenuous blackness-- no, not alone. A [if Rume is female]wo[end if]man is here, waiting for you. [o]Rume[x].". eplr_intro suggests eplr_samechoice. eplr_junction replaces eplr_intro.

eplr_diffchoice is a beat in EPLR with reaction "[CHeShe] smiles sadly. 'And now you choose [if second-choice-love is true]love,' [heshe] says, 'where before you chose your art[otherwise]art,' [heshe] says, 'where before you chose your love[end if]. Do you suppose that Lacuna has [eplr_changed] you? Or is it that the time for one has gone and the other [eplr_arrived]?' [CHeShe] pauses. 'Or has enough time [eplr_passed] that you no longer remember why you first chose the way you did, and there is nothing to be read into it at all?'".

eplr_samechoice is a beat in EPLR with reaction "[CHeShe] smiles sadly. 'And so a second time have you chosen [if second-choice-art is true]art[otherwise]love[end if],' [heshe] says, '[if second-choice-art is true]art over love[otherwise]love over art[end if]. Are your inner [eplr_convictions] strong enough that the choice is never a difficult one? Does it merely seem as [eplr_right] now as it did then?' [CHeShe] pauses. 'Or has enough time [eplr_passed] that you no longer remember why you first chose the way you did, and there is nothing to be read into it at all?'". eplr_samechoice suggests eplr_passed.

Understand "conviction/convictions" as eplr_convictions when last beat is in EPLR. eplr_convictions is a beat in EPLR with keyword name "convictions" and reaction "Rume nods as you respond, as if anticipating your answer. 'I think perhaps that is what drew me to you,' [heshe] says, 'the conviction, [if second-choice-love is true]the intensity of your love[otherwise]the dedication to your art[end if]. [if second-choice-love is true and The-Path-Of-Love has not happened]Perhaps that was why it hurt me so when you left[otherwise if second-choice-love is true]Perhaps that was why I knew I could convince you to stay, overcome the power of the Call[otherwise]Even though I knew from the moment we met that one day I would lose you to it[end if].'". eplr_convictions enqueues eplr_junction.

Understand "correct" as eplr_right when last beat is in EPLR. eplr_right is a beat in EPLR with keyword name "correct" and reaction "Rume breathes deeply of the non-air of the void, considering. 'You are alive for the moment,' [heshe] finally agrees, 'and take each decision as it comes to you. I think perhaps that is what drew me to you-- your spontaneity, your vivacity in whatever moment, whatever world you are in. [if The-Path-Of-Love has happened]Perhaps that is why I was so terrified that night in the Tumble, convinced I could never convince you to live for longer than the moment. To stay[otherwise]Perhaps that is why I knew I would lose you, that night in the Tumble, that nothing I could have said would have made you stay[end if].". eplr_right enqueues eplr_junction.

Understand "changed" as eplr_changed when last beat is in EPLR. eplr_changed is a beat in EPLR with keyword name "changed" and reaction "Rume brushes wrinkles from [hisher] robe, reflecting. 'You once told me it is impossible to be unchanged by The Call. It seems you were right.'". eplr_changed enqueues eplr_junction.

Understand "arrived" as eplr_arrived when last beat is in EPLR. eplr_arrived is a beat in EPLR with keyword name "arrived" and reaction "Rume rubs a hand absently against [hisher] shoulder, as if cold in the featureless void, and reflects. 'Some philosophers say that to live we must turn from art. Others say to make art we must turn from life.' Rume takes a breath. 'They are both wrong, my love.'". eplr_arrived enqueues eplr_junction.

Understand "passed" as eplr_passed when last beat is in EPLR. eplr_passed is a beat in EPLR with keyword name "passed" and reaction "A smile tickles the corner of Rume's mouth as [heshe] gazes at you across the void. 'There is a bedtime story for mountain children,' [heshe] says, 'about a pilgrim and the wisest man in the world. To every question asked about why the world was the way it was, the wise man would only reply, [']Because it is.['] Well. Perhaps the why is not important. Now you choose [if second-choice-art is true]art[otherwise]love[end if], and it is.'". eplr_passed enqueues eplr_junction.

eplr_junction is a beat. eplr_junction enqueues eplr_trees. eplr_somenium replaces eplr_junction.

eplr_trees is a beat in EPLR with reaction "'And tell me, wayfarer,' Rume continues. 'Was it [if second-choice-love is true][eplr_loveartcause] for the beautiful word of the Windsigh[otherwise]the living [eplr_loveartcause] that was the Heart[end if] that caused you to choose the windsigh's empire over the chaos and uncertainty of City? Were you swayed by the [eplr_logic] of the Philosopher's argument, the truth of that merged society? Was it just gut [eplr_instinct] that led you to decide? Or something [eplr_else] I haven't guessed at?'". eplr_trees suggests eplr_else.

eplr_rebels is a beat in EPLR with reaction "'And tell me, wayfarer,' Rume continues. 'Was it [if second-choice-love is true]your [eplr_loveartcause] for the brave spirit of City and its stumbling, struggling ideals[otherwise]that brave, stumbling, idealistic [eplr_loveartcause] by the people of City[end if] that caused you to choose them over the scripted order and stage-managed peace of the Forest? Were you convinced by the [eplr_logic] of Leader Tall's argument, the evidence of his streets? Was it simply gut [eplr_instinct] that led you to decide? Or something [eplr_else] I haven't guessed at?'". eplr_rebels suggests eplr_else.

eplr_abstain is a beat in EPLR with reaction "'And tell me, wayfarer,' Rume continues. 'Was it [if second-choice-love is true]your [eplr_lovecauseProgue] for [else]out of [eplr_lovecauseProgue] for [end if]Progue that led you to force the decision of which side to choose onto him? Did you feel that no choice should be made without proper time for [eplr_reflection]? Or did you [eplr_humility] the choice outright, out of humility or fear of choosing poorly?'". [aar]

Understand "thought" as eplr_reflection when last beat is in EPLR. eplr_reflection is a beat in EPLR with keyword name "thought" and reaction "'But there is never enough time,' Rume says sadly, 'never enough information to make a decision. In the end even the most well-researched decision comes down to a moment of choice.'". eplr_reflection enqueues eplr_somenium.

eplr_neitherlove is a beat in EPLR with reaction "'And tell me, wayfarer,' Rume continues. 'Did love drive you to destroy the seiver on the mountaintop, and if so, love for who?'". eplr_neitherlove summons eplr_lovecauseProgue, eplr_lovecauseRume, eplr_lovecauseTrees, eplr_lovecauseRebels, eplr_else. eplr_neitherlove cancels eplr_changed, eplr_arrived. eplr_neitherlove suggests eplr_else.

eplr_neitherart is a beat in EPLR with reaction "'And tell me, wayfarer,' Rume continues. 'Was it for some artistic point, some dramatic ideal that you destroyed the seiver on the mountaintop? Can you tell me what it was?'". eplr_neitherart summons eplr_justice, eplr_closure, eplr_humility. eplr_neitherart cancels eplr_changed, eplr_arrived. eplr_neitherart suggests eplr_else.

Understand "love/art" as eplr_loveartcause when last beat is in EPLR. eplr_loveartcause is a beat in EPLR with keyword name "[if second-choice-love is true]love[otherwise]art" and reaction "[CHeShe] nods. '[if eplr_diffchoice is spoken]You truly have changed, then,' [heshe] says. 'I do not think you would have reached that decision that night in the Lodge. You are not the same. Nothing is immobile[otherwise]Then you have remained unchanged,' [heshe] says. 'Across worlds and through lives, your heart alone remains constant. Perhaps each wayfarer is the center of a universe, the rock around which all else and all others whirl in chaos[end if].'". eplr_loveartcause enqueues eplr_somenium.

Understand "logic" as eplr_logic when last beat is in EPLR. eplr_logic is a beat in EPLR with keyword name "logic" and reaction "Rume nods. 'You are a complex [if player is female]wo[end if]man,' [heshe] says, 'there is not a single passion that drives you. In my village as a [if Rume is male]boy[otherwise]girl[end if] we had a word for those whose heart and mind were not at war, but united. We called them chieftains.'". eplr_logic enqueues eplr_somenium.

Understand "instinct" as eplr_instinct when last beat is in EPLR. eplr_instinct is a beat in EPLR with keyword name "instinct" and reaction "Rume nods. 'And I think it is the same choice I would have made,' [heshe] says. '[if end-rebels]Perhaps the Forest would be a better fate for life on Lacuna, but perhaps not a better fate for men and women. They are something greater than mere men, perhaps, but that simple fact means they are no longer men. Yes, I would have chosen City, too, my love. With all its flaws and faults, the people of City are us.[otherwise]To choose City would be to choose war over peace, destruction over construction. Perhaps people like them born free might have survived, but they were too dominated by their torn-away halves, the shadow of the Forest having as much influence over their lives in negative as it did to the symbionts in positive. Yes, I would have chosen the Forest, too, my love. They are two beautiful races, stronger because they are together, and lost apart.[end if]'". eplr_instinct enqueues eplr_somenium.

Understand "else/no" as eplr_else when last beat is in EPLR. eplr_else is a beat in EPLR with keyword name "[if last beat is eplr_trees or last beat is eplr_rebels]else[otherwise]no" and reaction "Rume smiles. 'Apologies, my love,' [heshe] says. 'Always unkind it is to put words in the mouth of another. Please, explain yourself and I will listen.'

As you answer Rume's question, [heshe] watches you closely, listening in the achingly familiar way [heshe] always used to, walking through pine-thick trails or holding each other under farm furs. When at last you have explained yourself, [heshe] thinks for a long while before nodding, and saying 'Thank you. Your reasons are sound, and I think I would have made the same choice.'". eplr_else enqueues eplr_somenium.

Understand "love/Progue/respect" as eplr_lovecauseProgue when last beat is in EPLR. eplr_lovecauseProgue is a beat in EPLR with keyword name "[if last beat is eplr_abstain and second-choice-love is true]love[else if last beat is eplr_abstain]respect[else]Progue" and reaction "Rume nods slowly. 'Then it was his story, after all,' [heshe] says, 'and you were the one called to help him finish it. Good. A hard lesson to learn, love. But to know when to be a hero and when to help the truly heroic... that is a real gift.'". eplr_lovecauseProgue enqueues eplr_somenium. [aar]

Understand "you" as eplr_lovecauseRume when last beat is in EPLR. eplr_lovecauseRume is a beat in EPLR with keyword name "you" and reaction "'[if last beat is eplr_humility]Rume nods slowly. 'It was too great a decision to be forced on anyone,' [heshe] says. 'By terrible accident one is often asked to decide the fate of millions, but it does not make it right[otherwise]Because it's what I would have told you to do,' [heshe] says, nodding even before you've finished, clearly moved. 'Because I would have warned you against pride and power, and false choices[end if].' [CHeShe] gently touches the side of [hisher] forefinger to each eye, breathing deeply. 'Because neither you nor Progue could have made that choice, love, between mastery of a galaxy for one and genocide for the other. They must decide for themselves, fight or talk or chance it out. You and Progue were both strangers to that universe. It was not yours. It was theirs, and theirs alone.'". eplr_lovecauseRume enqueues eplr_somenium.

Understand "forest" as eplr_lovecauseForest when last beat is in EPLR. eplr_lovecauseForest is a beat in EPLR with keyword name "Forest" and reaction "Rume looks puzzled at first, then nods in greater and greater understanding as you explain. 'Of course,' [heshe] says. ". eplr_lovecauseForest enqueues eplr_somenium.

Understand "city" as eplr_lovecauseCity when last beat is in EPLR. eplr_lovecauseCity is a beat in EPLR with keyword name "City" and reaction "Rume nods as you explain. 'Of course,' [heshe] says. 'the Greeneyes. If you had helped one side over the other it would only have perpetuated their inner conflict. You never met the Greeneyes; you knew nothing about whether they were a better or worse choice than those in City. And on a larger scale, you only saw what the Forest wanted you to see; how could you truly judge a whole civilization based on the tiny fragments you saw of each?' [CHeShe] smiles sadly. 'If City is to survive it will not be because another moralizing power arrived to help them,' [heshe] adds. 'They must solve their problems on their own.'". eplr_lovecauseCity enqueues eplr_somenium.

Understand "closure" as eplr_closure when last beat is in EPLR. eplr_closure is a beat in EPLR with keyword name "closure" and reaction "Rume nods. 'It was the decision that destroyed Progue,' [heshe] agrees. 'After all he'd been through, being asked to make that terrible choice, between mastery of a galaxy for one people and genocide for another, that finally drove him into madness, drove his children away from him, robbed him of his greatest gift. Destroying the choice was the only way you could think of to save him.' [CHeShe] rubs [hisher] shoulder, as if cold in that immense blackness. 'I understand,' [heshe] says finally.". eplr_closure enqueues eplr_somenium.

Understand "humility/reject" as eplr_humility when last beat is in EPLR. eplr_humility is a beat in EPLR with keyword name "[if last beat is eplr_neitherart]humility[else]reject" and reaction "'You felt such a choice was not yours to make,' Rume says, nodding. 'Yes, I remember that about you. Your choice is wise. Now it will be up to them to decide their fate, without an unexpected force giving either side an advantage. Yes. It is good.'". eplr_humility enqueues eplr_lovecauseRume.

Understand "justice" as eplr_justice when last beat is in EPLR. eplr_justice is a beat in EPLR with keyword name "justice" and reaction "Rume is puzzled at first, but then begins to nod as you explain. 'Perhaps it was what both sides deserved, at that,' [heshe] says. 'Each offering you a stark and impossible choice: mastery of the galaxy for us, and genocide for our enemies. Neither allowing you or Progue another alternative. But there are always other alternatives, my love. You taught me that, and I remember. And now the Forest and City know it too.'". eplr_justice enqueues eplr_somenium.

eplr_somenium is an insistent beat in EPLR with reaction "'Well,' [heshe] continues, after a long, pensive pause. 'You made your decision, and Progue made his, and soon I think it will be time for you to move on. But there is something important you should realize before you go.'

'Somenium. The bluerock.' Rume smiles. 'It was the key to so much. Progue's madness and the fate of two civilizations. Yet it seemed so unimportant at first, just a minor detail of the scenery. The Philosopher, on the Heart of Forest, said something important about it. Something about a link between wayfaring and somenium. Do you remember, remember what it is they have in common?'". eplr_somenium summons eplr_transportation, eplr_dreams, eplr_scarcity, eplr_connections. The no-beat is eplr-somno. eplr_somenium suggests eplr_connections. eplr_connections replaces eplr_somenium.

Understand "transportation" as eplr_transportation when last beat is in EPLR. eplr_transportation is a dogged beat in EPLR with fuse 9 and keyword name "transportation" and reaction "'Not exactly,' Rume says, shaking [hisher] head, 'since the bluerock moves nothing; it only allows minds to connect. But it was close to that.'".

Understand "dreams" as eplr_dreams when last beat is in EPLR. eplr_dreams is a dogged beat in EPLR with fuse 9 and keyword name "dreams" and reaction "'True,' Rume says, biting a lip, 'dreams allowed them to reach you through the somenium in the seiver, and perhaps the Call is a sort of waking dream. But no, that wasn't it.'".

Understand "scarcity" as eplr_scarcity when last beat is in EPLR. eplr_scarcity is a dogged beat in EPLR with fuse 9 and keyword name "scarcity" and reaction "'Interesting,' says Rume, 'both impossibly rare. That's not quite it, but it was related.'".

eplr-somno is a dogged beat in EPLR with fuse 9 and reaction "'Then think harder,' Rume says, the familiar look of exasperation when [heshe] expects better from you. 'It's important.'".

Understand "connection/connections" as eplr_connections when last beat is in EPLR. eplr_connections is a beat in EPLR with fuse 9 and keyword name "connections" and reaction "'Yes, that was it!' Rume says, 'both wayfaring and somenium make connections between people regardless of distances. What is it he said? All bluerock touches all bluerock, no matter how far. Like when you hear the Call...' [CHeShe] trails off and turns to stare at you, sea-blue eyes piercing yours. 'What do you think, my love,' [heshe] finally whispers. 'Is it [eplr_coincidence]? Or perhaps...' [heshe] swallows, afraid to breathe, afraid to break the suddenly huge stillness of the black void.[paragraph break]'Perhaps,' Rume whispers, 'there is an [eplr_another], a third choice we never saw, hidden yet there all along.'". eplr_another replaces eplr_connections. eplr_connections suggests eplr_another.

Understand "coincidence" as eplr_coincidence when last beat is in EPLR. eplr_coincidence is a terminal beat in EPLR with keyword name "coincidence" and reaction "Rume lowers [hisher] eyes. 'Yes,' [heshe] finally says, 'you must be right. It is you who understands the rules of wayfaring. And I am only a dream. One that perhaps will not come again.'[paragraph break]The void begins to fade, a dull red-orange dimness and the muffled sounds of seagulls seeping through, and Rume begins to dissolve with it. 'Wake now, wayfarer,' [heshe] says in a voice seeping into sleep. 'It is time to move on.'[paragraph break]And you are awake.".

Understand "alternative" as eplr_another when last beat is in EPLR. eplr_another is a terminal beat in EPLR with keyword name "alternative" and reaction "'What if I did have the power to Call you back to me, wayfarer? What if these dreams we share have not been yours alone?' A red-orange dullness and the muffled sound of seagulls begin to seep into the void, and Rume begins to fade, but you clutch [himher] tightly. 'What if my alpine world has bluerock, too,' [heshe] says quickly, 'in the dust, in the air, in each living thing? In the sweat of my body, the moisture of my lips...'

[CHeShe] steps forward, touching a hand to your cheek even as [heshe] fades nearly to invisibility behind the onrushing intrusion of waking reality, searching you with sea-blue eyes that alone remain real and visible, deep as oceans, indigo flecks and imperfections sparkling in their depths...

'In my eyes,' [heshe] whispers, and you are awake.".

Section - Coda

Epilogue-Ending-A is a scene. Epilogue-Ending-A begins when eplr_another is spoken or eplr_coincidence is spoken.

ep-timer is a number that varies.

When Epilogue-Ending-A begins:
	begin chapter 11;
	change the time of day to 7:08 AM; 
	change the time factor to 1;
	repeat with thepot running through paintpots begin;
		move thepot to Studio;
	end repeat;
	if Progue is not dead begin;
		remove pot of blue paint from play;
		change the initial appearance of ep-Progue to "Progue stands nearby[if eea_takebrush is unspoken], holding out your [o]paintbrush[x] expectantly[else], awaiting your response[end if].";
		change the description of ep-Progue to "He's been doing much better. You hope soon he'll be ready to leave this world as well.";
	otherwise;
		move ep-paintbrush to yourself;
	end if;
	remove artisan tools from play;
	now the ep-canvas is in Studio;     
	move yourself to Studio;
	say "You rise slowly to your feet, stretching out aches and pains. You remember now: staring at your blank canvas for hours long into the darkness.".

The ep-canvas is a fixed in place described thing with printed name "canvas". Understand "canvas" or "painting" or "hide" as ep-canvas. The description is "Dried and taut, boar-hide still exuding faint smells of animal, the canvas awaits your paint.". 

ep-Progue is a man with printed name "Progue". "Progue is here." Understand "Progue" as ep-Progue. The description is "Progue is here.".

Every turn when location is Studio and current chapter is 11 and ep-timer is not -1:
	increase ep-timer by 1;
	if ep-timer > 3 and Progue is not dead and Progue is not enclosed by location:
		now ep-timer is -1;
		remove Progue from play;
		move ep-paintbrush to Studio;
		move ep-Progue to Studio;
		now ep-Progue is attentive;
		move pot of blue paint to Studio;
		now tempfuse of eea_intro is 5;
		force discuss eea_intro;
	if ep-timer > 2 and Progue is dead:
		say "[one of][eea-noprogue-choice][or][stopping]".

To say eea-noprogue-choice: say "Your brush tingles in your hand, and the paints await you on the workbench: [t]red[x], [t]yellow[x], [t]green[x], [t]black[x], [t]white[x], and [t]blue[x]. To begin you must only choose one to start with.".

EEA is a thread. eea_intro is an exciting beat in eea with reaction "Progue steps in through the open doorway, carrying a wooden pot.[paragraph break]'At last, finished,' Progue says, putting the pot of blue paint down on the counter. 'Voices from the stars would be horrified that we're using their precious somenium for this, but one can't paint anything without blue,' he adds cheerfully.[paragraph break]'Oh,' he says, 'and your [o]paintbrush[x], too.' He pulls the brush out and holds it out to you.". Instead of vague discussing when last beat is in EEA, say "There's so much else to talk about, but, at the same time-- perhaps everything that needs to be said is said.".

The ep-paintbrush is a prop with printed name "paintbrush". Understand "paintbrush" or "paint brush" or "brush" as ep-paintbrush. Instead of examining ep-paintbrush: try taking ep-paintbrush.

Instead of painting or vague painting when ep-canvas is enclosed by location:
	if Progue is dead:
		say eea-noprogue-choice;
	else if eea_intro is unspoken:
		say "You can't seem to find your paintbrush.";
	else:
		force discuss eea_takebrush.

Instead of taking a paintpot when location is Studio and ep-canvas is enclosed by location: say "They are easily accessible where they are.".

Check vague discussing when location is Studio and ep-canvas is enclosed by location: say "You can't think of what to say." instead.

Instead of taking ep-paintbrush when location is Studio: force discuss eea_takebrush. eea_takebrush is a beat in EEA with reaction "The brush tingles your hand with something almost or barely electric. It seems to connect you and Progue along the length of the wooden handle; he holds on for a fraction of a second as your eyes meet, and something ionic passes between you.[paragraph break]Then he lets go. The brush is in your hand, and something in you changes. Or remembers.[paragraph break]'I'll leave and leave you to it, then,' Progue says quietly. 'Seas of canvas need filling, and for me, well, quotas of rock. No need to linger over parting.' He half-turns, on the brink of leaving.". eea_takebrush suggests eea_saynothing. eea_whattopaint replaces eea_takebrush.

[The player is the protagonist; Progue and the trees/rebels has been your antagonist by causing you to realize love is the most important choice. (??)]
Instead of hugging ep-Progue when last beat is eea_takebrush: say "You hug Progue and he hugs back, his weatherworn cheek pressed against your neck, and [weatherwornbit]. You step back and know now you are ready to leave this place."; force discuss eea_whattopaint.
Instead of kissing ep-Progue when last beat is eea_takebrush: say "You kiss Progue [if romance of Progue > 3]gently and tenderly, raising one hand to his weatherworn face[else]on each weatherworn cheek, an old custom from past worlds that seems somehow appropriate[end if], and [weatherwornbit]. You step back and know now you are ready to leave this place."; force discuss eea_whattopaint.
Instead of pushing or attacking ep-Progue when last beat is eea_takebrush: say "Here, at this final moment, all the anger and violence has drained from you; you cannot bring yourself to. You turn wearily from Progue back to your canvas."; force discuss eea_whattopaint.
Instead of saying farewell to or thanking ep-Progue when last beat is eea_takebrush: say "He clutches your outstretched hand warmly for a long moment.[paragraph break][cookiemetaphor].' He smiles and you smile back, then release him and turn to your canvas."; force discuss eea_whattopaint.
Instead of giving something to ep-Progue when last beat is eea_takebrush: say "You hand [the noun] to Progue. Wordlessly he accepts it, holds it delicately and studies it in the light of the setting sun. Then he clutches your hand for a long moment.[paragraph break][cookiemetaphor].'[paragraph break]Finally he releases his grip, and you turn to your canvas."; force discuss eea_whattopaint.
eea_saynothing is a beat in EEA with reaction "You can think of nothing to say or do or think in this moment, suspended somehow from relentless gravities of time. And it seems that neither can Progue. He stares back, also wordless, for long moments.[paragraph break]But finally something passes between you, perhaps without either of you willing it, and you nod, and breathe, and turn to your canvas.". eea_saynothing enqueues eea_whattopaint.

[{Progue hands you a brush.[otherwise]The blue paint, which you pounded all yesterday from mud and somenium crystals, rests atop the counter, the last of the paints to be gathered and prepared.[end if] The canvas is ready. ]

eea_whattopaint is a beat in EEA with reaction "'And do you know, wayfarer,' Progue says quietly, as your eyes ride smoothly over the taut, textured surface of the hide, 'do you know what it is you will paint today?'". The yes-beat of eea_whattopaint is eea_yes. The no-beat of eea_whattopaint is eea_no. eea_whattopaint summons eea_yes, eea_no. eea_whattopaint suggests eea_no. eea_whichcolor replaces eea_whattopaint.

eea_yes is a beat in EEA with keyword name "yes" and reaction "He nods. 'Yes. Yes, I thought you did.'". eea_yes enqueues eea_whichcolor.

eea_no is a beat in EEA with keyword name "no" and reaction "He nods. 'Good,' he says, 'then you will not be disappointed, whatever you find.'". eea_no enqueues eea_whichcolor.

eea_whichcolor is a beat in EEA with reaction "'Well. Your paints await you: [t]red[x], [t]yellow[x], [t]green[x], [t]black[x], [t]white[x], and [t]blue[x]. To begin you must only dip your brush in one.'[paragraph break]He rests his hand on the workbench for a moment, looking searchingly into its grain, then abruptly turns to the open doorway. He pauses one last moment, turning back to watch.[paragraph break]'Go on, then,' he says, 'which will it be?'". eea_whichcolor summons eea-blue, eea-other. eea_whichcolor suggests eea_proguewaits. Instead of examining a paintpot when eea_whichcolor is spoken: if noun is pot of blue paint, force discuss eea-blue; else force discuss eea-other.

eea_proguewaits is a repeatable beat in EEA with reaction "Progue [one of]waits silently for you to make the choice[or]stands quietly, waiting for you to choose[at random].". eea_proguewaits suggests eea_proguewaits.

Understand "blue" as eea-blue when last beat is in EEA. eea-blue is a terminal beat in eea with keyword name "blue" and fuse 99 and reaction "Trembling, you reach your brush towards the blue paint. The swirls of powdered crystal sparkle brilliantly in the morning sun, slanting through the window, and as bristles join its surface, vague whispered ripples disturb some rare medium of thought, memory, longing[unless Progue is dead].[paragraph break]Progue nods once, gives you one last smile, and then is gone[end unless].[paragraph break]You lift the blue-tipped brush to the canvas, eyes closed, and picture Rume. But not just with your mind. You picture [if Rume is male]him[else]her[end if] with each cell in your lone and travelworn body. You picture [if Rume is male]him[else]her[end if] with the hair you once touched and skin once shared. You picture Rume with hand, palm, knuckles, fingers, with every bristle of the blue-stained brush to the potent atoms at its tip, crushed molecules of an impossible substance that dreams with you an impossible dream, and slowly begin to paint.[paragraph break]The bristles touch canvas, and the sound they make is a delicate sigh, clung to the near edge of silence.".

Understand "red/green/yellow/white/black" as eea-other when last beat is in EEA. eea-other is a terminal beat in eea with keyword name "red, green, yellow, white and black" and fuse 99 and reaction "[nonbluecolending]".

To say nonbluecolending:
	let tcol be 1;
	if the player's command includes "red":
		let tcol be 1;
	else if the player's command includes "green":
		let tcol be 2;
	else if the player's command includes "yellow":
		let tcol be 3;
	else if the player's command includes "white":
		let tcol be 4;
	else if the player's command includes "black":
		let tcol be 5;
	say "You reach your brush out and submerge it in the thick [if tcol is 1]red[else if tcol is 2]green[else if tcol is 3]yellow[else if tcol is 4]white[else]black[end if] paint. Soon you will blend it with other colors, but it feels right that your first touch to the canvas should be pure, unmixed[unless Progue is dead].[paragraph break]Progue nods once, gives you one last smile, and then is gone[end unless].[paragraph break]You touch the brush to the hide, tentative, caressing. ";
	say "[if tcol is 1]The red smears its surface like blood, rich heart-blood that flows deep inside[else if tcol is 2]The green streaks across its surface, a shock of forest and emerald and spring[else if tcol is 3]A shock of yellow brightens its surface, the lemon-yellow hue that brought you here years or hours ago[else if tcol is 4]Pure white soaks into the hide, snow and clouds and fog-wrapped air[else]Ink black seeps into the hide, midnight and dream[end if]";
	say ", and in that instant, with prickles of nerve memory, at last you know the way forward.".
		
After discussing eea-blue: end the game in victory. After discussing eea-other: end the game in victory.

Instead of landmark-going or going or exiting or retreating during Epilogue-Ending-A: say "You have unfinished business with your canvas.". First check landmark-going during Epilogue-Ending-A: say "You have unfinished business with your canvas.".



After reading a command when Epilogue-Ending-A is happening and Progue is dead: if the player's command matches the text "blue", force discuss eea-blue; if the player's command matches the text "red" or the player's command matches the text "yellow" or the player's command matches the text "black" or the player's command matches the text "white" or the player's command matches the text "green", force discuss eea-other.






Chapter - Ending B (Progue-centric)

Section - Dream

[If ENDING B, the conversation is with a grown Lethe, and about the loopholes in wayfaring, and designed to make the player realize Progue might still have a chance to be reunited with his daughters. ]

EPLP is a thread with escape clause eplp_escape. [Epilogue - Like Progue] Instead of exhausting when last beat is in EPLP: force discuss eplp_escape. Instead of getting bored when last beat is in EPLP: force discuss eplp_escape. eplp_escape is a repeatable dogged ephemeral beat in EPLP with reaction "'Well,' she says, 'but there is more to say.'". eplp_escape enqueues eplp_intro.

eplp_intro is an exciting beat in EPLP with reaction "Before you stands a beautiful [o]woman[x], slowly running a comb with a carved dolphin for a handle through her long black hair. Her features are strangely familiar, and you finally realize you have seen her before. In dreams.". eplp_intro suggests eplp_samechoice. eplp_lessons replaces eplp_intro.

ep-lethe is a woman with printed name "Lethe". Understand "Lethe/girl/woman/daughter" as ep-lethe. The description is "Lethe. How she must look now, as a grown woman-- but some part of you realizes this is not really her-- just a dream. No tricks, no messages, but dream, just and only.".


To say eplp_intro2: say "'How strange are meetings that come too late,' she says quietly, running the brush smoothly through her hair and not quite meeting your gaze. 'For you have already been me in dreams, seen my most intimate drawings from childhood to my first masterpiece, loved me through the eyes of my father, and through his hands and words and memories as well.' She nods, as if to herself. 'Yes, introductions now would be quite redundant. Especially since somehow I feel I know you equally well.'[paragraph break]'For instance,' she says quietly, looking into your eyes for the first time, '".

eplp_diffchoice is a beat in EPLP with reaction "[eplp_intro2]I know of a moment, worlds and time ago, when you also made this choice between art and love, and chose differently. In Rume's bed you chose [if we chose art]art, and now, now, you choose love[else]love, and now, now, you choose art[end if]. So what changed, then? Did something of my [eplp_father] seep within you to alter your priorities? Or maybe something in those two great [eplp_societies] vying for control of that island? Or,' she says with a wry smile, 'perhaps this was so long ago you no longer [eplp_remember] why you once chose the way you did?'". eplp_diffchoice suggests eplp_choicenoans.

eplp_samechoice is a beat in EPLP with reaction "[eplp_intro2]we have met many wayfarers now, my sister and I. And they are mercurial, many perhaps schizophrenic; the only way they stay sane in lives defined by change is to change themselves. Yet on a cold night worlds and time ago, when you also made this choice between love and art, you chose the same way. How can you remain yourself? Through strength of [eplp_conviction], mayhaps, or something simpler: it merely felt [eplp_right] to you then as it does now? Or,' she adds with a wry smile, 'perhaps this was so long ago you no longer [eplp_remember] why you once chose the way you did?'". eplp_samechoice suggests eplp_choicenoans. 

eplp_choicenoans is a beat in EPLP with reaction "'Well, no matter,' she says, the brush moving rhythmically through her long hair. 'None of my business, I suppose.'". eplp_choicenoans enqueues eplp_whenyoumet.

Understand "father" as eplp_father when last beat is in EPLP. eplp_father is a beat in EPLP with keyword name "father" and reaction "She looks away, touches of sadness hardening the smoothness of her face, the brush moving rhythmically through her long hair. 'My father changes all who meet him,' she says finally, 'for better or for worse.' She closes her eyes for a moment, then opens them again, stronger. 'No,' she says, 'My anger at him has long since melted away, though he has not yet burned his guilt. [if second-choice-love is true]Love is the right choice, friend. It burns most brightly of all[else]Art can burn them both away, my friend, but so many other things as well. Take care what you set aflame[end if].'". eplp_father enqueues eplp_whenyoumet.

Understand "society/societies" as eplp_societies when last beat is in EPLP. eplp_societies is a beat in EPLP with keyword name "societies" and reaction "She stares into the void intently, the brush moving smoothly now through her hair. 'I dreamed with you through those two worlds,' she says. 'And I kept wondering who it was who had Called you. My father? That quiet, sad leader of a struggling, violent people? The whisper of windsigh trees across a milky spiral of stars[if The-Path-Of-Love has happened]? Even my sister, or I, all those years ago[end if]?' She shakes her head. 'Or all or none of them,' she says. 'The Call defies understanding. But it always changes you; I've learned that, and my sister too. Always is change.'". eplp_societies enqueues eplp_whenyoumet.

Understand "conviction" as eplp_conviction when last beat is in EPLP. eplp_conviction is a beat in EPLP with keyword name "conviction" and reaction "She considers, the brush moving smoothly now through her hair. 'I'm not sure I believe in conviction,' she says. 'Certainly not in absolute moralities or universal truths; I've moved through enough worlds to be disabused of such comforting notions. Phoebe would disagree. But. Now inner conviction, consistency of self-- hmm.' She smiles to herself. 'It's a rare quality in we who wayfare,' she adds finally. 'Treasure it, friend.'". eplp_conviction enqueues eplp_whenyoumet.

Understand "correct" as eplp_right when last beat is in EPLP. eplp_right is a beat in EPLP with keyword name "correct" and reaction "She smiles knowingly, the brush moving smoothly now through her hair. 'How strange it is,' she murmurs, 'to look back into the dusty corners of our lives, and find some past self who utterly and completely agrees with us. Or mayhaps it's not strange at all for most people, but for me, I find change the only constant. It's always something shocking to discover I was once the same person.' She laughs, but softly, quietly, and the lilting sound soon dies away.". eplp_right enqueues eplp_whenyoumet.

Understand "remember" as eplp_remember when last beat is in EPLP. eplp_remember is a beat in EPLP with keyword name "remember" and reaction "She laughs aloud; not spitefully, a kind, simple laugh alive with lilting echoes and harmonies. 'I think Phoebe would like you,' she says. 'You both prefer to go clothed in plain and simple truths rather than over-thought justifications and rationalizations. I like you too, I suppose, even if only because you remind me of her.'". eplp_remember enqueues eplp_whenyoumet.

eplp_whenyoumet is a beat in EPLP with reaction "She turns serious, staring down at the brush in her hands and running an idle finger over its intricate details. 'When you met my father he was only half a man. Or--' she smiles a little, not looking up, '--two thirds of one, as he put it. He had lost so much.'".

After discussing eplp_whenyoumet:
	if neurotic dad begin; force discuss eplp_neuroticdad;
	else if father knows best; force discuss eplp_fatherknowsbest;
	else if bitter dad; force discuss eplp_bitterdad;
	else if disciplinarian; force discuss eplp_disciplinarian;
	else if friend; force discuss eplp_friend;
	else if toady; force discuss eplp_toady;
	else if lover or twitterpated; force discuss eplp_lover;
	else if enemy; force discuss eplp_enemy;
	else if slave; force discuss eplp_slave;
	else if bitter lover or shattered lover; force discuss eplp_bitterlover;
	else; force discuss eplp_friend;
	end if;
	continue the action.

eplp_neuroticdad is a beat in EPLP with reaction "'Yet somehow he came to think of you like a [if player is male]son[else]daughter[end if],' she says, 'although he didn't quite remember how to be a father again. ". eplp_neuroticdad enqueues eplp_intended.

eplp_fatherknowsbest is a beat in EPLP with reaction "'Yet somehow he came to think of you like a [if player is male]son[else]daughter[end if],' she says, 'and he remembered the best and worst parts of his fatherhood.". eplp_fatherknowsbest enqueues eplp_intended.

eplp_bitterdad is a beat in EPLP with reaction "'Yet somehow he came to think of you like a [if player is male]son[else]daughter[end if],' she says, 'though a disrespectful one, mayhaps. You frustrated him, I think, because he thought he knew what was best, even though you didn't always get along and he didn't always have the courage to tell you.'". eplp_bitterdad enqueues eplp_intended.

eplp_disciplinarian is a beat in EPLP with reaction "'Yet somehow he came to think of you like a [if player is male]son[else]daughter[end if],' she says, 'though a disobedient one. Like my sister and I; you awoke old frustrations in him, I think, though at least the two of us could sometimes get along with him.'". eplp_disciplinarian enqueues eplp_intended.

eplp_friend is a beat in EPLP with reaction "'Yet you became a friend to him, when he needed a friend,' she says, 'and I thank you for that.'". eplp_friend enqueues eplp_intended.

eplp_toady is a beat in EPLP with reaction "Yet you became a friend to him, of a sort, when he needed a friend,' she says. 'No, more than need; he was so desperate for companionship that he was perhaps too quick to let you have your way.'". eplp_toady enqueues eplp_intended.

eplp_lover is a beat in EPLP with reaction "She smiles quietly at you. 'He saw something in you,' she says, 'that reminded him of... [if player is female]my mother, perhaps, or maybe you're nothing like her at all[else]himself, perhaps, or maybe his first love, lost worlds ago[end if]. I'm not sure; I don't know you.' She takes a deep breath. 'But whatever it was, I thank you for showing it to him. After our mother died, his grief was a weight that crushed us all, and he had no sense of how to take any of the weight off his daughters. Maybe no parents in such circumstances do, maybe...' She bites her lip and trails off. 'I don't know,' she finally says. 'All I can offer, again, is my thanks. For making him happy again.'". eplp_lover enqueues eplp_intended.

eplp_enemy is a beat in EPLP with reaction "'But you did not see eye to eye, you two,' she says sadly, 'and I think that has always been his curse. He is so headstrong that he cannot let other people in; cannot understand them or believe in them. Even my sister and I...' She bites her lip. 'A difficult man,' she finally concludes.". eplp_enemy enqueues eplp_intended.

eplp_slave is a beat in EPLP with reaction "'But you did not see eye to eye, you two,' she says sadly, 'and he became almost like a slave to you, didn't he? So eager and desperate to please you, even though he feared and distrusted you. Mayhaps he was too far gone to be a friend to anyone.'". eplp_slave enqueues eplp_intended.

eplp_bitterlover is a beat in EPLP with reaction "She smiles quietly at you. 'He saw something in you,' she says, 'that reminded him of... [if player is female]my mother, perhaps, or maybe you're nothing like her at all[else]himself, perhaps, or maybe his first love, lost worlds ago[end if]. I'm not sure; I don't know you.' She takes a deep breath. 'But it didn't last. No, of course it couldn't; it was only a dream. And he ended more hurt than when he began. It was hard for him. I'm not sure whether I should hate you or whether he deserved it.'". eplp_bitterlover enqueues eplp_intended.

eplp_intended is an insistent beat in EPLP with reaction "'Now he is-- perhaps not whole, not yet, but at least he is refilling. Scabs have been torn off but the flow has reversed, and the world once again flows through his tender wounds to mingle with his blood.'[paragraph break]'Is that how you thought it would work out,' she asks, turning her head to the side, 'when you first saw him, standing on that boulder and shouting at the sea?'". The yes-beat of eplp_intended is eplp_intyes. The no-beat of eplp_intended is eplp_intno. eplp_intended summons eplp_intyes, eplp_intno.

Instead of getting bored when last beat is eplp_intended or last beat is eplp_pleased, force discuss eplp_lessons.

eplp_intyes is a beat in EPLP with keyword name "yes". eplp_intyes enqueues eplp_pleased.

eplp_intno is a beat in EPLP with keyword name "no". eplp_intno enqueues eplp_pleased.

eplp_pleased is an insistent beat in EPLP with reaction "'[if eplp_intyes is spoken]And[else]But then[end if] are you happy with the way things turned out[if eplp_intno is spoken], anyway[end if]?' she asks.". The yes-beat of eplp_pleased is eplp_plyes. The no-beat of eplp_pleased is eplp_plno. eplp_pleased summons eplp_plyes, eplp_plno.

eplp_plyes is a beat in EPLP with keyword name "yes" and reaction "She smiles, touching a fingertip delicately to each bristle of the brush, one by one. 'I'm glad,' she says. 'He has been so alone these long years, choosing to forget there were those who remembered him, rather than wonder if they still did.'". eplp_plyes enqueues eplp_lessons.

eplp_plno is a beat in EPLP with keyword name "no" and reaction "She nods somberly, touching a fingertip delicately to each bristle of the brush, one by one. '[if eplp_intyes is spoken]And that in a flash is humanity,' she says, 'always expecting what it does not get. How strange. One would think we'd know ourselves better, by now[else]He was not much of a friend to you, I suppose. And he was not much of a father to Phoebe and me. I think perhaps he gave everything he was and had to my mother. And when she died, he no longer knew how to love anyone but her[end if].'". eplp_plno enqueues eplp_lessons.

eplp_lessons is a beat in EPLP with reaction "With a sudden flick of her wrist, she releases the comb, which twirls away and is swallowed by the void. She looks after it for one wistful moment, then turns to you, taking a step closer.[paragraph break]'There is something about [eplp_wayfaring],' she says, 'which my [eplp_sister] and I learned, but Progue never did, and you may or may not have: there are [eplp_loopholes].' A corner of her mouth rises in a smile.". eplp_lessons suggests eplp_loopholes. eplp_loopholes replaces eplp_lessons.

Understand "wayfaring" as eplp_wayfaring when last beat is in EPLP. eplp_wayfaring is a beat in EPLP with keyword name "wayfaring" and reaction "'We call it The Magic,' she says with a smile, 'Phoebe and I. But I like your word better.'". eplp_wayfaring suggests eplp_loopholes.

Understand "sister" as eplp_sister when last beat is in EPLP. eplp_sister is a beat in EPLP with keyword name "sister" and reaction "'Phoebe takes credit for it, I suppose,' she says, grinning, 'but it was my idea, my theory, to start with.'". eplp_sister suggests eplp_loopholes.

Understand "loophole/loopholes" as eplp_loopholes when last beat is in EPLP. eplp_loopholes is a beat in EPLP with fuse 8 and keyword name "loopholes" and reaction "'At least three,' she says, 'some more obvious than others but all inherent in its nature.'[paragraph break][if player is female]She puts a hand on your forearm and squeezes it briefly[else]She puts a hand to your face and drinks deeply from your eyes for a long moment[end if], then turns away, looking at a simple wooden [o]door[x] which has suddenly appeared in the void.[paragraph break]'One,' she says briskly, 'parents can bring children with them when they wayfare, since the children are their creations. You most likely know this: it's how Phoebe and I came with our father when he sculpted the windsigh tree and we came to Lacuna.'[paragraph break]'Two,' she continues, moving slow but strained towards the door, as if reluctant, 'the Call itself. Saying goodbye to a fellow wayfarer never has to be forever; there is always the chance you will be called to her again, or she to you. And it may not be as random and mysterious as we think. Phoebe and I cannot quite do it at will-- but many times now have we found each other, when we are in need.'[paragraph break]She takes a deep breath, and opens the door; behind it is only more void. 'Three,' she says, carefully. 'You can never go back. But nothing prevents you and another from going the same forward.' She winks, then slips through the door and shuts it behind her.".

After discussing eplp_loopholes: post-conversation processing; move ep2-door to location; continue the action.

An ep2-door is a container. It is closed and fixed in place. The printed name is "simple wooden door". Understand "simple/wooden/door/brass/knob" as ep2-door. The description is "The door is made from unadorned wood, unpainted and unsanded, with a simple brass knob.". Instead of turning ep2-door, try opening ep2-door. Instead of opening ep2-door for the first time: say "You reach forward to open the door, only to discover you are holding [o]something[x]."; move ep2-brush to player. Instead of opening ep2-door: try examining ep2-brush. Check turning ep2-door: try opening ep2-door. 

An ep2-brush is a thing. The printed name is "carved brush". Understand "brush/dolphins/lethe's/lethes/handle/something/holding" as ep2-brush. The description is "You open your hand to find it gripping Lethe's brush, the carved dolphins along its handle swimming against the lines and swirls of your hand.[paragraph break]'Tell him,' Lethe's voice comes from somewhere, distant and muffled. 'Tell him we wait for him. Tell him to go forward. Tell him we may yet find each other again.'[paragraph break]The dream fades, and your solid grip on the brush becomes your grip on the waking world.". 

A brush-echo is a minor prop with description "You look down into your hand, but the brush is gone-- just a dream.".

Section - Coda

[Opening - look / interact etc.
Then important decisions only: do we tell Progue about the dream? (if not he sculpts anyway, text slightly different). How do we say farewell to Progue.]

After examining ep2-brush: 
	say "You open your eyes.";
	begin chapter 11;
	change the time of day to 7:25 AM; 
	change the time factor to 1;
	remove Progue from play;
	move ep-Progue to Stumps;
	now ep-Progue is attentive;
	pre-conversation processing;
	now tempfuse of eeb_intro is 5;
	remove ep2-brush from play;
	move brush-echo to Stumps;
	change the initial appearance of ep-Progue to "[o]Progue[x] stands quietly nearby, hands folded before him, staring at the rough-hewn block of stone intently.";
	change the description of ep-Progue to "Some immense calm exudes from his skin, a focus and clarity of being you have never seen from him. He hardly seems to breathe and yet it is as if the whole world is flowing into him.";
	move player to Stumps; 
	now tempfuse of eeb_intro is 5.

Epilogue-Ending-B is a scene. Epilogue-Ending-B begins when eplp_intro is spoken.

Instead of greeting ep-Progue when Epilogue-Ending-B is happening, force discuss eeb_intro. Instead of getting bored when Epilogue-Ending-B is happening and location is Stumps: pre-conversation processing; force discuss eeb_intro. Instead of saying farewell to when Epilogue-Ending-B is happening: force discuss eeb_intro.

EEB is a thread. eeb_intro is a beat in eeb with keyword name "hello" and fuse 25 and reaction "He stirs, slow and almost imperceptible at first, then turns to you, movements gathering speed and vim. As his languorous eyes reach yours, he smiles.[paragraph break]'And good morning and good morning,' he says, 'and good morning as well. There really is something good about it, can't you feel? Some supple magnetism in the air.' He takes a deep breath, and turns back to the block of stone. 'I think,' he says, 'I think, I think... this is the Day. Last Lacuna morning. The fade of [t]dream[x] and the rise of wake.'". eeb_intro summons eeb_dream, eeb_nodream. eeb_intro suggests eeb_nodream. eeb_dream replaces ddb_intro.

Understand "dream" as eeb_dream when last beat is in EEB. eeb_dream is a beat in EEB with keyword name "dream" and reaction "[noteeebdream]He listens quietly as you tell him your dream, his expression guarded and tense, as if poised for flight.[paragraph break]When you are finished, he closes his eyes, and takes a long, deep breath.[paragraph break]'[if romance of Progue >= 0]Dear one[else if paternalism of Progue >= 3]My child[else]My friend[end if],' he says quietly, 'I have always known this. Fragments of I, ratherly. And no, I don't think it was ever even forgotten... just hiding in shadows of grief, waiting. Waiting to be thought again.'[paragraph break]He [if romance of Progue >= 4]kisses you, long and soft[else if paternalism of Progue >= 3]puts a hand on your shoulder and squeezes[else]claps a hand to your back[end if], then steps away. 'Once again our dreams show the way,' he says. 'Do we wayfarers live in dreams? Or do universes live in ours?'". eeb_dream enqueues eeb_sculptsequence. To say noteeebdream: now eebdreamspoken is true. eebdreamspoken is a truth state that varies. eeb_sculptsequence replaces eeb_dream.

eeb_nodream is a beat in EEB with keyword name "listen" and reaction "He takes a long breath, staring past you into blue distances. 'I've given long and long hours of thought to the what,' he says, 'the subject of my sculpture. Most times it was animals, in eons past; sometimes some bony peak or-- or tree.' He pauses. 'Not today, I think. Today there is a she. I think or think I think her voice, in my head, in my hands. I think mayhaps she calls for me. Not... not Calls,' he amends carefully, 'not near that strong. But I think she will be glad to see me.'". eeb_nodream enqueues eeb_sculptsequence.

eeb_sculptsequence is a beat in EEB with reaction "He kneels, running delicate hands over the hammer and chisel at his feet, then slowly, carefully hefts them, turning back to the block of stone.[paragraph break]The sun moves through the sky.[paragraph break]Slowly, dimpled curve by softened angle, hair by breast by thigh by mouth, a woman unmelts from the cold hard rock. She is beautiful and austere. [if eebdreamspoken is true]But she is not Lethe, and not Phoebe. [end if]As her face takes shape you see it is a troubled face, twisted by sadness, but something she sees brings a small spark of joy or comfort to it. A protruding lump of stone becomes an outstretched hand, stretching forward in greeting, desperate almost for a kind touch, the warmth of simple skin.[paragraph break]The sun is setting over the waves when Progue steps back, only one eye left for the sculpture to be complete. You should be tired or hungry or sore or bored, but you are none of them. Progue truly is a master, perhaps one of the best you've ever seen.[paragraph break]He turns to you and you know he is moments from gone.". eeb_dream suggests eeb_saynothing. After discussing eeb_sculptsequence: now the time of day is 7:01 PM; continue the action. eeb_sculptsequence cancels eeb_dream.

Instead of hugging ep-Progue when last beat is eeb_sculptsequence: say "You hug Progue and he hugs back, his weatherworn cheek pressed against your neck, and [weatherwornbit]. You step back and he smiles at you, complete. And you know he is ready to leave. He turns to the statue woman."; force discuss eeb_outtro.
Instead of kissing ep-Progue when last beat is eeb_sculptsequence: say "You kiss Progue [if romance of Progue > 3]gently and tenderly, raising one hand to his weatherworn face[else]on each weatherworn cheek, an old custom from past worlds that seems somehow appropriate[end if], and [weatherwornbit]. You step back and he smiles at you, complete. And you know he is ready to leave. He turns to the statue woman."; force discuss eeb_outtro.
Instead of pushing or attacking ep-Progue when last beat is eeb_sculptsequence: say "Here, at this final moment, all the anger and violence has drained from you; you cannot bring yourself to. Progue meets your weary gaze levelly, holds it for a long moment, then turns back to the statue woman."; force discuss eeb_outtro.
Instead of saying farewell to or thanking ep-Progue when last beat is eeb_sculptsequence: say "He clutches your outstretched hand warmly for a long moment.[paragraph break]'I have no words to thank you for all you have given me,' he says, 'but well and here I'm saying some anyway. Moisty hells.' He squeezes temples of eyes suddenly reddening, and laughs in embarrassment, turning it into a sniffle. [cookiemetaphor].' And he turns to the statue woman."; force discuss eeb_outtro.
Instead of giving something to ep-Progue when last beat is eeb_sculptsequence: say "You hand [the noun] to Progue. Wordlessly he accepts it, holds it delicately and studies it in the light of the setting sun. Then he clutches your hand for a long moment.[paragraph break][cookiemetaphor].' And he turns to the statue woman."; force discuss eeb_outtro.
eeb_saynothing is a beat in EEB with reaction "You can think of nothing to say or do or think in this moment, suspended somehow from relentless gravities of time. And it seems that neither can Progue. He stares back, also wordless, for long moments.[paragraph break]But finally something passes between you, perhaps without either of you willing it, and he nods, and breathes, and turns back to the statue woman.". eeb_saynothing enqueues eeb_outtro.
Instead of examining distant ocean when last beat is eeb_sculptsequence: say "You raise a hand in farewell, but Progue grasps it and shakes it vigorously instead.[paragraph break]'I have no words to thank you for all you have given me,' he says, 'but well and here I'm saying some anyway. Moisty hells.' He squeezes temples of eyes suddenly reddening, and laughs in embarrassment, turning it into a sniffle. [cookiemetaphor].' And he turns to the statue woman."; force discuss eeb_outtro. 


To say weatherwornbit: say "it occurs to you that both of you are so worn: by weather, time, and chance: the abrading force of life". To say cookiemetaphor: say "'Friendships are like cookies, someone somewhere said, though,' he sighs, 'I can't remember quite why. Ah well-oh. Goodbye then, wayfarer"

eeb_outtro is a beat in EEB with reaction "The last eye is finished as the sun slips beneath the waves. As twilight grows, the statue seems to gather shadow and suppleness, like dew settling on flowers, as if melding with the indistinct edge of night gives her some animus of life.[paragraph break]Finally in the failing dimness Progue drops his hammer and chisel, staring at her, and takes her hand.[paragraph break]For a sliver of instants you think the stone hand grips his in warm return, pulls him forward...[paragraph break]He is gone.[paragraph break]The stone woman smiles at you, but she is only stone. You are alone now on Lacuna.[paragraph break]But a current runs faintly through your fingertips. The Call has been answered.[paragraph break]And at last you begin to wonder what and where you will paint next."

After discussing eeb_outtro: end the game in victory.

Instead of landmark-going or going or exiting during Epilogue-Ending-B: say "You have unfinished business here.".


Chapter - Epilogue C (Player-centric)

Section - Dream

ep-dr-quick is a person with printed name "Dr. Quick". Understand "dr" or "doctor" or "quick" or "man" or "scientist" as ep-dr-quick. The description is "Finally, you see [if DrQuick is male]him[otherwise]her[end if] with your own eyes.".

EPLN is a thread [Epilogue - Like nobody.] with escape clause epln_escape. Instead of exhausting when ep-dr-quick is enclosed by location: force discuss epln_escape. Instead of getting bored when last beat is in EPLN: force discuss epln_escape. epln_escape is a repeatable dogged ephemeral beat in EPLN with reaction "'Well,' he says, 'but there is more to say.'". epln_escape enqueues epln_intro2.

To say drheshe: say "[if DrQuick is female]s[end if]he". To say drhisher: say "[if DrQuick is female]her[else]his". To say CDrHeShe: say "[if DrQuick is male]He[else]She".

epln_intro is an exciting beat in EPLN with reaction "As you choose the dream sea fades, or rather condenses, resolving into a figure standing before you in the void-- a [if DrQuick is female]wo[end if]man with a shock of white hair, dressed in thick round glasses and a lab coat, and a wry, knowing smile. Dr. [o]Quick[x].". epln_intro suggests epln_intro2. 

epln_intro2 is a beat in EPLN with reaction "'So at last we meet face to face,' [drheshe] says, 'rather than face to dream or face to mind. Although to be quite exact, which I do prefer, I should say this isn't a real meeting either.' Smiling, [drheshe] adjusts [drhisher] glasses. 'No, there's no long distance communication here, no sub-cranial trickery. This is, at long last, just and only a dream.' The doctor raises an eyebrow. 'But nice all the same, don't you think?'". epln_intro2 enqueues epln_samechoice. epln_noanswer replaces epln_intro2.

To say loveorartintro: say "'Psychology is a new field on my world,' the doctor says, scratching [drhisher] white head delicately, 'one I can't particularly be bothered with, to be honest. But I find it curious all the same your reaction to this question which seems to keep cropping up in your life. Love, or art".

epln_samechoice is a beat in EPLN with reaction "[loveorartintro]? Just now again you chose [if second-choice-love is true]that seductive muse, love[else]the lonely path of the artist[end if], just as you did in another dream on another world, quite some subjective time ago.' [CDrHeShe] peers at you critically through the thick round glasses. 'Forgive my forwardness, but I'm curious. Is this a life philosophy you decided on long [epln_ago], or do you simply live in the [epln_moment] and each answer merely felt right at the time? Or,' [drheshe] adds, smiling wryly, 'am I reading too much into this and you no longer [epln_remember] why you made the first choice?'". epln_samechoice suggests epln_noanswer.

Understand "ago" as epln_ago when last beat is in EPLN. epln_ago is a beat in EPLN with keyword name "ago" and reaction "Dr. Quick shakes [drhisher] head. 'You'd made a curious case study for some overeager student in this new psychiatry,' [drheshe] says with a droll smile. 'Constancy in the face of change. Absolute morality in a life divorced from absolutes. Yes, [if player is female]my dear[else]good sir[end if], you are the stuff of which theses are made.'". epln_ago enqueues epln_junction. epln_ago cancels epln_remember, epln_moment.

Understand "moment" as epln_moment when last beat is in EPLN. epln_moment is a beat in EPLN with keyword name "moment" and reaction "'And the theoretically fascinating thing about that,' the doctor says, scratching [drhisher] cheek thoughtfully, 'is that living in the moment is all you're able to do, is built into your very nature. Perhaps there is a capacity in you for change, for reevaluating yourself even to your core beliefs, that we normal folk think we have but most often, in fact, do not.'[paragraph break][CDrHeShe] flashes a droll smile. 'Forgive the waxing,' [drheshe] adds, 'it's just, [if player is female]my dear[else]good sir[end if], that you are the stuff of which theses are made.'". epln_moment enqueues epln_junction. epln_moment cancels epln_remember, epln_ago. 

Understand "remember" as epln_remember when last beat is in EPLN. epln_remember is a beat in EPLN with keyword name "remember" and reaction "Doctor Quick smirks. 'For a scientist,' [drheshe] says, 'I spent inordinate amounts of time worrying about our quest for meaning. We are beings designed to make patterns out of noise. It is immaterial whether the patterns are really there.' [CDrHeShe] adjusts [drhisher] glasses. 'I am a scientist because I was a scientist yesterday. Whatever meaning one attempts to ascribe to that is lost in unreal, untestable, unfalsifiable pasts. We haven't yet invented nihilism in City, but oh, will it hit us hard when we do.'". epln_remember enqueues epln_junction. epln_remember cancels epln_moment, epln_ago. 

epln_diffchoice is a beat in EPLN with reaction "[loveorartintro]? In another dream, on another world, you once chose [if we chose art]art[else]love[end if], but tonight you've instead chosen [if second-choice-love is true]that seductive muse, love[else]the lonely path of the artist[end if]. Forgive my forwardness, but I'm curious. Did something in your [epln_experiences] with my people, or Forest, or Progue, alter your perspectives? Do you simply live in the [epln_moment] and each answer merely felt right at the time? Or,' [drheshe] adds, smiling wryly, 'am I reading too much into this and you no longer [epln_remember] why you once chose differently?". epln_diffchoice suggests epln_noanswer.

epln_noanswer is a beat in EPLN with reaction "'Well, no matter,' [drheshe] says.". epln_noanswer enqueues epln_experiences. epln_experiences replaces epln_noanswer.

Understand "experience/experiences" as epln_experiences when last beat is in EPLN. epln_experiences is a beat in epln with keyword name "experiences" and reaction "'And if I might press farther,' [drheshe] asks, 'was it one of those? [epln_city], [epln_forest], [epln_progue], or something [epln_else]?'". epln_experiences cancels epln_remember, epln_moment. epln_function replaces epln_experiences. epln_experiences suggests epln_else.

Understand "city" as epln_city when last beat is in epln. epln_city is a beat in epln with keyword name "City" and reaction "'I'm not sure whether to be flattered or disturbed,' Doctor Quick says, brushing something distractedly from [drhisher] lab coat. '[if second-choice-love is true]Something about us inspired you to follow your passions, perhaps? Or our tenuousness made you realize what truly mattered to you?[else]Something about our passion for Ideals and Dreams and Capitalized Concepts inspired you, perhaps? Or something convinced you the transformative power of art was worth spending measures of happiness for?[end if] Interesting.'". epln_city enqueues epln_else.[aar]

Understand "forest" as epln_forest when last beat is in epln. epln_forest is a beat in epln with keyword name "Forest" and reaction "Doctor Quick frowns. '[if second-choice-love is true]Something about the soullessness of their sterile world pushed you further towards passion, perhaps?[else]Something about a world and people without art made you glimpse its importance, perhaps?[end if] The contrast with that of my own people brought clarity?'". epln_forest enqueues epln_else.

Understand "progue" as epln_progue when last beat is in epln. epln_progue is a beat in epln with keyword name "Progue" and reaction "The left side of the doctor's mouth twitches. '[if second-choice-love is true]He was a man who'd lost everything he loved, wasn't he?' [drheshe] muses. 'Maybe some things are more important[else]Maybe you needed to meet a man who'd lost his gift,' [drheshe] muses, 'before you could truly appreciate your own[end if].'". epln_progue enqueues epln_else.

Understand "else" as epln_else when last beat is in EPLN. epln_else is a beat in EPLN with keyword name "else" and reaction "[CDrHeShe] smiles quietly. 'Whatever your reasons,' [drheshe] adds, 'and indomitable cynicism aside, it's a good change. [if second-choice-love is true]Art makes mere reflections of life. Love lives it[else]Art makes the world worth loving in[end if].'". epln_else suggests epln_junction. epln_else cancels epln_mature, epln_trust, epln_forest, epln_progue, epln_city. [R4]epln_outtro replaces epln_else.[R4]

epln_junction is a beat. epln_junction enqueues epln_trees. epln_outtro replaces epln_junction.

epln_trees is a beat in EPLN with reaction "'But in the end,' [drheshe] continues delicately, 'you did not choose us. You chose Forest, and now their conjoined civilization will grow and flourish, while ours...'[paragraph break]'Did you think we were not [epln_mature] enough to have access to the somenium? Or did you not [epln_trust] us? Or something [epln_else] I can't guess?'". epln_trees suggests epln_else. epln_outtro replaces epln_trees.

Understand "mature" as epln_mature when last beat is in EPLN. epln_mature is a beat in EPLN with keyword name "mature" and reaction "The doctor pauses, drumming fingers against [drhisher] cheek, considering.[paragraph break]'Hmm,' [heshe] says finally, 'yes, perhaps we are too violent, destructive, unsteady to deserve survival. Perhaps our problems would not be solved by spreading our immature species throughout the galaxy. But perhaps they would. You've robbed us of the chance to find out.'". epln_mature suggests epln_outtro. epln_mature cancels epln_trust, epln_else.

Understand "trust" as epln_trust when last beat is in EPLN. epln_trust is a beat in EPLN with keyword name "trust" and reaction "[CHeShe] sighs. 'The censorship,' he says, 'the ever-growing power of Leader Tall. But it was necessary. If the Greeneyes had bombed the Beast, we'd never have been able to contact you. And even if they'd stolen our somenium, they're a generation away from developing their own technology to contact you. It was the one chance our planet had...' he stops, smiling slightly. 'But you've already made your choice, and I'm just a dream,' he appends. 'The time for convincing is long over.'". epln_trust suggests epln_outtro. epln_trust cancels epln_else, epln_mature. 

epln_rebels is a beat in EPLN with reaction "'And in the end,' [heshe] says levelly, 'you did choose us. You chose City, and now we may have a chance to take a stand against the creeping vines of Forest, to assert that it is possible for one person to both think and do. I thank you for that; our galaxy will be the richer for it.'". epln_rebels suggests epln_outtro.

epln_abstain is a beat in EPLN with reaction "'But in the end,' [heshe] says contemplatively, 'when faced with in the end a vastly more significant choice, you chose to abstain. You rejected the choice between our people and Forest, and left the decision to Fate instead.'[paragraph break]'I won't ask you to justify this decision,' [heshe] says, adjusting [hisher] spectacles, 'but I think I know why you made it. And maybe it's the right one. Time will tell.'". epln_abstain suggests epln_outtro. epln_outtro replaces epln_abstain.

epln_destroy is a beat in EPLN with reaction "'But in the end,' [heshe] says evenly, 'when faced with a vastly more significant choice, you rejected it, with violence. You destroyed the machinery that would have helped either our people or those of Forest, and now we're back where we started.'[paragraph break]'I'm not asking you to justify this decision,' [heshe] says, raising a hand, 'but I think I know why you made it. And maybe it's the right one. Time will tell.'". epln_destroy suggests epln_outtro. epln_outtro replaces epln_destroy.

epln_outtro is a beat in EPLN with reaction "'These are lonely choices,' [heshe] says, stepping backwards slowly into the dark of the void. '[if second-choice-love is true]You say you choose love, but you haven't loved the ones around you. [end if]You are too much like me, I fear; in the end, your life is only big enough for one, all-encompassing thing. My science, and your wayfaring.'[paragraph break][CHeShe] sighs, glasses glinting the last of a now dim and fading night as the shadows swallow him up. 'A lonely road, [heshe] says. 'I wish you the best.' [CHeShe] reaches out a hand to you and then that is all you can see, the rest of [himher] vanished into the dream-void, that one [o]hand[x] and the end of the lab coat's sleeve reaching out towards you.". epln_outtro suggests epln_outtro2.

Understand "hand" as epln_outtro2 when last beat is in EPLN. epln_outtro2 is a terminal beat in EPLN with keyword name "hand" and reaction "You reach out towards the hand, but it is already too late; it has vanished into the void, leaving you utterly alone...". Understand "hand" as ep-dr-quick. Instead of shaking or taking or touching or examining by name ep-dr-quick when last beat is epln_outtro: force discuss epln_outtro2 instead. 


[{This conversation is about the lonliness of wayfaring. To make art is to turn away from life. Is that really what you want? Trigger the [t]final[x] beat.}". epln_intro summons epln_final.

epln_final is a terminal beat in EPLN with keyword name "final" and reaction "{End.}". Understand "final" as epln_final when last beat is epln_intro.]

Section - Coda

[some object used only for metaphorical purposes. Spider or something. A few moves to interact with it, various choices (destroy, help, etc.) before boar appears.]

Epilogue-Ending-C is a scene. Epilogue-Ending-C begins when epln_outtro2 is spoken.

When Epilogue-Ending-C begins:
	say "You snap your eyes open to bleary dawn light.";
	begin chapter 11;
	change the time of day to 6:30 AM; 
	change the time factor to 1;
	move yourself to Forest4; 
	now yourself holds e-spear;
	eec-boararrives in 2 turns from now;
	change the description of boar to "You have never seen these great red-brown creatures except alone, have never seen mates or children. It takes much of patience and a good deal of luck to see them at all. Rooting quietly in the mud at the roots of a tree, the boar is oblivious now to your presence. Your attack must be quick and firm if you hope to kill it.";
	say "You must have dozed off. You crept here to this spot in the black of too-early morning, where you've seen boars foraging in early dawn mist. The [o]spear[x] you've carefully crafted over the past week is held tight in your hands, and all the paints are mixed. Like Lethe and Phoebe before you, all you need now is a hide for canvas.".

At the time when eec-boararrives: move boar to location; say "Suddenly you spot movement from the corner of your eye and see the creature, a lumbering [o]boar[x], fat and sleepy. Perfect. You grip the spear tightly in your hand."; ep-dontkill in 6 turns from now.

An e-spear is a thing with printed name "spear". Understand "spear" as e-spear. The description is "Just bamboo, konokuk husk, and sharpened flint.".

Instead of attacking boar when player holds e-spear: try throwing e-spear at boar.

Instead of throwing e-spear at boar:
	say "Rising to your feet, heart beating tightly high in your chest, you hurl the spear forward with every ounce of strength left in you, fingertips numb with tingles. All the pain of the ones you've lost goes into that throw; all the things you wished you could have done differently. But you can never go back. Only forward.[paragraph break]The spear pierces the soft flank of the boar and sinks deeply into its flesh. The creature spasms with a jagged-edged cry that explodes through the rain forest, flinging birds into the dawn sky in panicked volleys, stilling the movements of every other creature for a mile, so that the echoes of the high, piercing animal shriek die out in utter silence.[paragraph break]Breathing heavy, sweat beading as if you had run a marathon, you step out from your hiding place into the silent forest. The boar struggles feebly but is already slipping towards the dark edge of life, grunting almost quietly to itself as pools of thick and spreading blood seep into the rich loam beneath, drunk by the soil in relish.[paragraph break]You step up to the animal warily and put a hand on its soft flank, as if through touch you can somehow convey that its death will serve a purpose, will have meaning. But moments later all movement stops, its eyes become black wet orbs, and you feel some cold chill shudder the warm mists of the forest and through your hand, as if it was the boar that sent a message to you: life ends with death in the mud, alone.[paragraph break]There is much to do now, and most of it will be tiresome and unpleasant. But it must be done, whether you have the stomach for it or not. And when all is finished you too will leave this world, knowing little more of where you go than the creature cooling before you. And like it, you will never come back.[paragraph break][i]How many worlds...[r][line break]The sun rises, peeking through the swaying arms of the rain forest with hesitant rays.";
	end the game in victory.

At the time when ep-dontkill:
	say "[epgiveup]?[paragraph break]Perhaps there are other ways to find canvas. Perhaps there is more to explore of Lacuna, the mysteries of distant islands and continents. Perhaps there is even another way to leave this world behind, without the need to create a new one...[paragraph break][i]How many worlds...[r][line break]The sun rises, peeking through the swaying arms of the rain forest with hesitant rays.";
	end the game in victory.

To say epgiveup: say "Finally, you lower the spear, and the boar sees or hears and spooks, crying out a single grunt of panic which flings birds into the dawn sky in panicked volleys. It crashes through the underbrush and moments later is gone.[paragraph break]You rub your cramped feet wearily as you stand in the now empty clearing, thoughts a tired clatter.[paragraph break]How many worlds have you moved through, Wayfarer?[paragraph break]Will you ever...?[paragraph break][if won-rebels]It will take a generation or more for the mothballed dreams of City to cross the light-years to Lacuna[else if won-trees]It will take a generation or more for another Egg from the Forest to cross the light-years to Lacuna[else]No one is coming to join you on this lonely island save the whispers of its sad, impotent trees[end if][if Progue is not dead]; Progue is already gone, an achingly smooth sculpture of some muse all he left behind[end if]. Even if you could wait, what would you be waiting for".

suicide-flag is a truth state that varies. Instead of attacking yourself during Epilogue-Ending-C:
	say "[epgiveup]?[paragraph break]It is easy to wedge the spear firmly into the ground, tip pointing upwards, and even easier to climb one of the great, mossy trees. Birds scatter in all directions, wet muddy droplets squeeze from the dew-soaked vines. And as you fall, you know at last the answer to your question.";
	now suicide-flag is true;
	end the game in victory.

Instead of landmark-going or going or exiting during Epilogue-Ending-C: say "You're sure this is the best spot. If you move now you'll blow your cover.".

[The new print the final question rule is listed instead of the print
the final question rule in before handling the final question.]

First before handling the final question rule when the game ended in victory:
	if topics-window is g-present, shut down topics-window; 
	say "Press any key...";
	wait for any key;
	if the psyche of Progue is ignorance, stop; [If we shot ourselves during the Path of Love]
	say "[one of][endsummary][or][stopping]".

To say endsummary: say "[paragraph break]Your ending, like your story, was defined by your choices:[paragraph break]";
	say " -- to put [if we chose love]love above art[else]art above love[end if] (out of 2 options)[line break]";
	say " -- [if The-Path-Of-Love has happened]to stay with Rume rather than answer the Call[else]to answer the Call rather than stay with Rume[end if] (out of 2 options)[line break]";
	say " -- [if story mode]story over puzzles[else]a story with puzzles and problem-solving[end if] (out of 2 options)[line break]";
	say " -- [if player is hale]to proceed with care rather than risk injury[else]to act boldly even though injury resulted[end if] (out of 2 options)[line break]";
	say " -- to develop a relationship with Progue based on (out of 12 options):[line break]";
	say "       [if affinity of Progue > 0]friendship, not enmity[else]enmity, not friendship[end if][line break]";
	say "       [if submission of Progue > 0]dominance, not deference[else]deference, not dominance[end if][line break]";
	if paternalism of Progue >= 2, say "       paternal feelings[line break]";
	if romance of Progue >= 3, say "       romantic feelings[line break]";
[	say "       all of which led Progue to nickname you [animal-nickname] (out of 15 options)[line break]";]
	say " -- [if end-rebels]to give Lacuna to the people of City, rather than Forest[else if end-trees]to give Lacuna to Forest, rather than the people of City[else]to reject the choice between City and Forest (out of 3 options)[end if][line break]";
	say " -- [if ending_2c1 is spoken]to kill to defend that choice[else if ending_1a is spoken or ending_1b is spoken or ending_1c is spoken or ending_1d is spoken]to force Progue to make the final choice[else if ending_2a1 is spoken]to force Progue to fight to defend his decision[else if ending_2b1 is spoken]to force Progue to accept that that choice was no longer his to make[else if ending_2b2 is spoken]to defend that choice even in the face of Progue's desperation[else]to defend that choice against Progue[end if] (out of 6 options)[line break]";
	say " -- [if ep_likeRume]to end your story with Rume[else if ep_likeProgue]to help Progue find his daughters[else]to continue your path alone[end if] (out of 3 options)[line break]";
	say " -- [if suicide-flag is true]to finally, in the end, choose annihilation[else if second-choice-art is true and we chose love]to finally, in the end, choose art[else if second-choice-art is true and we chose art]to reaffirm your choice of art[else if second-choice-love is true and we chose art]to finally, in the end, choose love[else]to reaffirm your choice of love[end if] (out of 4 or 5 options)[paragraph break]";
	say "In addition, the story you heard (out of the cloud of stories within Blue Lacuna) involved hearing [the number of spoken beats] out of [the number of beats] possible bits of dialogue, visiting [the number of visited rooms] out of [the number of rooms - 6] locations, and participating in [the number of completed episodes] out of [the number of episodes] scenes with Progue, over the course of [turn count] turns.[paragraph break]";
	say "If you choose to explore the story again, you can type BACKSTAGE at any prompt to have access to a number of tools that will show you more clearly the mechanics of the story, and allow you to customize things like Progue's feelings towards you and which ending you're aiming towards.[paragraph break]";
	say "Press any key...";
	wait for any key;
	say paragraph break.



Rule for amusing a victorious player:
	say "Have you tried:[line break]
	-- flirting with Progue till he invites you on a date? convincing him you're real by kissing? or slapping him? [line break]
	-- staying with Rume? Or finding a way to return?[line break]
	-- turning the ear on the clockwork head in the Treehouse dream sequence?[line break] 
	-- rescuing Progue in the tsunami? Being rescued yourself? Finding him but leaving him behind?[line break]
	-- switching from being Lethe to Phoebe and back again during the argument at the 'Overgrown Path' flashback?[line break]
	-- Trying to jump over the chasm or climb to the top of the mountain and breaking your leg? Before Progue's decided you're real? After?[line break]
	-- Looking at the sun as it's setting to see the blue flash? More than once?[line break]
	-- Seen the star-rain wit";
	say "h Progue? Been gifted a sweater? Built sand castles with him?[line break]
	-- Reading the moonlight version of the message in the prison cell on the secret island?[line break]
	-- Finding the beached shark by visiting the bottom of the ravine after the tsunami? Saving it?[line break]
	-- Pushing Progue's sculpture off the edge of the volcano (during or shortly after a rainstorm), then speaking to him?[line break]
	-- Taking off your clothes in front of Progue?[line break]
	-- Washing off your face paint and carrying around a garden spade when in the Heart of the Forest, to see how people treat you when they don't know you're the visitor?[line break]
	-- breaking and entering in City? getting arrested there?[line break]
	-- asking the City historian about Weaver Greeneyes?[line break]
	-- meeting the old woman in Forest who sings you a song?[line break]
	-- destroying the pyramid machinery after visiting both worlds? setting it for a password that's different than the one you gave either side? Lying to Progue about which side you chose?".




Lacuna-Epilogue ends here.
