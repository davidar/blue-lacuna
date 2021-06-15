Episodes by Blue Lacuna begins here.

[This extension was written mainly to be able to create kinds of scenes, functionality which was not yet possible with scenes at the time Blue Lacuna was first being written. Episodes have some advantages over scenes, such as the ability to be scheduled, but on the whole the functionality here is so Blue Lacuna-specific it didn't make sense to turn it into a standalone extension as I did with a lot of other BL-code.]

Chapter - Definitions

An episode is a kind of thing. [An episode is usually privately-named.] [Episode is the scene-equivalent. ]

The current episode is an episode that varies. The current episode is no-episode. The last episode is an episode that varies. The last episode is no-episode. no-episode is an episode. [Only one episode is running at a time.]

An episode is either one-shot or rerunnable. An episode is usually one-shot. [Episodes can either be one-time-only, or repeatable.]

[Episodic frequency is a kind of value. The episodic frequencies are ensured, likely, unlikely, and rare.] An episode has a frequency. An episode is usually common. [Ensured episodes always happen whenever they are considered. The subsequent adjectives define episodes which are decreasingly likely to be selected.]

Episodic type is a kind of value. The episodic types are rendezvous, urgent, serendipitous, or instant. An episode has an episodic type. An episode is usually serendipitous. [Episodic type specifies in general what happens when the episode begins. Rendezvous episodes involve Progue going to a certain place and waiting until the PC appears. Urgent episodes involve Progue tracking down the PC. Serendipitous episodes begin the next time they bump into each other. Instant episodes break the world model and instantly teleport Progue somewhere.]

An episode is either triggered or informal. An episode is usually informal. [Triggered episodes are checked on every turn to see if they go off. Informal episodes are only checked when the scene-daemon runs or it is time for excitement.]

An episode has a time called the expiration date. The expiration date of an episode is usually 23 hours. [Most episodes are not considered to have begun unless Progue begins the relevant conversation while they are current. If this has not happened after a certain amount of time, the episode will become expired. ]

Episodic status is a kind of value. The episodic statuses are successful, completed, failed, expired, running, and unaired. An episode has an episodic status. An episode is usually unaired. [ The state of an episode. The first three are various ways of keeping history on how episodes ended. ]

An episode has a beat called the subchange beat. The subchange beat of an episode is usually episode_subchange. An episode has a beat called the boredom beat. The boredom beat of an episode is usually episode_boredom. An episode has a beat called the bye beat. The bye beat of a episode is usually episode_bye. An episode has a beat called the abruptbye beat. The abruptbye beat is usually episode_abruptbye. [It's easy to forget the various ways a player can interfere with the flow of an episode (trying to change the subject, not speaking, saying goodbye, wandering off, or physically interacting with Progue), so we pre-define a bunch of default responses that should prevent episodes from getting off-track. Episodes can define more specific beats appropriate to the moment, or set one of these to "silence" to allow the normal behavior for the action to fire. NOTE: if we have episodes that prevent player leaving early or whatever, we MUST END THEM BY HAND, transition to a new episode, or change the various beats after a key moment; otherwise the player will never be able to end the conversation.]

An episode has a room called the meeting place. The meeting place of an episode is usually UnRoom. An episode has a beat called the icebreaker. The icebreaker of an episode is usually silence. [Some episodes begin at a certain spot, and most begin with Progue saying a certain beat.]

The episode schedule is a table-name that varies. The episode schedule is usually the Table of Off-Air. [This table lists all the episodes which it is presently okay to run, assuming their conditions are met.]

Table of Off-Air
eptitle
an episode
with 1 blank row

To decide whether an episode is playing:
	if current episode is no-episode, decide no;
	decide yes.

To decide whether no episode is playing:
	if current episode is no-episode, decide yes;
	decide no.

To normalize (ep - an episode):
	now the subchange beat of ep is silence;
	now the boredom beat of ep is silence;
	now the bye beat of ep is silence;
	now the abruptbye beat of ep is silence.



Chapter - Rulebooks

Section - Condition Rules

[Condition rules define when an episode can begin. If a rule fails, it will prevent the episode from running. At least one condition rule must succeed for the episode to be selected.]

Condition rules is an object-based rulebook.

[Rules implied by check episodes rule: only one episode at a time. ]

First condition for a frequent episode (this is the frequent episode rule):
	if a random chance of 1 in 2 succeeds and not time for excitement, rule fails.

First condition for a common episode (this is the common episode rule):
	if a random chance of 3 in 4 succeeds and not time for excitement, rule fails.

First condition for an uncommon episode (this is the uncommon episode rule):
	if a random chance of 5 in 6 succeeds and not time for excitement, rule fails.

First condition for an rare episode (this is the rare episode rule):
	if a random chance of 7 in 8 succeeds and not time for excitement, rule fails.

First condition for an superrare episode (this is the superrare episode rule):
	if a random chance of 15 in 16 succeeds and not time for excitement, rule fails.

First condition for an uberrare episode (this is the uberrare episode rule):
	if a random chance of 31 in 32 succeeds and not time for excitement, rule fails.

First condition for a singular episode (this is the singular episode rule):
	if a random chance of 63 in 64 succeeds and not time for excitement, rule fails.


[First condition for an episode (this is the no sleepwalking Progue rule): if the animus of Progue is resting, rule fails.

First condition for an episode (this is the no new episodes during conversation rule): if Progue is attentive, rule fails.

First condition for an episode (this is the don't overcommit Progue rule): if Progue has pending appointments, rule fails.

]

Section - Commencement Rules

[Commencement rules are run when the episode begins, usually to set things up.]

Commencement rules is an object-based rulebook.

Section - Finishing Rules

[Finishing rules for an episode are checked every turn it is running. If any finishing rule succeeds, the episode is completed.]

Finishing rules is an object-based rulebook.

Section - Completion Rules

[Completion rules are run when an episode is completed, usually to do clean-up.]

Completion rules is an object-based rulebook.


Chapter - Beginning and Ending

To begin (ep - an episode):
	if drama manager is being debugged, say "// Drama manager: beginning [ep].";
	now ep is running;
	now current episode is ep;
	unless an unimportant episode is playing, now last episode is current episode;
	consider the commencement rules for ep;
	the episode expires in the expiration date of ep from now.

To complete (ep - an episode), succeeding, failing:
	if drama manager is being debugged, say "// Drama manager: completing [ep].";
	if ep is running and ep is not expired, now ep is completed;
	if succeeding, now ep is successful;
	if failing, now ep is failed;
	consider the completion rules for ep;
	now current episode is no-episode;
	if ep is expired and icebreaker of ep is not silence and icebreaker of ep is not spoken: 
		now the episodic status of ep is unaired;
		if drama manager is being debugged, say "// Drama manager: [ep] expired without [icebreaker of ep] being spoken; resetting to unaired.";
	otherwise:
		if there is a eptitle of ep in episode schedule and ( icebreaker of ep is not silence and icebreaker of ep is not spoken ):
			if ep is one-shot:
				choose row with a eptitle of ep in episode schedule;
				blank out the whole row;
			sort episode schedule in random order.

At the time when the episode expires:
	if an episode is playing and Progue is idle:
		if drama manager is being debugged, say "// Drama Manager: episode [current episode] expires.";
		now current episode is expired;
		complete current episode;


Chapter - Processing

Every turn when the number of filled rows in episode schedule is at least 1  and current episode is no-episode (this is the check episodes rule):
	[can we modify this to prefer urgent episodes if time for excitement?]
	let casting be false;
	if scene-daemon is true or time for excitement:
		if drama manager is being debugged, say "// Drama manager: [if scene-daemon is true]scene daemon goes off[otherwise]time for excitement[end if], so checking episode schedule carefully."; 
		now casting is true;
		now scene-daemon is false;
		the daemon wakes in one hour from now;
	repeat through episode schedule:
		unless episodic status of eptitle entry is unaired or episodic status of eptitle entry is running or eptitle entry is rerunnable:
			blank out the whole row;
		otherwise if eptitle entry is triggered or casting is true:
			if drama manager is being debugged, say "**considering [eptitle entry]: [run paragraph on]";
			consider the condition rules for eptitle entry;			if the rule succeeded:				begin eptitle entry;				break.

Every turn when an episode is playing (this is the watch for finish conditions rule):
	if drama manager is being debugged, say "// Drama manager: watch for finish conditions rule ([current episode]).";
	consider the finishing rules for current episode;
	if the rule succeeded:
		complete current episode.

Section - Meddling

[By default, we can't do things that would derail the conversation during an episode. By defining the various default beats associated to an episode to silence, we can allow them to take place.]

episode_subchange is a dogged repeatable beat with reaction "'Not now,' he says, 'we're in the middle of this.'".

Check vague discussing when an episode is playing and Progue is attentive and the subchange beat of current episode is not silence (this is the episodes overrule changing subject rule):
	[If there is nothing to discuss, we've broken the conversation; get out.]
	if the number of available unrepeatable beats is 0:
		let esc be the the escape clause of a random thing that encloses last beat;
		if esc is a beat and esc is not default_escape_clause:
			force discuss esc;
			stop the action;
		else:
			force discuss bye_beat of Progue;
			stop the action;
	otherwise:
		let line be the subchange beat of current episode;
		if line is spoken and line is unrepeatable and nothing replaces line:
			now subchange beat of current episode is silence;
		otherwise:
			increase derail_tracker by 1;
			extend beats;
			force discuss line;
			stop the action.

episode_boredom is an ephemeral repeatable beat with reaction "'Well?' he says, 'I'm waiting.'".

First before getting bored when an episode is playing and Progue is attentive and the boredom beat of current episode is not silence (this is the episodes overrule getting bored rule):
	[If there is nothing to discuss, we've broken the conversation; get out.]
	if the number of available unrepeatable beats is 0:
		let esc be the the escape clause of a random thing that encloses last beat;
		if esc is a beat and esc is not default_escape_clause:
			force discuss esc;
			stop the action;
		else:
			force discuss bye_beat of Progue;
			stop the action;
	otherwise:
		let line be the boredom beat of current episode;
		if line is spoken and line is unrepeatable and nothing replaces line:
			now boredom beat of current episode is silence;
		otherwise:
			increase derail_tracker by 1;
			extend beats;
			force discuss line;
			stop the action.

episode_bye is an ephemeral repeatable beat with reaction "'We're not through with this conversation yet,' he says.".

First before saying farewell to Progue when an episode is playing and Progue is attentive and the bye beat of current episode is not silence (this is the episodes overrule goodbye rule):
	[If there is nothing to discuss, we've broken the conversation; get out.]
	if the number of available unrepeatable beats is 0:
		let esc be the the escape clause of a random thing that encloses last beat;
		if esc is a beat and esc is not default_escape_clause:
			force discuss esc;
			stop the action;
		else:
			force discuss bye_beat of Progue;
			stop the action;
	[otherwise, explain why we can't stop talking.]
	let nextbit be the bye beat of current episode;[aar]
	if nextbit is a beat:
		if nextbit is spoken and nextbit is unrepeatable and nothing replaces nextbit:
			now bye beat of current episode is silence;
		otherwise:
			extend beats;
			increase derail_tracker by 1;
			force discuss nextbit;
			stop the action.

episode_abruptbye is an ephemeral repeatable beat with reaction "He grabs your arm. 'Don't go yet,' he says, 'we aren't finished here.'".

First before going or exiting or landmark-going when an episode is playing and Progue is attentive and the abruptbye beat of current episode is not silence (this is the episodes overrule movement rule):
	if we-are-landmark-going is true:
		tidy landmark-go;
		clean up landmark-go;
		now overrule further dialog is true;
		stop the action;
	otherwise:
		let line be the abruptbye beat of current episode;
		if line is spoken and line is unrepeatable and nothing replaces line:
			now abruptbye beat of current episode is silence;
		otherwise:
			increase derail_tracker by 1;
			extend beats;
			force discuss line;
			stop the action.

[If something in the conversation breaks, it can become impossible to end the convo, effectively derailing the entire game. This is always a bug; but to prevent it being a game-breaking bug, we allow the player to get out of the current situation if this occurs.]

derail_tracker is a number that varies. Every turn when Progue is idle and Progue is not enclosed by location: now derail_tracker is 0. 

Every turn when derail_tracker > 6:
	now the bye beat of current episode is silence;
	now the abruptbye beat of current episode is silence;
	now the subchange beat of current episode is silence;
	now the boredom beat of current episode is silence;
	let pthread be a random thing that encloses last beat;
	now derail_tracker is 0;
	if escape clause of pthread is not default_escape_clause and escape clause of pthread is unspoken:
		force discuss escape clause of pthread;
		post-conversation processing;
	else:
		force discuss bye_beat of Progue;
		post-conversation processing.


Chapter - Debugging

Epstatusing is an action out of world applying to nothing. Understand "epstatus" as epstatusing.

Carry out epstatusing:
	repeat through episode schedule:
		say "[if current episode is eptitle entry]**[end if][eptitle entry][line break]";
	say "****[current episode]****[paragraph break]";
	repeat through Table of Progue's Appointment Book:
		say "[date entry] - [event entry]".

Epbeginning is an action out of world applying to one thing. Understand "begin [any episode]" as epbeginning. Carry out epbeginning: say "Beginning [noun]."; begin noun.

Epending is an action out of world applying to nothing. Understand "complete" as epending. Carry out epending: say "Completing [current episode]."; complete current episode.

Episodes ends here.
