Lacuna-Progue-Uncertainty by Blue Lacuna begins here.

Use authorial modesty.

Book - Uncertainty

Table of Uncertainty Episodes
eptitle
Rayfish Suicide
Uncertainty General Convo
Post-Storm Conversation
Heading Up
Hey That's Mine
A Good Cry
Rainfall Rhapsody
Older And Wiser
Fatherly Advice
Meteor Shower Invite
Used To Bring Me
Constant Ringing
Art Critic
Walk Invitation
A Simple Warning
Unexpected Present
Disappearance

Section - Uncertainty Setup

Transition Progue to Uncertainty is a scene. Transition Progue to Uncertainty begins when the psyche of Progue is uncertainty. Transition Progue to Uncertainty ends when Transition Progue to Uncertainty begins.

When Transition Progue to Uncertainty begins:
	truncate the list of convo stuff to 0 entries; [get rid of old keywords]
	[repeat with bt running through beats summoned by suppression keywords begin;
		now fuse of bt is 0;
	end repeat;] [ and keep them from coming back. ]
	now episode schedule is Table of Uncertainty Episodes;
	now current_thread of Progue is UncertainC;
	now the conversation_beat of Progue is uc_makeconversation; [these two lines were commented out; why? ]
	now the exhaust_beat of Progue is p_unc_exhausted;
	now the overexhaust_beat of Progue is p_unc_overexhaust;
	now the disgusted_beat of Progue is p_unc_dontlike;
	now the dontlike_beat of Progue is p_unc_dontlike;
	now the bored_beat of Progue is p_unc_bored;
	now the unavailable-beat of Progue is p_supp_unavailable;
	now the noanswer_beat of Progue is p_unc_noanswer;
	now the angryending_beat of progue is p_unc_angryending;
	now the randomyes_beat of Progue is p_unc_randomyes;
	now the randomno_beat of Progue is p_unc_randomno;
	now the rudebye_beat of Progue is p_unc_rudebye;
	now the abruptbye_beat of Progue is p_unc_abruptbye;
	now the redundantbye_beat of Progue is p_unc_cantfollow;
	now the redundanthi_beat of Progue is p_unc_cantfollow;
	now the bye_beat of Progue is p_unc_bye;
	now disposition of Progue is 0;
	now the naughttosay_beat of Progue is p_unc_naughttosay.
	

Section - Standard Uncertainty Behavior

UncertainC is a thread.

p_unc_naughttosay is a repeatable terminal beat in UncertainC with reaction "'[one of]Sorries, [animal-nickname], I think I need to be alone for a while now[or]Let's talk later, [animal-nickname]; I'm gathering a pounding headache[or]I need some time alone now, I think[in random order],' he says, [animus-business]. '[one of]We'll talk again soon[or]Let's take a rest for now[or]We'll chat again before too much longering[in random order]. [pgb2].'".[aar]

p_unc_exhausted is a repeatable ephemeral beat in UncertainC with reaction "'[one of]That's all[or]I wish I could remember more, [animal-nickname], but I'm bats at noon[or]Sorry, I don't know anything else about it[in random order],' Progue says tiredly, [one of]rubbing his knuckles against his temple[or]sighing[in random order].".

p_unc_overexhaust is a repeatable terminal beat in UncertainC with reaction "[if romance of Progue > 0]'Look, [animal-nickname], you're sweet,' Progue says, 'but I've been alone for baskets of years. I'm not used to all this human being. Come back later, eh? I'd be gushing grateful.' He smiles and winks at you.[otherwise if affinity of Progue < 0]'All right, that's enough for now,' Progue says angrily. 'Why don't you go off and leave me in peace for a while? Eh?' [Progue-resumes].[otherwise if paternalism of Progue > 0]Progue smiles, a bit strained. 'Would you mind letting me on my own for a while, [animal-nickname]?' he asks. 'My brain aches something terrible.'[otherwise if submission of Progue < -2]'I think I'm done talking for a while,' Progue says, rubbing his knuckles against his head. 'Come back later and we'll talk more.'[otherwise][reaction of pd_overexhausted][end if]". After discussing p_unc_overexhaust: Progue's life goes on, as before.

p_unc_dontlike is a repeatable beat in UncertainC with reaction "[if affinity of Progue > 0][uncdontlikeaff][otherwise][uncdontlikeunaff]". To say uncdontlikeaff: say "'[one of]Please, not right now[or]Sorry, I just can't talk right now[or]Oh [animal-nickname], I need to be alone just now[in random order],' Progue says. '[one of]Later, later[or]We'll talk later[or]Perhaps in a few hours[in random order].'". To say uncdontlikeunaff: say "[reaction of pd_dontlike]".

p_unc_bored is a repeatable terminal beat in UncertainC with reaction "[one of]Progue looks distracted, and you realize he's not really paying any attention to you any more.[or]'Sorry,' Progue says, shaking his head, 'what did you say? I'm drifting.'[or]Progue focuses on [Progue-animus], turning away from you and mumbling something about not being in the mood for conversation.[or]'I'm boring you,' Progue says vaguely, [attitude-business]. 'I'll just get back to my [Progue-animus].'[in random order]".

p_unc_unavailable is a repeatable ephemeral beat in UncertainC with reaction "[one of]'No,' Progue says, 'can we hold off on that for just a minute?'[or]'Sorries,' Progue says, 'let's finish up what we were talking about before.'[in random order]".

p_unc_noanswer is a repeatable dogged beat in UncertainC with reaction "[if paternalism of Progue > 0]Folding his arms, [otherwise if submission of Progue < 0]Staring straight at you, [otherwise if affinity of Progue < 0]Frowning, [end if]Progue waits silently for your reply.". p_unc_noanswer suggests p_unc_angryending. Instead of discussing p_unc_noanswer when actual last beat is p_unc_noanswer, try getting bored Progue. 

p_unc_angryending is a terminal beat in UncertainC. The reaction is "Without a word, Progue turns away.". After discussing p_unc_angryending: Progue's life goes on; continue the action.

p_unc_cantfollow is a repeatable ephemeral beat in UncertainC with reaction "'[one of]What's that[or]Sorries, come again[or]Eh[in random order]?' Progue says, [one of]rubbing his knuckles against his head[or][attitude-business][at random]. '[one of]I'm sorry, I'm having trouble following you.[or]This headache... I really have no idea what we're talking about.[in random order]'". 

p_unc_randomyes is a repeatable ephemeral beat in UncertainC with reaction "'[one of]Wonderful[or]Fantastic[or]Glad to hear[or]Gushing nice[at random],' he says absently, rubbing his knuckles against his head.".

p_unc_randomno is a repeatable ephemeral beat in UncertainC with reaction "'[one of]Terrible sorries[or]Ah well-oh[or]A trickling shame[or]Too bad[at random],' he says, not really paying attention.".

p_unc_rudebye is a repeatable ephemeral beat in UncertainC with reaction "'[one of]Half a moment[or]Hold on[or]Just a minute[in random order], Progue says.".

p_unc_abruptbye is a repeatable annoying beat in UncertainC with reaction "[if submission of Progue > 0]Progue does not respond as you walk away[otherwise if submission of Progue < 0]'Later maybe,' Progue says gruffly to your back as you move away[otherwise if affinity of Progue < 0]Progue ignores you as you depart[otherwise if affinity of Progue > 0]'Take care then,' Progue says sadly as you depart[otherwise]'Good [progue-time-of-day], then,' Progue says as you depart[end if].".

Instead of pushing Progue when the psyche of Progue is uncertainty, force discuss uc_push. uc_push is an ephemeral beat with reaction "You give Progue a hard shove. He staggers backwards, looking up at you with a [if paternalism of Progue > 1]stern[otherwise if affinity of Progue > 0]hurt[otherwise if romance of Progue < 0]bitter[otherwise]angry[end if] expression. '[if submission of Progue > 0]Please don't do that,[otherwise]What in the moisty hells do you think you're doing?[end if] he says.". uc_push2 replaces uc_push. uc_push2 is an annoying unaffinitive unromantic submissive beat with reaction "You shove Progue again. He [if submission of Progue > 3]falls back hard to the [surface-material], looking beaten[otherwise if submission of Progue > 0]staggers backwards, looking sullen, but doesn't try to retaliate[otherwise if submission of Progue < -3]grabs your hand and twists it, causing you to cry out in pain[otherwise]steps forward and pushes you back, snarling at you angrily[end if]. '[if paternalism of Progue > 0]I expected better from you[otherwise if affinity of Progue < 0]I expect nothing less from you[otherwise if submission of Progue > 0]Why don't you just leave me alone[otherwise]I'm through playing games with you[end if],' he says.". uc_push3 replaces uc_push2. uc_push3 is an unaffinitive annoying unromantic submissive terminal repeatable beat with reaction "[if submission of Progue > 0]Progue staggers back, then turns and runs[otherwise]Progue punches you in the face, then turns and walks away[end if] across the [surface-material], [if romance of Progue > 0]looking back at you once with tears in his eyes[otherwise if affinity of Progue > 0]shaking his head sadly[otherwise]looking back at you once with a furious gaze[end if].". After discussing uc_push3: if romance of Progue > 4, Progue is heartbroken; now dont_describe_Progue is true; Progue's life goes on; follow the Progue's motivation rule; continue the action.

Instead of attacking Progue when the psyche of Progue is uncertainty, force discuss uc_push3.

p_unc_bye is an impressive repeatable beat in UncertainC with reaction "[if affinity of Progue > 2 and a random chance of 1 in 2 succeeds][puncaffbye][otherwise if affinity of Progue < 2 and a random chance of 1 in 2 succeeds][puncunaffbye][otherwise if paternalism of Progue > 2 and a random chance of 1 in 2 succeeds][puncpatbye][otherwise if romance of Progue > 1 and a random chance of 2 in 3 succeeds][puncrombye][otherwise if submission of Progue < -2 and a random chance of 1 in 2 succeeds][puncunsubbye][otherwise][puncnormbye][end if]". To say puncaffbye: say "'[one of]Until later, then, my friend[or]Be careful out there[or]Enjoy the [progue-time-of-day], [if player is male]my good sir[otherwise]dear lady[end if][in random order],' Progue calls out, [animus-business].". To say puncpatbye: say "'[one of]Be careful, now,' Progue calls out fondly, [animus-business][or]Stay away from those trees, mind,' Progue replies, [animus-business][or]Don't get into trouble,' Progue says with a wink, tousling your hair[in random order].". To say puncrombye: say "'[one of]Catch you later,' Progue says with a wink, 'I hope.'[or]Leaving so soon?' he says with a look of disappointment. 'Well, come back when you can.'[or]I shall count the ments till you return,' he says with a wink, a mock bow and a genuine smile.[in random order] [Progue-resumes].". To say puncunsubbye: say "'[one of]Don't be too long! I never know when you might come in useful![or]Yes, you can go now, we're through here,[or]Keep on this side of the island, like I told you,[in random order]' he says [one of]firmly[or]loudly[in random order] as you leave, [animus-business].". To say puncunaffbye: say "'[one of]Sausages[or]I suppose so[or]If you say[or]And good riddance[in random order],' Progue [one of]mutters after you[or]replies grumpily[or]says to himself[in random order], [animus-business].". To say puncnormbye: say reaction of p_supp_bye.

Instead of hugging Progue when the psyche of Progue is uncertainty, force discuss p_unc_hug.

p_unc_hug is an affinitive impressive dogged beat in UncertainC. The reaction is "[if affinity of Progue < 0][puncunaffhug][otherwise if paternalism of Progue > 2][puncpathug][otherwise if romance of Progue > 0][puncromhug][otherwise][puncnormhug][end if]". After discussing p_unc_hug: if paternalism of Progue > 0, Progue feels more like a father; otherwise Progue is aroused; continue the action. p_unc_hug2 replaces p_unc_hug. To say puncunaffhug: say "'Moisty hells, what-- what are you--' Progue protests as you put your arms around him. 'This is ridiculous,' he says, trying to break away, 'unhand me!' As you pull back, he flashes you a put-upon look, and mutters to himself, [animus-business], but his demeanor towards you does seem a little softer.". To say puncpathug: say "Progue returns your hug tenderly, patting you on the back. '[']salright, [']salright,' he says, though you're uncertain who he's talking to. 'Oh, it feels good to hug someone again though, doesn't it?' He pulls back and smiles at you tenderly.". To say puncromhug: say "[if romance of Progue > 4]Progue hugs you back warmly, squeezing your shoulders with his strong sculptor's hands. 'Mmm,' he says warmly in your ear, 'I missed you too.' Finally releasing you, he keeps his hand on your shoulders for a long moment, staring deeply into your eyes with a smile, then steps back.[otherwise if romance of Progue > 2]Progue hugs you back warmly, squeezing your shoulders with his strong sculptor's hands. 'Oh, that was nice,' he says, stepping back. 'Oh, I've forgotten how nice that feels. Thank you.' He smiles.[otherwise]'What's this now?' Progue says in surprise as you hug him. 'My oh my!' He returns your embrace warmly, smiling as you step apart. 'You're a kind one, [animal-nickname],' he says with a warm smile, 'thanks.'[end if]". To say puncnormhug: say "Progue seems a bit surprised, but returns your embrace warmly. 'Ah,' he says, 'I'd almost forgotten what that feels like. Thanks, friend.'".

p_unc_hug2 is a repeatable annoying dogged beat in UncertainC with reaction "[if affinity of Progue < 0][puncunaffhug2][otherwise if paternalism of Progue > 2][puncpathug2][otherwise if romance of Progue > 0][puncromhug2][otherwise][puncnormhug2][end if]". To say puncunaffhug2: say "'[one of]That's quite enough of those for now[or]Yes, all right, thank you, I'm fine[or]Gushing sweet of you but really, I'm in the middle of this[in random order],' Progue says, drawing back firmly.". To say puncpathug2: say "He hugs you again briefly, patting your back. '[one of]I'm glad you're around[or]Good to have company here again[or]Nice to have someone I can feel responsible for again[in random order],' he says warmly.". To say puncromhug2: say "You embrace Progue again, squeezing him tightly. '[one of]Can't get enough of that[or]My now, you're a warm one[or]Didn't think this island could get any more pleasant[in random order],' he says with a smile, rubbing your back.". To say puncnormhug2: say "He returns your embrace, smiling. '[one of]Good to see you, too[or]Nice to see a friendly face[or]Glad to see you're still around[in random order],' he says.".

Instead of kissing Progue when the psyche of Progue is uncertainty:
	now Progue is attentive;
	if romance of Progue < -1 begin;
		force discuss the disgusted_beat of Progue;
		Progue's life goes on;
		follow the Progue's motivation rule;
	otherwise if romance of Progue > 4;
		force discuss p_unc_kissing;
	otherwise if romance of Progue >= 2;
		force discuss p_supp_flirting;
	otherwise if affinity of Progue < -1;
		force discuss p_supp_nokissing;
	otherwise;
		force discuss p_d_nokissyet;
	end if.

p_unc_kissing is a romantic impressive beat in SuppC with reaction "You kiss Progue passionately. When at last you break away he smiles dazzlingly. 'Don't tell the ocean,' he winks, 'but this gushing beats Word Day by blue miles.'". p_unc_kissing2 replaces p_unc_kissing.

p_unc_kissing2 is a repeatable beat in SuppC with reaction "[one of]You kiss him again[or]The two of you kiss again[or]Once again you lock lips[in random order], [one of][time-of-day-bit][or]the [surface-material] warm beneath your feet[or]Progue's [Progue-animus] momentarily forgotten[in random order]. [punc22]". To say punc22: say "'[one of]Mmm,' he says, '[if we chose love]you really are a lover first and an artist second[else]you're an artist in everything you do[end if], aren't you?[or]That's gushing lovely,' he says, '[punc2kissname].[or]Something Further, [animal-nickname], if you paint as good as you kiss it tickles my brainwaves to think what delightful worlds you've seen.[in random order]'". To say punc2kissname: if player-name-guess is not "no.guess" begin; say "you can even call me [player-name-guess] again as long as you keep that up"; otherwise if cc_father is spoken; say "and it's a good thing the children have long since flown the nest"; otherwise if cc_sculptor is spoken; say "mayhaps you're a muse sent to start me sculpting again"; otherwise; say "being two-thirds mad's not half bad with someone like you around"; end if.
	

Section - Keywords

Understand "tree/tree9/windsigh" as uc_windsigh. uc_windsigh is a repeatable beat in UncertainC with fuse 9999 and keyword name "[if tree1 is named]windsigh[else]tree" and reaction "He clutches his forehead, wincing. 'Sorries,' he says, 'these headaches come and go. 'No, I can't tell a thing about those rotting windsigh trees. Wish you'd just leave them well enough alone and sleep on the beach like everyone else.'". tree7 references uc_windsigh. After discussing uc_windsigh: now tree1 is named; continue the action. Check examining by name distant-tree3: if uc_windsigh is available, try discussing uc_windsigh instead.

Understand "coconut/konokuk/fruits/fruit" as uc_konokuk. uc_konokuk is a repeatable beat in UncertainC with fuse 9999 and keyword name "[if konokuk trees are named]konokuk[else]coconut" and reaction "'Make a great meal, those konokuk fruits,' he says. 'Seen them on all the tropical worlds I've ever lived in. Delicious.'". After discussing uc_konokuk: now konokuk trees are named; continue the action. some konokuk trees references uc_konokuk.

Understand "galaxy/capalla" as uc_capalla. uc_capalla is a repeatable beat in UncertainC with fuse 9999 and keyword name "[if galaxy is named]Capalla[else]galaxy" and reaction "'I named the galaxy Capalla,' he says, 'though now I can't remember why.'". After discussing uc_capalla: now galaxy is named; continue the action. old tree stumps references uc_capalla [Just something the player will be frequently walking by.].

Understand "treehouse" as uc_treehouse. uc_treehouse is a beat in UncertainC with fuse 9999 and keyword name "treehouse" and reaction "'Their mother's face,' Progue says, 'I remember now. I built it for them, but it was really for her... or me. I... don't know any more.'". tree2 references uc_treehouse.


Chapter - Uncertainty General Convo

Uncertainty General Convo is a serendipitous rerunnable frequent triggered episode. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence. The icebreaker is uc_makeconversation.

Last condition rule for Uncertainty General Convo: rule succeeds.

First finishing rule for Uncertainty General Convo:
	if Progue is idle, rule succeeds.

A commencement rule for Uncertainty General Convo:
	now Progue is attentive. [If this is selected from a HELLO, the episode gets shut down before it has a chance to begin without this line.]

uc_makeconversation is a repeatable beat in UncertainC. Check discussing uc_makeconversation:
	let beatlist be {uc_chat1, uc_chat2, uc_chat3, uc_chat4};
	remove the list of spoken beats from beatlist;
	sort beatlist in random order;
	if the number of entries in beatlist is at least 1 begin;
		force discuss entry 1 of beatlist instead;
	else;
		force discuss uc_intro instead;
	end if.	

uc_intro is a repeatable beat in UncertainC with reaction "'[one of]Greetings[or]Good [progue-time-of-day][at random],' he says[one of][archetype-unc-greeting][or][generic-unc-greeting][at random]?'". To say archetype-unc-greeting: say "[if neurotic dad], running a nervous hand through his hair but smiling at you fondly, 'how's my [boygirl][else if father knows best] confidently, 'how's my [boygirl][else if bitter dad] weakly, eyeing you with an appraising frown, 'what is it you want now[else if disciplinarian] loudly, frowning at you, 'getting into more trouble, are you[else if toady], dropping what he's doing to focus on you eagerly, 'everything going smooth-smooth[else if lover or twitterpated] with a wink, kissing your hand deftly, 'how's my favorite [boygirl][else if enemy], not meeting your eye, 'found something new to bother me with[else if slave] with a whimper, edging away from you subtly, 'wh- what do you want from me now[else if bitter lover or shattered lover] with a sarcastic twist, looking away from you, 'but didn't I tell you to leave me alone[else] with a grin, nodding in your direction, 'hope all's going splend and charm for you". To say boygirl: say "[if player is male]boy[else]girl". To say generic-unc-greeting: say "', [one of][animus-business][or][attitude-business][at random], '[one of]things going well[or]all smooth with you[or]enjoying yourself, I hope[at random]".

uc_chat1 is a beat in UncertainC with reaction "'I saw a [uc_ghost] yesterday,' he says lightly. 'A real one this time, I mean. See, I told that visions would be coming.'". uc_intro replace uc_chat1.

Understand "ghost" as uc_ghost when last beat is in UncertainC. uc_ghost is a beat in UncertainC with keyword name "ghost" and reaction "'Oh yes,' he says. 'Not a very good one,' he says, waving a hand dismissively. 'Just the usual thing. Face of my mother, your doom is at hand, something thatwise.' He shrugs. 'Mayhaps that tsunami shook them up a bit. Anyway what I can I do for you?'".

uc_chat2 is a beat in UncertainC with reaction "'You're looking a bit on the wan side,' he says. 'Been getting enough sleep? Not still sleeping under those mangled [uc_windsigh], are you? Thought I warned you thatwise.'". uc_intro replaces uc_chat2.

uc_chat3 is a beat in UncertainC with reaction "'I dreamt last night,' Progue says abruptly, not looking at you. 'I don't, usually. Not where I sleep. But I did dream. Of... of [uc_3her].'". uc_intro replaces uc_chat3.

Understand "her" as uc_3her when last beat is in UncertainC. uc_3her is a beat in UncertainC with keyword name "her" and reaction "[if affinity of Progue >= 2]'My... my wife,' he says slowly, 'the mother of my girls. She... died, before we came here. I'd almost forgotten her. No,' he adds firmly, 'no, that's not true. I'd just locked her so deep I never...' He takes a deep breath. 'But I saw her face again, in this [uc_3dream], like I haven't seen it in green eons.'[else]Abruptly, he stiffens. 'None of your business really,' he says. 'What is it you wanted?'[end if]".

Understand "dream" as uc_3dream when last beat is in UncertainC. uc_3dream is a beat in UncertainC with keyword name "dream" and reaction "'She came to me,' he says vaguely, 'dressed in white, trails of fabric rippling behind her for miles, miles. She asked me where our daughters were.' He shivers suddenly. 'And I had to tell her, tell her I didn't know.'[paragraph break]'She came closer, almost and almost touching me, and said that was all right, don't cry, everything was fine. She could find them. She could find them anywhere in the world, as long, as long as I could tell her what world they're in.'[paragraph break]He puts his face in a hand, and takes a deep, shuddering breath. 'She didn't understand,' he mutters, 'why I couldn't tell her. She was confused. She was angry. Then, at long last, only sad. Only, only sad.'[paragraph break]He takes another breath, then tries to smile the tears away. 'I'm sorry,' he says, 'just a dream. What did you want to talk about?'".

uc_chat4 is a beat in UncertainC with reaction "'Strange [progue-time-of-day],' he says vaguely, [animus-business]. 'Strange [sc_shades] in the mind, on the horizon. Don't know what to make. Don't know.'". uc_intro replace uc_chat4.



Chapter - Meteor Shower Conversation

[This is a test of the "affinitive" path. Progue ambushes a player in afternoon or later and asks them to come back to the beach after dark-- "as a favor, as a friend, do it for me." If it gets to be dark and the player hasn't done it, do we remind them? If the player makes the appointment, + affinity; if they miss it, -affinity; schedule brief "too bad" scene. ]

Meteor Shower Invite is a guaranteed urgent triggered episode with summary "lying on the beach and watching the star rain". The bye beat is msi_no. The abruptbye beat is msi_no. The boredom beat is msi_noanswer. The icebreaker is msi_intro.

A condition for Meteor Shower Invite:
	if affinity of Progue < 0, rule fails;
	if exploring Progue's turf and ( afternoon or evening or sunset ) , rule succeeds.



MSI is a thread. msi_intro is a beat in MSI with reaction "'Glad I caught you,' he says, clapping a hand on your back with a smile, 'there's something special tonight you ought to see. Meet me [if location is regionally in Beachfront]here [end if]on the beach after dark. As a favor, eh? Trust me, you won't want to miss it. Can you come?'". The yes-beat of msi_intro is msi_yes. The no-beat of msi_intro is msi_no. msi_intro summons msi_yes, msi_no. msi_intro suggests msi_noanswer.

msi_yes is a terminal beat in MSI with keyword name "yes" and reaction "'Forward looking,' he says happily. 'Trust me, you won't want to miss it. See you tonight, then. After dark, mind.'".

msi_no is a terminal unaffinitive beat in MSI with keyword name "no" and reaction "He looks crestfallen. 'Oh,' he says, 'well, never mind then. Just thought it would be something you'd enjoy. Later maybe.'".

msi_noanswer is a terminal beat in MSI with reaction "'Well, if you can come, I'll see you then,' he says. 'Trust me, it's worth seeing. Hope to see you then.'".

A completion rule for Meteor Shower Invite:
	if noun is not msi_no, schedule Progue for Meteor Shower Conversation at night;
	Progue's life goes on;
	follow the Progue's motivation rule.

Every turn when Meteor Shower Invite is completed and ( sunrise or morning ) and Progue is booked for Meteor Shower Conversation:
	unbook Progue for Meteor Shower Conversation. [ If we miss this, it can't happen at any time other than night, so expire it. ]


Meteor Shower Conversation is a guaranteed triggered rendezvous episode. The icebreaker is msc_intro. The boredom beat is msc_refuse2. The meeting place is Center Beach. 

Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Meteor Shower Conversation		"Progue stands on the beach near the tide line, looking up intently into the sky."

MSC is a thread. msc_intro is an affinitive beat in MSC with reaction "'You came!' he says happily. 'Thank you. Now look. [t]Lie down[x] here on the [surface-material] and just look up at the sky for a minute. It takes a mome before you can see it.' He demonstrates, staking out a patch of dry sand and flopping back on it, staring up at the night sky intently.". msc_intro suggests msc_refuse. msc_intro summons msc_liedown, msc_refuse.

Understand "refuse" as msc_refuse when last beat is in MSC. msc_refuse is a beat in MSC with keyword name "refuse" and reaction "'Come on,' he says, '[t]lie down[x]; you'll crane your neck if you try to see it standing up.'".

msc_refuse2 is a terminal unaffinitive beat in MSC with reaction "'No fun at all,' Progue murmurs, eyes closing. 'Missing out...' He appears to drift off to sleep.".

First instead of sleeping when last beat is msc_intro or last beat is msc_refuse: force discuss msc_liedown.

msc_liedown is a beat in MSC with keyword name "lie down" and reaction "[if romance of Progue >= 2]You lie side by sand on the dry [surface-material][else]You take up a nearby position on the dry [surface-material][end if][if location is regionally in Beachfront or location is Rise], waves rolling smoothly in down the beach beyond your feet[end if].[paragraph break]'Now,' he says, 'just look up in the sky, at the galaxy there. Sort of let your eyes relax a little. And just wait.'[paragraph break]You do as he says, and for a few long moments see nothing-- then slowly become aware of it. Hundreds of tiny [msc_streaks] of light surge through the sky each second, so faint you can only really see them from the corner of your eye. As your eyes adjust more to the night you can see them more and more clearly; like filaments of silver delicately shimmering through the sky, before the great heavy galaxy.[paragraph break]'Star-rain,' Progue says reverently. 'Never seen it this strong on any world, any world but [msc_home].'". msc_liedown suggests msc_perspectives. msc_liedown cancels msc_refuse, msc_refuse2. msc_liedown summons msc_perspectives.

Understand "streaks" as msc_streaks when last beat is in MSC. msc_streaks is a beat in MSC with keyword name "streaks" and reaction "You keep your eyes locked on the shimmering heavens, fascinated.[paragraph break]'Happens twice a year about this time,' he says. 'Clouds of microscopic space dust, I expect, not big enough to flame into proper meteors, but large enough to show. Beautiful.'". msc_streaks suggests msc_perspectives.

Understand "home" as msc_home when last beat is in MSC. msc_home is a beat in MSC with keyword name "home" and reaction "'Where I was born,' Progue says, his quiet words barely audible over the breaking of the surf, 'there was star-rain every night. Our tama told us the legend of the old feud between the fickle clouds, so undisciplined they always were joining up and falling apart and rained only when they pleased, and the eternal stars, who rained every night with honor, but had been banished so far away that every drop of their rain dried up before it could reach us...'". msc_home suggests msc_perspectives.

msc_perspectives is an insistent beat in MSC with keyword name "listen" and reaction "'Want to show you something elsewards,' he says. 'Are you looking up at the galaxy, at Capalla? See it stretch and span cross the sky above us? Now. Imagine it's not above us at all. Imagine it's below. Yes, feel it? The weight of sand on your back is the strength of glue holding us to some soft ceiling; below is incomprehensible vast void stretching down and down to that galaxy on a blackened floor.'[paragraph break]He pauses for a moment, giving the words a chance to sink in.[paragraph break]'Feel it?' he says, 'Can you rhyme that with your vision?'". The yes-beat of msc_perspectives is msc_persp1yes. The no-beat of msc_perspectives is msc_persp1no. The maybe-beat of msc_perspectives is msc_persp1maybe. msc_perspectives summons msc_persp1yes, msp_persp1no, msp_persp1maybe. msc_perspectives suggests msc_persp1maybe.

msc_persp1yes is a beat in MSC with keyword name "yes" and reaction "'Good,' he says. '[msc_perspectives2]". msc_persp1yes enqueues msc_persp1.

msc_persp1no is a beat in MSC with keyword name "no" and reaction "'Well,' he says, 'try to imagine what it would feel like then. [msc_perspectives2]". msc_persp1no enqueues msc_persp1.

msc_persp1maybe is a beat in MSC with keyword name "maybe" and reaction "'You can', he says, 'you just aren't quite willing to let go what your senses tell. Good and close enough. [msc_perspectives2]". msc_persp1maybe enqueues msc_persp1.

To say msc_perspectives2: say "Now. Pause. Hold it. Then forget. Forget that feeling. Dig yourself trickling deeper in the sand.' He demonstrates. 'Now believe that we're stuck to a great wall. It's at our backs, we're gripping it tight[if location is regionally in Beachfront or location is Rise], and beneath feet is vertical ocean, a wall of water stretching down forever beneath us[end if]. We're looking straight headwards, right forward toward the galaxy floating out in infinite blackness before us. Somehow it's balanced on its side at strange angles; don't ask the hows and whys, just believe it.'[paragraph break]Again, he pauses.[paragraph break]'You're not falling asleep on me, are you?' he asks.". 

msc_persp1 is an insistent beat in MSC. The yes-beat of msc_persp1 is msc_persp2yes. The no-beat of msc_persp1 is msc_persp2no. msc_persp1 suggests msc_persp2yes.

msc_persp2yes is a beat in MSC with keyword name "yes" and reaction "'Dear oh,' he says, 'I'll try to hurry and finish then.'". msc_persp2yes enqueues msc_perspectives3.

msc_persp2no is a beat in MSC with keyword name "no" and reaction "'Good,' he says. 'Hold that sensation just one more ment, then let that one go too.'". msc_persp2no enqueues msc_perspectives3.

msc_perspectives3 is a beat in MSC with reaction "'And now this is the point,' he says. 'Each of those felt something different: up, down, sideways. Gives you vertigo to think of hanging above that galaxy; changed perspectives to think of being alongside it. But each is just as wrong or right, correct or incorrect, true or untrue as thinking that great thing's hovering above us. If every [t]perspective[x] is equal right or wrong, correct or incorrect, true or untrue then those words are gushing useless to describe the universe. Can't even say it is or isn't, or that we live in it or don't; equally arbitrary. Verbs fail entirely and leave us with just [']the universe,['] and what does that mean? Nothing, [animal-nickname]; and even [t]meaning[x] itself falls apart. All we have are shadows and perspectives.'[paragraph break]'And mayhaps our [t]wayfaring[x] is like that,' he finishes quietly, 'just a matter of seeing shape in the right shadow, obtaining a sufficiently different perspective-- one neither less true nor more wrong. Just and only yours.'". msc_perspectives3 summons msc_outtro. msc_perspectives3 suggests msc_outtro.

Understand "perspective/wayfaring/meaning" as msc_outtro when last beat is in MSC. msc_outtro is a terminal beat in MSC with keyword name "perspective, wayfaring and meaning" and reaction "You think of how to frame your response for a long while, but just as you are about to speak, you hear a gentle snore.[paragraph break]Quietly, you rise to your feet[if location is regionally in Beachfront or location is Rise], brushing the sand from your clothes[end if].".

First completion rule for Meteor Shower Conversation:
	now progue-venue is location;
	now dont_describe_Progue is true;
	now the animus of Progue is resting;
	Progue starts resting.


Chapter - Constant Ringing

[An unaffinitive episode. Progue serendipitously runs into the player in a grouchy mood, rubbing his head, and confronts you about that ringing noise-- that's only started since you've arrived, and gotten worse. Then things get nastier: if the player hasn't made much progresson the "leaving" front Progue berates him. Can end in physical violence or an apology. ]

Constant Ringing is a serendipitous guaranteed triggered episode. The subchange beat is cr_avoid. The boredom beat is cr_avoid. The bye beat is cr_avoid. The abruptbye beat is cr_avoid. The icebreaker is cr_intro.

The allow Constant Ringing rule is listed before the Progue is chattier the more he likes you rule in the condition rules. A condition for Constant Ringing (this is the allow Constant Ringing rule):
	if affinity of Progue < 0, rule succeeds.

CR is a thread. cr_intro is a beat in cr with reaction "'Could tell you were getting closer,' he says with a frown, rubbing his temples with a free hand. 'Wish you'd stop that [cr_noise]. Not very nice. Gushing cruel, actually. Don't know why you keep doing it.'".

Understand "noise" as cr_noise when last beat is in CR. cr_noise is a beat in cr with keyword name "noise" and reaction "'That grating whine, scratchy upper pitches rubbing and clawing gainst one another,' he says in a grouchy tone, shooting you an accusing glare, 'seven or eight warbling tones all blurring through discordant frequencies. Like a drill boring straight through my braincase. Stronger when you're around. [cr_listen], can't you hear it? Since you've arrived. What, pleading [cr_ignorance] I suppose?' he adds accusingly.". cr_noise suggests cr_ignorance.

First Instead of listening when last beat is in CR: force discuss cr_listen. cr_listen is an ephemeral beat in cr with keyword name "listen" and reaction "You stop and listen, but all you can hear is the sound of the surf.".

Understand "ignorance" as cr_ignorance when last beat is in CR. cr_ignorance is a beat in cr with keyword name "ignorance" and reaction "He grimaces[if noun is cr_ignorance] as you respond, as if your words are making the noise louder[else], as if your mere presence is making the noise louder[end if].[paragraph break]'Look and look,' he says, 'I've already told you you came here by mistake. I've already said I'd help gather what you need to leave. You're stirring things up, toppling them down, spoiling the soupworks with too many wrenches. To fly true to the nest, [animal-nickname], [if submission of Progue > 0]I wish you'd leave, and you're making me miserable[else]I don't like you here, and you're making me angry[end if].'". cr_ignorance summons cr_good, cr_sorry.

Understand "good" as cr_good when last beat is in cr. cr_good is an unaffinitive terminal beat in cr with keyword name "good" and reaction "Progue makes a fist, then slowly releases it. Without a word, he turns away.".

Understand "sorry" as cr_sorry when last beat is in cr. cr_sorry is an affinitive terminal beat in cr with keyword name "sorry" and reaction "He rubs his forehead even more vigorously. 'Not your fault,' he mutters. 'Not your fault. After the storm, it's like something mindwards has been knocked loose, broken into fragments, sharp and hot.' He shakes his head, not looking at you.".

cr_avoid is an ephemeral beat in cr with reaction "'Don't do that when I'm talking,' he snaps at you.".

A completion rule for Constant Ringing:
	follow the Progue's motivation rule.



Chapter - Old Memories

[ The player encounters Progue standing in the open letting the rain beat down on him. He does not respond at first, then spills out a diatribe about not being able to wayfare and being stranded here forever, even after his daughters left him. ]


[Old Memories is a guaranteed serendipitous episode. The icebreaker is citr_intro.

A condition for Old Memories:
	if the affinity of Progue < 0, rule fails;
	if evening or sunset or twilight, rule succeeds;
	rule fails.

Table of Progue's Initial Appearance (continued)
animus	episode			desc
--		Old Memories		"Progue stands barefoot in the surf, breakers tumbling past his ankles and ringing them with clinging puffs of foam. The sky cools through shades of burnt purple, what little light left in its scattered rays seeming to bend around or through him. His gaze fixes unblinkingly on the westward horizon, as if invisible chains still anchor his eyes to the sun."

Table of Progue's Description (continued)
animus	episode			desc
--		Old Memories		"[initial appearance of Progue]"


OM is a thread. om_intro is a beat in OM with reaction "The sound of your tentative greeting is swallowed entirely by rushing breakers, but it seems Progue senses it somehow, for a soundless sigh escapes his lips, detectable only through the compression of his already withered frame, and the dancing tendrils of his stringy white hair." om_intro suggests om_intro2.

om_intro2 is a beat in OM with reaction "I [t]left[x] them,' he says, the words well-formed but hardly given enough voice to be audible above the surf, as ephemeral as shifting patterns the mind's eye might see in the ever-changing foam. 'I [t]never[x] wanted to be a [t]father[x], never asked... and no one told me how...' He trails off, momentarily lost in thought.". lo_intro summons lo_never. 

Understand "never" as lo_never. lo_never is a beat in LO with reaction "Another breath, deeper, more ragged. 'No. And they knew it. [t]Rengin[x] was always the one they turned to, the one who put them to bed, who held them when they cried. When she was gone, they turned to me, reluctantly, hesitantly. And I turned away. I turned to [t]voices[x] in my head, new ideas, construction, art, familiar tools in my [t]hands[x]...' He holds up his hands, finally blinking and breaking his gaze on the horizon, and looks at them, held claw-like and blue-black in the dying light, and he for a moment seems lost, as if unsure whose they are or where they should be put.". lo_never summons lo_hands, lo_rengin. 

Understand "rengin/wife/mother" as lo_rengin. lo_rengin is a beat in LO with reaction "'Oh, my Rengin, my sweet,' Progue moans, clutching himself and rocking back and forth, 'Forgive me. I can never visit your grave. Your soul and body both have gone where I cannot find them. Oh, my Rengin...'[paragraph break]Progue staggers forward into the surf, sinking to his knees in the sucking tide.". lo_rengin enqueues lo_explosion.

Understand "hand/hands" as lo_hands. lo_hands is a beat in LO with reaction "He looks at you wild-eyed, his red-rimmed eyes half-crazed. 'How, then?' he says, gripping your shirt feverently, 'how do we stand it, this wayfaring? Where every step forward erases your entire past?'[paragraph break]He staggers forward into the surf, sinking to his knees in the sucking tide.". lo_hands enqueues lo_explosion.

Instead of hugging Progue when last beat is lo_intro or last beat is lo_never, force discuss lo_tryhug.

lo_tryhug is a beat in LO with reaction "You stretch a hand out and put it on the old man's shoulder, but he savagely twists away and staggers forward into the surf, sinking to his knees in the sucking tide.". lo_tryhug enqueues lo_explosion.

lo_explosion is a beat in LO with reaction "'They left,' he shouts, suddenly furious, smashing his hands into the surf, sending splashes of foam in tiny explosions swallowed instantly by the breathing tide, 'when I [t]needed[x] them, left me, left. I would have [t]recovered[x], would have loved them, held them, been there for them, but they weren't there for me, for them... we...' he trails off, on hands and knees in the surf, staring down into white foam whirling past his head.".

Instead of hugging Progue when last beat is lo_explosion: say "You wade out and kneel down next to him. Gently, you lift him up to a kneeling position, and he looks at you for the first time."; force discuss lo_outtro.

lo_outtro is a terminal beat in LO with reaction "The purple above still deepens towards black, softening and swallowing his features more in each moment.[paragraph break]'We left each other,' he says, looking into your eyes. 'We left, and now we are alone.'". After discussing lo_outtro: begin the next chapter; now the time of day is two hours after the time of day; say "Progue lies in his bed again, muttering; you returned him there, dried his clothes, after his collapse. You hope he will stay put for the night, but he seems restless, tossing and turning and resisting your efforts to soothe him even in sleep. There may be few long nights left for him."; try looking.

[Instead of ignoring Progue during Loss: say "You look away, indifferent. Progue's back stiffens. He takes a few paces forward into the swirling foam, then turns suddenly and fixes you with a look of hatred."; force discuss lo_lashout.]

lo_lashout is a beat in LO with reaction "'Why are you here?' he shouts, a white rush of rage mingling with the surge of foam. 'Memories, the memories you've brought back, that I thought I'd forgotten forever... hoped, dreamed... you brought it back, my girls, my wife, decisions, waste...' He breaks off into a sob[if the posture of Progue is not sitting], sinking to his knees in the foam[end if].". After discussing lo_lashout: now the posture of Progue is sitting.

Instead of attacking Progue during Loss, force discuss lo_attackouttro.

lo_attackouttro is a terminal unaffinitive beat in LO with reaction "Furious, you wade out into the surf and hit Progue. He cries out and falls back, momentarily submerged, then sputtering, crawls back, away from your blows.[paragraph break]'Monster,' he shouts, 'get away, leave, go, go, like all the rest, and let me die alone!'[paragraph break]Scrambling, slipping, he gets to his feet and sprints off up the beach towards the rise." After discussing lo_attackouttro: Progue likes you less; Progue likes you less; continue the action.

]




Chapter - Sleepover

[Sleepover is a guaranteed urgent episode. The icebreaker is stn_intro.

A condition for Sleepover:
	if romance of Progue is at least 5 and
	( evening or sunset or night ) and
	exploring Progue's turf, rule succeeds.

STN is a thread. stn_intro is a beat in STN with reaction "{Progue invites you to Sleepover with him. This is interesting because you have to choose between [t]him[x] and more [t]dreams[x]. Which do you pick?}". stn_intro summons stn_him, stn_dreams.

Understand "him" as stn_him when last beat is in STN. stn_him is a terminal beat in STN with keyword name "him" and reaction "{Love scene.}". After discussing stn_him: now the time of day is 7:39 AM; move Progue to Ledge; now the animus of Progue is resting; now the activity counter of Progue is 5; move player to Ledge; continue the action.

Understand "dreams" as stn_dreams when last beat is in STN. stn_dreams is a terminal beat in STN with keyword name "dreams" and reaction "{Progue tells you you're being stupid for chasing those dangerous dreams at the expense of love. [if we chose art]You wonder to yourself if you're making the right decision[otherwise]You tell him that's always been how you roll[end if].}".

]



Chapter - Attitude Adjusters

Section - Heading Up

[An affinitive ]

Heading Up is a guaranteed serendipitous triggered episode. The icebreaker is hu_intro. The subchange beat is silence. The bye beat is hu_no. The abruptbye beat is hu_no. The boredom beat is hu_no.

Last condition for Heading Up:
	if the animus of Progue is resting, rule fails;
	if location is not ledge, rule fails;
	if Lawn is visited, rule succeeds.

HU is a thread. hu_intro is a beat in HU with reaction "Progue looks up at you, [if affinity of Progue < 0]distastefully[else]distracted[end if]. 'Going [if former location is North Marsh]up[else]down[end if]?' he asks. 'As long as you're on your way, would you mind [if former location is North Marsh]taking these [hu_flowers] up to the lawn for me[else]taking these empty konokuk [hu_shells] down to the marsh for me[end if]? Just drop them when you get there. [if former location is North Marsh]Sort of a memorial kind of thing[else]They'll wash right out at low tide[end if].' He holds them out with a hopeful grin.". The yes-beat of hu_intro is hu_yes. The no-beat of hu_intro is hu_no. hu_intro summons hu_yes, hu_no.

Understand "flowers" as hu_flowers when last beat is in HU. hu_flowers is a dogged beat in HU with keyword name "flowers" and reaction "'Just some wildflowers,' he says, gazing sadly down at the bouquet. 'Sort of a remembrance. The view up there's something extraordinary, eh? She would have liked it. Since you're going anyway-- could you?'".

Understand "shells" as hu_shells when last beat is in HU. hu_shells is a dogged beat in HU with keyword name "shells" and reaction "'Just a bit of garbage,' he says. 'I would just throw them off the edge but I wouldn't want to hit any of those precious little frogs. Since you're going anyway, could you?'".

hu_yes is an affinitive terminal beat in HU with keyword name "yes" and reaction "'Buckets of thanks,' he says with a smile, handing them to you, 'you're a friend.'". After discussing hu_yes: if former location is North Marsh, move bouquet to player; else move empty-shells to player; continue the action.

A bouquet is set dressing with printed name "bouquet of flowers". Understand "boquet/flower/flowers" or "boquet of flowers" or "bouquet of flowers" as bouquet. The description is "Just a handful of wildflowers." After going to Lawn when bouquet is held: say "Kneeling, you place the bouquet on the lawn."; move bouquet to Lawn; continue the action.

Some empty-shells are set dressing with printed name "empty konokuk shells". Understand "shell/shells/konokuk/empty" as empty-shells. The description is "Just a bunch of empty konokuk shells." After going to North Marsh when empty-shells are held: say "You chuck the empty konokuk shells into the marsh."; remove empty-shells from play; continue the action.

hu_no is an unaffinitive terminal beat in HU with keyword name "no" and reaction "[if affinity of Progue < 0]'No, I suppose you wouldn't,' he says, rolling his eyes. 'That case get off my ledge.'[else]He blinks in surprise. 'Well and all right then,' he says, lowering them, 'never and never mind.'[end if]".




Section - A Good Cry

[An unsubmissive scene.]

A Good Cry is a frequent serendipitous triggered episode. The icebreaker is agc_intro. The bye beat is agc_leave. The abruptbye beat is agc_leave. The subchange beat is agc_memory. The boredom beat is agc_memory.

Last condition for A Good Cry:
	if the animus of Progue is ruminating, rule succeeds.

A completion rule for A Good Cry:
	now dont-bug-progue is true;
	now the activity counter of Progue is 0;
	Progue is rebuggable in one hour from now.

At the time when Progue is rebuggable:
	now dont-bug-progue is false.

dont-bug-progue is a truth state that varies.

Instead of greeting or discussing when dont-bug-progue is true and Progue is enclosed by location: say "You shouldn't disturb him now.".

AGC is a thread. agc_intro is a beat in AGC with reaction "As you draw nearer to Progue, you see that he is crying, silent tears collecting and running down his face.[paragraph break]'If you wouldn't mind, [animal-nickname],' he says, light but quiet, 'I'd like to be left alone for a span. This refinding your [agc_memory]'s not all spring and cheese.'". agc_intro summons agc_sorry, agc_bye.

Understand "sorry" as agc_sorry when last beat is in agc. agc_sorry is an unsubmissive terminal beat in agc with keyword name "sorry" and reaction "'No need for sorries,' he says with a touch of annoyance, 'you were just passing. Until, [if romance of Progue > 3]love[else if affinity of Progue > 0]friend[else]wayfarer[end if], until.'".

agc_bye is a beat with keyword name "bye". [We don't actually recognize this since "saying goodbye" captures it and routes it through the bye beat of the episode.]

agc_leave is a terminal beat in agc with reaction "You leave Progue to sort out his emotions.".

Understand "memory" as agc_memory when last beat is in agc. agc_memory is a dogged beat in agc with keyword name "memory" and reaction "'Past days swirl and jumble,' he mutters, 'pieces and bits of me breach in the storm, reactions pried loose from actions, [agc_intentions] riven from consequences. Please, please, let me alone now.'". agc_intentions replaces agc_memory.

Understand "intention/intentions" as agc_intentions when last beat is in agc. agc_intentions is a submissive terminal beat in agc with keyword name "intentions" and reaction "'Go away!' Progue shouts, jumping up and whirling on you angrily. 'I want and need and and will and have to be with only myself. I thought I asked already.' He sinks back down, rubbing his head. 'Mayhaps I didn't, mayhaps. Sorries, sorries. Please. Go now.' He closes his eyes.".




Chapter - Reward Scenes

Section - Used To Bring Me

[A paternal episode.]
[Dialogue only. "Have you found them? DId you like them? Ah, just like Lethe." Then bringing them back in the basket is just a bonus.]

Used To Bring Me is a serendipitous triggered common episode. The icebreaker is utbm_intro. The subchange beat is silence. The boredom beat is silence. The bye beat is silence. The abruptbye beat is silence.

Last condition for Used To Bring Me:
	if paternalism of Progue > 0, rule succeeds.

UTBM is a thread. utbm_intro is a beat in utbm with reaction "Progue looks up with a start, then relaxes[if affinity of Progue > 0], smiling[end if]. 'Startled,' he says. 'Still not used to seeing other people on my beach. [if affinity of Progue < 0]But I suppose as long as you aren't meddling with anything it's alright. [end if]How do things go with you? Still exploring? Got lost in the rain [utbm_forest] yet?'".

Understand "forest/yes" as utbm_forest when last beat is in utbm. utbm_forest is a beat in utbm with keyword name "forest" and reaction "'Gushing easy to do it in there,' he nods, a bit wistfully, 'great wet arboreal labyrinth. Years and fears since I saw it. There used to be great orange and red [utbm_fruits], insides brown and slimy as mud, but the seeds were sugar and sunlight mixed together... delicious delicious.' He smiles. 'One of the girls and I used to like them in particular. Lethe, I think it was. She used to bring them to me when I-- when I was sick. I'd forgotten that.'". utbm_forest suggests utbm_foundthem.

Understand "fruit/fruits" as utbm_fruits when last beat is in utbm. utbm_fruits is a beat in utbm with keyword name "fruits" and reaction "'Fantastic taste,' he says. 'Would love to taste them again but I don't think I'll ever go back over there. Too many lingering shadows and whispers.'". utbm_fruits enqueues utbm_foundthem.

utbm_foundthem is an insistent beat in utbm with reaction "'You've been traipsing about over therewards,' he says. 'Do they still grow over there? Have you seen them?'". The yes-beat of utbm_foundthem is utbm_fyes. The no-beat of utbm_foundthem is utbm_fno. utbm_foundthem summons utbm_fyes, utbm_fno. utbm_foundthem suggests utbm_no.

utbm_fyes is an insistent beat in utbm with keyword name "yes" and reaction "'Have you?' His eyes light up. 'Ah, that's good, that's good. And did you try them? Did you like them too?'". The yes-beat of utbm_fyes is utbm_fyes2. The no-beat of utbm_fyes is utbm_no. utbm_fyes summons utbm_fyes2, utbm_no. utbm_fyes suggests utbm_no.

utbm_fyes2 is a beat in utbm with keyword name "yes" and reaction "'Thought you would, [animal-nickname],' Progue says, beaming. 'Gushing well thought you would.'". utbm_fyes2 enqueues utbm_check.

utbm_fno is a beat in utbm with keyword name "no" and reaction "'Ah well-oh,' he says, 'not important I suppose. Just trickling curious.'". utbm_fno enqueues utbm_check.

utbm_check is an insistent beat in utbm with reaction "'I can't help think and thinking that something in you reminds me of Lethe,' he says, regarding you fondly.". The yes-beat of utbm_check is utbm_morepat. The no-beat of utbm_check is utbm_lesspat. utbm_check suggests utbm_neutral. utbm_check summons utbm_morepat, utbm_lesspat.

utbm_morepat is a paternal beat in utbm with keyword name "agree" and reaction "'Good,' he says, nodding, 'glad. Grand we agree. You'd lump into each other if ever you met, I'm sure as sure is sure.' He sighs. 'But now then, what did you want to talk about?'".

utbm_neutral is a beat in utbm with reaction "'At any courses, what were we talking about?' he says.". utbm_neutral cancels utbm_morepat, utbm_lesspan.

utbm_lesspat is an unpaternal beat in utbm with keyword name "disagree" and reaction "'Really now,' he says, musing. 'Hmm. Well and I suppose mayhaps I'm just missing them. Only natural I suppose. Sorries if it made you uncomft. Well and but what were we talking about?'".

[After discussing utbm_forest: the fruit-chance expires in 23 hours from now; continue the action. At the time when the fruit-chance expires: if utbm_gotem is unspoken begin; Progue feels less like a father; if drama manager is being debugged, say "// Drama: Progue feels less like a father (because fruit-chance expired)."; end if.][suspicious of times approaching 24 hours; unfair if player never triggers departure quest.]



[If the player is doing the departure quests, they have a basket with which they can carry fruits.]

utbm_gotem is a paternal beat in utbm with reaction "Progue spies your basket fill of the bulbous red-orange fruits and [if affinity of Progue > 0]lets out a little gasp of surprise. 'Oh, [animal-nickname], you brought me some! Just like my Lethe!' He picks up one of the ripe fruits and runs his fingers over its yielding surface in glee. 'L[else]frowns. 'You shouldn't be over there,' he says, 'it's dangerous. All those windsigh, and chasms and creatures...' But he picks one of the fruits up, running his fingers over its yielding surface with a twitch of a smile. 'Well, it's done. I suppose l[end if]et's open it up and try some of those seeds.'[paragraph break]Together, you break open the fruits and harvest the soft black seeds, popping them in your mouths as you go and enjoying the rich, sweet and nutty flavor. 'My worlds,' Progue says, mouth full, 'every and every as delicious as memories. Fantastic.'[paragraph break]When you've finished your feast, he claps a hand on your shoulder cheerfully. 'Kind of you to think of me,' he says. 'I'll remember it.'". utbm_gotem2 replaces utbm_gotem.

utbm_gotem2 is a repeatable beat in utbm with reaction "'More, eh?' Progue says, picking up the fruits from the basket and hefting them. 'Well and thanks. It'll become straight staples of the diet before much longering.'".

After discussing utbm_gotem: clean basket. After discussing utbm_gotem2: clean basket.

To clean basket:
	remove basket from play;
	now quantity of the basket is 0;
	truncate harvested list of basket to 0 entries;
	now actual contents of basket is nothing;
	continue the action.



Section - Fatherly Advice

Fatherly Advice is a guaranteed serendipitous triggered episode. The expiration date is 2 hours. The icebreaker is fa_intro. The boredom beat is fa_later. The bye beat is fa_later. The abruptbye beat is fa_no.

Last condition for Fatherly Advice:
	if the affinity of Progue < 0, rule fails;
	if animus of Progue is ruminating, rule succeeds.

A completion rule for Fatherly Advice:
	if fa_no is spoken:
		Progue's life goes on;
		follow the Progue's motivation rule;
	otherwise:
		Progue's life goes on.

FA is a thread. fa_intro is a beat in fa with reaction "'Ah, just in the nick,' Progue says, coming over to you beaming. 'I know you must be terrible busy, things to do, sights to see all that, but if you can spare a handful of ments I have some advice I'd like to impart.'[paragraph break]He perches on the old piece of driftwood and pats the spot next to him. 'Take a [fa_sit],' he says, 'will just take a little while. Not more than hour, at most, I promise.'". fa_intro summons fa_no, fa_later. The no-beat of fa_intro is fa_no.fa_intro suggests fa_later.

Understand "seat" as fa_sit when last beat is in fa. fa_sit is a paternal beat in fa with keyword name "seat" and reaction "'Good [if player is male]lad[else]girl[end if],' Progue says happily as you sit next to him on the driftwood, 'splend and charm! This remembers me of the old days back home when Phoebe and Lethe would gather and gather for stories-- before Lacuna, you understand, this was back in the Nabe, the world they were born. Oh, such a precious house; I just remembered it this morning, a beautiful boathouse like almost all there were, or all were there, great oaken timbers and silk hammocks and a kitchen that you call cozy and mean it, if you ring, instead of just euphemizing. Oh, we four were happy there...'[paragraph break]And so on he goes, for well over an hour, in point of fact, eyes fixed on invisible pillars in a distant sky as he shares stories about that world of oceans and scholars, and eventually drifts back to further worlds, other lives he's lived on his long journey. Each new anecdote or detail seems to bring his face to life as if he's remembering them for the first time, and in a way you suppose he is. He only rarely seems to notice your presence but seems to find it a pleasant surprise when he does. And he never does come around to giving any [fa_advice], though as he finally reaches something like a conclusion you're not sure whether to bring that up or let it [fa_slide].". After discussing fa_sit: pass 85 minutes of time; now the abruptbye beat of Fatherly Advice is silence; now the bye beat of Fatherly Advice is fa_slide; continue the action. fa_sit cancels fa_later, fa_no.

Understand "advice" as fa_advice when last beat is in fa. fa_advice is a beat in fa with keyword name "advice" and reaction "'Oh! That! Yes of course!' he says, eyes opening wide in astonishment. 'And let's see here. It's tickling my brainwaves, just on the verge. Very important, I member and remember, gushing important advice. Hmm. Hmmmmm.' He scratches his beard furiously, looking distressed. 'Bats at noon,' he finally says, 'it's gone. Ah well-oh. Probably not really all that important I suppose. If it comes back I'll give you a yell!'". fa_advice enqueues fa_slide. 

Understand "slide" as fa_slide when last beat is in fa. fa_slide is a terminal beat in fa with keyword name "slide" and reaction "He yawns, stretching 'Well and but thanks for listening anyway. Enjoy the [progue-time-of-day], er, well, what's left of it ratherly.'".

Understand "later" as fa_later when last beat is in fa. fa_later is an unpaternal terminal beat in fa with keyword name "later" and reaction "'Oh well oh,' he says, a look of mild disappointment on his face, 'just that I'd ratherly hoped to say it now since I'll most likewise have forgotten it by then. But no sorries, you go on with what you were doing; it can always wait.'".

fa_no is an unpaternal unaffinitive annoying terminal beat in fa with keyword name "no" and reaction "'Well and for life and strife, there's no need to be rude about it,' he says, drawing himself up a bit haughtily. 'I'm used to sharing my advice with the turtles and they certainly never complained. Fine and fine then; you go on about your very important business. I have things to do.'".





Chapter - Rayfish Suicide

[This is the event that transitions Progue to the emotional psyche. It happens the morning after the 5th dream, or as soon as the pyramid has been opened. As the player arrives at a beach room, they see Progue floating out in the bay, facedown. If they don't try to rescue him, he weakly crawls to shore and into the hut (major affinity loss). If they do, cut scene where we skip forward some time and jump to the Hut, where Progue is unconscious but alive.
]

Rayfish Suicide is a guaranteed instant triggered episode. rs-progue-noticed is a truth state that varies.

A condition for Rayfish Suicide:
	if the episodic status of Post-Storm Conversation is not completed and the episodic status of Post-Storm Conversation is not expired, rule fails;
	if conversation fuse < 20, rule fails;
	if the number of contacted windsigh trees is at least 6, rule succeeds;
	if pyramid is off-stage and the number of contacted windsigh trees is at least 4, rule succeeds.

A commencement rule for Rayfish Suicide:
	summon Progue to Center Beach;
	now the animus of Progue is resting;
	now Progue is fulfilling;
	now the activity counter of Progue is 1.  

The lure message for Rayfish Suicide rule is listed before the noticing what Progue is doing rule in the every turn rules. Every turn when current episode is Rayfish Suicide and rs-progue-noticed is false and ( location is Rise or location is regionally in Beachfront ) (this is the lure message for Rayfish Suicide rule):
	now rs-progue-noticed is true;
	move distant-Progue to location;
	say "You slow to a stop. Collapsed off by the center of the beach, the surf lapping at his legs, is [o]Progue[x].[paragraph break]Face down.";
	now dont_describe_progue is true;
	if we-are-landmark-going is true:
		tidy landmark-go;
		clean up landmark-go.

Table of Progue's Initial Appearance (continued)
animus	episode		desc
--		Rayfish Suicide	"[if location is Center Beach]Progue is collapsed on the beach, face-down and motionless[else]Progue lies on a bed of palm fronds here, moaning quietly, sleeping restlessly[end if]."

A finishing rule for Rayfish Suicide:
	if rs-progue-noticed is true and location is Center Beach, rule succeeds.

A completion rule for Rayfish Suicide:
	now the psyche of Progue is emotional;
	summon Progue to Hut;
	Progue starts resting;
	now Progue's animus table is Table of Progue Sleeping;
	now Progue is fulfilling;
	now the activity counter of Progue is 0;
	now Progue is idle;
	if location is Center Beach:
		ignore the Progue begins episode dialogue rule;
		ignore the Progue needs something new after instants rule;
		say "Progue lies at your feet. Quickly, you grab him and roll him over. Tiny red welts run along his arms and torso, where his rags hang limp and heavy with seawater. Fearing the worst, you bend to listen for breath, but then he chokes and coughs, spitting seawater wrenchingly.[paragraph break]As you drag him ashore, however, the coughing doesn't stop, and you can feel how weak he is. You aren't sure he's going to make it.";
		begin chapter 7;
		now time_rs_ended is time of day;
		pass 240 minutes of time;
		now only-look-once is false;
		move player to Hut;
		now conversation fuse is 0;
	otherwise: [Player ignored him and left him here.]
		now the episodic status of Rayfish Suicide is failed;
		Progue likes you less, silently;
		Progue likes you less, silently;
		Progue likes you less, silently;
		if romance of Progue > 0, Progue is heartbroken.

time_rs_ended is a time that varies.

Lacuna-Progue-Uncertainty ends here.
