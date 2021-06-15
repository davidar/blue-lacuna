Legacy Extensions for Blue Lacuna by Blue Lacuna begins here.

"This extension is designed to help people compile Blue Lacuna with Inform 5Z71. It contains snapshots of the following extensions as they existed at the time of Blue Lacuna's release: Smarter Parser by Aaron Reed, Poor Man's Mistype by Aaron Reed, Epistemology by Eric Eve, Remembering by Aaron Reed, Default Messages by David Fisher, Glulx Entry Points by Emily Short, Glulx Text Effects by Emily Short, Flexible Windows by Jon Ingold, Plurality by Emily Short, Improved Menus by Aaron Reed (based on Basic Menus by Emily Short), Intelligent Hinting by Aaron Reed, and Numbered Disambiguation Choices by Aaron Reed."

Use authorial modesty.

Volume - Smarter Parser by Aaron Reed

Chapter - Definitions

Use MAX_EXPRESSION_NODES of 300.

The rejected command is an indexed text that varies. The original rejected command is an indexed text that varies. 

Suppress parser error is a truth state that varies. sp reparse flag is a truth state that varies.

Smarter Parser is a rulebook. 

Section - Cleaning Up Punctuation

After reading a command (this is the Smarter Parser simplify punctuation rule):
	let tmpcmd be indexed text;
	now tmpcmd is the player's command;
	replace the regular expression "<;:>" in tmpcmd with ". "; [new players have sometimes tried to seperate commands using these punctuation marks.]
	if tmpcmd exactly matches the text "?", now tmpcmd is "help";
	replace the regular expression "<!?\\\/()\{\}['][quotation mark][bracket][close bracket]>" in tmpcmd with "";
	if the number of characters in tmpcmd is 0, now tmpcmd is "."; [To fix a bug where in certain cases an empty command causes the word/character counts to break]
	change the text of the player's command to tmpcmd.


Section - Try Harder to Understand


Before printing a parser error (this is the Smarter Parser trying harder to understand rule):
	now the original rejected command is the player's command;
	now the rejected command is the player's command; 
	follow the Smarter Parser rules;
	if the rule succeeded:
		if rejected command is not original rejected command:
			follow the announcing new command rule;
			now sp reparse flag is true;
	otherwise if the rule failed:
		now suppress parser error is true.

Rule for printing a parser error when suppress parser error is true or sp reparse flag is true (this is the Smarter Parser suppress parser messages on matches rule):
	now suppress parser error is false;
	do nothing instead.

This is the announcing new command rule:
	say "(retrying as if you'd typed '[rejected command].')".

Rule for reading a command when sp reparse flag is true (this is the Smarter Parser retrying input rule):
	now sp reparse flag is false;
	change the text of the player's command to "[rejected command]".


Section - Macros for defining rules

To decide whether stripping (regex - an indexed text) is fruitful, even within words:
	let original be the rejected command;
	if even within words:
		replace the regular expression "[regex]" in rejected command with "";
	otherwise:
		replace the regular expression "\b[regex]\b" in rejected command with "";
	if original is not rejected command:
		decide yes;
	now rejected command is original;
	decide no.

To decide whether input starts with (regex - an indexed text), even within words:
	if even within words:
		if rejected command exactly matches the regular expression "^[regex].*":
			decide yes;
	otherwise:
		if rejected command exactly matches the regular expression "^[regex]\b.*":
			decide yes;
	decide no.

To decide whether input ends with (regex - an indexed text), even within words:
	if even within words:
		if rejected command exactly matches the regular expression ".*[regex]$":
			decide yes;
	otherwise:
		if rejected command exactly matches the regular expression ".*\b[regex]$":
			decide yes;
	decide no.

To decide whether input contains (regex - an indexed text), even within words:
	if even within words:
		if rejected command matches the regular expression "[regex]":
			decide yes;
	otherwise: 
		if rejected command matches the regular expression "\b[regex]\b":
			decide yes;
	decide no.

Chapter - Printing Results

Section - Definitions

The pre smart parse text is an indexed text that varies. The post smart parse text is an indexed text that varies.

Section - The Print Rule

To print explanation for (why - a rule):
	if sp-debug is true, say "(smart parser debug: printing message for [why])[command clarification break]";
	if there is a therule of why in Table of Extended Smarter Parser Messages:
		choose row with a therule of why in Table of Extended Smarter Parser Messages;
		say "[pre smart parse text][message entry][post smart parse text][line break]";
	otherwise if there is a therule of why in Table of Smarter Parser Messages:
		choose row with a therule of why in Table of Smarter Parser Messages;
		say "[pre smart parse text][message entry][post smart parse text][line break]".

Section - Tables

[This would seem an ideal situation to use the Table Replacement feature, but unfortunately it currently doesn't allow for replacing "rule" columns.]

Table of Smarter Parser Messages
therule		message 
a rule	a text
with 1 blank row.

Table of Extended Smarter Parser Messages
therule		message 
a rule	a text
with 1 blank row.


Chapter - Rules

Section - Standardize


A smarter parser rule (this is the standardize apostrophes rule):
	replace the regular expression "[apostrophe](m|re)" in rejected command with " am"; 
	replace the regular expression "[apostrophe]ll" in rejected command with " will"; 
	replace the regular expression "[apostrophe]ve" in rejected command with " have"; 
	replace the regular expression "[apostrophe]" in rejected command with "".


Section - Signs of Confusion


A smarter parser rule (this is the signs of confusion rule):
	if input contains "(confused|lost|huh|understand|dont know|going on|no idea|wtf|help|hint|instructions|directions)" or input contains "(how|what) (do|should|can)":
		print explanation for signs of confusion rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
signs of confusion rule		"Try typing LOOK for a description of your surroundings. If you saw a sword, you might try EXAMINE SWORD to get more details. Any compass directions indicate exits which you can use by typing NORTH or whatever. Type INVENTORY to see a list of what you're carrying. You can also TAKE or DROP some things, OPEN or CLOSE others, and more."


Section - Signs of Frustration


A smarter parser rule (this is the signs of frustration rule):
	if input contains "(stupid|dumb|moron|idiot|lame|duh|retard|suck|screw)(ic|ed|s)?" or input contains "(hell|ass|bored|boring|dick|piss|die|fuck|shit)":
		print explanation for signs of frustration rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
signs of frustration rule		"I'm sorry if you're feeling frustrated. If you like, you can type SAVE to store your progress to a file, then RESTORE to come back to it later. In the meantime, you might try searching the web to see if there are hints available."


Section - Too Many Words


A smarter parser rule (this is the too many words rule):
	if the number of characters in the rejected command > 1 and the number of words in the rejected command > 6:
		print explanation for too many words rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
too many words rule		"You typed a rather long command and I didn't understand it. It's better to stick to simpler things like TAKE SWORD."



Section - Stripping Niceties


A smarter parser rule (this is the stripping niceties rule):
	if stripping "please" is fruitful:
		print explanation for stripping niceties rule;
		rule succeeds.

Table of Smarter Parser Messages (continued)
therule			message
stripping niceties rule	"Your politeness is appreciated, but you don't have to type words like please to play! "



Section - Standardize be verbs


A smarter parser rule (this is the standardize be verbs rule):
	replace the regular expression "\b(had |has |have )?(is|am|are|be|being|been|was|were)\b" in the rejected command with "_be".



Section - Who are you

["Who said that," "Who am I talking to," "Who are you," etc]

A smarter parser rule (this is the asking who are you rule):
	if input contains "who(s)? (_be )?(i )?(talk|speak|there|this|said|you|that)", even within words:
		print explanation for asking who are you rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
asking who are you rule	"I'm the parser-- I translate what you type into the story world. You have to use specific commands to talk to me though. Try typing HELP or ABOUT for more information."


Section - Who am I


A smarter parser rule (this is the asking who am i rule):
	if input contains "who _be i":
		print explanation for asking who am i rule;
		now the rejected command is "examine me";
		rule succeeds.

Table of Smarter Parser Messages (continued)
therule			message
asking who am i rule	"You are the main character of this story. Normally, you'll want to phrase your input as commands, not questions. I've taken the liberty of demonstrating below."


Section - Where am I


A smarter parser rule (this is the asking where am i rule):
	if input contains "where _be i" or input contains "(examine|x|look) (here|this place|place|room|area|around)":
		print explanation for asking where am i rule;
		now rejected command is "look";
		rule succeeds.

Table of Smarter Parser Messages (continued)
therule			message
asking where am i rule	"To get a description of your surroundings, try typing LOOK."




Section - Asking Random Questions

A smarter parser rule (this is the asking random questions rule):
	if input contains "(who|what|where|why|how|do)s?":
		print explanation for asking random questions rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
asking random questions rule	"You can't ask direct questions to the game. Type a verb - noun command like EXAMINE SOMETHING to interact with the story world."


Section - Stripping Verbose Intro

[Things like "I want to go north" or "can you take the ball" ]

A smarter parser rule (this is the stripping verbose intro rule):
	if stripping "i (_be )?(want|will|going)( to)?" is fruitful or stripping "(can|would|will|should|may|try) (i|you|we|to)" is fruitful:
		print explanation for stripping verbose intro rule;
		rule succeeds.

Table of Smarter Parser Messages (continued)
therule			message
stripping verbose intro rule	"You can just begin your command with the verb."


Section - Making assertions


A smarter parser rule (this is the making assertions rule):
	if input contains "(i|he|she|it|this|you|your) (_be|dont|doesnt|cant)":
		print explanation for making assertions rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
making assertions rule	"Please rephrase your command to start with an imperative verb, like LOOK."





Section - Starting command with I

[Normally something like "i don't know what to do" results in the unfortunate message "I only understood you as far as wanting to take inventory."]

A smarter parser rule (this is the starting command with i rule):
	if input starts with "i":
		print explanation for starting command with i rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
starting command with i rule		"Please rephrase your command to start with an imperative verb, like LOOK."




Section - Stripping Adverbs

[There are a few English words that end in "ly" and aren't adverbs, like family and apply. I leave it to a future "Brilliant Parser" extension to deal with these.]

A smarter parser rule (this is the stripping adverbs rule):
	if stripping "\w*ly" is fruitful and the number of words in the rejected command > 1:
		print explanation for stripping adverbs rule;
		rule succeeds.

Table of Smarter Parser Messages (continued)
therule			message
stripping adverbs rule	"A lot of words like prepositions and adverbs are not necessary in interactive fiction."



Section - Unnecessary Movement

["get closer to ball," "move away from ball, "stand next to ball," etc. ]

A smarter parser rule (this is the unnecessary movement rule):
	if input contains "(walk|move|go|stand|get|run) (to|toward|close|away|by)<rs>?" or input contains "(near|nearer|far|farther)":
		print explanation for unnecessary movement rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
unnecessary movement rule		"Usually, you won't need to move within a single location; everything you can see is usually touchable. Use compass directions to move from one location to another."


Section - Stripping Vague Words


A smarter parser rule (this is the stripping vague words rule):
	if input contains "(some|any|every|no|here|there)(one|thing|body|where|place)?":
		print explanation for stripping vague words rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
stripping vague words rule	"You will need to be more specific. Try typing LOOK to get a description of your surroundings."


Section - Stripping Pointless Words


A smarter parser rule (this is the stripping pointless words rule):
	if stripping "(anyway|instead|very|almost|this|so|just)" is fruitful or stripping "(now|next|around|more)" is fruitful:
		print explanation for stripping pointless words rule;
		if the number of words in the rejected command > 0, rule succeeds;
		else rule fails. [If there are no more words to deal with.]

Table of Smarter Parser Messages (continued)
therule			message
stripping pointless words rule	"A lot of words like prepositions and adverbs are not necessary in interactive fiction."




Section - Stripping Failed With

[">take ball with my hand," for instance]

A smarter parser rule (this is the stripping failed with rule):
	if stripping "(with|using) (the|a|some|my)? ?\w*" is fruitful:
		print explanation for stripping failed with rule;
		rule succeeds.

Table of Smarter Parser Messages (continued)
therule			message
stripping failed with rule	"You don't always need to specify what you're doing something with."


Section - Generic surroundings


A smarter parser rule (this is the generic surroundings rule):
	if input contains "(ground|floor|left|right|above|below|wall|ceiling|forward|backward|onward)s?":
		print explanation for generic surroundings rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
generic surroundings rule		"Look for specific nouns or directions; usually, concepts like the floor and ceiling, or relative directions like left and right, are not relevant."



Section - Stripping Body Parts

[can successfully parse things like "take Phil's arm" or "hit Phil with my hand," and at least prints a recognition of the body part word otherwise. ]


A smarter parser rule (this is the stripping body parts rule):
	replace the regular expression "\b(eye|head|skull|hair|nose|mouth|ear|cheek|forehead)s?\b" in rejected command with "_body";
	replace the regular expression "\b(face|neck|chest|breast|body|nipple|shoulder|collar|arm|wrist)s?\b" in rejected command with "_body";
	replace the regular expression "\b(hand|finger|knuckle|fingernail|waist|thigh|leg|knee)s?\b" in rejected command with "_body";
	replace the regular expression "\b(shin|ankle|foot|feet|toe|elbow|fist|thumb|tongue|lip|heart)s?\b" in rejected command with "_body";
	if stripping "s _body" is fruitful or stripping "(with|my|with my|on|on my) _body" is fruitful:
		print explanation for stripping body parts rule;
		rule succeeds;
	if input contains "_body":
		print explanation for stripping body parts rule;
		rule fails.

Table of Smarter Parser Messages (continued)
therule			message
stripping body parts rule	"You do not normally need to refer to specific parts of the body."




Section - Understood as far as

[Will parse things like "take ball I suppose," "look about the room", or "kill the troll in terror"]

A smarter parser rule (this is the understood as far as rule):
	if the parser error is only understood as far as:
		if stripping "(the|a|some|my|this|that)" is fruitful, do nothing;
		if input starts with "(l|look|inventory|exit|z|wait)" or input starts with "(yes|no|jump|sorry|sleep)": ["i" is intentionally left out, so this doesn't thing something like "I don't think so" is an attempt to take inventory.]
			change rejected command to "[word number 1 in rejected command]";
			print explanation for understood as far as rule;
			rule succeeds;
		if input starts with "(take|get|drop|eat|go|enter|get|x|examine|search|open)" or input starts with "(close|wear|wake|attack|kiss|touch|pull|push|turn)" or input starts with "(squeeze|burn|taste|cut|drink|rub|buy|climb)" and the number of words in rejected command is at least 2:
			change rejected command to "[word number 1 in rejected command] [word number 2 in rejected command]";
			print explanation for understood as far as rule;
			rule succeeds;
		if input starts with "(get off|look under|switch on|switch off|turn on|turn off|take off|listen to|wake up|put on)" and the number of words in rejected command is at least 3:
			change rejected command to "[word number 1 in rejected command] [word number 2 in rejected command] [word number 3 in rejected command]";
			print explanation for understood as far as rule;
			rule succeeds.


Table of Smarter Parser Messages (continued)
therule			message
understood as far as rule		"I only understood the first part of that-- trying anyway."



Chapter - Testing - For Testing Only

Understand "parser" as parser-debugging. Parser-debugging is an action out of world applying to nothing.

SP-debug is a truth state that varies.

Carry out parser-debugging:
	if sp-debug is true:
		now sp-debug is false;
		say "Smart Parser debugging off.";
	otherwise:
		now sp-debug is true;
		say "Smart Parser debugging on."


Volume - Poor Man's Mistype by Aaron Reed

A smarter parser rule (this is the fake Mistype rule):
	let wnum be the position of first bad word;[NOT this line.]
	if wnum > 0:
		let badword be indexed text; 
		now badword is word number wnum in rejected command;
		let first3 be indexed text;
		now first3 is "[character number 1 in badword][character number 2 in badword][character number 3 in badword]";
		let candidate be indexed text;
		repeat with item running through things enclosed by location:
			now candidate is printed name of item;
			if candidate matches the regular expression "\b[first3]":
				repeat with wordcounter running from 1 to the number of words in candidate:
					if word number wordcounter in candidate matches the regular expression "\b[first3]":
						replace the regular expression "\b[badword]\b" in the rejected command with "[word number wordcounter in candidate]";
						rule succeeds.
		[ try for a bad verb if badword is the first word in command.]
[		if wnum is 1:
			let first2 be indexed text;
			now first2 is "[character number 1 in badword][character number 2 in badword]";
			if first2 is "an":
				if rpl "answer" for badword, rule succeeds;
			if first2 is "at":
				if rpl "attack" for badword, rule succeeds;
			if first3 is "cli":
				if rpl "climb" for badword, rule succeeds;	
			if first3 is "clo":
				if rpl "close" for badword, rule succeeds;	
			if first2 is "co":
				if rpl "consult" for badword, rule succeeds;	
			if first3 is "dri":
				if rpl "drink" for badword, rule succeeds;
			if first2 is "en":
				if rpl "enter" for badword, rule succeeds;
			if first3 is "exa":
				if rpl "examine" for badword, rule succeeds;
			if first3 is "ins":
				if rpl "insert" for badword, rule succeeds;
			if first3 is "inv":
				if rpl "inventory" for badword, rule succeeds;
			if first2 is "li":
				if rpl "listen" for badword, rule succeeds;
			if first3 is "loo":
				if rpl "look" for badword, rule succeeds;
			if first2 is "lo":
				if rpl "lock" for badword, rule succeeds;
			if first2 is "op":
				if rpl "open" for badword, rule succeeds;
			if first2 is "pi":
				if rpl "pick" for badword, rule succeeds;
			if first3 is "pul":
				if rpl "pull" for badword, rule succeeds;
			if first3 is "pus":
				if rpl "push" for badword, rule succeeds;
			if first2 is "re":
				if rpl "remove" for badword, rule succeeds;
			if first3 is "sea":
				if rpl "search" for badword, rule succeeds;
			if first2 is "sl":
				if rpl "sleep" for badword, rule succeeds;
			if first2 is "sw":
				if rpl "switch" for badword, rule succeeds;
			if first3 is "tak":
				if rpl "take" for badword, rule succeeds;
			if first3 is "tas":
				if rpl "taste" for badword, rule succeeds;
			if first2 is "to":
				if rpl "touch" for badword, rule succeeds;
			if first2 is "tu":
				if rpl "turn" for badword, rule succeeds;
			if first2 is "un":
				if rpl "unlock" for badword, rule succeeds;
			if first3 is "wai":
				if rpl "wait" for badword, rule succeeds;
			if first2 is "we":
				if rpl "wear" for badword, rule succeeds.]


[To decide if rpl (newword - an indexed text) for (badword - an indexed text):
	say "Did you mean '[newword]'?>";
	if the player consents:
		replace the regular expression "[badword]" in the rejected command with newword;
		decide yes;
	decide no.]
					
To decide which number is the position of first bad word: (- GetFirstNonDictWord() -).

Include (-

[ GetFirstNonDictWord myword;
	wn = 1;
	myword = 0;
	while (myword ~= -1) {
		myword = NextWordStopped();
		if (myword == 0) {
			return wn-1;
		}
	}
	return -1;	
];

-).

Volume - Epistemology by Eric Eve

Book 1 - Sight

A thing can be either seen or unseen. A thing is usually unseen.

[ It might seem more straightforward simply to write "Now everything visible in the location is seen." but
  this turns out to be unacceptably slow in practice. The following code does approximately the same thing
  but much faster.]

Carry out looking (this is the mark items as seen when looking rule): 
  if in darkness begin;  
  otherwise;
  repeat with item running through things that are enclosed by the location begin;   
       if the item is unseen and the item is not enclosed by an opaque closed container then change the item to seen;  
  end repeat;
 end if.

Carry out opening a container (this is the mark items as seen on opening a container rule):
  repeat with item running through things that are enclosed by the noun begin;   
       if the item is unseen and the item is not enclosed by an opaque closed container then change the item to seen;  
  end repeat.

Book 2 - Familiarity

A thing can be familiar or unfamiliar. A thing is usually unfamiliar.
A subject is a kind of thing. A subject is usually familiar.

Carry out examining something visible (this is the mark items as seen on examining rule):
 now the noun is familiar;
 now the noun is seen.

Definition: a thing is known if it is familiar or it is seen.

Definition: a thing is unknown if it is not known.


Book 3 - Testing commands - not for release

Requesting epistemic status of is an action out of world applying to one visible thing.

Understand "epistat [any thing]" as requesting epistemic status of.

Report requesting epistemic status of:
  say "[noun] - [if seen]seen[otherwise]unseen[end if] / [if familiar]familiar[otherwise]unfamiliar[end if] / [if known]known[otherwise]unknown[end if]."


Volume - Remembering by Aaron Reed

Section - Inclusions

To say was-were: if noun acts plural, say "were"; otherwise say "was".

Section - Grammar Line

Understand "examine [any seen thing]" or "x [any seen thing]" or "look at [any seen thing]" or "take [any seen thing]" or "get [any seen thing]" or "drop [any seen thing]" as remembering.

Section - The Remembering Action

Remembering is an action applying to one thing.

A procedural rule while remembering (this is the allow remembering faraway things rule): ignore the basic accessibility rule.

The remembering action has a room called the remembered spot.

Carry out remembering:
	if noun is a person:
		if there is a character of noun in Table of Remembered NPC Locations:
			change the remembered spot to the area corresponding to a character of noun in Table of Remembered NPC Locations;
	otherwise:
		change the remembered spot to location of noun.

Report remembering:     
	if the remembered spot is a room:
		say "The last time you saw [it-them of noun], [the noun] [was-were] [if remembered spot is location]right here[otherwise][remembered spot][end if].";
	otherwise:
		say "You aren't sure where [the noun] [is-are] at the moment.".

Rule for printing the name of a room (called area) while remembering (this is the printing the name of a room while remembering rule): say "at [the printed name of area]".

[ Since we've used an "any" grammar token, we'll get the "That noun did not make sense in that context." message for any unrecognized word or not visible noun. Restore this to the normal behavior. Note: if your game features other uses of "any" tokens, you'll need to replace this rule. ]

Rule for printing a parser error when parser error is noun did not make sense in that context (this is the replace did not make sense in that context rule):
	say "You can't see any such thing."



Section - People and Animals

Definition: a person is nonplayer if it is not the player.

Every turn when at least one nonplayer person is visible (this is the note position of remembered people rule):
	repeat with chap running through visible nonplayer persons:
		if there is a character of chap in Table of Remembered NPC Locations:
			choose row with a character of chap in Table of Remembered NPC Locations;
			change area entry to location;
		otherwise:
			if the number of blank rows in Table of Remembered NPC Locations is at least 1:
				choose a blank row in Table of Remembered NPC Locations;
				change character entry to chap;
				change area entry to location.

Table of Remembered NPC Locations
character	area
a person		a room
with 20 blank rows.

Part - Basic Screen Effects by Emily Short

Section 1 - Spacing and Pausing

Include (-

[ KeyPause i; 
	i = VM_KeyChar(); 
	rfalse;
];

[ SPACEPause i;
	while (i ~= 13 or 31 or 32)
	{
		i = VM_KeyChar();	
	}
];

[ GetKey i;
	i = VM_KeyChar(); 
	return i;
];

-)

To clear the/-- screen:
	(- VM_ClearScreen(0); -)

To clear only the/-- main screen:
	(- VM_ClearScreen(2); -)

To clear only the/-- status line:
	(- VM_ClearScreen(1); -).

To wait for any key:
	(- KeyPause(); -)

To wait for the/-- SPACE key:
	(- SPACEPause(); -)

To decide what number is the chosen letter:
	(- GetKey() -)

To pause the/-- game: 
	say "[paragraph break]Please press SPACE to continue.";
	wait for the SPACE key;
	clear the screen.

To center (quote - text-routine):
	(- CenterPrintComplex({quote}); -);

To center (quote - text):
	(- CenterPrintComplex({quote}); -);
 
To center (quote - text-routine) at the/-- row (depth - a number):
	(- CenterPrint({quote}, {depth}); -);

To center (quote - text) at the/-- row (depth - a number):
	(- CenterPrint({quote}, {depth}); -);
	
To stop the/-- game abruptly:
	(- quit; -)
	
To show the/-- current quotation:
	(- ClearBoxedText(); -);


Include (-

#ifndef printed_text;
Array printed_text buffer 256;
#endif;

[ CenterPrint str depth i j;
	font off;
	i = VM_ScreenWidth();
			VM_PrintToBuffer(printed_text, 63, str);
	j = (i-(printed_text-->0))/2; 
	j = j-1;
	VM_MoveCursorInStatusLine(depth, j);
	print (I7_string) str; 
	font on;
];

[ CenterPrintComplex str i j;
	font off;
	print "^"; 
	i = VM_ScreenWidth();
			VM_PrintToBuffer(printed_text, 63, str);
	j = (i-(printed_text-->0))/2; 
	spaces j-1;
	print (I7_string) str; 
	font on;
];

-)

To decide what number is screen width:
	(- VM_ScreenWidth() -);

To decide what number is screen height:
	(- I7ScreenHeight() -);

Include (-

[ I7ScreenHeight i screen_height;
	i = 0->32;
		  if (screen_height == 0 or 255) screen_height = 18;
		  screen_height = screen_height - 7;
	return screen_height;
];

-)

To deepen the/-- status line to (depth - a number) rows:
	(- DeepStatus({depth}); -);

To move the/-- cursor to (depth - a number):
	(- I7VM_MoveCursorInStatusLine({depth}); -)

To right align the/-- cursor to (depth - a number):
	(- RightAlign({depth}); -)

Include (- 

[ DeepStatus depth i screen_width;
	VM_StatusLineHeight(depth);
	screen_width = VM_ScreenWidth(); style reverse;
			#ifdef TARGET_GLULX;
			  VM_ClearScreen(1);
			#ifnot;
	  for (i=1:i<depth+1:i++)
			  {
	 	@set_cursor i 1;
	 	spaces(screen_width);
	  } 
		   #endif;
];

[ I7VM_MoveCursorInStatusLine depth;
	VM_MoveCursorInStatusLine(depth, 1);
];

[ RightAlign depth screen_width o n;
	screen_width = VM_ScreenWidth(); 
	n = (+ right alignment depth +);
	o = screen_width - n;
	VM_MoveCursorInStatusLine(depth, o);
];

-)

Table of Ordinary Status
left	central	right
"[location]"	""	"[score]/[turn count]" 

Status bar table is a table-name that varies. Status bar table is the Table of Ordinary Status.

To fill status bar with (selected table - a table-name):
	let __n be the number of rows in the selected table;
	deepen status line to __n rows;
	let __index be 1;
	repeat through selected table
	begin;
		move cursor to __index; 
		say "[left entry]";
		center central entry at row __index;
		right align cursor to __index;
		say "[right entry]";
		change __index to __index + 1;
	end repeat.

Right alignment depth is a number that varies. Right alignment depth is 14.

Section 2 - Colors (for Z-machine only)

To say default letters:
	(- @set_colour 1 1; -)

To say red letters:
	(- @set_colour 3 0; -)

To say green letters:
	(- @set_colour 4 0; -)

To say yellow letters:
	(- @set_colour 5 0; -)

To say blue letters:
	(- @set_colour 6 0; -)

To say magenta letters:
	(- @set_colour 7 0; -)

To say cyan letters:
	(- @set_colour 8 0; -)

To say white letters:
	(- @set_colour 9 0; -)

To say black letters:
	(- @set_colour 2 0; -)

To turn the/-- background black:
	(- @set_colour 0 2; -);

To turn the/-- background red:
	(- @set_colour 0 3; -);

To turn the/-- background green:
	(- @set_colour 0 4; -);

To turn the/-- background yellow:
	(- @set_colour 0 5; -);

To turn the/-- background blue:
	(- @set_colour 0 6; -);

To turn the/-- background magenta:
	(- @set_colour 0 7; -);

To turn the/-- background cyan:
	(- @set_colour 0 8; -);

To turn the/-- background white:
	(- @set_colour 0 9; -);

Volume - Default Messages by David Fisher

Part 1 - Definitions

Section 1.1 - Library Message values

Library message id is a kind of value.
The library message ids are defined by the table of library messages.

The library-message-id is a library message id that varies.

Library message debug is a thing. Library message debug can be on or off.

Section 1.2 - Defaults

Library message debug is off.

Table of custom library messages
Message Id			Message Text
library message id		text

Section 1.3 - Altering messages

When play begins:
   init library messages;
   add the custom library messages.

To add the custom library messages:
   repeat through the table of custom library messages begin;
      set message id entry to the message text entry;
   end repeat.

To set (id_ - library message id) to (msg_ - text):
   update the row with id of id_ to msg_.

[ perform a binary search to quickly find the message id
  (table is guaranteed to be sorted) ]

To update the row with id of (id_ - library message id) to (msg_ - text):
   let n1 be 1;
   let n2 be the number of rows in the table of library messages;
   while n1 <= n2 begin;
      let mid_ be n1 plus n2;
	  change mid_ to mid_ divided by 2;
	  choose row mid_ in the table of library messages;
	  if the message id entry is id_ begin;
                 change the message text entry to msg_;
                 change n1 to n2 + 1;   [ to force the loop to stop ]
	  end if;
	  if the message id entry < id_, change n1 to mid_ plus 1;
      if the message id entry > id_, change n2 to mid_ minus 1;
   end while.

Part 2 - Messages

Table of library messages
Message Id						Message Text
LibMsg <you have died>					"~"
LibMsg <you have won>					"~"
LibMsg <player self description>			"~"
LibMsg <unimportant object>				"~"
LibMsg <empty line>					"~"
LibMsg <confirm Quit>					"~"
LibMsg <yes or no prompt>				"~"
LibMsg <restrict answer>				"~"
LibMsg <page prompt>					"~"
LibMsg <menu prompt>					"~"
LibMsg <comment recorded>				"~"
LibMsg <comment not recorded>				"~"
LibMsg <undo succeeded>					"~"
LibMsg <undo failed>					"~"
LibMsg <undo not provided>				"~"
LibMsg <cannot undo nothing>				"~"
LibMsg <cannot undo twice in a row>			"~"
LibMsg <undo forbidden>					"~"
LibMsg <oops failed>					"~"
LibMsg <oops too many arguments>			"~"
LibMsg <oops no arguments>				"~"
LibMsg <cannot do again>				"~"
LibMsg <again usage>					"~"
LibMsg <command not understood>			"~"
LibMsg <command partly understood>			"~"
LibMsg <command badly ended>				"~"
LibMsg <command incomplete>				"~"
LibMsg <command cut short>				"~"
LibMsg <number not understood>			"~"
LibMsg <cannot begin at comma>			"~"
LibMsg <extra words before comma>			"~"
LibMsg <unknown object>					"~"
LibMsg <object not held>				"~"
LibMsg <unknown verb>					"~"
LibMsg <verb cannot have inanimate object>	"~"
LibMsg <noun needed>					"~"
LibMsg <noun not needed>				"~"
LibMsg <object needed>					"~"
LibMsg <object not needed>				"~"
LibMsg <second object needed>				"~"
LibMsg <second object not needed>			"~"
LibMsg <second noun needed>				"~"
LibMsg <second noun not needed>			"~"
LibMsg <something more substantial needed>	"~"
LibMsg <verb cannot have multiple objects>	"~"
LibMsg <too many multiple objects>			"~"
LibMsg <not that many available>			"~"
LibMsg <no objects available>				"~"
LibMsg <zero multiple objects>			"~"
LibMsg <first N objects>				"~"
LibMsg <excepted object not included anyway>	"~"
LibMsg <report implicit take>				"~"
LibMsg <report npc implicit take>			"~"
LibMsg <use holdall to avoid exceeding carrying capacity>	"~"
LibMsg <cannot put if this exceeds carrying capacity>		"~"
LibMsg <who disambiguation>				"~"
LibMsg <which disambiguation>				"~"
LibMsg <whom disambiguation>				"~"
LibMsg <what disambiguation>				"~"
LibMsg <single object disambiguation>		"~"
LibMsg <pronoun not set>				"~"
LibMsg <pronoun absent>					"~"
LibMsg <Pronouns initial text>			"~"
LibMsg <Pronouns -means- text>			"~"
LibMsg <Pronouns -unset- text>			"~"
LibMsg <no pronouns known>				"~"
LibMsg <person ignores command>			"~"
LibMsg <cannot talk to absent person>		"~"
LibMsg <cannot talk to inanimate object>		"~"
LibMsg <npc unable to do that>			"~"
LibMsg <confirm Restart>				"~"
LibMsg <Restart failed>					"~"
LibMsg <Restore failed>					"~"
LibMsg <Restore succeeded>				"~"
LibMsg <Save failed>					"~"
LibMsg <Save succeeded>					"~"
LibMsg <Verify succeeded>				"~"
LibMsg <Verify failed>					"~"
LibMsg <transcript already on>			"~"
LibMsg <transcript already off>			"~"
LibMsg <start of transcript>				"~"
LibMsg <end of transcript>				"~"
LibMsg <transcript failed>				"~"
LibMsg <end transcript failed>			"~"
LibMsg <Score command>					"~"
LibMsg <score changed>					"~"
LibMsg <score notification turned on>		"~"
LibMsg <score notification turned off>		"~"
LibMsg <no scoring>					"~"
LibMsg <score rank>					"~"
LibMsg <report npc taking inventory>		"~"
LibMsg <Inventory initial text>			"~"
LibMsg <Inventory no possessions>			"~"
LibMsg <entering darkness>				"~"
LibMsg <dark description>				"~"
LibMsg <examine while dark>				"~"
LibMsg <search while dark>				"~"
LibMsg <look under while dark>			"~"
LibMsg <dark room name>					"~"
LibMsg <report player taking>				"~"
LibMsg <report npc taking>				"~"
LibMsg <cannot take yourself>				"~"
LibMsg <cannot take other people>			"~"
LibMsg <cannot take something you are within>	"~"
LibMsg <cannot take something already taken>	"~"
LibMsg <cannot take possessions of others>	"~"
LibMsg <cannot take component parts>		"~"
LibMsg <cannot take hidden parts>			"~"
LibMsg <cannot reach within closed containers>	"~"
LibMsg <cannot take scenery>				"~"
LibMsg <cannot take something fixed>		"~"
LibMsg <cannot reach within other places>		"~"
LibMsg <cannot exceed carrying capacity>		"~"
LibMsg <report player removing>			"~"
LibMsg <report npc removing>				"~"
LibMsg <cannot remove from closed containers>	"~"
LibMsg <cannot remove something not within>	"~"
LibMsg <report player dropping>			"~"
LibMsg <report npc dropping>				"~"
LibMsg <cannot drop something already dropped>	"~"
LibMsg <cannot drop not holding>			"~"
LibMsg <cannot drop if this exceeds carrying capacity>	"~"
LibMsg <cannot drop clothes being worn>		"~"
LibMsg <report player inserting>			"~"
LibMsg <report npc inserting>				"~"
LibMsg <cannot insert something not held>		"~"
LibMsg <cannot insert into something not a container>		"~"
LibMsg <cannot insert into closed containers>	"~"
LibMsg <need to take off before inserting>	"~"
LibMsg <cannot insert something into itself>	"~"
LibMsg <cannot insert if this exceeds carrying capacity>	"~"
LibMsg <cannot insert clothes being worn>		"~"
LibMsg <report player putting on>			"~"
LibMsg <report npc putting on>			"~"
LibMsg <cannot put something not held>		"~"
LibMsg <cannot put something on it-self>		"~"
LibMsg <cannot put onto something not a supporter>	"~"
LibMsg <cannot put onto something being carried>	"~"
LibMsg <cannot put clothes being worn>		"~"
LibMsg <report player giving>				"~"
LibMsg <report npc giving to player>		"~"
LibMsg <report npc giving to npc>			"~"
LibMsg <cannot give what you have not got>	"~"
LibMsg <cannot give to yourself>			"~"
LibMsg <block giving>					"~"
LibMsg <unable to receive things>			"~"
LibMsg <cannot show what you have not got>	"~"
LibMsg <block showing>					"~"
LibMsg <report player entering>			"~"
LibMsg <report npc entering>				"~"
LibMsg <cannot enter something already entered>	"~"
LibMsg <cannot enter something not enterable>	"~"
LibMsg <cannot enter closed containers>		"~"
LibMsg <cannot enter something carried>		"~"
LibMsg <implicitly pass outwards through other barriers>	"~"
LibMsg <implicitly pass inwards through other barriers>	"~"
LibMsg <report player exiting>			"~"
LibMsg <report npc exiting>				"~"
LibMsg <cannot exit when not within anything>	"~"
LibMsg <cannot exit closed containers>		"~"
LibMsg <cannot get off things>			"~"
LibMsg <cannot exit thing not within>		"~"
LibMsg <cannot go that way>				"~"
LibMsg <cannot travel in something not a vehicle>	"~"
LibMsg <cannot go through concealed doors>	"~"
LibMsg <cannot go up through closed doors>	"~"
LibMsg <cannot go down through closed doors>	"~"
LibMsg <cannot go through closed doors>		"~"
LibMsg <nothing through door>				"~"
LibMsg <block vaguely going>				"~"
LibMsg <say npc goes>					"~"
LibMsg <say npc arrives>				"~"
LibMsg <say npc arrives from unknown direction>	"~"
LibMsg <say npc arrives at>				"~"
LibMsg <say npc goes through>				"~"
LibMsg <say npc arrives from>				"~"
LibMsg <say npc vehicle>				"~"
LibMsg <say npc pushing in front with player>	"~"
LibMsg <say npc pushing in front>			"~"
LibMsg <say npc pushing away>				"~"
LibMsg <say npc pushing in>				"~"
LibMsg <say npc taking player along>		"~"
LibMsg <brief look mode>				"~"
LibMsg <superbrief look mode>				"~"
LibMsg <verbose look mode>				"~"
LibMsg <report npc looking>				"~"
LibMsg <top line what on>				"~"
LibMsg <top line what in>				"~"
LibMsg <top line what as>				"~"
LibMsg <say things within>				"~"
LibMsg <say things also within>			"~"
LibMsg <say things on>					"~"
LibMsg <report npc examining>				"~"
LibMsg <examine undescribed things>			"~"
LibMsg <examine direction>				"~"
LibMsg <examine devices>				"~"
LibMsg <examine in darkness>				"~"
LibMsg <report npc searching>				"~"
LibMsg <cannot search unless container or supporter>	"~"
LibMsg <cannot search closed opaque containers>		"~"
LibMsg <nothing found within container>		"~"
LibMsg <nothing found on top of>			"~"
LibMsg <search in darkness>				"~"
LibMsg <report npc looking under>			"~"
LibMsg <look under>					"~"
LibMsg <look under in darkness>			"~"
LibMsg <report player opening>			"~"
LibMsg <report npc opening>				"~"
LibMsg <report unseen npc opening>			"~"
LibMsg <cannot open unless openable>		"~"
LibMsg <cannot open something locked>		"~"
LibMsg <cannot open something already open>	"~"
LibMsg <reveal any newly visible exterior initial text>	"~"
LibMsg <no newly visible exterior>			"~"
LibMsg <report player closing>			"~"
LibMsg <report npc closing>				"~"
LibMsg <report unseen npc closing>			"~"
LibMsg <cannot close unless openable>		"~"
LibMsg <cannot close something already closed>	"~"
LibMsg <report player locking>			"~"
LibMsg <report npc locking>				"~"
LibMsg <cannot lock without a lock>			"~"
LibMsg <cannot lock something already locked>	"~"
LibMsg <cannot lock something open>			"~"
LibMsg <cannot lock without the correct key>	"~"
LibMsg <report player unlocking>			"~"
LibMsg <report npc unlocking>				"~"
LibMsg <cannot unlock without a lock>		"~"
LibMsg <cannot unlock something already unlocked>	"~"
LibMsg <cannot unlock without the correct key>		"~"
LibMsg <report player switching on>			"~"
LibMsg <report npc switching on>			"~"
LibMsg <cannot switch on unless switchable>	"~"
LibMsg <cannot switch on something already on>	"~"
LibMsg <report player switching off>		"~"
LibMsg <report npc switching off>			"~"
LibMsg <cannot switch off unless switchable>	"~"
LibMsg <cannot switch off something already off>	"~"
LibMsg <report player wearing>			"~"
LibMsg <report npc wearing>				"~"
LibMsg <cannot wear something not clothing>	"~"
LibMsg <cannot wear not holding>			"~"
LibMsg <cannot wear something already worn>	"~"
LibMsg <report player taking off>			"~"
LibMsg <report npc taking off>			"~"
LibMsg <cannot take off something not worn>	"~"
LibMsg <report player eating>				"~"
LibMsg <report npc eating>				"~"
LibMsg <cannot eat unless edible>			"~"
LibMsg <block drinking>					"~"
LibMsg <block tasting>					"~"
LibMsg <block smelling>					"~"
LibMsg <block listening>				"~"
LibMsg <report player touching things>		"~"
LibMsg <report npc touching things>			"~"
LibMsg <report player touching self>		"~"
LibMsg <report npc touching self>			"~"
LibMsg <report player touching other people>	"~"
LibMsg <report npc touching other people>		"~"
LibMsg <block saying yes>				"~"
LibMsg <block saying no>				"~"
LibMsg <block saying sorry>				"~"
LibMsg <block swearing obscenely>			"~"
LibMsg <block swearing mildly>			"~"
LibMsg <block climbing>					"~"
LibMsg <block jumping>					"~"
LibMsg <block swinging>					"~"
LibMsg <block waving hands>				"~"
LibMsg <block attacking>				"~"
LibMsg <block burning>					"~"
LibMsg <block cutting>					"~"
LibMsg <block rubbing>					"~"
LibMsg <block setting to>				"~"
LibMsg <block tying>					"~"
LibMsg <report player waving things>		"~"
LibMsg <report npc waving things>			"~"
LibMsg <cannot wave something not held>		"~"
LibMsg <squeezing people>				"~"
LibMsg <report player squeezing>			"~"
LibMsg <report npc squeezing>				"~"
LibMsg <block throwing at>				"~"
LibMsg <throw at inanimate object>			"~"
LibMsg <report player pushing>			"~"
LibMsg <report npc pushing>				"~"
LibMsg <report player pulling>			"~"
LibMsg <report npc pulling>				"~"
LibMsg <report player turning>			"~"
LibMsg <report npc turning>				"~"
LibMsg <block pushing in directions>		"~"
LibMsg <not pushed in a direction>			"~"
LibMsg <pushed in illegal direction>		"~"
LibMsg <cannot push something fixed in place>	"~"
LibMsg <cannot pull something fixed in place>	"~"
LibMsg <cannot turn something fixed in place>	"~"
LibMsg <cannot push scenery>				"~"
LibMsg <cannot pull scenery>				"~"
LibMsg <cannot turn scenery>				"~"
LibMsg <cannot push people>				"~"
LibMsg <cannot pull people>				"~"
LibMsg <cannot turn people>				"~"
LibMsg <block answering>				"~"
LibMsg <block asking>					"~"
LibMsg <block buying>					"~"
LibMsg <block kissing>					"~"
LibMsg <block singing>					"~"
LibMsg <block telling>					"~"
LibMsg <telling yourself>				"~"
LibMsg <block thinking>					"~"
LibMsg <block player consulting>			"~"
LibMsg <block npc consulting>				"~"
LibMsg <block sleeping>					"~"
LibMsg <block waking up>				"~"
LibMsg <block waking other>				"~"
LibMsg <report player waiting>			"~"
LibMsg <report npc waiting>				"~"

Part 3 - Implementation

[ perform a binary search to quickly find the message id in the
  table of library messages (assumes the table has been sorted) ]

This is the print library message rule:
   let n1 be 1;
   let n2 be the number of rows in the table of library messages;
   change libmsg_printed to 0;
   while n1 <= n2 begin;
      let mid be n1 plus n2;
	  change mid to mid divided by 2;
	  choose row mid in the table of library messages;
	  if the message id entry is library-message-id begin;
	     if the message text entry is not "~" begin;
                    if library message debug is on,
                       say "{[library-message-id] - custom}[line break]";
	        say the message text entry;
	        change libmsg_printed to 1;
                 otherwise;
                    if library message debug is on,
                       say "{[library-message-id]}[line break]";
	     end if;
	     change n1 to n2 + 1;	[ to force the loop to stop ]
	  end if;
	  if the message id entry < library-message-id, change n1 to mid plus 1;
      if the message id entry > library-message-id, change n2 to mid minus 1;
   end while.

libmsg_printed is a number that varies.
The main object is an object that varies.
The secondary object is an object that varies.

To decide whether noun is living:
   (- noun has animate -).

To decide whether noun is doing the action:
   (- noun == actor -).

To decide whether noun is not doing the action:
   (- noun ~= actor -).

To decide whether player is doing the action:
   (- actor == player -).

To decide whether player is not doing the action:
   (- actor ~= player -).

[ Some conventient abbreviations to prevent spurious line breaks
  from occurring in some messages ]

To say dot: say "/unicode 46/".
To say ExMark: say "/unicode 33/".
To say QMark: say "/unicode 63/".

[ These two are equivalent to [bracket] and [close bracket], but have been
  retained for compatibility with old versions of Custom Library Messages ]
To say LeftSqBr: say "/unicode 91/".
To say RightSqBr: say "/unicode 93/".

To say /n: say line break.
To say /p: say paragraph break.
To say /r: say run paragraph on.

Part 4 - Inform 6 interface - unindexed

To init library messages:
(- InitLibraryMessages(); -)

[
  The following I6 code (in InitLibraryMessages) does not compile under
  Glulx (it says "Illegal backpatch marker in forward-declared symbol").

  It was originally added in version 3 to prevent infinite
  recursion when pushing an object between rooms; the Standard Rules
  file says:

     Include (- with before [; PushDir: AllowPushDir(); rtrue; ]
     ... -) when defining a thing

  - which caused problems when defining the I7_LibraryMessages
  object, and so the code below removed all "befores" other than
  LibraryMessagesBefore.

  To make a long story short ... the original PushDir problem seems
  to have gone away, but I am still suspicious, so I'll leave it in
  when compiling to Z code.
]

Include (-
  Constant LibraryMessages = (+I7_LibraryMessages+);

[ InitLibraryMessages n;

#Ifndef TARGET_GLULX;
  if ((+I7_LibraryMessages+).&before)
  {
      ! get rid of any other "before" routines
      for (n = 0 : n < (+I7_LibraryMessages+).#before / WORDSIZE : n++)
      {
          if ((+I7_LibraryMessages+).&before --> n ~= LibraryMessagesBefore)
              (+I7_LibraryMessages+).&before --> n = nothing;
      }
  }
#Endif; ! TARGET_GLULX
];
-) after "Definitions.i6t"

I7_LibraryMessages is a thing.
Include (-
  with before LibraryMessagesBefore,
-) when defining I7_LibraryMessages.

Include (-
[ LibraryMessagesBefore id isImplicitAction;
  id = -1;
  (+main object+) = lm_o;
  (+secondary object+) = lm_o2;
-)

[ Note that there is no "Prompt:" section, since Inform 7 handles
  the prompt specially; see "Changing the command prompt" in the I7 manual ]

[*** Miscellany ***]

Include (-
Miscellany:
    switch (lm_n) {
       1: id = (+LibMsg <first N objects>+);
       2: id = (+LibMsg <zero multiple objects>+);
       3: id = (+LibMsg <you have died>+);
       4: id = (+LibMsg <you have won>+);
     ! 5 is "Would you like to restart ...", handled specially by Inform 7
       6: id = (+LibMsg <undo not provided>+);
       7: id = (+LibMsg <undo failed>+);
       8: id = (+LibMsg <restrict answer>+);
       9: id = (+LibMsg <entering darkness>+);
       10: id = (+LibMsg <empty line>+);
       11: id = (+LibMsg <cannot undo nothing>+);
       12: id = (+LibMsg <cannot undo twice in a row>+);
       13: id = (+LibMsg <undo succeeded>+);
       14: id = (+LibMsg <oops failed>+);
       15: id = (+LibMsg <oops no arguments>+);
       16: id = (+LibMsg <oops too many arguments>+);
       17: id = (+LibMsg <dark description>+);
       18: id = (+LibMsg <player self description>+);
     ! 19 was LibMsg <player description>
	 ! - use "The description of the player is ..." instead
       20: id = (+LibMsg <again usage>+);
       21: id = (+LibMsg <cannot do again>+);
       22: id = (+LibMsg <cannot begin at comma>+);
       23: id = (+LibMsg <cannot talk to absent person>+);
       24: id = (+LibMsg <cannot talk to inanimate object>+);
       25: id = (+LibMsg <extra words before comma>+);
       26: id = (+LibMsg <report implicit take>+);
       27: id = (+LibMsg <command not understood>+);
       28: id = (+LibMsg <command partly understood>+);
       29: id = (+LibMsg <number not understood>+);
       30: id = (+LibMsg <unknown object>+);
-)

Include (-
       31: id = (+LibMsg <command incomplete>+);
       32: id = (+LibMsg <object not held>+);
       33: id = (+LibMsg <verb cannot have multiple objects>+);
       34: id = (+LibMsg <too many multiple objects>+);
       35: id = (+LibMsg <pronoun not set>+);
       36: id = (+LibMsg <excepted object not included anyway>+);
       37: id = (+LibMsg <verb cannot have inanimate object>+);
       38: id = (+LibMsg <unknown verb>+);
       39: id = (+LibMsg <unimportant object>+);
       40: (+main object+) = pronoun_obj;
	       id = (+LibMsg <pronoun absent>+);
       41: id = (+LibMsg <command badly ended>+);
       42: id = (+LibMsg <not that many available>+);
       43: id = (+LibMsg <zero multiple objects>+); ! same as Miscellany #2 (?)
       44: id = (+LibMsg <no objects available>+);
       45: id = (+LibMsg <who disambiguation>+);
       46: id = (+LibMsg <which disambiguation>+);
       47: id = (+LibMsg <single object disambiguation>+);
       48: (+main object+) = actor;
	       id = (+LibMsg <whom disambiguation>+);
       49: (+main object+) = actor;
	       id = (+LibMsg <what disambiguation>+);
       50: id = (+LibMsg <score changed>+);
       51: id = (+LibMsg <command cut short>+);
       52: id = (+LibMsg <menu prompt>+);
       53: id = (+LibMsg <page prompt>+);
       54: id = (+LibMsg <comment recorded>+);
       55: id = (+LibMsg <comment not recorded>+);
     ! 56 = ".^"
     ! 57 = "?^"
       58: id = (+LibMsg <npc unable to do that>+);
       59: id = (+LibMsg <noun needed>+);
       60: id = (+LibMsg <noun not needed>+);
       61: id = (+LibMsg <object needed>+);
       62: id = (+LibMsg <object not needed>+);
       63: id = (+LibMsg <second object needed>+);
       64: id = (+LibMsg <second object not needed>+);
       65: id = (+LibMsg <second noun needed>+);
       66: id = (+LibMsg <second noun not needed>+);
       67: id = (+LibMsg <something more substantial needed>+);
       68: id = (+LibMsg <report npc implicit take>+);
       69: id = (+LibMsg <report implicit take>+);
       70: id = (+LibMsg <undo forbidden>+);
       71: id = (+LibMsg <dark room name>+);
       72: id = (+LibMsg <person ignores command>+);
    }
    jump end_part;
-)

[ The ListMiscellany rules ("providing light", etc) can be handled OK by Inform 7 ]

[*** Quit, Restart ***]

Include (-
Quit:
    switch (lm_n) {
       1: id = (+LibMsg <yes or no prompt>+);
       2: id = (+LibMsg <confirm Quit>+);
    }
    jump end_part;

Restart:
    switch (lm_n) {
       1: id = (+LibMsg <confirm Restart>+);
       2: id = (+LibMsg <Restart failed>+);
    }
    jump end_part;
-)

[*** File Operations ***]

Include (-

Restore:
    switch (lm_n) {
       1: id = (+LibMsg <Restore failed>+);
       2: id = (+LibMsg <Restore succeeded>+);
    }
    jump end_part;

Save:
    switch (lm_n) {
       1: id = (+LibMsg <Save failed>+);
       2: id = (+LibMsg <Save succeeded>+);
    }
    jump end_part;

Verify:
    switch (lm_n) {
       1: id = (+LibMsg <Verify succeeded>+);
       2: id = (+LibMsg <Verify failed>+);
    }
    jump end_part;
-)

[*** Transcripts ***]

Include (-
ScriptOn:
    switch (lm_n) {
       1: id = (+LibMsg <transcript already on>+);
       2: id = (+LibMsg <start of transcript>+);
       3: id = (+LibMsg <transcript failed>+);
    }
    jump end_part;

ScriptOff:
    switch (lm_n) {
       1: id = (+LibMsg <transcript already off>+);
       2: id = (+LibMsg <end of transcript>+);
       3: id = (+LibMsg <end transcript failed>+);
    }
    jump end_part;
-)

[*** Scoring ***]

Include (-
NotifyOn:
     id = (+LibMsg <score notification turned on>+);
    jump end_part;
 
NotifyOff:
     id = (+LibMsg <score notification turned off>+);
    jump end_part;
 
Score:
    switch (lm_n) {
       1: id = (+LibMsg <Score command>+);
       2: id = (+LibMsg <no scoring>+);
       3: id = (+LibMsg <score rank>+);
    }
    jump end_part;
 -)

[*** Listing ***]

Include (-
Pronouns:
    switch (lm_n) {
       1: id = (+LibMsg <Pronouns initial text>+);
       2: id = (+LibMsg <Pronouns -means- text>+);
       3: id = (+LibMsg <Pronouns -unset- text>+);
       4: id = (+LibMsg <no pronouns known>+);
    }
    jump end_part;

Inv:
    switch (lm_n) {
       1: id = (+LibMsg <Inventory no possessions>+);
       2: id = (+LibMsg <Inventory initial text>+);
     ! 3 is ":^" (used for list style NEWLINE_BIT)
     ! 4 is ".^" (used for list style ENGLISH_BIT)
       5: id = (+LibMsg <report npc taking inventory>+);
    }
    jump end_part;
-)

[*** Take, Remove ***]

Include (-
Take:
    switch (lm_n) {
       1: id = (+LibMsg <report player taking>+);
       2: id = (+LibMsg <cannot take yourself>+);
       3: id = (+LibMsg <cannot take other people>+);
       4: id = (+LibMsg <cannot take something you are within>+);
       5: id = (+LibMsg <cannot take something already taken>+);
       6: id = (+LibMsg <cannot take possessions of others>+);
       7: id = (+LibMsg <cannot take component parts>+);
       8: id = (+LibMsg <cannot take hidden parts>+);
       9: id = (+LibMsg <cannot reach within closed containers>+);
       10: id = (+LibMsg <cannot take scenery>+);
       11: id = (+LibMsg <cannot take something fixed>+);
       12: id = (+LibMsg <cannot exceed carrying capacity>+);
       13: id = (+LibMsg <use holdall to avoid exceeding carrying capacity>+);
           isImplicitAction = 1;
       14: id = (+LibMsg <cannot reach within other places>+);
     ! 15 doesn't seem to be produced anywhere ("You cannot carry ...")
       16: id = (+LibMsg <report npc taking>+);
    }
    jump end_part;

Remove:
    switch (lm_n)
    {  1: id = (+LibMsg <cannot remove from closed containers>+);
       2: id = (+LibMsg <cannot remove something not within>+);
       3: id = (+LibMsg <report player removing>+); ! TODO - not printed any more? ("Taken" instead)
    }
    jump end_part;
-)

[*** Drop, Insert, Put ***]

Include (-
Drop:
    switch (lm_n) {
       1: id = (+LibMsg <cannot drop something already dropped>+);
       2: id = (+LibMsg <cannot drop not holding>+);
       3: id = (+LibMsg <cannot drop clothes being worn>+);
           isImplicitAction = 1;
       4: id = (+LibMsg <report player dropping>+);
       5,6: id = (+LibMsg <cannot drop if this exceeds carrying capacity>+);   ! 5 = supporter, 6 = container
       7: id = (+LibMsg <report npc dropping>+);
    }
    jump end_part;

Insert:
    switch (lm_n) {
       1: id = (+LibMsg <cannot insert something not held>+);
       2: id = (+LibMsg <cannot insert into something not a container>+);
       3: id = (+LibMsg <cannot insert into closed containers>+);
       4: id = (+LibMsg <need to take off before inserting>+);   ! (unused ?)
       5: id = (+LibMsg <cannot insert something into itself>+);
       6: id = (+LibMsg <cannot insert clothes being worn>+);
           isImplicitAction = 1;
       7: id = (+LibMsg <cannot insert if this exceeds carrying capacity>+);
       8,9: id = (+LibMsg <report player inserting>+);  ! 8 is for multiple objects
       10: id = (+LibMsg <report npc inserting>+);
    }
    jump end_part;

PutOn:
    switch (lm_n) {
       1: id = (+LibMsg <cannot put something not held>+);
       2: id = (+LibMsg <cannot put something on it-self>+);
       3: id = (+LibMsg <cannot put onto something not a supporter>+);
       4: id = (+LibMsg <cannot put onto something being carried>+);
       5: id = (+LibMsg <cannot put clothes being worn>+);
           isImplicitAction = 1;
       6: id = (+LibMsg <cannot put if this exceeds carrying capacity>+);
      7,8: id = (+LibMsg <report player putting on>+);  ! 7 is for multiple objects
       9: id = (+LibMsg <report npc putting on>+);
    }
    jump end_part;
-)

[*** Give, Show ***]

Include (-
Give:
    switch (lm_n) {
       1: id = (+LibMsg <cannot give what you have not got>+);
       2: id = (+LibMsg <cannot give to yourself>+);
       3: id = (+LibMsg <block giving>+);
       4: id = (+LibMsg <unable to receive things>+);
       5: id = (+LibMsg <report player giving>+);
       6: id = (+LibMsg <report npc giving to player>+);  
       7: id = (+LibMsg <report npc giving to npc>+);
   }
    jump end_part;

Show:
    switch (lm_n) {
       1: id = (+LibMsg <cannot show what you have not got>+);
       2: id = (+LibMsg <block showing>+);
    }
    jump end_part;
-)

[*** Enter, Exit, GetOff ***]

Include (-
Enter:
    switch (lm_n) {
       1: id = (+LibMsg <cannot enter something already entered>+);
       2: id = (+LibMsg <cannot enter something not enterable>+);
       3: id = (+LibMsg <cannot enter closed containers>+);
       4: id = (+LibMsg <cannot enter something carried>+);
       5: id = (+LibMsg <report player entering>+);
       6: id = (+LibMsg <implicitly pass outwards through other barriers>+);
          isImplicitAction = 1;
       7: id = (+LibMsg <implicitly pass inwards through other barriers>+);
           isImplicitAction = 1;
       8,9: id = (+LibMsg <report npc entering>+);  ! 8 = container, 9 = supporter
    }
    jump end_part;

Exit:
    switch (lm_n) {
       1: id = (+LibMsg <cannot exit when not within anything>+);
       2: id = (+LibMsg <cannot exit closed containers>+);
       3: id = (+LibMsg <report player exiting>+);
       4: id = (+LibMsg <cannot exit thing not within>+);
       5,6: id = (+LibMsg <report npc exiting>+);
    }
    jump end_part;

GetOff:
    id = (+LibMsg <cannot get off things>+);
    jump end_part;
-)

[*** Go ***]

Include (-
Go:
    switch (lm_n) {
       1: id = (+LibMsg <cannot travel in something not a vehicle>+);
       2: id = (+LibMsg <cannot go that way>+);
          (+main object+) = noun;   ! the direction
       3: id = (+LibMsg <cannot go up through closed doors>+);
       4: id = (+LibMsg <cannot go down through closed doors>+);
       5: id = (+LibMsg <cannot go through closed doors>+);
       6: id = (+LibMsg <nothing through door>+);
       7: id = (+LibMsg <block vaguely going>+);
       8: id = (+LibMsg <say npc goes>+);
          (+main object+) = (+ up +);
       9: id = (+LibMsg <say npc goes>+);
          (+main object+) = (+ down +);
       10: id = (+LibMsg <say npc goes>+);
       11: id = (+LibMsg <say npc arrives>+);
          (+main object+) = (+ up +);
       12:  id = (+LibMsg <say npc arrives>+);
          (+main object+) = (+ down +);
       13:  id = (+LibMsg <say npc arrives>+);
       14: id = (+LibMsg <say npc arrives from unknown direction>+);
       15: id = (+LibMsg <say npc arrives at>+);
          (+secondary object+) = (+ up +);
       16: id = (+LibMsg <say npc arrives at>+);
          (+secondary object+) = (+ down +);
       17: id = (+LibMsg <say npc arrives at>+);
          ! secondary object already defined
       18: id = (+LibMsg <say npc goes through>+);
       19: id = (+LibMsg <say npc arrives from>+);
       20,21: id = (+LibMsg <say npc vehicle>+);
       22: id = (+LibMsg <say npc pushing in front with player>+);
       23: id = (+LibMsg <say npc pushing in front>+);
       24: id = (+LibMsg <say npc pushing away>+);
       25: id = (+LibMsg <say npc pushing in>+);
       26: id = (+LibMsg <say npc taking player along>+);
    }
    jump end_part;
-)

[*** Verbosity Level ***]

Include (-
LMode1:
    id = (+LibMsg <brief look mode>+);
    jump end_part;

LMode2:
    id = (+LibMsg <verbose look mode>+);
    jump end_part;

LMode3:
    id = (+LibMsg <superbrief look mode>+);
    jump end_part;
-)

[*** Look ***]

Include (-
Look:
    switch (lm_n) {
       1: id = (+LibMsg <top line what on>+);
       2: id = (+LibMsg <top line what in>+);
       3: id = (+LibMsg <top line what as>+);
       4: id = (+LibMsg <say things on>+);
       5: id = (+LibMsg <say things also within>+);
       6: id = (+LibMsg <say things within>+);
       8: if (lm_o has supporter) id = (+LibMsg <top line what on>+);
          else id = (+LibMsg <top line what in>+);
       9: id = (+LibMsg <report npc looking>+);
    }
    jump end_part;
-)

[*** Examine, Search, LookUnder ***]

Include (-
Examine:
    switch (lm_n) {
       1: id = (+LibMsg <examine while dark>+);
       2: id = (+LibMsg <examine undescribed things>+);
       3: id = (+LibMsg <examine devices>+);
       4: id = (+LibMsg <report npc examining>+);
       5: id = (+LibMsg <examine direction>+);
    }
    jump end_part;

Search:
    switch (lm_n) {
       1: id = (+LibMsg <search while dark>+);
       2: id = (+LibMsg <nothing found on top of>+);
     ! 3 prints what is on a supporter; use I6 default behaviour
       4: id = (+LibMsg <cannot search unless container or supporter>+);
       5: id = (+LibMsg <cannot search closed opaque containers>+);
       6: id = (+LibMsg <nothing found within container>+);
     ! 7 prints the contents of a container; use I6 default behaviour
       8: id = (+LibMsg <report npc searching>+);
    }
    jump end_part;

LookUnder:
   switch (lm_n) {
       1: id = (+LibMsg <look under while dark>+);
       2: id = (+LibMsg <look under>+);
       3: id = (+LibMsg <report npc looking under>+);
    }
    jump end_part;
-)

[*** Open, Close, Lock, Unlock ***]

Include (-
Open:
    switch (lm_n) {
       1: id = (+LibMsg <cannot open unless openable>+);
       2: id = (+LibMsg <cannot open something locked>+);
       3: id = (+LibMsg <cannot open something already open>+);
       4: id = -2; ! reveal any newly visible exterior
       5: id = (+LibMsg <report player opening>+);
       6: id = (+LibMsg <report npc opening>+);
       7: id = (+LibMsg <report unseen npc opening>+);
    }
    jump end_part;

Close:
    switch (lm_n) {
       1: id = (+LibMsg <cannot close unless openable>+);
       2: id = (+LibMsg <cannot close something already closed>+);
       3: id = (+LibMsg <report player closing>+);
       4: id = (+LibMsg <report npc closing>+);
       5: id = (+LibMsg <report unseen npc closing>+);
    }
    jump end_part;

Lock:
    switch (lm_n) {
       1: id = (+LibMsg <cannot lock without a lock>+);
       2: id = (+LibMsg <cannot lock something already locked>+);
       3: id = (+LibMsg <cannot lock something open>+);
       4: id = (+LibMsg <cannot lock without the correct key>+);
       5: id = (+LibMsg <report player locking>+);
       6: id = (+LibMsg <report npc locking>+);
    }
    jump end_part;

Unlock:
    switch (lm_n) {
       1: id = (+LibMsg <cannot unlock without a lock>+);
       2: id = (+LibMsg <cannot unlock something already unlocked>+);
       3: id = (+LibMsg <cannot unlock without the correct key>+);
       4: id = (+LibMsg <report player unlocking>+);
       5: id = (+LibMsg <report npc unlocking>+);
    }
    jump end_part;
-)

[*** Switch On / Off ***]

Include (-
SwitchOn:
    switch (lm_n) {
       1: id = (+LibMsg <cannot switch on unless switchable>+);
       2: id = (+LibMsg <cannot switch on something already on>+);
       3: id = (+LibMsg <report player switching on>+);
       4: id = (+LibMsg <report npc switching on>+);
    }
    jump end_part;

SwitchOff:
    switch (lm_n) {
       1: id = (+LibMsg <cannot switch off unless switchable>+);
       2: id = (+LibMsg <cannot switch off something already off>+);
       3: id = (+LibMsg <report player switching off>+);
       4: id = (+LibMsg <report npc switching off>+);
    }
    jump end_part;
-)

[*** Wear, Disrobe ***]

Include (-
Wear:
    switch (lm_n) {
       1: id = (+LibMsg <cannot wear something not clothing>+);
       2: id = (+LibMsg <cannot wear not holding>+);
       3: id = (+LibMsg <cannot wear something already worn>+);
       4: id = (+LibMsg <report player wearing>+);
       5: id = (+LibMsg <report npc wearing>+);
    }
    jump end_part;

Disrobe:
    switch (lm_n) {
       1: id = (+LibMsg <cannot take off something not worn>+);
       2: id = (+LibMsg <report player taking off>+);
       3: id = (+LibMsg <report npc taking off>+);
    }
    jump end_part;
-)

[*** Eating, Drinking, Senses ***]

Include (-
Eat:
    switch (lm_n) {
       1: id = (+LibMsg <cannot eat unless edible>+);
       2: id = (+LibMsg <report player eating>+);
       3: id = (+LibMsg <report npc eating>+);
    }
    jump end_part;
Drink:
    id = (+LibMsg <block drinking>+);
    jump end_part;
Taste:
    id = (+LibMsg <block tasting>+);
    jump end_part;
Smell:
    id = (+LibMsg <block smelling>+);
    jump end_part;
Listen:
    id = (+LibMsg <block listening>+);
    jump end_part;
Touch:
    switch (lm_n) {
       1: id = (+LibMsg <report player touching other people>+);
       2: id = (+LibMsg <report player touching things>+);
       3: id = (+LibMsg <report player touching self>+);
       4: id = (+LibMsg <report npc touching self>+);
	 ! 5 is for touching the player, 6 is for another NPC
       5,6: id = (+LibMsg <report npc touching other people>+);
    }
    jump end_part;
-)

[*** Rhetorical Commands ***]

Include (-
Yes:
    id = (+LibMsg <block saying yes>+);
    jump end_part;
No:
    id = (+LibMsg <block saying no>+);
    jump end_part;
Sorry:
    id = (+LibMsg <block saying sorry>+);
    jump end_part;
Strong:
    id = (+LibMsg <block swearing obscenely>+);
    jump end_part;
Mild:
    id = (+LibMsg <block swearing mildly>+);
    jump end_part;
-)

[*** Body Movement  ***]

Include (-
Climb:
    id = (+LibMsg <block climbing>+);
    jump end_part;
Jump:
    id = (+LibMsg <block jumping>+);
    jump end_part;
Swing:
    id = (+LibMsg <block swinging>+);
    jump end_part;
WaveHands:
    id = (+LibMsg <block waving hands>+);
    jump end_part;
-)

[*** Physical Interaction ***]

Include (-
Attack:
    id = (+LibMsg <block attacking>+);
    jump end_part;
Burn:
    id = (+LibMsg <block burning>+);
    jump end_part;
Cut:
    id = (+LibMsg <block cutting>+);
    jump end_part;
Rub:
    id = (+LibMsg <block rubbing>+);
    jump end_part;
SetTo:
    id = (+LibMsg <block setting to>+);
    jump end_part;
Tie:
    id = (+LibMsg <block tying>+);
    jump end_part;

Wave:
    switch (lm_n) {
       1: id = (+LibMsg <cannot wave something not held>+);
       2: id = (+LibMsg <report player waving things>+);
       3: id = (+LibMsg <report npc waving things>+);
    }
    jump end_part;

Squeeze:
    switch (lm_n) {
       1: id = (+LibMsg <squeezing people>+);
       2: id = (+LibMsg <report player squeezing>+);
       3: id = (+LibMsg <report npc squeezing>+);
    }
    jump end_part;

ThrowAt:
    switch (lm_n) {
       1: id = (+LibMsg <throw at inanimate object>+);
       2: id = (+LibMsg <block throwing at>+);
    }
    jump end_part;
-)

[*** Push, Pull, Turn ***]

Include (-
Push:
    switch (lm_n) {
       1: id = (+LibMsg <cannot push something fixed in place>+);
       2: id = (+LibMsg <cannot push scenery>+);
       3: id = (+LibMsg <report player pushing>+);
       4: id = (+LibMsg <cannot push people>+);
     ! 5 does not apply to Push
       6:  id = (+LibMsg <report npc pushing>+);
    }
    jump end_part;

PushDir:
    switch (lm_n) {
       1: id = (+LibMsg <block pushing in directions>+);
       2: id = (+LibMsg <not pushed in a direction>+);
       3: id = (+LibMsg <pushed in illegal direction>+);
    }
    jump end_part;

Pull:
    switch (lm_n) {
       1: id = (+LibMsg <cannot pull something fixed in place>+);
       2: id = (+LibMsg <cannot pull scenery>+);
       3: id = (+LibMsg <report player pulling>+);
       4: id = (+LibMsg <cannot pull people>+);
       5: id = (+LibMsg <report npc pulling>+);
    }
    jump end_part;

Turn:
    switch (lm_n) {
       1: id = (+LibMsg <cannot turn something fixed in place>+);
       2: id = (+LibMsg <cannot turn scenery>+);
       3: id = (+LibMsg <report player turning>+);
       4: id = (+LibMsg <cannot turn people>+);
     ! 5,6 do not apply to Turn
       7: id = (+LibMsg <report npc turning>+);
    }
    jump end_part;
-)

[*** Speech / Interpersonal Actions ***]

Include (-
Answer:
    id = (+LibMsg <block answering>+);
    jump end_part;
Ask:
    id = (+LibMsg <block asking>+);
    jump end_part;
Buy:
    id = (+LibMsg <block buying>+);
    jump end_part;
Kiss:
    id = (+LibMsg <block kissing>+);
    jump end_part;
Sing:
    id = (+LibMsg <block singing>+);
    jump end_part;
Tell:
    switch (lm_n) {
       1: id = (+LibMsg <telling yourself>+);
       2: id = (+LibMsg <block telling>+);
    }
    jump end_part;
-)

[*** Mental Actions ***]

Include (-
Think:
    id = (+LibMsg <block thinking>+);
    jump end_part;

Consult:
    switch (lm_n) {
       1: id = (+LibMsg <block player consulting>+);
       2: id = (+LibMsg <block npc consulting>+);
    }
    jump end_part;
-)

[*** Sleep And Waiting ***]

Include (-
Sleep:
    id = (+LibMsg <block sleeping>+);
    jump end_part;

Wait:
    switch (lm_n) {
       1: id = (+LibMsg <report player waiting>+);
       2: id = (+LibMsg <report npc waiting>+);
    }
    jump end_part;

Wake:
    id = (+LibMsg <block waking up>+);
    jump end_part;

WakeOther:
    id = (+LibMsg <block waking other>+);
    jump end_part;
-)

Include (-
default:
.end_part;
    if (id == -1) { rfalse; }

    if (id == -2)  {
        (+custom_internal_i6 reveal any newly visible exterior rule+)();
		rtrue;
    }
    else {
       (+library-message-id+) = id;
       (+print library message rule+)();

	   return (+libmsg_printed+);
    }
];
-)

Part 5 - Rule handling - unindexed

Section 5.1 - Reporting rules - unindexed

To display (id_ - a library message id) / (original_rule - a rule):
   change library-message-id to id_;
   follow the print library message rule;
   if libmsg_printed is 0, follow original_rule.

Section 5.2 - Internal rules - unindexed

[ the following rule is called from the i6 code ]

This is the custom_internal_i6 reveal any newly visible exterior rule:
   display LibMsg <reveal any newly visible exterior initial text> /
     the fake_newly_visible_exterior rule;
   if there is no newly visible exterior begin;
       display LibMsg <no newly visible exterior> /
	     the fake_newly_visible_exterior_nothing rule;
   otherwise;
       say ".";
   end if.

This is the fake_newly_visible_exterior rule:
   say "You open [the main object], revealing [run paragraph on]".
This is the fake_newly_visible_exterior_nothing rule:
   say "nothing."

[ need to test the return value of WriteListFrom(); not sure how to do this in Inform 7 ]
To decide whether there is no newly visible exterior:
   (- WriteListFrom(child(lm_o), ENGLISH_BIT+TERSE_BIT+CONCEAL_BIT) == 0 -).

Volume - Glulx Entry Points by Emily Short

The glulx timed activity rules is a rulebook.
The glulx redrawing rules is a rulebook.
The glulx arranging rules is a rulebook.
The glulx sound notification rules is a rulebook.
The glulx mouse input rules is a rulebook.
The glulx character input rules is a rulebook.
The glulx line input rules is a rulebook.
The glulx hyperlink rules is a rulebook.

The glulx zeroing-reference rules is a rulebook.
The glulx resetting-windows rules is a rulebook.
The glulx resetting-streams rules is a rulebook.
The glulx resetting-filerefs rules is a rulebook.
The glulx object-updating rules is a rulebook.

Current glulx rock is a number that varies.
Current glulx rock-ref is a number that varies.

Glulx replacement command is some indexed text that varies. 

To decide whether glulx mouse input is supported:
	(- ( glk_gestalt(gestalt_MouseInput, 0) ) -)

To decide whether glulx timekeeping is supported:
	(- ( glk_gestalt(gestalt_Timer, 0) ) -)

To decide whether glulx graphics is supported:
	(- ( glk_gestalt(gestalt_Graphics, 0) ) -)

To decide whether glulx text-buffer graphics is supported:
	(- ( glk_gestalt(gestalt_DrawImage, winType_TextBuffer) ) -)

To decide whether glulx graphic-window graphics is supported:
	(- ( glk_gestalt(gestalt_DrawImage, winType_Graphics) ) -)

To decide whether glulx PNG transparency is supported:
	(- ( glk_gestalt(gestalt_GraphicsTransparency, 0) ) -)

To decide whether glulx sound is supported:
	(- ( glk_gestalt(gestalt_Sound, 0) ) -)

To decide whether glulx mod sound is supported:
	(- ( glk_gestalt(gestalt_SoundMusic, 0) ) -)

To decide whether glulx sound volume is supported:
	(- ( glk_gestalt(gestalt_SoundVolume, 0) ) -)

To decide whether glulx sound notification is supported:
	(- ( glk_gestalt(gestalt_SoundNotify, 0) ) -)

To decide whether glulx hyperlinks are supported:
	(- ( glk_gestalt(gestalt_Hyperlinks, 0) ) -)


Include (-


   [ IdentifyGlkObject phase type ref rock;
      if (phase == 0) { ! Zero out references to our objects.
	 if (FollowRulebook( (+glulx zeroing-reference rules+) ) && RulebookSucceeded()) { rtrue; }
      }

      if (phase == 1) { ! Reset our windows, streams and filerefs.
	(+ current glulx rock +) = rock;
	(+ current glulx rock-ref +) = ref;
         switch (type) {
            0: ! it's a window 
               	FollowRulebook( (+ glulx resetting-windows rules +) );
	 1 : ! it's a stream
               	FollowRulebook( (+ glulx resetting-streams rules +) );
    	   2 : ! it's a file reference
               	FollowRulebook( (+ glulx resetting-filerefs rules +) );
         }
         return;
      }

      if (phase == 2) { ! Update our objects.
         if (FollowRulebook( (+glulx object-updating rules+) ) && RulebookSucceeded()) { rtrue; }
      }

   ];


  [ HandleGlkEvent ev context abortres newcmd cmdlen  ;
      context = 0; ! suppress ignored warning
      switch (ev-->0) {
	evtype_Redraw:
		if (FollowRulebook( (+glulx redrawing rules+) ) && RulebookSucceeded()) { rtrue; }

	evtype_Arrange:
		if (FollowRulebook( (+glulx arranging rules+) ) && RulebookSucceeded()) { rtrue; }

	evtype_Timer:
		if (FollowRulebook( (+glulx timed activity rules+) ) && RulebookSucceeded()) { rtrue; }

	evtype_SoundNotify:
		if (FollowRulebook( (+glulx sound notification rules+) ) && RulebookSucceeded()) { rtrue; }

	evtype_Hyperlink: 
		FollowRulebook( (+glulx hyperlink rules+) );
		if ( FollowRulebook( (+command-counting rules +) ) && RulebookSucceeded())
		{ 
			FollowRulebook( (+command-showing rules+) );
			if ( FollowRulebook( (+command-pasting rules+) ) ) 	return 2;
		} 
	
	evtype_CharInput:
		if (FollowRulebook( (+glulx character input rules+) ) && RulebookSucceeded()) { rtrue; }

	evtype_LineInput:
		if (FollowRulebook( (+glulx line input rules+) ) && RulebookSucceeded()) { return 2; }

	evtype_MouseInput:
		FollowRulebook( (+glulx mouse input rules+) );
		if ( FollowRulebook( (+command-counting rules +) ) && RulebookSucceeded())
		{ 
			FollowRulebook( (+command-showing rules+) );
			if ( FollowRulebook( (+command-pasting rules+) ) ) 	return 2;
		}  

	}

   ];

-) before "Glulx.i6t".

The command-counting rules are a rulebook.

A command-counting rule (this is the ordinary checking for content rule):
	if the number of characters in the glulx replacement command is 0, rule fails;
	rule succeeds.


The command-showing rules are a rulebook.

A command-showing rule (this is the print text to the input prompt rule):
	say input-style-for-glulx;
	say Glulx replacement command;
	say roman type;

To say input-style-for-Glulx: 
	(- glk_set_style(style_Input); -)
 

The command-pasting rules are a rulebook. 

A command-pasting rule (this is the glue replacement command into parse buffer rule): 
	change the text of the player's command to the Glulx replacement command;
	rule succeeds.

Volume - Glulx Text Effects by Emily Short

Glulx color value is a kind of value. Some glulx color values are defined by the Table of Common Color Values.

Table of Common Color Values
glulx color value	assigned number
g-black	0
g-dark-grey	4473924
g-medium-grey	8947848
g-light-grey	14540253
g-white	16777215


text-justification is a kind of value. The text-justifications are left-justified, left-right-justified, center-justified, and right-justified. 

special-style is a kind of value. The special-styles are special-style-1 and special-style-2. 

boldness is a kind of value. The boldnesses are light-weight, regular-weight, and bold-weight.

obliquity is a kind of value.  The obliquities are no-obliquity and italic-obliquity.

fixity is a kind of value. The fixities are fixed-width-font and proportional-font.

Before starting the virtual machine:
	initialize user styles.
	
Table of User Styles
style name	justification	obliquity	indentation	first-line indentation	boldness	fixed width	relative size	glulx color
a special-style		a text-justification	an obliquity	a number	a number	a boldness	a fixity	a number	a glulx color value


To initialize user styles:
	repeat through the Table of User Styles
	begin; 
		if there is a justification entry, apply justification of (justification entry) to (style name entry);
		if there is an obliquity entry, apply obliquity (obliquity entry) to (style name entry);
		if there is an indentation entry, apply (indentation entry) indentation to (style name entry);
		if there is a first-line indentation entry, apply (first-line indentation entry) first-line indentation to (style name entry);
		if there is a boldness entry, apply (boldness entry) boldness to (style name entry);
		if there is a fixed width entry, apply fixed-width-ness (fixed width entry) to (style name entry);
		if there is a relative size entry, apply (relative size entry) size-change to (style name entry);
		if there is a glulx color entry, apply (assigned number of glulx color entry) color to (style name entry);
	end repeat.
	
To apply (color change - a number) color to (chosen style - a special-style):
	(- SetColor({chosen style}, {color change}); -)
	
To apply (relative size change - a number) size-change to (chosen style - a special-style):
	(- SetSize({chosen style}, {relative size change}); -)
	
To apply (chosen boldness - a boldness) boldness to (chosen style - a special-style):
	(- BoldnessSet({chosen style}, {chosen boldness}); -)
	
To apply (indentation amount - a number) indentation to (chosen style - a special-style):
	(- Indent({chosen style}, {indentation amount}); -)
	
To apply (indentation amount - a number) first-line indentation to (chosen style - a special-style):
	(- ParaIndent({chosen style}, {indentation amount}); -)

To apply justification of (justify - a text-justification) to (chosen style - a special-style):
	(- Justification({justify}, {chosen style}); -)
	
To apply fixed-width-ness (chosen fixity - a fixity) to (chosen style - a special-style):
	(- FixitySet({chosen style}, {chosen fixity}); -)
	
To apply obliquity (chosen obliquity - an obliquity) to (chosen style - a special-style):
	(- Obliquify({chosen style}, {chosen obliquity}); -)
	
Include (-

[ SetColor S N;
	S=S+8; 
	glk_stylehint_set(wintype_TextBuffer, S, stylehint_TextColor, N); 
];

[ FixitySet S N;
	S=S+8; 
	N--;
	glk_stylehint_set(wintype_TextBuffer, S, stylehint_Proportional, N); 
];

[ SetSize S N;
	S=S+8;  
	glk_stylehint_set(wintype_TextBuffer, S, stylehint_Size, N); 
];

[ BoldnessSet S N;
	S=S+8; 
	N = N-2;
	glk_stylehint_set(wintype_TextBuffer, S, stylehint_Weight, N); 
];

[ ParaIndent S N;
	S=S+8; 
	glk_stylehint_set(wintype_TextBuffer, S, stylehint_ParaIndentation, N); 
];

[ Indent S N;
	S=S+8; 
	glk_stylehint_set(wintype_TextBuffer, S, stylehint_Indentation, N); 
];

[ Justification N S;
	N--; S=S+8; 
	glk_stylehint_set(wintype_TextBuffer, S, stylehint_Justification, N); 
];

[ Obliquify S N;
	S=S+8;
	N--;
	glk_stylehint_set(wintype_TextBuffer, S, stylehint_Oblique, N); 
];

-)
	

To say first custom style:
	(- glk_set_style(style_User1); -)

To say second custom style:
	(- glk_set_style(style_User2); -)
 


Volume - Flexible Windows by Jon Ingold

Before starting the virtual machine:
	do nothing. [Hack that, for complicated reasons, prevents character streams going to the wrong place at game startup under some conditions.]

Use no status line translates as (- Constant USE_NO_STATUS_LINE 1; -).
Include (-
#ifndef USE_NO_STATUS_LINE;
Constant USE_NO_STATUS_LINE 0;
#endif;
-). 

Chapter 1 - Initialisations, windows and values

section - definitions of properties and values

A g-window is a kind of thing.

Include (-

Attribute g_present;
Constant drawing_rule = initial;

-) after "Definitions.i6t". 


A g-window can be g-present or g-unpresent. A g-window can be g-required or g-unrequired.

The g-present property translates into I6 as "g_present".
Drawing rule translates into I6 as "drawing_rule".


A g-window is g-unpresent. A g-window is g-unrequired.

A g-window-position is a kind of value. The g-window-positions are g-placenull, g-placeleft, g-placeright, g-placeabove and g-placebelow.

A g-window-type is a kind of value. The g-window-types are g-proportional, g-using-minimum and g-fixed-size.

A g-window-kind is a kind of value. The g-window-kinds are g-text-buffer, g-text-grid and g-graphics.

Section - assigning properties to g-windows

A g-window has a g-window-position called position.
A g-window has a g-window-kind called type.
A g-window has a g-window-type called scale method.
A g-window has a number called measurement.
A g-window has a number called minimum size.

A g-window has a g-window called direct parent.

The minimum size of a g-window is usually 0.
The measurement of a g-window is usually 40.

A g-window has a number called rock-value.
A g-window has a number called ref-number.
Rock-value property translates into I6 as "rock_value".
Ref-number property translates into I6 as "ref_number".

direct parent property translates into I6 as "direct_parent".

A g-window has a rule called drawing rule.  
The drawing rule of a g-window is usually the do-nothing rule.


This is the do-nothing rule: do nothing.

Include
(- with rock_value 0, ref_number 0, direct_parent 0, -) when defining a g-window.


When play begins (this is the allocate rocks rule):
	let cnt be 200;
	repeat with item running through g-windows
	begin;
		set item rock to cnt;
		increase cnt by 10;
		now the direct parent of item is the direct-parent of item;
	end repeat;
	set main-window ref;

To set main-window ref:
(- MainWinRef(); -).

Include
(-  
[ MainWinRef;
     (+main-window+).rock_value = GG_MAINWIN_ROCK; 
     (+main-window+).ref_number = gg_mainwin;
     give (+main-window+) g_present;
];
 -).

To set (g - a g-window) rock to (n - a number):
(-   {g}.rock_value = {n};
-)


Section - the main-window object, to spawn windows from

The main-window is a g-window.
The main-window is g-present. The main-window is g-required.
The position of the main-window is g-placebelow.

The rock-value of the main-window is 100.

To decide if rocks are currently unassigned: 
	if rock-value of main-window is 100, yes; no.

Section - spawning relations

[This is hacked from the original extension to replace the "paternal" variable with "fw-paternal" because of a conflict with Blue Lacuna's "paternalism" score for Progue. ]

Spawning relates various g-window to various g-windows.

The verb to spawn (he spawns, they spawn, he spawned, it is spawned, he is spawning) implies the spawning relation.

The verb to be the spawner of implies the spawning relation.

Ancestry relates a g-window (called X) to a g-window (called Y) when the number of steps via the spawning relation from X to Y is at least 0. The verb to be ancestral to implies the ancestry relation.

Descendency relates a g-window (called X) to a g-window (called Y) when the number of steps via the spawning relation from Y to X is at least zero. The verb to be descended from implies the descendency relation.

Definition: a g-window is fw-paternal if it spawns something g-present.
Definition: a g-window is childless if it is not fw-paternal.

To decide which g-window is the direct-parent of (g - a g-window):
	repeat with item running through g-windows
	begin;
		if item spawns g, decide on item;
	end repeat.

section - test spawning relations - not for release

[We don't need this functionality, and it contains the "paternal" variable that conflicts with our own, so we just comment this out.]

[Peeping is an action applying to one visible thing.

Understand "peep through [any g-window]" as peeping.

Carry out peeping (this is the peep rule):
	say "[noun]: spawns [a list of g-windows spawned by the noun]."; 
	say "ancestors: [a list of g-windows ancestral to noun].";
	say "descendants: [a list of g-windows descended from noun].";
	if noun is paternal, say "(currently paternal) ";
	otherwise say "(currently childless) ";
	if noun is g-present, say "(present) "; otherwise say "(missing) ";
	if noun is g-required, say "(required)."; otherwise say "(unneeded).";

tracking it to is an action applying to two visible  things.

Understand "track [any g-window] to [any g-window]" as tracking it to.

Carry out tracking it to:
	say "no. =>: [number of steps via the spawning relation from noun to second noun].";
	say "no. <=: [number of steps via the spawning relation from second noun to noun].";

Throwing open is an action applying to one visible  thing.
Slamming shut is an action applying to one visible  thing.

Understand "slam shut [any g-window]" as slamming shut.
Understand "throw open [any g-window]" as throwing open.

Carry out slamming shut:
	shut down the noun;

Carry out throwing open:
	open up the noun;]

Chapter 2 - opening, closing and calibrating

Section - opening window chains
[ set opening flags for necessary parents, then call open window safely routine ]
[ which then calls back to the construct window routine given here ]

To open up (g - a g-window):
	if g is g-unpresent and the main-window is ancestral to g
	begin;
		now every g-window ancestral to g is g-required;
		calibrate windows;
	end if.

section - closing window chains
[ so set deletion flags for children too, then call delete window safely routine ]

To shut down (g - a g-window):
	if g is g-present and g is not the main-window
	begin;
		now every g-window descended from g is g-unrequired;
		calibrate windows;
	end if;

Section - calibrating the window set to match expectations

Definition: a g-window is a next-step if it is spawned by something g-present.

To calibrate windows:
[ open g-required ung-present windows. start with directly spawned windows.
  close g-unrequired g-present windows. start with childless! ]
	let h be a random g-unrequired g-present childless g-window;
	while h is a g-window
	begin;
		g-destroy h;
		let h be a random g-unrequired g-present childless g-window;
	end while;
	let g be a random next-step g-required g-unpresent g-window;
	while g is a g-window
	begin;
		g-make g;
		let g be a random next-step g-required g-unpresent g-window;
	end while;


Chapter - I6 and Glulx Calls

Section - i6 for making a window

Constructing something is an activity.

The pending g-window is a g-window that varies.

To g-make (g - a g-window):
	now g is g-present;
	change the pending g-window to g;
	begin the constructing activity with the pending g-window;
	let p1 be the pos-val for g of the position of g + method-val of the scale method of g;
	if the scale method of g is g-using-minimum, let p2 be the minimum size of g; 
	otherwise let p2 be the measurement of g;
	let p3 be the kind-val of the type of g;
	let p0 be the ref-number of the direct parent of g;	
	now the  ref-number of g is the reference created from p0 with p1 and p2 and p3 and rock value rock-value of g;
	end the constructing activity with the pending g-window;

To decide which number is the reference created from (p0 - a number) with (p1 - a number) and (p2 - a number) and (p3 - a number) and rock value (rock - a number):
(- (glk_window_open({p0},{p1}, {p2}, {p3}, {rock}))
-)

To decide which number is the pos-val for (g - a g-window) of (N - a g-window-position): (-  (GetPos({N}, {g})) -).
To decide which number is the method-val of (N - a g-window-type): (- (GetMethod({N})) -).
To decide which number is the kind-val of (N - a g-window-kind): (- (GetKind({N})) -).

Include (-

[ GetKind kind;
	switch(kind)
	{
		(+g-text-buffer+):	return wintype_textbuffer;
		(+g-text-grid+):		return wintype_textgrid;
		(+g-graphics+):		return wintype_graphics;
	}
];

[ GetMethod type;
	switch(type)
	{	
		(+g-proportional+): 	return winmethod_Proportional;
		default:		  	return winmethod_Fixed;	
	}
];

[ GetPos pos win;
	switch(pos)
	{
		(+g-placeabove+): return winmethod_Above;
		(+g-placebelow+): return winmethod_Below;
		(+g-placeleft+): return winmethod_Left;
		(+g-placeright+): return winmethod_Right;
	} 

];

-)

Section - i6 for destroying a window

To g-destroy (g - a g-window):
	now g is g-unpresent;
	delete ref-number of g;

To delete (N - a number):	(- glk_window_close({N}, 0); 	-)

section - identify glx rubbish

A glulx zeroing-reference rule (this is the default removing references rule):
	doll-up properties; 	[ rebuild I7 properties, if we need to. ]
	if rocks are currently unassigned, follow the allocate rocks rule;
	repeat with g running through g-windows begin;
		if g is not main-window
		begin;
			now the ref-number of g is zero;
			now g is g-unpresent;
		end if;
	end repeat;

To doll-up properties: (- CreatePropertyOffsets(); -)

Definition: a g-window is on-call if the rock-value of it is the current glulx rock.

A glulx resetting-windows rule (this is the default reobtaining references rule):
	let g be a random on-call g-window; [ get the particular window we're looking to build]
	if g is a g-window and the current glulx rock is not zero begin;
		now the ref-number of g is the current glulx rock-ref;
		now g is g-present; [ the window is RIGHT HERE ]
	end if;

	[ by the end of this, all the windows which are actually present are marked thus, and have ref numbers. All those which aren't present are also marked. We then match this up to requirements. ]

The first glulx object-updating rule:
	set main-window ref;
	follow the delete-unrequired rule;
	follow the create-required rule.

This is the delete-unrequired rule:
	while the number of g-unrequired g-present g-windows is not zero
	begin;
		shut down a random g-unrequired g-present g-window;
	end while.

This is the create-required rule:
	while the number of g-required g-unpresent g-windows is not zero
	begin;
		open up a random g-required g-unpresent g-window;
	end while.

Section - updating the contents of the windows

A glulx arranging rule (this is the arranging all rule):
	follow the refresh windows rule.

A glulx redrawing rule (this is the redrawing all rule):
	follow the refresh windows rule.

A glulx object-updating rule (this is the updating-after-undo all rule):
	follow the refresh windows rule.

This is the refresh windows rule:
	let old current be the current g-window;
	repeat with item running through g-present g-windows begin;
		change current g-window to the item;
		follow the drawing rule of the item;
	end repeat;
	if the old current is g-present
	begin;
		change current g-window to the old current;
		set focus to the current g-window;
	end if.

Section - Some useful little functions

To decide which number is the measure of (g - a g-window):
	if the position of g is at least g-placeabove, decide on the height of g;
	decide on the width of g.

To decide which number is the width of (g - a g-window):
(-  	WindowSize({g}, 0) 	-).

To decide which number is the height of (g - a g-window):
(-  	WindowSize({g}, 1) 	-).

Include (-  

[ WindowSize g  index result;
	if (g hasnt g_present) return 0;
	result = glk_window_get_size(g.ref_number, gg_arguments, gg_arguments+WORDSIZE);
            return  gg_arguments-->index;
];

-)

Chapter - the constructing activity

Section - fixing problems with window scaling 

Before constructing a g-window when the scale method of the pending g-window is g-using-minimum (this is the reset minimum rule): 
	now the scale method of the pending g-window is g-proportional; 

The reset minimum rule is listed before the use minimum size instead rule in the Before constructing rulebook.

Before constructing a g-window when the scale method of the pending g-window is g-proportional (this is the fix broken proportions rule):
	if the measurement of the pending g-window > 100 or the measurement of the pending g-window < 0, 
	now the scale method of the pending g-window is g-fixed-size;  

Before constructing a g-window when the position of the pending g-window is g-placenull (this is the tile automatically windows rule):
	if the position of the direct parent of the pending g-window is at least g-placeabove, now the position of the pending g-window is g-placeright; 
	otherwise now the position of the pending g-window is g-placeabove.

Before constructing a g-window when the scale method of the pending g-window is g-proportional  (this is the use minimum size instead rule):
	let p1 be 100 multiplied by the minimum size of the pending g-window;
[actually, this should be the size of the direct parent, shouldn't it? ]
	let p2 be the measurement of the pending g-window multiplied by width of the direct parent of the pending g-window;
	if p1 > p2, now the scale method of the pending g-window is g-using-minimum.
 
The first after constructing a g-window :
	if the ref-number of the pending g-window is zero, now the pending g-window is g-unpresent instead.

The last After constructing a g-window :
	if the pending g-window is g-present, follow the drawing rule of the pending g-window;



Chapter - Writing to different windows

Section - shifting and knowing where we are

The current g-window is a g-window that varies. The current g-window is the main-window.

To set/move/shift the/-- focus to (g - a g-window), clearing the window:
	if g is g-present 
	begin;
		now the current g-window is g;
		set cursor to ref-number of g;	
		if clearing the window, clear the current g-window;
	end if.

To set cursor to the/-- (N - a number):
(-   	glk_set_window({n}); 
-)

To clear the/-- (g - a g-window):
(-	if ({g} has g_present) glk_window_clear({g}.ref_number);
-).

To return to main screen/window: set focus to main-window.

Section - setting the cursor

To position the cursor in (g - a g-window) at row (y - a number) column (x - a number):
(-	SetCursorTo({g}, {x}, {y}); 		-).

Include (-

[ SetCursorTo win row col;
	if (win has g_present)
		glk($002B, win.ref_number, row-1, col-1); ! window_move_cursor
];

-).

Section - background colours


Table of Common Color Values (continued)
glulx color value		assigned number
g-placenullcol		0
g-darkgreen	25600
g-green		32768
g-lime		65280
g-midnightblue	1644912
g-steelblue	4620980
g-terracotta	11674146
g-navy		128
g-mediumblue	205
g-blue		255
g-indigo		4915330
g-cornflowerblue	6591981
g-mediumslateblue	8087790
g-maroon	8388608
g-red		16711680
g-deeppink	16716947
g-brown		9127187
g-darkviolet	9699539
g-khaki		12433259
g-silver		12632256
g-crimson	14423100
g-orangered	16729344
g-gold		16766720	
g-darkorange	16747520
g-lavender	16773365
g-yellow		16776960
g-pink		16761035

A g-window has a glulx color value called back-colour. The back-colour of a g-window is usually g-placenullcol.
Back-colour property translates into I6 as "back_colour".

Before constructing  when the type of the pending g-window is g-text-buffer (this is the set text-colours rule):
	set the background text-colour of the pending g-window; 

After constructing when the type of the pending g-window is g-text-buffer (this is the reset text-colours rule):
	reset the background text-colour of the pending g-window;

After constructing when the type of the pending g-window is g-graphics (this is the colour-graphics rule):
	set the background colour of the pending g-window;

To set the background text-colour of (g - a g-window):
(-	SetBTcol({g});	-).

To reset the background text-colour of (g - a g-window):
(-	if ({g} has g_present) glk_window_clear({g}.ref_number);
	ResetBTCol();
-)

To set the background colour of (g - a g-window):
(-	if ({g} has g_present) SetBCol({g}.ref_number, {g}.back_colour);	
-).

Include 
(- 

Constant glulx_colour_table = (+Table of Common color Values+);

[ ColVal c i max;
	max=TableRows(glulx_colour_table);
	for ( i=1:i<=max:i++ ) {
		if (TableLookUpEntry(glulx_colour_table, 1, i) ==  c) 
			return TableLookUpEntry(glulx_colour_table, 2, i);
	} 
];

[ ResetBTCol i;
  for (i = 0: i < style_NUMSTYLES : i++)
	glk_stylehint_clear(wintype_textbuffer, i, stylehint_backcolor);
];


[ SetBTCol gwin col i;
  col = gwin.back_colour;
  if (col == (+g-placenullcol+)) rfalse;
  col = ColVal(col);
  for (i = 0: i < style_NUMSTYLES : i++)
 	 glk_stylehint_set(wintype_Textbuffer, i, stylehint_BackColor, col);
];

[ SetBCol win col result;
	if (col ~= (+g-placenullcol+)) glk_window_set_background_color(win, ColVal(col));
	glk_window_clear(win);
];

-)


Include
(-
	[ InitGlkWindow winrock i col;
		switch(winrock){
			GG_MAINWIN_ROCK:	
				if ((+main-window+).back_colour ~=  (+g-placenullcol+))
				{ 	col = ColVal((+main-window+).back_colour);
					for (i = 0: i < style_NUMSTYLES : i++)
					glk_stylehint_set(wintype_TextBuffer, i, stylehint_BackColor, col);
					glk_window_clear((+main-window+).ref_number);
  glk_stylehint_set(wintype_TextBuffer, style_Emphasized, stylehint_Oblique, 1);
  glk_stylehint_set(wintype_TextBuffer, style_Emphasized, stylehint_weight, 0);

					rfalse;
				}
			GG_STATUSWIN_ROCK: if (USE_NO_STATUS_LINE == 1) rtrue;
		}
		rfalse;

	];

-) after "Definitions.i6t".   		

Section - reverse-colouring windows

To set-reverse: 	(-	SetReverse(1);	-);
To unset-reverse: 	(-	SetReverse(0);	-);

Include (-

[ SetReverse flag i;
   for (i = 0: i < style_NUMSTYLES : i++)
       if (flag)	
	glk_stylehint_set(wintype_textgrid, i, stylehint_ReverseColor, 0);
      else
	glk_stylehint_clear(wintype_textgrid, i, stylehint_ReverseColor);

];

-).

section - bordered g-windows

A bordered g-window is a kind of g-window. A bordered g-window has a glulx color value called border-colour.
A bordered g-window has a number called border-measure. The border-measure of a bordered g-window is usually 3.

A g-border is a kind of g-window. 
The type of a g-border is always g-graphics. The scale method of a g-border is always g-fixed-size.

Every bordered g-window spawns four g-borders.

After constructing a bordered g-window (called the main-panel) (this is the place-borders rule):
	apply borders to main-panel;

To apply borders to (main-panel - a g-window):
	let border piece be g-placeleft;
	repeat with item running through g-borders spawned by the main-panel 
	begin;
		now the back-colour of the item is the border-colour of the main-panel;
		now the measurement of the item is the border-measure of the main-panel;
		now the position of the item is border piece;
		let the border piece be the g-window-position after border piece;
		now the item is g-required;
	end repeat.

When play begins when the main-window is a bordered g-window:
	apply borders to main-window;

Volume - Plurality by Emily Short

Section 1 - Verbs
 
A thing can be neuter. A thing is usually neuter.

The prior named noun is a thing that varies. The prior named noun is yourself.

After printing the name of something (called the target): 
	mark target in output.

To mark (target - a thing) in output:
	if the target acts plural or target is the player, mark-future-plural; otherwise mark-future-singular;
    change the prior named noun to the target.
    
To mark-future-plural:
	(- say__n = 1; -)
	
To mark-future-singular:
	(- say__n = 29; -)
    
To decide whether (item - an object) acts plural: 
    (- ({item} has pluralname) -);

To say is-are: 
	say is-are of prior named noun.
    
To say is-are of (item - a thing):
	change prior named noun to item;
	if prior named noun acts plural or the prior named noun is the player, say "are"; otherwise say "is".

To say has-have:
  say has-have of prior named noun

To say has-have of (item - a thing):
  if the item acts plural or the prior named noun is the player begin;
    say "have";
  otherwise;
    say "has";
  end if.
    
To say numerical is-are:
	(- if (say__n == 1) print "is"; else print "are"; -)
	
To say numerical has-have:
	(- if (say__n == 1) print "has"; else print "have"; -)
	
To say es:
  say es of prior named noun

To say es of (item - a thing):
  if the item acts plural or the prior named noun is the player begin;
    say "";
  otherwise;
    say "es";
  end if.

To say ies:
  say ies of prior named noun

To say ies of (item - a thing):
  if the item acts plural or the prior named noun is the player begin;
    say "y";
  otherwise;
    say "ies";
  end if.	
	
Section 2 - Pronouns

To say that-those: 
    say that-those prior named noun.

To say Cap that-those: 
    say Cap that-those prior named noun.
    
To say that-those of (item - a thing): 
    change the prior named noun to the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "those"; 
    otherwise if the item is the player;
		 say "you";
	otherwise if the item is male and item is not neuter;
   		say "he";
    otherwise if the item is female and item is not neuter;
    	say "she";
    otherwise; 
    	say "that";
    end if.

To say Cap that-those (item - a thing): 
    change the prior named noun to the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "Those"; 
    otherwise if the item is the player;
		 say "You";
    otherwise if the item is male and item is not neuter;
   		say "He";
    otherwise if the item is female and item is not neuter;
    	say "She";
    otherwise; 
    	say "That";
    end if.
   
To say that-those (item - a thing): 
    change the prior named noun to the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "those"; 
    otherwise if the item is the player;
		 say "you";
	otherwise if the item is male and item is not neuter;
   		say "he";
    otherwise if the item is female and item is not neuter;
    	say "she";
    otherwise; 
    	say "that";
    end if.
    

To say Cap that-those of (item - a thing): 
    change the prior named noun to the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "Those"; 
    otherwise if the item is the player;
		 say "You";
	otherwise if the item is male and item is not neuter;
   		say "He";
    otherwise if the item is female and item is not neuter;
    	say "She";
    otherwise; 
    	say "That";
    end if.
    
To say it-they:  
	say it-they of prior named noun.

To say it-they of (item - a thing):  
    change the prior named noun to the item;
	mark prior named noun in output;
     if the item acts plural
    begin;
    	say "they"; 
    otherwise if the item is the player;
		 say "you";
	otherwise if the item is male and item is not neuter;
   		say "he";
    otherwise if the item is female and item is not neuter;
    	say "she";
    otherwise; 
    	say "it";
    end if.
    
To say Cap it-they:
	say Cap it-they of prior named noun.

To say Cap it-they of (item - a thing):  
    change the prior named noun to the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "They"; 
    otherwise if the item is the player;
		 say "You";
	otherwise if the item is male and item is not neuter;
   		say "He";
    otherwise if the item is female and item is not neuter;
    	say "She";
    otherwise; 
    	say "It";
    end if.
    
To say its-their:
	say its-their of prior named noun.
	
To say its-their of (item - a thing):   
    change the prior named noun to the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "their"; 
    otherwise if the item is the player;
		 say "your";
	otherwise if the item is male and item is not neuter;
   		say "his";
    otherwise if the item is female and item is not neuter;
    	say "her";
    otherwise; 
    	say "its";
    end if.
    
    
To say Cap its-their:
	say Cap its-their of prior named noun.
	
To say Cap its-their of (item - a thing):  
    change the prior named noun to the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Their"; 
    otherwise if the item is the player;
		 say "Your";
	otherwise if the item is male and item is not neuter;
   		say "His";
    otherwise if the item is female and item is not neuter;
    	say "Her";
    otherwise; 
    	say "Its";
    end if.
    
To say it-them: 
	say it-them of prior named noun. 

To say it-them of (item - a thing):   
    change the prior named noun to the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "them"; 
    otherwise if the item is the player;
		 say "you";
	otherwise if the item is male and item is not neuter;
   		say "him";
    otherwise if the item is female and item is not neuter;
    	say "her";
    otherwise; 
    	say "it";
    end if.
    
To say Cap it-them:
	say Cap it-them of prior named noun.
	
To say Cap it-them of (item - a thing):
    change the prior named noun to the item;
	mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Them"; 
    otherwise if the item is the player;
		 say "You";
	otherwise if the item is male and item is not neuter;
   		say "Him";
    otherwise if the item is female and item is not neuter;
    	say "Her";
    otherwise; 
    	say "It";
    end if.
	

To say its-theirs:
  say its-theirs of prior named noun.

To say its-theirs of (item - a thing):
  change the prior named noun to the item;
  mark prior named noun in output;
    if the item acts plural
    begin;
    	say "theirs"; 
    otherwise if the item is the player;
		 say "yours";
	otherwise if the item is male and item is not neuter;
   		say "his";
    otherwise if the item is female and item is not neuter;
    	say "hers";
    otherwise; 
    	say "its";
    end if.
  
To say Cap its-theirs:
  say its-theirs of prior named noun.

To say Cap its-theirs of (item - a thing):
  change the prior named noun to the item;
  mark prior named noun in output;
    if the item acts plural
    begin;
    	say "Theirs"; 
    otherwise if the item is the player;
		 say "Yours";
	otherwise if the item is male and item is not neuter;
   		say "His";
    otherwise if the item is female and item is not neuter;
    	say "Hers";
    otherwise; 
    	say "Its";
    end if.

To say possessive:
  say possessive of prior named noun.

To say possessive of (item - a thing):
  change the prior named noun to the item;
  mark prior named noun in output;
  if the item is the player
  begin;
  	say "your";
  otherwise if the item acts plural;
  	say "[the item][apostrophe]";
  otherwise;
  	say "[the item][apostrophe]s";
  end if.

To say Cap possessive:
  say Cap possessive of prior named noun

To say Cap possessive of (item - a thing):
  change the prior named noun to the item;
  mark prior named noun in output;
  if the item is the player
  begin;
  	say "Your";
  otherwise if the item acts plural;
  	say "[The item][apostrophe]";
  otherwise;
  	say "[The item][apostrophe]s";
  end if.
    	
    
A thing can be ambiguously plural or ordinarily enumerated. A thing is usually ordinarily enumerated.

Every turn: if the noun is a thing and the noun is ambiguously plural, notice the plurality of the noun; if the second noun is a thing and the second noun is ambiguously plural, notice the plurality of the second noun.

After printing the name of an ambiguously plural thing (called the suspect):
	if using the manual pronouns option, do nothing;
	otherwise notice the plurality of the suspect.
	
To notice the plurality of (suspect - an object):
	(- PlugPlural({suspect}); -)
	
Include (-

[ PlugPlural obj;
	SetPronoun('them', obj);
	SetPronoun('it', obj);
];

-) 

Use Manual Pronouns translates as (- Constant MANUAL_PRONOUNS; -) 

To have the parser notice (o - an object): 
	if o is ambiguously plural, notice the plurality of o;
	otherwise notice o boringly.

To notice (o - an object) boringly:
	(- PronounNotice({o}); -) 

Volume - Improved Menus by Aaron Reed (based on Basic Menus by Emily Short)

Section 1

Menu depth is a number that varies. Menu depth is 0.

The endnode flag is a number that varies. The endnode flag is 0.

The current menu title is text that varies. The current menu title is "Table of Contents".

Table of Sample Options
title	subtable	description	toggle
"foo"	a table-name	"bar"	a rule

Current menu is a table-name that varies. The current menu is the Table of Sample Options.

Current menu selection is a number that varies. Current menu selection is 1.

Table of Menu Commands
number	effect
78	move down rule
110	move down rule
80	move up rule
112	move up rule
81	quit rule
113	quit rule
13	select rule
32	select rule
130	move down rule
129	move up rule
27	quit rule

This is the quit rule:  
	change menu depth to menu depth - 1;
	rule succeeds. 

This is the move down rule: 
	if current menu selection is less than the number of filled rows in the current menu, change current menu selection to current menu selection + 1;
	reprint the current menu;
	make no decision.

This is the move up rule:
	if current menu selection is greater than 1, change current menu selection to current menu selection - 1;
	reprint the current menu;
	make no decision.

This is the select rule:  
	choose row current menu selection in the current menu;
	if title entry is "PREMENU" or title entry is "POSTMENU", stop;
	if title entry is "", stop;
	if there is a toggle entry
	begin;
		follow the toggle entry; reprint the current menu;
	otherwise;
		if there is a subtable entry
		begin;
			change the current menu title to title entry;
			change the current menu selection to 1; 
			change the current menu to subtable entry;
			show menu contents;
		otherwise;
			let the temporary title be the current menu title;
			change the current menu title to title entry;
			change the endnode flag to 1;
			redraw status line;
			change the endnode flag to 0;
			clear only the main screen;
			say "[variable letter spacing][description entry][paragraph	 break]";
			pause the game;
			change the current menu title to temporary title;
			reprint the current menu;
		end if;
	end if.
	

To redraw status line: 
	(- DrawStatusLine(); -)

Displaying is an activity.

To reprint (selected menu - a table-name):
	redraw status line;
	say fixed letter spacing;
	let __index be 1;
	clear only the main screen;
	repeat through selected menu
	begin;
		if title entry is "PREMENU" begin;
			say "[description entry][paragraph break]";
		otherwise if title entry is "POSTMENU";
			say "[paragraph break][description entry]";
		otherwise; 
			if __index is current menu selection, say " >"; otherwise say "  ";
			say " [title entry][line break]";
		end if;
		change __index to __index + 1;
	end repeat;
	say variable letter spacing;

To show menu contents:
	change menu depth to menu depth + 1;
	let temporary depth be the menu depth;
	let temporary menu be the current menu;
	let temporary title be the current menu title;
	let __x be 0;
	let __index be 0;
	while __index is not 1
	begin;
		change the current menu to the temporary menu; 
		let __n be 0;
		repeat through current menu
		begin;
			increase __n by 1;
			if title entry is current menu title, change current menu selection to __n;
		end repeat;
		change the current menu title to the temporary title; 
		reprint current menu;
		let __x be the chosen letter;
		if __x is a number listed in the Table of Menu Commands
		begin;
			consider the effect entry; 
			if temporary depth > menu depth
			begin;
				change __index to 1; 
			end if;
		end if;
	end while.

Rule for displaying (this is the basic menu contents rule): 
	if title in row 1 of current menu is "PREMENU", change current menu selection to 2;
	show menu contents.

Rule for constructing the status line while displaying (this is the constructing status line while displaying rule):  
	if the endnode flag is 0,
		fill status bar with Table of Deep Menu Status;
	otherwise fill status bar with Table of Shallow Menu Status; 
	rule succeeds.

Table of Shallow Menu Status
left	central	right
""	"[current menu title]"	""


Table of Deep Menu Status
left	central	right
""	"[current menu title]"	""
""	""	" "
" N = Next"	""	"Q = [if menu depth > 1]Last Menu[otherwise]Quit Menu[end if]"
" P = Previous"	""	"ENTER = Select"

Table of Sample Hints
hint	used
"Sample Hint"	a number

To say known hints from (hint booklet - table-name):
	let __index be 0;
	clear only the main screen; 
	repeat through hint booklet
	begin;
		change __index to __index + 1;
		if there is a used entry
		begin;
			say "[__index]/[number of rows in hint booklet]: [hint entry][paragraph break]";
		otherwise;
			if __index is 1
			begin;
				change used entry to turn count;
				say "[__index]/[number of rows in hint booklet]: [hint entry][paragraph break]";
			end if;
		end if;
	end repeat; 
	say "Press Q or ESC to return to the menu or H to reveal another hint."


To say hints from (hint booklet - table-name): 
	let __index be 0;
	clear only the main screen; 
	repeat through hint booklet
	begin;
		change __index to __index + 1;
		say "[__index]/[number of rows in hint booklet]: [hint entry][paragraph break]"; 
		if there is a used entry
		begin;
			do nothing;
		otherwise;
			change used entry to turn count;
			say "Press SPACE to return to the menu[if __index < number of rows in hint booklet] or H to reveal another hint[end if].";
			make no decision; 
		end if;  
	end repeat; 
	say "Press SPACE to return to the menu[if __index < number of rows in hint booklet] or H to reveal another hint[end if]."

This is the hint toggle rule:
	choose row current menu selection in the current menu;
	let the temporary title be the current menu title;
	change the current menu title to title entry;
	change the endnode flag to 1;
	redraw status line;
	change the endnode flag to 0;
	say known hints from the subtable entry; 
	let __index be 0;
	while __index < 1
	begin;
		let __x be the chosen letter;
		if __x is 13 or __x is 31 or __x is 32, let __index be 1;
		if __x is 72 or __x is 104, say hints from the subtable entry;
	end while;
	change the current menu title to temporary title.

Section 2 (for Glulx only) 

Table of Menu Commands (continued)
number	effect
-8		quit rule
-6		select rule
-5		move down rule
-4		move up rule

Volume - Intelligent Hinting by Aaron Reed

Use MAX_EXPRESSION_NODES of 300.

Book - Definitions


Part - Use Options

suggestion_disabled is a truth state that varies.

To suspend suggestion hinting: now suggestion_disabled is true.
To reinstate suggestion hinting: now suggestion_disabled is false.

To decide whether suggestion hinting is currently disallowed:
	if suggestion_disabled is true, decide yes;
	decide no.


Part - Puzzles and Tasks

Chapter - Puzzles

A puzzle is a kind of thing. 

Requiring relates one thing (called the requiree) to various things [puzzles or tasks]. The verb to require (he requires, they require, he required, it is required, he is requiring) implies the requiring relation.

A puzzle can be sequential. A puzzle is usually sequential. A puzzle is usually privately-named. [The children of a sequential puzzle must be solved in the order they are defined in the source; the children of a not sequential puzzle can be solved in any order.]

Chapter - Tasks


A task is a kind of thing. A task is usually privately-named. [A task is the atomic unit of a puzzle, and consists of a series of actions, which sometimes must be performed at a certain spot or under certain conditions. Tasks are marked complete by hand.]

A task has an object called the venue. The venue of a task is usually nothing. [The venue is the room we must be in before attempting to perform the actions in this task. Why an object and not a room? Because we can't have a null value for a room, which we need in case a puzzle requires no location.]

A task has a list of stored actions called the action-sequence. A task has a number that varies called the action-position. [The action-sequence stores the actions, in order, that must be taken to complete this task. action-position keeps track, from turn to turn, of where we are in this sequence. Normally, authors will use the "do the action of..." procedure for modifying this list. ]

A task has a list of indexed texts called the command-sequence. [For specific strings to be input which cannot be represented by stored actions.]

A task has a list of objects called the apropos-list. [Either rooms or things not mentioned in the action-sequence which are nevertheless related to that task. Useful in not sequential puzzles to help the extension guess which puzzle the player is currently working on.]

A task can be reversible or irreversible. A task is usually irreversible. [A reversible task is eternally complete once it is marked as such; an irreversible task's definition is checked every turn.]

The red flag rules are an object-based rulebook. [Can prevent a task from being attempted until a certain condition is met.]

Section - Task Completion

[Just before reading a command (to avoid "last every turn" issues), check all rules that we've defined to see if any tasks should change to complete or incomplete. If this affects the saved endeavor, which is used to keep track of what we're working on, adjust it as necessary. ]

The list of cached-solved tasks is a list of things that varies.

To update the task status cache:
	repeat with item running through tasks:
		if item is reversible and item is solved and item is incomplete:
			let tmpitem be item;
			while tmpitem is not Winning-The-Game and tmpitem is listed in list of cached-solved tasks:
				if puzzle-testing changes or puzzle-testing all:
					say "(task [tmpitem] is now unsolved)";
					if the number of incomplete tasks in requiree of tmpitem is 1, say "(hence [requiree of tmpitem] now unsolved)";
				remove tmpitem from list of cached-solved tasks;
				now tmpitem is requiree of tmpitem; 
		otherwise if item is unsolved and item is complete:
			let tmpitem be item;
			while tmpitem is not Winning-The-Game and tmpitem is not listed in list of cached-solved tasks:
				if puzzle-testing changes or puzzle-testing all:
					say "(task [tmpitem] is now solved)";
					if requiree of tmpitem is solved, say "(hence [requiree of tmpitem] now solved)";
				add tmpitem to list of cached-solved tasks, if absent;
				let myctr be 0;
				repeat with reqs running through things required by requiree of tmpitem:
					if reqs is unsolved, increase myctr by 1;
				if myctr is 0, now tmpitem is requiree of tmpitem;
[	say "**l: [list of cached-solved tasks]**";]
	while saved endeavor is not nothing:
		if saved endeavor is Winning-The-Game:
			now saved endeavor is nothing;
			break;
		if saved endeavor is unsolved: 
[			say "(**it seems [saved endeavor] is unsolved: ";]
[			repeat with item running through things required by saved endeavor:
				if item is a task, say "[item]: [if item is complete]complete[end if]/[if item is incomplete]incomplete[end if]/[if item is solved]solved[end if]/[if item is unsolved]unsolved[end if])";
				otherwise say "[item] (not a task)";]
			break;
		now saved endeavor is requiree of saved endeavor;
[		say "(**now saved endeavor is [saved endeavor]**)";]
		if saved endeavor is unsolved:
			break;
	repeat with item running through list of cached-solved tasks:
		if item is a task and the action-position of item is not 0, now action-position of item is 0.

[It may not seem at first glance that it is strictly necessary to do this each turn, as opposed to each turn when a suggestion is requested; but since irreversible tasks might be true for only a single turn, and due to complexities involving the parsing of command-sequences, we always need to do this.]

Before reading a command (this is the keep task completion up to date rule):
	update the task status cache.

Definition: a task is incomplete: if it is complete, no; otherwise yes. [Each task defines its own criteria for being "complete," but we can define a global negation. ]
			


Section - Assigning Actions to Tasks

[Define the procedure for assigning actions to tasks.]

Requirements rules is an object-based rulebook.

The temporary task is a thing that varies.

To do (chore - stored action):
	add chore to the action-sequence of the temporary task.

When play begins (this is the setting up requirements of tasks rule):
	repeat with item running through tasks:
		now the temporary task is item;
		follow the requirements rules for item.


Chapter - Miscellany

Definition: a thing is unsolved: 
	if it is not listed in the list of cached-solved tasks, decide yes;
	decide no.

Definition: a thing is solved: 
	if it is listed in the list of cached-solved tasks, decide yes;
	decide no.

Definition: a thing is actionably-closed if it is closed and it is openable.

Winning-The-Game is a puzzle.

Platonic-Task is a task. Definition: Platonic-Task is complete: yes. [For the extension to compile before adding puzzles and tasks, we must indicate that "complete" is a valid adjective.]

Book - Initial Setup

Chapter - Puzzle Assocation Tables

[When play begins, we create an index that allows us to quickly see which nouns and locations are related to which tasks. This is only useful if there are any non-sequential puzzles and we'll need to make a guess as to what is the most relevant one to tackle next. If you want to change puzzle definitions in mid-stream, you'll need to "follow the setting up puzzle association tables rule" again. ]

When play begins (this is the setting up puzzle association tables rule):
	unless the number of not sequential puzzles is 0:
		repeat through Table of Puzzle Reference:
			blank out the whole row;
		generate puzzle lookup tables for Winning-The-Game.

The setting up puzzle association tables rule is listed last in the when play begins rules. [This is so that actions are associated before we create our lookup tables.]

To generate puzzle lookup tables for (problem - a puzzle):
	repeat with req running through unsolved tasks required by problem:
		repeat with step running through action-sequence of req:
			unless the noun part of step is nothing, associate noun part of step with req in candidates;
			unless the second noun part of step is nothing, associate second noun part of step with req in candidates;
		unless the venue of req is nothing:
			associate venue of req with req in candidates;
		repeat with item running through apropos-list of req:
			associate item with req in candidates;
	repeat with req running through unsolved puzzles required by problem:
		generate puzzle lookup tables for req.	

To associate (tchotchke - an object) with (req - a task) in candidates:
	if the number of blank rows in Table of Puzzle Reference > 0:
		choose a blank row in Table of Puzzle Reference;
		change item entry to tchotchke;
		change job entry to req.

Table of Puzzle Reference
job		item
a task	a thing
with 200 blank rows.




Book - Bookkeeping Routines

Chapter - Keeping Track of Player's History

The list of in-focus items is a list of things that varies. [We store the last ten objects the player has interacted with, to consult and get a sense of what the player is currently concerned with.]

Every turn (this is the Intelligent Hinting note the player's action rule):
	truncate the list of in-focus items to the last 9 entries;
	if current action is suggesting or current action is solving:
		unless noun part of relevant action is nothing or noun part of relevant action is a direction:
			add noun part of relevant action to the list of in-focus items;
		unless second noun part of relevant action is nothing or second noun part of relevant action is a direction:
			add second noun part of relevant action to the list of in-focus items;
	otherwise:
		unless noun part of current action is nothing or noun part of current action is a direction:
			add noun part of current action to the list of in-focus items;
		unless second noun part of current action is nothing or second noun part of current action is a direction:
			add second noun part of current action to the list of in-focus items.

The list of stored venues is a list of rooms that varies.

Every turn (this is the Intelligent Hinting note player's location rule):
	truncate the list of stored venues to the last 9 entries;
	add location to the list of stored venues, if absent.

The saved endeavor is an object that varies. [This can be a puzzle or a task.]


Book - Tools For Deciding Which Not Sequential Puzzle Is Next


To scour recent input for puzzle suggestions:
	repeat through the Table of Temp Task Rankings:
		blank out the whole row;
	if puzzle-testing all, say "(Last 10 interacted-with items: [list of in-focus items])";
	if puzzle-testing all, say "(Last 10 visited locations: [list of stored venues])";
	[Iterate through each unique puzzle/object correspondence.]
	repeat through table of Puzzle Reference:
		if job entry is solved, next; [not interested in tasks that already solved.]
		if item entry is a room:
			[If we've recently been in this location, score points for the associated task.]
			let ctr be 0;
			repeat with loc running through list of stored venues:
				increase ctr by 1;
				if item entry is loc, score ctr puzzle points for job entry;
		otherwise:
			[If the object here matches a recently interacted-with object, score points based on how long ago the interaction occurred. ]
			let ctr be 0;
			repeat with obj running through list of in-focus items:
				increase ctr by 1;
				if item entry is obj, score ctr puzzle points for job entry;
		[Finally, if any nouns in this puzzle's task are visible or held, score more points for that task.]
		if item entry is a thing and item entry is not nothing and ( item entry is visible or item entry is held ) : 
			if job entry is unsolved, score 11 puzzle points for job entry. [slowdown?]

To decide what object is the best choice of the ranked puzzles under (problem - a puzzle):
	sort Table of Temp Task Rankings in reverse puzz-rank order; [most likely first]
	let candidate be nothing;
	while candidate is nothing and there is a job in row 1 of Table of Temp Task Rankings:
		choose row 1 in Table of Temp Task Rankings;
		[reject any options that aren't parts of the puzzle we're currently considering. ]
		if the number of steps via the requiring relation from problem to job entry >= 0:
			let candidate be job entry;
		otherwise:
			blank out the whole row;
			sort Table of Temp Task Rankings in reverse puzz-rank order;
	if puzzle-testing all:
		repeat through table of Temp Task Rankings:
			say "[line break]-->[job entry] : [puzz-rank entry] points";
		say line break;
	if candidate is nothing: [no way to guess; so just pick one at random.]
		if puzzle-testing inferences, say "(no matches found; choosing at random)";
		now candidate is a random unsolved thing required by problem;	 
	[if what we picked is part of something unsolved, pick that instead.]
	let parent be requiree of candidate;
	while parent is sequential and parent is unsolved and parent is not problem and problem is not required by parent:
		now candidate is parent;
		now parent is requiree of candidate;
	decide on candidate.

To score (points - a number) puzzle points for (selectee - a task):
	if there is a job of selectee in Table of Temp Task Rankings:
		choose row with a job of selectee in Table of Temp Task Rankings;
		now puzz-rank entry is puzz-rank entry + points;
	otherwise:
		if the number of blank rows in Table of Temp Task Rankings > 0:
			choose a blank row in Table of Temp Task Rankings;
			now job entry is selectee;
			now puzz-rank entry is points.	

Table of Temp Task Rankings
job		puzz-rank
a task	a number
with 20 blank rows.	


Book - Suggesting

Fake-actioning is an action out of world applying to nothing. [By default, a newly created stored action is set to "waiting." This creates difficulties for our purposes, as we need a value that means "no real action" to determine whether we've found one yet or not; so here it is.]

The relevant location is a room that varies. The relevant action is a stored action that varies. The relevant-direction is a direction that varies. Actually-down is a truth state that varies. [These global variables are used to store guesses by the routines below. The last variable tracks whether we mean "default down" (of a newly created direction variable) or "actually down".]

The macguffin-queue is a list of objects that varies. [Currently, it's not computationally feasible to identify locked doors along a route between an origin and destination. As a result, we can't discover an interposing locked door until we bump into it. Happily, however, this plays into the philosophy of showing not telling; so we'll blithely head towards a locked door without the key, and once we've "discovered" the troublesome door, note that we're looking for the key now in this list. The extension attempts to acquire anything in the macguffin-queue before proceeding to the next action.]

Chapter - Suggesting

[suggesting is an out of world action that merely prints its recommendation of the next action, without taking it.]

Understand "suggest" as suggesting. Suggesting is an action out of world applying to nothing.

Check suggesting when suggestion hinting is currently disallowed (this is the check whether suggest is currently allowed rule):
	print IH message for suggestions-disallowed instead.

Carry out suggesting:
	now relevant action is the suggested action;
	unless relevant action is the action of fake-actioning:
		process appropriate action.




Chapter - Solving

[Solving actually performs the action for the player.]

Understand "solve" as solving. Solving is an action applying to nothing.

Check solving when suggestion hinting is currently disallowed (this is the check whether solve is currently allowed rule):
	print IH message for suggestions-disallowed instead.

Carry out solving:
	now relevant action is the suggested action;
	unless relevant action is the action of fake-actioning:
		process appropriate action, actually performing.



Chapter - Determining the Suggested Action

To decide which stored action is the suggested action:
	if Winning-The-Game is solved:
		print IH message for all-puzzles-solved;
		decide on the action of fake-actioning;
	[we can't just assume saved endeavor because something earlier might have become incomplete.]
	let puzz be next task in Winning-The-Game; [This will recurse down through required puzzles as needed.]
	if puzzle-testing selection, say "(Next incomplete task: [puzz])";
	if venue of puzz is not nothing and venue of puzz is not a room:
		say "(Error in Intelligent Hinting puzzle definition: [puzz] has a venue of [venue of puzz], which does not seem to me to be a room.)";
		decide on the action of fake-actioning;
	now relevant location is venue of puzz;
	let ctr be 1;
	repeat with portion running through action-sequence of puzz:
		if it seems portion is unfinished:
			if ctr > action-position of puzz and a move is implied by portion:
				decide on relevant action;
		otherwise:
			if puzzle-testing inferences, say "(It seems [portion] is finished; skipping)";
			if action-position of puzz < ctr, increase action-position of puzz by 1;
		increase ctr by 1;
	if relevant location is not nothing and location is not venue of puzz:	
		if puzzle-testing inferences, say "([location] is not venue of [puzz] ([venue of puzz]))";
		if we can move to relevant location:
			decide on relevant action;
	consider the red flag rules for puzz;
	if the rule failed:
		if puzzle-testing selection, say "(failed red flag rule)";
		now relevant action is the action of waiting;
		decide on relevant action;
	[Deal with the command-sequence (literal strings to be tried as commands) first. To save creating a second variable to track our position in this sequence, we use negative numbers: -1 corresponds to the first command, -2 the 2nd, and so on.]
	if number of entries in command-sequence of puzz > 0 and ( action-position of puzz >= number of entries in action-sequence of puzz ) or ( action-position of puzz is 0 and number of entries in action-sequence of puzz is 0 ) , now action-position of puzz is -1;
	if action-position of puzz < 0 and ( -1 * action-position of puzz ) > the number of entries in command-sequence of puzz, now action-position of puzz is 0;
	if action-position of puzz < 0 and the number of entries in command-sequence of puzz >= ( -1 * action-position of puzz ) :
		let temppos be -1 * action-position of puzz;
		if puzzle-testing selection, say "(trying step [temppos] of command-sequence)";
		now relevant command is entry temppos in command-sequence of puzz;
		if we are suggesting:
			process appropriate action, as a command;
		otherwise:
			process appropriate action, as a command, actually performing;
			decrease action-position of puzz by 1;
		decide on the action of fake-actioning;
	[If we've got a positive action-position, we must be using the more typical action-sequence.]
	if action-position of puzz >= number of entries in action-sequence of puzz, now action-position of puzz is 0;
	if action-position of puzz + 1 is at most the number of entries in action-sequence of puzz :
		let candidate be entry ( action-position of puzz + 1 ) in action-sequence of puzz;
		if candidate is entering something actionably-closed ( called portal ) :
			if puzzle-testing inferences, say "(trying to enter something actionably-closed ([portal]))";
			if shut portal causes surmountable difficulties:
				decide on relevant action;
			now relevant action is the action of opening portal;
			decide on relevant action;
		if candidate is inserting something into something actionably-closed ( called parent ) :
			if puzzle-testing inferences, say "(trying to insert something into something actionably-closed ([portal]))";
			if shut parent causes surmountable difficulties:
				decide on relevant action;
			now relevant action is the action of opening parent;
			decide on relevant action;
		if noun part of candidate is a person (called partner) and partner is not visible:
			if puzzle-testing inferences, say "(trying to track down [partner])";
			if we can move to location of partner:
				decide on relevant action;
			now relevant action is the action of waiting;
			decide on relevant action;
		if second noun part of candidate is a person (called partner) and partner is not visible:
			if puzzle-testing inferences, say "(trying to track down [partner])";
			if we can move to location of partner:
				decide on relevant action;
			now relevant action is the action of waiting;
			decide on relevant action;
		now relevant action is entry ( action-position of puzz + 1 ) in action-sequence of puzz;
	unless it seems relevant action is possible:
		if puzzle-testing selection, say "(it seems [relevant action] is not possible; waiting instead.)";
		now relevant action is the action of waiting;
	increase action-position of puzz by 1;
	if puzzle-testing all, say "(action-position of [puzz] is now [action-position of puzz])";
	decide on relevant action.


[ This is the good chef's rule: Before acting, ensure that we have gathered all the necessary ingredients first. If there are items we've determined are necessary to *get* the items that are necessary (like keys), deal with those first. ]

To decide whether a move is implied by (act - a stored action):
	if act is going, decide no;
	now relevant action is the action of fake-actioning;
	now actually-down is false;
	if the number of entries in macguffin-queue > 0 and steps must be taken to acquire entry ( number of entries in macguffin-queue ) of macguffin-queue, decide yes; 
	unless the noun part of act is nothing:
		if steps must be taken to acquire noun part of act, decide yes; [Note: can't reject "taking something" at this point because steps must be taken checks for too many things held, moving to location, etc.]
	unless the second noun part of act is nothing:
		if steps must be taken to acquire second noun part of act, decide yes;
	decide no.

[Finally, here are two routines encapsulating some common-sense knowledge about the library, used to try to guess whether something has already been solved, or whether something seems currently possible, to the best of the library's knowledge. Authors can add this knowledge for other verbs by creating new unfinished rules in their code.]

Puzz-unfinished is a rulebook.

To decide whether it seems (act - a stored action) is unfinished:
	now temp-act is act;
	consider the puzz-unfinished rules;
	if rule failed, decide no;
	decide yes.

temp-act is a stored action that varies.

A puzz-unfinished rule:
	if temp-act is opening something and noun part of temp-act is open, rule fails;
	if temp-act is closing something and noun part of temp-act is closed, rule fails;
	if temp-act is unlocking something with something and noun part of temp-act is unlocked, rule fails;
	if temp-act is locking something with something and noun part of temp-act is locked, rule fails;
	if temp-act is switching on something and noun part of temp-act is switched on, rule fails;
	if temp-act is switching off something and noun part of temp-act is switched off, rule fails;
	if temp-act is taking something and noun part of temp-act is held, rule fails;
	if temp-act is dropping something and noun part of temp-act is not held, rule fails;
	if temp-act is entering something and player is enclosed by noun part of temp-act, rule fails;
	if temp-act is getting off something and player is not enclosed by noun part of temp-act, rule fails;
	if temp-act is trying wearing something and noun part of temp-act is worn, rule fails;
	if temp-act is taking off something and noun part of temp-act is not worn, rule fails;
	if temp-act is putting something on something and second noun part of temp-act encloses noun part of temp-act, rule fails;
	if temp-act is removing something from something and noun part of temp-act is not enclosed by second noun part of temp-act, rule fails.

Puzz-possibility is a rulebook.

To decide whether it seems (act - a stored action) is possible:
	now temp-act is act;
	consider the puzz-possibility rules;
	if rule failed, decide no;
	decide yes.

A puzz-possibility rule:
	if ( temp-act is opening something or temp-act is closing something or temp-act is switching on something or temp-act is switching off something or temp-act is taking something ) and noun part of temp-act is not touchable, rule fails;
	if temp-act is unlocking something with something and ( second noun part of temp-act is not held or noun part of temp-act is not visible ) , rule fails;
	if temp-act is locking something with something and ( second noun part of temp-act is not held or noun part of temp-act is not visible ) , rule fails;
	if temp-act is dropping something and noun part of temp-act is not held, rule fails;
	if temp-act is taking off something and noun part of temp-act is not worn, rule fails;
	if temp-act is putting something on something and ( noun part of temp-act is not held or second noun part of temp-act is not visible ) , rule fails;
	if temp-act is removing something from something and ( noun part of temp-act is not touchable or second noun part of temp-act is not visible ) , rule fails.


Section - Finding the Next Task 


To decide which task is next task in (problem - a puzzle):
	if problem is sequential:
		if puzzle-testing all, say "(checking sequential puzzle [problem])";
		repeat with req running through things required by problem:
			if req is a task and req is unsolved:
[				say "(**deciding on [req]**)";]
				decide on req; 
			otherwise if req is a puzzle and req is unsolved:
[				say "(**deciding on next task in [req]**)";]
				decide on next task in req;
	otherwise: [problem is not sequential ]
		if puzzle-testing all, say "(checking not sequential puzzle [problem])";
		unless saved endeavor is nothing: [problem is not sequential & something it requires is our saved endeavor.]
[			say "(saved endeavor: [saved endeavor])";]
			let tmptask be saved endeavor;
			unless problem is tmptask:
				while tmptask is not required by problem:
					now tmptask is requiree of tmptask;
[			say "(**[tmptask]**)";]
			if tmptask is a task:
[				say "**tmptask deciding on [tmptask]**";]
				decide on tmptask;
			otherwise if problem is not tmptask:
[				say "**tmptask deciding on next task in [tmptask]**";]
				decide on next task in tmptask;
[		say "**made it this far**";]
		[If we've made it this far, we need to choose a new thing to do.]
		if puzzle-testing inferences, say "(no saved endeavor: looking for recent actions/moves related to [problem])";
		scour recent input for puzzle suggestions;
		let candidate be the best choice of the ranked puzzles under problem;
		if puzzle-testing inferences, say "(choosing [candidate])";
		[If we've ended up with a task, we're solved; otherwise save our progress and recurse.]
		if candidate is a task and candidate is unsolved:
			now saved endeavor is candidate;
			decide on candidate;
		otherwise if candidate is a puzzle and ( candidate requires something unsolved or candidate requires something unsolved ) :
			now saved endeavor is nothing;
			now saved endeavor is next task in candidate;
			decide on saved endeavor.


Section - Displaying and Carrying out Results


Suggestion flag is a truth state that varies. [Useful if code ever needs to determine if an action being tried was the result of a "suggest" command or not.]

Saved parent is an object that varies. [A recursion-loop checking variable.]

To process appropriate action, actually performing and/or as a command: 
	if as a command:
		if actually performing:
			print IH message for command-solving;
			now reparse flag is true;
		otherwise:
			print IH message for command-suggesting;
	otherwise:
		now saved parent is nothing; 
		if relevant action is the action of going down:
			if actually-down is false:
				if relevant-direction is a direction, now relevant action is the action of going relevant-direction;
				otherwise now relevant action is the action of waiting;
		otherwise if relevant action is the action of fake-actioning:
			print IH message for no-action-found;
			now relevant action is the action of waiting;
		if actually performing:
			print IH message for action-solving;
			now suggestion flag is true;
			try relevant action;
			now suggestion flag is false;
		otherwise:
			print IH message for action-suggesting.

Table of Intelligent Hinting Messages
msg							txt
action-solving			"([relevant action])[line break]"
action-suggesting		"Try [relevant action].[line break]"
command-solving		"(trying: [relevant command])"
command-suggesting	"Try typing [relevant command].[line break]"
no-action-found			"(Can't find an action to take.)"
all-puzzles-solved		"(All puzzles are solved.)"
suggestions-disallowed	"(I am not able to make suggestions at the moment.)"

IH message is a kind of value. The IH messages are action-solving, action-suggesting, command-solving, command-suggesting, no-action-found, all-puzzles-solved, suggestions-disallowed. 

To print IH message for (ihmsg - an IH message):
	if there is a msg of ihmsg in Table of Intelligent Hinting Messages:
		choose row with a msg of ihmsg in Table of Intelligent Hinting Messages;
		say txt entry.

[To perform a stored command (as indexed text), we need to be slightly trickier, since we can't change the player's input at this late stage. We'll skip to the next turn and override the normal procedure for reading a command from the player, replacing it with our stored text.]

The relevant command is an indexed text that varies. Reparse flag is a truth state that varies.

Rule for reading a command when reparse flag is true:
	now reparse flag is false;
	replace the player's command with "[relevant command]".


Section - Getting Around Locked Barriers

[ If we ever need to open something, check first to see if it's locked; if so, whether there's an accessible key; if so, note that the key has become our first priority instead. ]

To decide whether shut (parent - a thing) causes surmountable difficulties: 
	if puzzle-testing all, say "(deciding whether shut [parent] causes surmountable difficulties)";
	if parent is saved parent: [We've recursed back to here, possibly because the key to a locked thing in our way is on the other side of the locked thing; so give up entirely.]
		now relevant action is the action of fake-actioning;
		decide yes;
	now saved parent is parent;
	if parent is locked and parent provides the property matching key and matching key of parent is on-stage:
		if player holds matching key of parent:
			now relevant action is the action of unlocking parent with matching key of parent;
			decide yes;
		if steps must be taken to acquire matching key of parent:
			if matching key of parent is listed in macguffin-queue: [another recursion check, which catches circular loops of lock/key dependencies.]
				now relevant action is the action of fake-actioning;
				decide yes;
			add matching key of parent to macguffin-queue;
			now relevant action is the action of opening parent; [We know it won't work, but we try it anyway, to demonstrate to the player that it's locked.]
			decide yes;
	decide no.

Section - Acquiring Unheld Objects

[This next bit determines the next logical step to acquire an item; moving through the map, and retrieving keys for and opening locked doors and containers in the way. If taking the item would exceed the player's carrying capacity, we try to make room for it by using a hold-all or dropping something we guess is unimportant. ]

To decide whether steps must be taken to acquire (macguffin - an object):
	if puzzle-testing inferences, say "(deciding whether steps must be taken to acquire [macguffin])";
	if macguffin is nothing, decide no;
	if macguffin is off-stage, decide no;
	if macguffin is a person, decide no;
	if macguffin is a door, decide no;
	if the player encloses macguffin, decide no;
	if macguffin is portable and macguffin is not part of something:
		if macguffin is touchable:
			if the number of things held by player < carrying capacity of player:
				now relevant action is the action of taking macguffin;
				remove macguffin from macguffin-queue, if present;
				decide yes;
			otherwise:
				if a player's holdall is touchable:
					now relevant action is the action of inserting macguffin into a random touchable player's holdall;
					decide yes;
				[no holdall, so we'll have to drop something instead.]
				repeat with item running through probably-uncrucial things held by player:
					now relevant action is the action of dropping item;
					decide yes;
				[nothing we're confident dropping, so fail.]
				decide no;
		if macguffin is enclosed by location:
			if holder of macguffin is closed and holder of macguffin is openable:
				if shut ( holder of macguffin ) causes surmountable difficulties, decide yes;
				if holder of macguffin is locked and holder of macguffin provides the property matching key and matching key of ( holder of macguffin ) is off-stage, decide no;
				now relevant action is the action of opening ( holder of macguffin ) ;
				decide yes;
			if holder of macguffin is open and holder of macguffin is enterable and macguffin is not touchable:
				now relevant action is the action of entering holder of macguffin;
				decide yes;
	if location is location of macguffin, decide no;
	if we can move to location of macguffin, decide yes;
	decide no.

[The following definition is crude at best, but exists to give the extension an idea of what not to drop if it must drop something. In most cases, you'll want to program any necessary inventory management yourself.]

Definition: a thing is probably-uncrucial: 
	if it is lit, decide no;
	if it is a player's holdall, decide no;
	if it encloses something, decide no;
	if it is worn by player, decide no;
	if it is part of something held by player, decide no;
	decide yes.

Section - Moving To Venues

[Attempt to move to a location, first checking for open pathways, then looking for routes through locked doors. If the latter are found, checked for locked doors in the way and deal with them, otherwise try to move one room towards our destination. ]

To decide whether we can move to (area - a room):
	if puzzle-testing inferences, say "(deciding whether we can move to [area])";
	let way be the best route from location to area;
	if puzzle-testing all, say "(open way: [way])";
	if way is a direction:
		now relevant action is the action of going way; 
		if way is down, now actually-down is true; 
		decide yes;
	[We didn't find an open route, so we'll checked closed ones. Note that ideally there would be a third check here preferring closed but unlocked doors, but in practice even two pathfinding calls is pushing it for all but the smallest games. ]
	let way be the best route from location to area, using even locked doors;
	if puzzle-testing all, say "(way through a door: [way])";
	if way is a direction:
		if holder of player is not a room:
			now relevant action is the action of exiting;
			decide yes;
		repeat with portal running through visible closed doors:
			if the other side of portal is the room way from the location:
				if puzzle-testing all, say "([the portal] is in our way)";
				if portal is not openable, decide no;
				if shut portal causes surmountable difficulties, decide yes;
				now relevant action is the action of opening portal;
				decide yes;
		now relevant action is the action of going down;
		now relevant-direction is way;
		if way is down, now actually-down is true;  [We can't say just "going"; so "going down" stands in as a surrogate, and "necessary direction" holds the temporary value. We don't want to try to make necessary direction part of the stored action just yet, since if something goes wrong with the pathfinding we'd get a run-time error for trying to put a non-direction there.]
		decide yes;
	decide no.


Part - Debugging Verbs 

Puzzle-debug-status is a number that varies. 

To decide whether puzzle-testing selection: if puzzle-debug-status is 1 or puzzle-debug-status is 4, decide yes; decide no.

To decide whether puzzle-testing inferences: if puzzle-debug-status is 2 or puzzle-debug-status is 4, decide yes; decide no.

To decide whether puzzle-testing changes: if puzzle-debug-status is 3 or puzzle-debug-status is 4, decide yes; decide no.

To decide whether puzzle-testing all: if puzzle-debug-status is 4, decide yes; decide no.


Chapter - Listing Puzzles - Not For Release


Listing requirements is an action applying to nothing. Understand "plist" or "puzzle list" as listing requirements.

Carry out listing requirements:
	show puzzle tree for Winning-The-Game with indent 0.

To say (N - a number) spaces: 
	repeat with index running from 1 to N:
		say " ".

To show puzzle tree for (problem - a puzzle) with indent (indent - a number):
	say indent spaces;
	say "[bold type][problem][roman type] [if problem is solved](solved) [end if][if problem is not sequential](not sequential)[end if] [if problem is saved endeavor]***[end if][line break]";
	repeat with puzz running through things required by problem:
		if puzz is a puzzle:
			show puzzle tree for puzz with indent ( indent + 4 ) ;
		otherwise:
			say ( indent + 4 ) spaces;
			say "[puzz] [if puzz is complete](complete)[end if] [if puzz is saved endeavor]***[end if][line break]".

Chapter - Puzzle Debugging - Not For Release


Puzzle debugging is an action out of world applying to one topic. Understand "puzzle [text]" as puzzle debugging. Understand "puzzle" as a mistake ("[puzzle-debug-explanation]"). To say puzzle-debug-explanation: say "-- Type PUZZLE SELECTION to show info on why certain tasks are selected as the next action[line break]-- Type PUZZLE INFERENCES to show detail on inferred actions resulting from tasks[line break]-- PUZZLE ALL shows both of the above plus more detailed information[line break]-- PUZZLE CHANGES notifies you when any tasks become solved or unsolved[line break]-- PUZZLE LIST shows the current puzzle tree for Winning-The-Game[line break]-- PUZZLE OFF turns off puzzle debugging information."

After reading a command:
	if the player's command includes "puzzle":
		if the player's command includes "off":
			now puzzle-debug-status is 0;
		otherwise if the player's command includes "selection":
			now puzzle-debug-status is 1;
		otherwise if the player's command includes "inferences":
			now puzzle-debug-status is 2;
		otherwise if the player's command includes "changes":
			now puzzle-debug-status is 3;
		otherwise if the player's command includes "all":
			now puzzle-debug-status is 4;
		unless the player's command matches "puzzle" or the player's command includes "list", say "(Puzzle debug status is now [if puzzle-debug-status is 1]show selection info[otherwise if puzzle-debug-status is 2]show inferences info[otherwise if puzzle-debug-status is 3]showing changes info[otherwise if puzzle-debug-status is 4]showing all info[otherwise]off[end if].)".

Volume - Lacuna Speed Hacks by Aaron Reed

[Normally, printing a room makes use of a table with a number of rows equal to the number of objects in the game. Redefining this by hand to a smaller number saves a bit of time iterating. ]

Section - modified locale descriptions (in place of Section SR2/13 - Locale descriptions - unindexed in Standard Rules by Graham Nelson) 

Table of Locale Priorities 
notable-object (an object)		locale description priority (a number) 
--	-- 
with 30 blank rows. [This line is the only change from standard library.]

To describe locale for (O - object):
	carry out the printing the locale description activity with O. 
	
To set the/-- locale priority of (O - an object) to (N - a number): 
	if O is a thing: 
		if N <= 0, now O is mentioned; 
		if there is a notable-object of O in the Table of Locale Priorities: 
			choose row with a notable-object of O in the Table of Locale Priorities; 
			if N <= 0, blank out the whole row; 
			otherwise change the locale description priority entry to N; 
		otherwise:
			if N is greater than 0: 
				choose a blank row in the Table of Locale Priorities; 
				change the notable-object entry to O; 
				change the locale description priority entry to N.

Printing the locale description of something (documented at act_pld) is an activity. 

The locale paragraph count is a number that varies. 

Before printing the locale description (this is the initialise locale description rule): 
	now the locale paragraph count is 0; 
	repeat with item running through things: 
		now the item is not mentioned; 
	repeat through the Table of Locale Priorities: 
		blank out the whole row. 
		
Before printing the locale description (this is the find notable locale objects rule): 
	let the domain be the parameter-object; 
	carry out the choosing notable locale objects activity with the domain; 
	continue the activity. 
	
For printing the locale description (this is the interesting locale paragraphs rule): 
	let the domain be the parameter-object; 
	sort the Table of Locale Priorities in locale description priority order; 
	repeat through the Table of Locale Priorities: 
		[say "[notable-object entry]...";] 
		carry out the printing a locale paragraph about activity with the notable-object entry; 
	continue the activity. 
	
For printing the locale description (this is the you-can-also-see rule):
	let the domain be the parameter-object; 
	let the mentionable count be 0; 
	repeat with item running through things: 
		now the item is not marked for listing; 
	repeat through the Table of Locale Priorities: 
		[say "[notable-object entry] - [locale description priority entry].";] 
		if the locale description priority entry is greater than 0, 
			now the notable-object entry is marked for listing; 
		increase the mentionable count by 1; 
	if the mentionable count is greater than 0: 
		repeat with item running through things: 
			if the item is mentioned: 
				now the item is not marked for listing; 
		begin the listing nondescript items activity; 
		if the number of marked for listing things is 0: 
			abandon the listing nondescript items activity; 
		otherwise: 
			if handling the listing nondescript items activity: 
				if the domain is a room: 
					if the domain is the location, say "You "; 
					otherwise say "In [the domain] you "; 
				otherwise if the domain is a supporter: 
					say "On [the domain] you "; 
				otherwise: 
					say "In [the domain] you "; 
				say "can [if the locale paragraph count is greater than 0]also [end if]see "; 
				let the common holder be nothing; 
				let contents form of list be true; 
				repeat with list item running through marked for listing things: 
					if the holder of the list item is not the common holder: 
						if the common holder is nothing, 
							now the common holder is the holder of the list item; 
						otherwise now contents form of list is false; 
					if the list item is mentioned, now the list item is not marked for listing; 
				filter list recursion to unmentioned things; 
				if contents form of list is true and the common holder is not nothing, 
					list the contents of the common holder, as a sentence, including contents, giving brief inventory information, tersely, not listing concealed items, listing marked items only; 
				otherwise say "[a list of marked for listing things including contents]"; 
				if the domain is the location, say " here"; 
				say ".[paragraph break]"; 
				unfilter list recursion; 
			end the listing nondescript items activity; 
	continue the activity.

Choosing notable locale objects of something (documented at act_cnlo) is an activity. 

For choosing notable locale objects (this is the standard notable locale objects rule): 
	let the domain be the parameter-object; 
	let the held item be the first thing held by the domain; 
	while the held item is a thing: 
		set the locale priority of the held item to 5; 
		now the held item is the next thing held after the held item; 
	continue the activity. 

Printing a locale paragraph about something (documented at act_plp) is an activity. 

For printing a locale paragraph about a thing (called the item) 
(this is the don’t mention player’s supporter in room descriptions rule): 
	if the item encloses the player, set the locale priority of the item to 0; 
	continue the activity. 
	
For printing a locale paragraph about a thing (called the item) 
(this is the don’t mention scenery in room descriptions rule): 
	if the item is scenery, set the locale priority of the item to 0; 
	continue the activity. 
	
For printing a locale paragraph about a thing (called the item) 
(this is the don’t mention undescribed items in room descriptions rule): 
	if the item is undescribed, set the locale priority of the item to 0; 
	continue the activity. 
	
For printing a locale paragraph about a thing (called the item) 
(this is the set pronouns from items in room descriptions rule): 
	if the item is not mentioned, set pronouns from the item; 
	continue the activity. 
	
For printing a locale paragraph about a thing (called the item) 
(this is the offer items to writing a paragraph about rule): 
	if the item is not mentioned: 
		if a paragraph break is pending, say "[conditional paragraph break]"; 
		carry out the writing a paragraph about activity with the item; 
		if a paragraph break is pending: 
			increase the locale paragraph count by 1; 
			now the item is mentioned; 
			say "[command clarification break]"; 
	continue the activity. 

For printing a locale paragraph about a thing (called the item) 
(this is the use initial appearance in room descriptions rule): 
	if the item is not mentioned: 
		if the item provides the property initial appearance and the item is not handled: 
			increase the locale paragraph count by 1; 
			say "[initial appearance of the item]"; 
			say "[paragraph break]"; 
			if a locale-supportable thing is on the item: 
				repeat with possibility running through things on the item: 
					now the possibility is marked for listing; 
					if the possibility is mentioned: 
						now the possibility is not marked for listing; 
				say "On [the item] "; 
				list the contents of the item, as a sentence, including contents, giving brief inventory information, tersely, not listing concealed items, prefacing with is/are, listing marked items only; 
				say ".[paragraph break]"; 
			now the item is mentioned;
	continue the activity. 
	
Definition: a thing (called the item) is locale-supportable if the item is not scenery and the item is not mentioned. 

For printing a locale paragraph about a thing (called the item) 
(this is the describe what’s on scenery supporters in room descriptions rule): 
	if the item is not undescribed and the item is scenery and the item does not enclose the player: 
		set pronouns from the item; 
		if a locale-supportable thing is on the item: 
			repeat with possibility running through things on the item: 
				now the possibility is marked for listing; 
				if the possibility is mentioned: 
					now the possibility is not marked for listing; 
			increase the locale paragraph count by 1; 
			say "On [the item] "; 
			list the contents of the item, as a sentence, including contents, giving brief inventory information, tersely, not listing concealed items, prefacing with is/are, listing marked items only; 
			say ".[paragraph break]"; 
	continue the activity.
 

Section - No You Can Also See

[Since we don't really have objects that the player can move around and our room descriptions take care of important items, we can eliminate this rule, which saves a few "repeat through things" loops.]

The you-can-also-see rule is not listed in any rulebook.

Volume - Numbered Disambiguation Choices by Aaron Reed

Every thing has a number called disambiguation id. The disambiguation id of something is usually 0.  
 
The list of disambiguables is a list of objects that varies.

disambiguation-busy is a truth state that varies. disambiguation-busy is false. [In certain cases numbers could be printed twice. Thanks to Robert Jenkins for pointing this out.]

Before printing the name of something (called macguffin) while asking which do you mean (this is the preface disambiguation objects with numbers rule):
	if disambiguation-busy is false:
		now disambiguation-busy is true;
		add macguffin to the list of disambiguables, if absent;
		now the disambiguation id of macguffin is the number of entries in list of disambiguables;
		say "[before disambiguation number text][number of entries in list of disambiguables][after disambiguation number text]".

After printing the name of something while asking which do you mean (this is the cleanup disambiguation-busy flag rule):
	now disambiguation-busy is false.

The before disambiguation number text is some text that varies. The before disambiguation number text is "". 

The after disambiguation number text is some text that varies. The after disambiguation number text is ") ". 
		
Before asking which do you mean (this is the reset disambiguables rule):
	repeat with item running through list of disambiguables:
		now disambiguation id of item is 0;
	truncate list of disambiguables to 0 entries.	
	
Understand the disambiguation id property as describing a thing.

[In testing, some players would try to respond with something like "1) dog collar". If we replace closing parentheses from the input with a space, this can still be understood, rather than producing an unhelpful error.]

After reading a command (this is the strip closing parenthesis rule):
	let disam-cmd be indexed text;
	let disam-cmd be the player's command;
	replace the regular expression "\)" in disam-cmd with " ";
	change the text of the player's command to disam-cmd.

Volume - Hacked NounDomain by Aaron Reed

[This just changes one thing, adding a bit which allows us to skip a disambiguation question.]

Include (-

[ NounDomain domain1 domain2 context first_word i j k l answer_words marker; 
#Ifdef DEBUG; 
if (parser_trace >= 4) { 
print " [NounDomainnnn called at word ", wn, "^"; 
print " "; 
if (indef_mode) { 
print "seeking indefinite object: "; 
if (indef_type & OTHER_BIT) print "other "; 
if (indef_type & MY_BIT) print "my "; 
if (indef_type & THAT_BIT) print "that "; 
if (indef_type & PLURAL_BIT) print "plural "; 
if (indef_type & LIT_BIT) print "lit "; 
if (indef_type & UNLIT_BIT) print "unlit "; 
if (indef_owner ~= 0) print "owner:", (name) indef_owner; 
new_line; 
print " number wanted: "; 
if (indef_wanted == 100) print "all"; else print indef_wanted; 
new_line; 
print " most likely GNAs of names: ", indef_cases, "^"; 
} 
else print "seeking definite object^"; 
} 
#Endif; ! DEBUG 
match_length = 0; number_matched = 0; match_from = wn; 
SearchScope(domain1, domain2, context); 
#Ifdef DEBUG; 
if (parser_trace >= 4) print " [ND made ", number_matched, " matches]^"; 
#Endif; ! DEBUG 
wn = match_from+match_length; 
! If nothing worked at all, leave with the word marker skipped past the 
! first unmatched word... 
if (number_matched == 0) { wn++; rfalse; } 
! Suppose that there really were some words being parsed (i.e., we did 
! not just infer). If so, and if there was only one match, it must be 
! right and we return it... 
if (match_from <= num_words) { 
if (number_matched == 1) { 
i=match_list-->0;
return i; 
} 
! ...now suppose that there was more typing to come, i.e. suppose that 
! the user entered something beyond this noun. If nothing ought to follow, 
! then there must be a mistake, (unless what does follow is just a full 
! stop, and or comma) 
if (wn <= num_words) { 
i = NextWord(); wn--; 
if (i ~= AND1__WD or AND2__WD or AND3__WD or comma_word 
or THEN1__WD or THEN2__WD or THEN3__WD 
or BUT1__WD or BUT2__WD or BUT3__WD) { 
if (lookahead == ENDIT_TOKEN) rfalse; 
} 
} 
} 
! Now look for a good choice, if there’s more than one choice... 
number_of_classes = 0; 
if (number_matched == 1) i = match_list-->0; 
if (number_matched > 1) { 
i = Adjudicate(context); 
if (i == -1) rfalse; 
if (i == 1) rtrue; ! Adjudicate has made a multiple 
! object, and we pass it on 
} 
! If i is non-zero here, one of two things is happening: either 
! (a) an inference has been successfully made that object i is 
! the intended one from the user’s specification, or 
! (b) the user finished typing some time ago, but we’ve decided 
! on i because it’s the only possible choice. 
! In either case we have to keep the pattern up to date, 
! note that an inference has been made and return. 
! (Except, we don’t note which of a pile of identical objects.) 
if (i ~= 0) { 
if (dont_infer) return i; 
if (inferfrom == 0) inferfrom=pcount; 
pattern-->pcount = i; 
return i; 
} 
! If we get here, there was no obvious choice of object to make. If in 
! fact we’ve already gone past the end of the player’s typing (which 
! means the match list must contain every object in scope, regardless 
! of its name), then it’s foolish to give an enormous list to choose 
! from - instead we go and ask a more suitable question... 
if (match_from > num_words) jump Incomplete; 
! Now we print up the question, using the equivalence classes as worked 
! out by Adjudicate() so as not to repeat ourselves on plural objects... 
BeginActivity(ASKING_WHICH_DO_YOU_MEAN_ACT); 
if (ForActivity(ASKING_WHICH_DO_YOU_MEAN_ACT)) jump SkipWhichQuestion; 
if (context==CREATURE_TOKEN) L__M(##Miscellany, 45); 
else L__M(##Miscellany, 46);
j = number_of_classes; marker = 0; 
for (i=1 : i<=number_of_classes : i++ ) { 
while (((match_classes-->marker) ~= i) && ((match_classes-->marker) ~= -i)) marker++; 
k = match_list-->marker; 
if (match_classes-->marker > 0) print (the) k; else print (a) k; 
if (i < j-1) print (string) COMMA__TX; 
if (i == j-1) { 
#Ifdef SERIAL_COMMA; 
print ","; 
#Endif; ! SERIAL_COMMA 
print (string) OR__TX; 
} 
} 
L__M(##Miscellany, 57); 
.SkipWhichQuestion; EndActivity(ASKING_WHICH_DO_YOU_MEAN_ACT); 
! ...and get an answer: 
.WhichOne; 
#Ifdef TARGET_ZCODE; 
for (i=2 : i<INPUT_BUFFER_LEN : i++ ) buffer2->i = ’ ’; 
#Endif; ! TARGET_ZCODE 
answer_words=Keyboard(buffer2, parse2); 
! Conveniently, parse2-->1 is the first word in both ZCODE and GLULX. 
first_word = (parse2-->1); 
! Take care of "all", because that does something too clever here to do 
! later on: 
if (first_word == ALL1__WD or ALL2__WD or ALL3__WD or ALL4__WD or ALL5__WD) { 
if (context == MULTI_TOKEN or MULTIHELD_TOKEN or MULTIEXCEPT_TOKEN or MULTIINSIDE_TOKEN) { 
l = multiple_object-->0; 
for (i=0 : i<number_matched && l+i<63 : i++ ) { 
k = match_list-->i; 
multiple_object-->(i+1+l) = k; 
} 
multiple_object-->0 = i+l; 
rtrue; 
} 
L__M(##Miscellany, 47); 
jump WhichOne; 
} 

! BEGIN Blue Lacuna hack: if we're disambiguating and want to skip
! it, do so.
if ( (+ disambiguation_flag +) ) {
	(+ disambiguation_flag +) = 0;
	VM_CopyBuffer(buffer, buffer2); 
	jump RECONSTRUCT_INPUT;
}
! END Blue Lacuna hack.

! If the first word of the reply can be interpreted as a verb, then 
! assume that the player has ignored the question and given a new 
! command altogether. 
! (This is one time when it’s convenient that the directions are 
! not themselves verbs - thus, "north" as a reply to "Which, the north 
! or south door" is not treated as a fresh command but as an answer.) 
#Ifdef LanguageIsVerb; 
if (first_word == 0) { 
j = wn; first_word = LanguageIsVerb(buffer2, parse2, 1); wn = j; 
} 
#Endif; ! LanguageIsVerb 
if (first_word ~= 0) { 
j = first_word->#dict_par1;
if ((0 ~= j&1) && ~~LanguageVerbMayBeName(first_word)) { 
VM_CopyBuffer(buffer, buffer2); 
jump RECONSTRUCT_INPUT; 
} 
} 
! Now we insert the answer into the original typed command, as 
! words additionally describing the same object 
! (eg, > take red button 
! Which one, ... 
! > music 
! becomes "take music red button". The parser will thus have three 
! words to work from next time, not two.) 
#Ifdef TARGET_ZCODE; 
k = WordAddress(match_from) - buffer; l=buffer2->1+1; 
for (j=buffer + buffer->0 - 1 : j>=buffer+k+l : j-- ) j->0 = 0->(j-l); 
for (i=0 : i<l : i++ ) buffer->(k+i) = buffer2->(2+i); 
buffer->(k+l-1) = ’ ’; 
buffer->1 = buffer->1 + l; 
if (buffer->1 >= (buffer->0 - 1)) buffer->1 = buffer->0; 
#Ifnot; ! TARGET_GLULX 
k = WordAddress(match_from) - buffer; 
l = (buffer2-->0) + 1; 
for (j=buffer+INPUT_BUFFER_LEN-1 : j>=buffer+k+l : j-- ) j->0 = j->( -l ); 
for (i=0 : i<l : i++ ) buffer->(k+i) = buffer2->(WORDSIZE+i); 
buffer->(k+l-1) = ’ ’; 
buffer-->0 = buffer-->0 + l; 
if (buffer-->0 > (INPUT_BUFFER_LEN-WORDSIZE)) buffer-->0 = (INPUT_BUFFER_LEN-WORDSIZE); 
#Endif; ! TARGET_ 
! Having reconstructed the input, we warn the parser accordingly 
! and get out. 
.RECONSTRUCT_INPUT; 
num_words = WordCount(); 
wn = 1; 
#Ifdef LanguageToInformese; 
LanguageToInformese(); 
! Re-tokenise: 
VM_Tokenise(buffer,parse); 
#Endif; ! LanguageToInformese 
num_words = WordCount(); 
players_command = 100 + WordCount(); 
FollowRulebook(Activity_after_rulebooks-->READING_A_COMMAND_ACT, true); 
return REPARSE_CODE; 
! Now we come to the question asked when the input has run out 
! and can’t easily be guessed (eg, the player typed "take" and there 
! were plenty of things which might have been meant). 
.Incomplete; 
if (context == CREATURE_TOKEN) L__M(##Miscellany, 48); 
else L__M(##Miscellany, 49); 
#Ifdef TARGET_ZCODE; 
for (i=2 : i<INPUT_BUFFER_LEN : i++ ) buffer2->i=’ ’; 
#Endif; ! TARGET_ZCODE
answer_words = Keyboard(buffer2, parse2); 
first_word=(parse2-->1); 
#Ifdef LanguageIsVerb; 
if (first_word==0) { 
j = wn; first_word=LanguageIsVerb(buffer2, parse2, 1); wn = j; 
} 
#Endif; ! LanguageIsVerb 
! Once again, if the reply looks like a command, give it to the 
! parser to get on with and forget about the question... 
if (first_word ~= 0) { 
j = first_word->#dict_par1; 
if (0 ~= j&1) { 
VM_CopyBuffer(buffer, buffer2); 
return REPARSE_CODE; 
} 
} 
! ...but if we have a genuine answer, then: 
! 
! (1) we must glue in text suitable for anything that’s been inferred. 
if (inferfrom ~= 0) { 
for (j=inferfrom : j<pcount : j++ ) { 
if (pattern-->j == PATTERN_NULL) continue; 
#Ifdef TARGET_ZCODE; 
i = 2+buffer->1; (buffer->1)++; buffer->(i++ ) = ’ ’; 
#Ifnot; ! TARGET_GLULX 
i = WORDSIZE + buffer-->0; 
(buffer-->0)++; buffer->(i++ ) = ’ ’; 
#Endif; ! TARGET_ 
#Ifdef DEBUG; 
if (parser_trace >= 5) 
print "[Gluing in inference with pattern code ", pattern-->j, "]^"; 
#Endif; ! DEBUG 
! Conveniently, parse2-->1 is the first word in both ZCODE and GLULX. 
parse2-->1 = 0; 
! An inferred object. Best we can do is glue in a pronoun. 
! (This is imperfect, but it’s very seldom needed anyway.) 
if (pattern-->j >= 2 && pattern-->j < REPARSE_CODE) { 
PronounNotice(pattern-->j); 
for (k=1 : k<=LanguagePronouns-->0 : k=k+3) 
if (pattern-->j == LanguagePronouns-->(k+2)) { 
parse2-->1 = LanguagePronouns-->k; 
#Ifdef DEBUG; 
if (parser_trace >= 5) 
print "[Using pronoun ’", (address) parse2-->1, "’]^"; 
#Endif; ! DEBUG 
break; 
} 
} 
else { 
! An inferred preposition. 
parse2-->1 = VM_NumberToDictionaryAddress(pattern-->j - REPARSE_CODE);
#Ifdef DEBUG; 
if (parser_trace >= 5) 
print "[Using preposition ’", (address) parse2-->1, "’]^"; 
#Endif; ! DEBUG 
} 
! parse2-->1 now holds the dictionary address of the word to glue in. 
if (parse2-->1 ~= 0) { 
k = buffer + i; 
#Ifdef TARGET_ZCODE; 
#Ifnot; ! TARGET_GLULX 
k = Glulx_PrintAnyToArray(buffer+i, INPUT_BUFFER_LEN-i, parse2-->1); 
i = i + k; buffer-->0 = i - WORDSIZE; 
#Endif; ! TARGET_ 
} 
} 
} 
! (2) we must glue the newly-typed text onto the end. 
#Ifdef TARGET_ZCODE; 
i = 2+buffer->1; (buffer->1)++; buffer->(i++ ) = ’ ’; 
for (j=0 : j<buffer2->1 : i++,j++ ) { 
buffer->i = buffer2->(j+2); 
(buffer->1)++; 
if (buffer->1 == INPUT_BUFFER_LEN) break; 
} 
#Ifnot; ! TARGET_GLULX 
i = WORDSIZE + buffer-->0; 
(buffer-->0)++; buffer->(i++ ) = ’ ’; 
for (j=0 : j<buffer2-->0 : i++,j++ ) { 
buffer->i = buffer2->(j+WORDSIZE); 
(buffer-->0)++; 
if (buffer-->0 == INPUT_BUFFER_LEN) break; 
} 
#Endif; ! TARGET_ 
! (3) we fill up the buffer with spaces, which is unnecessary, but may 
! help incorrectly-written interpreters to cope. 
#Ifdef TARGET_ZCODE; 
for (: i<INPUT_BUFFER_LEN : i++ ) buffer->i = ’ ’; 
#Endif; ! TARGET_ZCODE 
return REPARSE_CODE; 
]; ! end of NounDomain

-) instead of "Noun Domain" in "Parser.i6t".

Volume - Simple Debugger by Michael Hilborn

Section 1 - Global values

[First, we want every object to be debugged, so we give the basic THING kind an either/or value called 'being debugged'.]
A thing can be being debugged. A thing is usually not being debugged.

[A player can decide whether or not to view general debugging information. We accomplish this extraordinary task by setting the 'general debugging flag'.]
The general debugging flag is a truth state that varies. The general debugging flag is false.

Section 2 - Phrases

[The phrase "initialize debugger" permits the author to enable debugging from with the source.]
To initialize debugger, activating general debugging and/or activating object-debugging:
	if activating general debugging, set general debugging "on";
	if activating object-debugging, set debugging for all objects "on".

[A simple phrase to use while writing our game (rather than typing "if the general debugging flag is true/false" all the time.]
To decide whether we're debugging:
	if the general debugging flag is true, decide yes;
	decide no.

[Here we define a phrase for activating the debugging properties of every single THING in the game.]
To set debugging for all objects (parameter - text):
	if the parameter is "on" begin;
		now everything is being debugged;
		say "Every 'thing' is now being debugged. Type 'debug things off' to turn this feature off.";
	otherwise;
		now everything is not being debugged;
		say "Every 'thing' is no longer being debugged.";
	end if.

[And here we define a phrase to activate and deactivate general debugging.]	
To set general debugging (parameter - text):
	if the parameter is "on" begin;
		now the general debugging flag is true;
		say "General debugging on. Type 'debug off' to turn it off.";
	otherwise;
		now the general debugging flag is false;
		say "General debugging off.";
	end if.

[Finally, we create a phrase to activate and deactivate everything.]
To set ultra debugging (parameter - text):
	if the parameter is "on" begin;
		set debugging for all objects "on";
		set general debugging "on";
	otherwise;
		set debugging for all objects "off";
		set general debugging "off";
	end if.

Section 3 - Verbs 

[Now we'll define our actions. There are two commands a player may type: "debug", which turns all object-debugging on, and "debug [something], which activates the debugging properties of only that particular object. First, we define the "debug" command.]
General debugging is an action applying to nothing.

Understand "debug" as general debugging.

Carry out general debugging:
	set general debugging "on".

[And now we'll define the "debug [something]" command.]
object-debugging is an action applying to one thing.

Understand "debug [any thing]" as object-debugging.

[Remember, we want to be able to debug objects that the player can't touch, see, etc. So before we debug an object, we need to ignore Inform's standard accessibility rules.]
Before object-debugging:
	ignore the basic accessibility rule.

Carry out object-debugging:
	if the noun is being debugged begin;
		now the noun is not being debugged;
		say "No longer debugging [the noun].";
	otherwise;
		now the noun is being debugged;
		say "Debugging [the noun]. Type 'debug [the noun]' to turn it off.";
	end if.

[We also want the debug command to operate like the internal Inform 7 utilities; that is, "debug" and "debug on" both activate general debugging, and "debug off" turns it off.]
Debugging with option is an action applying to one topic.

Understand "debug [text]" as debugging with option.

[On a personal note, I hate this if..., if..., if... syntax, but this seems to be a limitation of using natural language--or, perhaps, a limitation of a professional programmer attempting to write with a natural language.]
Carry out debugging with option:
	if the player's command matches "debug on" begin;
		set general debugging "on";
		rule succeeds;
	end if;
	if the player's command matches "debug off" begin;
		set general debugging "off";
		rule succeeds;
	end if;
	if the player's command matches "debug things" or the player's command matches "debug things on" begin;
		set debugging for all objects "on";
		rule succeeds;
	end if;
	if the player's command matches "debug things off" begin;
		set debugging for all objects "off";
		rule succeeds;
	end if;
	if the player's command matches "debug everything" or the player's command matches "debug everything on" begin;
		set ultra debugging "on";
		rule succeeds;
	end if;
	if the player's command matches "debug everything off" begin;
		set ultra debugging "off";
		rule succeeds;
	end if;
	say "You entered an invalid debug option. Valid commands are 'debug', 'debug [bracket]on|off[close bracket]', 'debug things [bracket]on|off[close bracket]', 'debug [bracket]thing[close bracket]', and 'debug everything [bracket]on|off[close bracket]'".




Legacy Extensions for Blue Lacuna ends here.
