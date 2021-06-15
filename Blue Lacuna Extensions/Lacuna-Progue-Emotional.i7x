Lacuna-Progue-Emotional by Blue Lacuna begins here.

Use authorial modesty.

Table of Emotional Episodes
eptitle
Guess I'm Awake Now
Disappearance

Section - Setup

Transition Progue to Emotional is a scene. Transition Progue to Emotional begins when the psyche of Progue is emotional. Transition Progue to Emotional ends when Transition Progue to Emotional is happening.

When Transition Progue to Emotional begins:
	truncate the list of convo stuff to 0 entries; [get rid of old keywords]
	now episode schedule is Table of Emotional Episodes;
	now the exhaust_beat of Progue is p_em_exhausted;
	now the overexhaust_beat of Progue is p_em_exhausted;
	now the bored_beat of Progue is p_em_bored;
	now the unavailable-beat of Progue is p_em_unavailable;
	now the noanswer_beat of Progue is p_em_noanswer;
	now the rudebye_beat of Progue is p_em_rudebye;
	now the abruptbye_beat of Progue is p_em_abruptbye;
	now the bye_beat of Progue is p_em_bored;
	now the conversation_beat of Progue is p_em_bored;
	now the naughttosay_beat of Progue is p_em_bored;
	now the wakeup_beat of Progue is p_em_wakeup;
	now current_thread of Progue is EmC;
	now disposition of Progue is 0;
	repeat through Table of Progue's Appointment Book:
		blank out the whole row;
	now withered vine is open [if player still hasn't solved this, open up the path for Epilogue. What, maybe it fell down.].

EmC is a thread.

p_em_wakeup is a repeatable beat in EmC with reaction "He stirs slowly, gradually blinking open unfocused eyes.[paragraph break]'What now then,' he mutters, 'what and who...'".

p_em_exhausted is a repeatable ephemeral beat in EmC with reaction "Progue closes his eyes, either not hearing your question or choosing not to respond.".	

p_em_bored is a repeatable terminal beat in EmC with reaction "'Rest,' Progue mutters, 'must rest,' and closes his eyes.".

p_em_unavailable is a repeatable ephemeral beat in EmC with reaction "He shakes his head. 'Not now, not now,' he says.".

p_em_noanswer is a repeatable dogged beat in EmC with reaction "Progue stares at you, silent and haggard, awaiting your response.".

p_em_rudebye is a repeatable ephemeral beat in EmC with reaction "'Wait,' Progue calls out, raising a weak hand, 'just a moment more.'".

p_em_abruptbye is a repeatable annoying beat in EmC with reaction "Progue watches you silently as you go.".

Instead of pushing or attacking Progue when the psyche of Progue is emotional, force discuss p_em_attack. p_em_attack is a terminal unaffinitive unromantic submissive beat in EmC with reaction "He [if submission of Progue > 0]cries out weakly and shrinks away[otherwise]watches you unblinkingly[end if] as you approach, [if affinity of Progue > 0]but you can't bring yourself to hurt him[otherwise]and you give him a savage kick[end if]. He closes his eyes and trembles.". p_em_attack2 is a terminal unaffinitive unromantic submissive beat with reaction "You move forward again with anger but suddenly Progue leaps to his feet, dodging away from you and fleeing at breakneck speed out the door of the cabin. By the time you reach the door to look out he has vanished.". After discussing p_em_attack2: move Progue to Ledge; now the psyche of Progue is fugue; continue the action.

Instead of hugging Progue when the psyche of Progue is emotional, force discuss p_em_hug.

p_em_hug is an affinitive impressive dogged beat in EmC. The reaction is "[if affinity of Progue < 0][pemunaffhug][otherwise if paternalism of Progue > 2][pempathug][otherwise if romance of Progue > 0][pemromhug][otherwise][pemnormhug][end if]". After discussing p_em_hug: if paternalism of Progue > 0, Progue feels more like a father; otherwise Progue is aroused; continue the action. p_em_bored replaces p_em_hug. To say pemunaffhug: say "'Get back,' Progue says, [if submission of Progue > 0]shrinking back in fear[otherwise]snarling angrily at you[end if], and you realize he's sure you're going to hurt him, so you stop.". To say pempathug: say "He places a weak hand on your back as you hug him. 'Thanks, [animal-nickname],' he says quietly, eyes unfocused. 'Tell your mother I love her.' You pull back and he smiles up at you, unrecognizing for the moment.". To say pemromhug: say "[if romance of Progue > 4]You lie next to Progue and hold him for a long moment. He sighs and squeezes your hand.[otherwise]You give Progue a long, tender hug. He clutches you weakly, a faint smile crossing his lips as you break the embrace.[end if]". To say pemnormhug: say "You give Progue a quick hug. He feels weak and frail.'".

[Instead of waking or greeting Progue when the animus of Progue is resting and the psyche of Progue is emotional, say "You should probably let him get his rest.".]

Section - Keywords

Understand "pyramid" as ec_pyramid when last beat is in EmC. ec_pyramid is a beat in EmC with fuse 9999 and keyword name "pyramid". Instead of discussing ec_pyramid, force discuss ec_dangerous. pyramid references ec_pyramid.

Understand "chair" as ec_chair when last beat is in EmC. ec_chair is a beat in EmC with fuse 9999 and keyword name "chair". Instead of discussing ec_chair, force discuss ec_dangerous. mind chair references ec_chair.

Understand "echo/cave" as ec_echocave when last beat is in EmC. ec_echocave is a beat in EmC with fuse 9999 and keyword name "echo cave". Instead of discussing ec_echocave, force discuss ec_dangerous. strange formations references ec_echocave.

Understand "windsigh/tree/tree9/trees" as ec_windsigh when last beat is in EmC. ec_windsigh is a repeatable beat in EmC with fuse 9999 and keyword name "[if tree1 is named]windsigh[else]trees" and reaction "'[one of]The windsigh[or]Windsigh trees[or]Gushing trickling windsigh tree[at random],' he says, muttering, and thrashing for a weak moment. '[one of]Never stop whispering[or]Dreams and dreams and dreams[or]Why won't they leave me alone[at random]...'". After discussing ec_windsigh: now tree1 is named; continue the action. manta ray skeleton references ec_windsigh. [This is repeatable so that we have a surefire way to learn Progue's name for this (and the next two.)]

Understand "coconut/konokuk/fruits/fruit" as ec_konokuk when last beat is in EmC. ec_konokuk is a repeatable beat in EmC with fuse 9999 and keyword name "[if konokuk trees are named]konokuk[else]coconut" and reaction "'[one of]Brown fruity cannonballs, the konokuk[or]Delicious konokuk fruits[or]Konokuk, on the beach[at random],' he babbles, sweating, '[one of]Kept me alive years and fears and fears[or]Always konokuk in every world[or]Crack them open and eat and eat[at random]...'". After discussing ec_konokuk: now konokuk trees are named; continue the action. manta ray skeleton references ec_konokuk.

Understand "galaxy/capalla" as ec_capalla when last beat is in EmC. ec_capalla is a repeatable beat in EmC with fuse 9999 and keyword name "[if galaxy is named]Capalla[else]galaxy" and reaction "'[one of]The great galaxy Capalla[or]Capalla, Capalla, this galaxy[at random],' he mutters, eyes closed, '[one of]the stars, the stars[or]too bright it shines[at random]...'". After discussing ec_capalla: now galaxy is named; continue the action. manta ray skeleton references ec_capalla.

ec_dangerous is a beat in EmC with fuse 9999 and reaction "[one of]He becomes distressed as you talk. 'No, no,' he moans, covering his ears, 'terrible dangerous, incomprehensible coherencies. The beach, no, can't bear it. Please, stay away, don't dream, don't sleep. Please.'[paragraph break]He calms after a moment, taking a few deep breaths. 'But then but maybe,' he says, 'maybe you can, where I couldn't-- the moon, you ring? The moonlight. Rayfish ink glows in the heat from your hand, wrote-- the real secrets, appended to all the messages, in rayfish ink.' He swallows. 'If you true want to know, read them in and under the night.'[or][ec_moonhint2][stopping]". To say ec_moonhint2: say "[one of]He becomes angry and agitated again[or]He closes his eyes and thrashes around on the ground as you begin talking[or]He moans and rubs a hand against his temples as you begin to speak[in random order]. 'Told you,' he says, 'can't help you, can't think, can't member the rememories. Keep away, my advice, don't meddle. But if you must, remember the night writing. Touch it, touch it to read...'".



Chapter - Guess I'm Awake Now

[When the player first returns to check on Progue after the near-drowning, this conversation ensues. We can get a sense of how much of what he did was suicidal. Perhaps even revealling that he intended to commit suicide even before you arrived. Tempered by explanations vis a vis the various archetypes. ]

Guess I'm Awake Now is a serendipitous guaranteed triggered episode. The icebreaker is gian_intro0. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence.

First condition for Guess I'm Awake Now:
	if location is Hut, rule succeeds. 

A commencement rule for Guess I'm Awake Now:
	now the animus of Progue is convalescing;
	now conversation fuse is 5. [so we'll start immediately.]

A finishing rule for Guess I'm Awake Now:
	if location is not regionally in Lacuna and location is not regionally in Dreamlands, rule succeeds.[In case this gets stuck, make sure it ends when we visit subworlds.]

A completion rule for Guess I'm Awake Now:
	Progue starts resting.

Check going when location is Hut and the psyche of Progue is emotional and Progue is enclosed by location and gian_intro0 is unspoken and gian_check is 0: now gian_check is 1; say "It looks like Progue is about to wake up." instead. gian_check is a number that varies. [ If players leave the room on their first move after rescuing Progue, this scene never gets triggered. ]

GIAN is a thread. gian_intro0 is an insistent beat in gian with reaction "Progue coughs and stirs, blinking his eyes blearily, unable to focus them.[paragraph break]'[']sat you? Tama? Who's--?' he trails off uncertainly, looking up with blearily unfocused eyes. He tries to say something else but coughs weakly.". gian_intro0 suggests gian_intro.

gian_intro is an insistent beat in gian with reaction "It is long moments before he recovers himself enough to talk.[paragraph break]'Ehh, nevermine who,' he mutters vaguely, running a hand through his thinning hair, 'not, not who, do... what's in matters is, do I trust you, eh?'". The yes-beat of gian_intro is gian_trustyes. The no-beat of gian_intro is gian_trustno. gian_intro suggests gian_trustyes.

gian_trustyes is a beat in gian with keyword name "yes" and reaction "He grunts. 'Fine oh well then. Fine fine. Have to tell. Thing, some-- [gian_memories] came rolling and reaping in the dark last, so many memories, in the-- and I membered, membered it all and every and what I'd and why they-- my [gian_girls]--' He trails off, tears forming in his eyes.". gian_trustyes suggests gian_memories.

Understand "girls" as gian_girls when last beat is in gian. gian_girls is a beat in gian with keyword name "girls" and reaction "'What I remembered I remembered,' he says, 'I remember now why they left. I left. Because. I left them. I left them three times. When we came here, one, grieving, not seeing them; the dreams, the plans, two, not watching over them, and; three, three, at the end, when I couldn't decide, couldn't make the-- and slipped through grim morosities, and lived mad while they lived, until they left, left, left...' He squeezes his eyes painfully shut, and swallows.". gian_girls suggests gian_memories. 

gian_trustno is a beat in gian with keyword name "no" and reaction "He squints his eyes, staring up at you suspiciously. 'Aha then,' he says, 'then I won't tell you, tell you, alone then I'll just have my [gian_memories], memories, of me and the [gian_girls] and memories and me...' He trails off, looking lost, out the brightness of the open door towards the sea.". gian_trustno suggests gian_memories.

Understand "memories" as gian_memories when last beat is in gian. gian_memories is a beat in gian with keyword name "memories" and reaction "'And membered I'd membered before,' he goes on, 'and membered and lost and membered and lost but each but this time, this time-- and the [gian_rayfish], they came back, back to the bay, again again-- but so far, they-- so much farther out than before, I could hardly barely see-- almost-- and [gian_swam] out to-- so far--' He raises a hand as if to point, then lets it fall back into his lap bonelessly.". gian_memories suggests gian_nexus. gian_nexus replaces gian_memories.

Understand "swam" as gian_swam when last beat is in gian. gian_Swam is a beat in gian with keyword name "swam" and reaction "'Swim swam swim swam,' he mutters, eyes flitting closed, 'swim swim away.'". gian_swam enqueues gian_nexus.

Understand "jellyfish" as gian_Rayfish when last beat is in gian. gian_rayfish is a beat in gian with keyword name "jellyfish" and reaction "'So pretty, and didn't I promise? But then and no no no, it was before long befores I wanted to swim with them, wasn't it? Wasn't-- don't know, don't member, remember...' He slumps back, blinking slowly, lost in himself.". gian_rayfish suggests gian_nexus.

gian_nexus is a repeatable beat in gian. gian_nexus enqueues gian_like.

Before discussing gian_nexus:
	if paternalism of Progue >= 2:
		now gian_nexus enqueues gian_paternal;
	if romance of Progue >= 3:
		now gian_nexus enqueues gian_romance;
	else if romance of Progue < 0:
		now gian_nexus enqueues gian_bitterromance;
	else if affinity of Progue < -2:
		now gian_nexus enqueues gian_dontlike;
	else if submission of Progue >= 3:
		now gian_nexus enqueues gian_submission;
	else if submission of Progue <= -3:
		now gian_nexus enqueues gian_unsub;
	continue the action.

To say giantrust:
	say "He focuses on you again. ";
	if gian_trustyes is spoken:
		Progue likes you more, silently;
		say "'Right, you're right do, I do trust you,' he says. ";
	otherwise:
		say "'You, you were wrong-- I do trust you,' he says. ".

To say giandonttrust:
	say "He focuses on you again, frowning. ";
	if gian_trustyes is spoken:
		Progue likes you less, silently;
		say "'Liaring,' he says angrily, 'I don't, don't trust you. Tricked me. Of you. Typical.' He coughs. ";
	otherwise:
		Progue likes you more, silently;
		say "'Right,' he says, 'right, you were right. I don't trust, trust you.' He coughs. ".

gian_paternal is a beat in gian with reaction "[giantrust]'Lethe,' he adds, then frowns. 'No no no-- not Lethe but something more the same, more the same-- my could be [if player is female]daughter[otherwise]son[end if] maybe in other realdoms, separate beings--'.". gian_paternal enqueues gian_goodtimes.

gian_romance is a beat in gian with reaction "[giantrust]'You're the one, the, who showed me again what-- love, never thought I'd--' he trails off, coughing again.'". gian_romance enqueues gian_goodtimes.

gian_bitterromance is a beat in gian with reaction "[giandonttrust]'Thought mayhaps you'd show me, remember, something I'd, this was lost. Love. But you're just the same. False as blue pigs, heartbreak, frayed lifelines--' he trails off, coughing again.". gian_bitterromance enqueues gian_goodtimes.

gian_dontlike is a beat in gian with reaction "[giandonttrust]'[if affinity of Progue < -5]No friend of mine, you, wayloper, interfarer, unwanted, unkindnesses and cruelty[otherwise]We, me, not the same as you, too different, don't get along, along[end if].' He swallows. '[if episodic status of Rayfish Suicide is failed]Left me to drown, drown down there in the sea. Bastard. You should drown, you should down, murderer, murderer[otherwise if Progue Rescue ended unsuccessfully]Left me to die, dry land sinks under waves, that night you saw and turned your back on me, bastard. Should have let you drown, down, fall, sink[otherwise]Haven't tried to kill me at least I suppose so far so, well oh, points in your favor[end if]...'". gian_dontlike enqueues gian_goodtimes.

gian_submission is a beat in gian with reaction "[giantrust]'You're the one who came and told and led and made me, what to do. You know best now, no, best is best and you're the one who does and I'm the one who doesn't...'". gian_submission enqueues gian_goodtimes.

gian_unsub is a beat in gian with reaction "[if affinity of Progue > 0][giantrust][else][giandonttrust][end if]'You need me you do, don't know where to what to how to without me, always asking for help, what will you, must get well to tell you, show you what must be, be done.'". gian_unsub enqueues gian_goodtimes. 

gian_like is a beat in gian with reaction "[giantrust]'You're a friend, thoughts alike or something thatwise. Before and before you came I thought I'd never make another. Friend. Another friend.'". gian_like enqueues gian_goodtimes. gian_goodtimes replaces gian_like.

gian_goodtimes is a beat in gian with reaction "'[if Word Day is successful]That [time-wd-started] we met on Word Day by the boulders[otherwise]day we met[end if], you appearing from the blue lacuna, [giangtnm]and I found my name and lost the Creeper, [if cc_1 is spoken]first question first[otherwise if cc_2 is spoken]second question first[otherwise]third question first[end if], [giangt2]". gian_goodtimes suggests gian_outtro. gian_outtro replaces gian_goodtimes.

To say giangt2:
	if cc_all3 is unspoken, say "and first a [if cc_sculptor is spoken]sculptor[otherwise if cc_father is spoken]father[otherwise]madman, ha[end if], first and always and always";
	else say "and a father and sculptor and madman at once";
	let happenings be the list of verbosely described completed episodes;
	sort happenings in random order;
	truncate happenings to 3 entries;
	say ", [happenings]";
	say "...'[paragraph break]'You brought me back from wheres and somes but not far, far enough, far enough...'". 

Rule for printing the name of an episode (called ep) when current episode is Guess I'm Awake Now: say summary of ep.

To say giangtnm: if player-name-guess is not "no.guess", say "and how you remembered my name, not [player-name-guess] but Progue, Progue, Progue, ".

gian_outtro is a terminal beat in gian with reaction "He focuses on you again. 'Couldn't decide,' he says, 'in the end in the end in the end. What drove me. And them away, Lethe, Phoebe. The decision, I could never, never...'[paragraph break]He shakes his head, and seems to want to say more, but cannot get any words out. Finally he shudders and closes his eyes again. At long last he murmurs, 'Only the past answers now. There's a secret ink, a special secret ink I made from the rayfish. Glows when heated, glows when touched. Look for the writings, scrawlings about and around and aroundabout, and touch them at night, under the stars-- new words will glow, like the rayfish, like the rayfish-- all of all my answers.'[paragraph break]He sinks back into his bedding, cold sweat beading on his forehead. 'You now,' he says, eyes closed, 'finish, finish what I-- or go, wayfare on away, away...'[paragraph break]Murmuring under his breath, he slowly slips back into uneasy sleep."


Chapter - Clean My Beach

Clean My Beach is a frequent serendipitous episode. The icebreaker is cmb_intro.

CMB is a thread. cmb_intro is a beat in cmb with reaction "'My beach, my beach,' Progue mutters, staring past you, out the door. 'Without my vigilence it's become a mess.'[paragraph break]He peers up at you intently. '[if submission of Progue > 0]Would you clean it for me?[otherwise]Clean it for me[end if],' he says.". cmb_intro summons cmb_yes, cmb_cant, cmb_wont. The yes-beat of cmb_intro is cmb_yes.

cmb_yes is an impressive terminal beat in CMB with reaction "He nods in [if submission of Progue  > 0]surprise and gratitude[otherwise]acceptance[end if]. 'Good,' he says, 'far more important than dreams and pyramids and whatever and whatever. Tell me, tell me when you're finished.' He closes his eyes again.".

cmb_cant is an annoying terminal beat in CMB with reaction "He grunts, face falling in disappointment. 'Then it's over,' he says, 'the beach will never be-- not again, can't--' he struggles for words, then gives up, shrugging. 'Our own choices,' he mutters.'".

cmb_wont is an annoying unaffinitive submissive terminal beat in CMB with reaction "He looks up at you angriy. 'Don't understand,' he says, 'doing wrong... the beach is what's important, what's important...' He turns away. 'Go then and go. And go and go.'".







Chapter - Disappearance

Disappearance is a guaranteed instant triggered episode.

A condition for Disappearance:
	if Progue is enclosed by location, rule fails;
	if the number of contacted windsigh trees is 7, rule succeeds.

A commencement rule for Disappearance:
	now the psyche of Progue is fugue.

A finishing rule for Disappearance:
	if the psyche of Progue is fugue, rule succeeds.

Noticing-Disappearance is a triggered guaranteed instant episode.

A condition for Noticing-Disappearance:
	if location is Hut, rule succeeds.

A commencement rule for Noticing-Disappearance:
	say "That's funny. Progue was here, but now he's gone.".

A finishing rule for Noticing-Disappearance: rule succeeds.

Chapter - Fugue

Transition Progue to Fugue is a scene. Transition Progue to Fugue begins when the psyche of Progue is fugue. Transition Progue to Fugue ends when Transition Progue to Fugue begins.

When Transition Progue to Fugue begins:
	Progue starts hiding;
	remove Progue from play;
	now episode schedule is Table of Fugue Episodes.

Every turn when the psyche of Progue is fugue:
	now the activity counter of Progue is 0.

Table of Fugue Episodes
eptitle
Final Confrontation


Chapter - Bring Me

[Progue, sick and in bed, asks the player to bring him something from the ledge. If the player complies, and depending on what the player brings, adjust points accordingly. ]

[Bring Me is a scene. Bring Me begins when the psyche of Progue is emotional and Progue is enclosed by location and we are going and a random chance of 1 in 3 succeeds.

When Bring Me begins:
	pre-conversation processing;
	force discuss bm_intro.

bm_intro is a beat with reaction "Progue coughs, weakly. 'Nice of you to visit,' he wheezes, 'my old hallucination. If only that were all you were. I might be able to die with some dignity.[paragraph break]{In this scene Progue asks you to do something for him. Based on your actions, you can either strengthen or weaken his paternal feelings towards you (moredad or lessdad) or his feeling of submission to you (moresub or lesssub).}".

Bring Me ends when we have discussed bm_intro.]

[Brought Me is a scene. Brought Me begins when Bring Me has happened and Progue is enclosed by location and the psyche of Progue is emotional and the player carries berry-fruit.]

[ what could we bring Progue? hammer, sketchbook, berries, compass, seed cones, konokuk, leaves, seashell
]

Chapter - Loss




Lacuna-Progue-Emotional ends here.
