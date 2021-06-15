"Blue Lacuna" by "Aaron A. Reed"

[Blue Lacuna should be compiled with Inform build 5Z71. Note that the Glulx interpreter in the "Game" panel will not properly run this version of the game; to play, you'll have to "Release" the story and use an external interpreter. ]

[All versions of Blue Lacuna and its source code are released under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 license. In summary, you may freely distribute, perform, or create derivative works, but not for commercial purposes without permission from the author. More information is available at http://creativecommons.org/licenses/by-nc-sa/3.0/us/.]

Include Legacy Extensions for Blue Lacuna by Blue Lacuna. [This extension contains snapshots of the following extensions as they existed at the time of Blue Lacuna's release: Smarter Parser by Aaron Reed, Poor Man's Mistype by Aaron Reed, Epistemology by Eric Eve, Remembering by Aaron Reed, Default Messages by David Fisher, Glulx Entry Points by Emily Short, Glulx Text Effects by Emily Short, Flexible Windows by Jon Ingold, Plurality by Emily Short, Improved Menus by Aaron Reed (based on Basic Menus by Emily Short), Intelligent Hinting by Aaron Reed, and Numbered Disambiguation Choices by Aaron Reed.] 

Volume - Core

Part - Definitions & Setup

The story headline is "An Interactive Novel In Ten Chapters".
The story genre is "Fiction".
The release number is 4.       
The story description is "You have always been different. 

One in a trillion have your gift, your curse: to move between worlds, never settling, always alone. To Wayfare. Yet there are others like you, and something stronger than coincidence binds you together, bumps your lives against each other like charged particles.

Now you feel the Call again, and know another of your kind is in need. But when you arrive there are no answers. Just an old man with fraying sanity and a long-buried secret. A tropical paradise more alive than it seems. And a conflict left unresolved that could change the course of two civilizations forever.  

There are no easy choices, wayfarer. Your decisions will shape the fate of many things. Three worlds. Two lives. And what your own story will become.".                           
                
The story creation year is 2009.             
      
Use fast route-finding.
Use the serial comma.    
Use no scoring.
Use full-length room descriptions.    

Use MAX_PROP_TABLE_SIZE of 3000000.   
Use MAX_SYMBOLS of 100000.  
Use MAX_STATIC_DATA of 100000.
Use MAX_OBJECTS of 6000. 
Use MAX_DICT_ENTRIES of 10000.
Use MAX_ACTIONS of 500.
Use MAX_VERBS of 500.
Use MAX_VERBSPACE of 12000.
Use MAX_STATIC_DATA of 6000000. 
Use MAX_NUM_STATIC_STRINGS of 50000.    
Use MAX_EXPRESSION_NODES of 200.
Use MAX_OBJ_PROP_COUNT of 100.
Use ALLOC_CHUNK_SIZE of 30000. 
Use MAX_ARRAYS of 3000.
Use MAX_ZCODE_SIZE of 100000.
Use MAX_LABELS of 20000.

Release along with cover art and the source text. 

Your Bedroom is a room. [ So we start in this room.]  
UnRoom is a room.      


Chapter - Intelligent Hinting

Understand the command "solve" as something new. Understand the command "suggest" as something new. [ For this release, we haven't fully enabled IH.]
 
Winning-The-Game requires Homeworld-Sequence, Lacuna-Sequence, Twoworlds-Sequence, Endgame-Sequence.

Extended-hint-mode is a truth state that varies. Extended-hint-mode is true. [ true=Intelligent Hinting includes hints and color. false=bare minimum path to finish the game.]

Homeworld-Sequence is a puzzle. Lacuna-Sequence is a puzzle. Twoworlds-Sequence is a not sequential puzzle. It requires Rebelworld-Sequence, Treeworld-Sequence. Endgame-Sequence is a puzzle. [ Finding-The-Egg is a task. Powering-Both-Devices is a task. Opening-The-Pyramid is a task. Contacting-All-The-Trees is a task.] [ Reaching-Rebelworld is a task. Finishing-Rebelworld is a task. Reaching-Treeworld is a task. Finishing-Treeworld is a task.] Completing-Progue's-Character-Arc is a puzzle.  Finishing-the-Epilogue is a task. Meeting-Progue is a task.    
  
            
   
Chapter - Smarter Parser
 
Table of Extended Smarter Parser Messages (continued)
therule	message
signs of confusion rule	"[as the parser]Look for emphasized object keywords ([o]things[x] you can examine) or emphasized [o]exit[x] keywords (places you can go). Type a single keyword and press enter to advance. If you can't see the emphasis on the keywords, type KEYWORDS. Type LOOK to get a fresh description of your surroundings. Type HELP to get access to more detailed instructions."
unnecessary movement rule	"[as the parser]Usually, you won't need to move within a single location; everything you can see is usually touchable. If you're trying to get somewhere that's not nearby, use emphasized [d]exits[x] keywords to move from one location to another, or type [d]landmark[x] to see a list of areas you can quickly move beween.[as normal]"
asking random questions rule	"[as the parser]You can't ask direct questions to the game. Try typing an emphasized keyword (or LOOK if you don't see any on the screen) or HELP for more instructions.[as normal]"
making assertions rule	"[as the parser]Please rephrase your command by typing just an emphasized keyword, or a verb like LOOK. Type HELP for more info.[as normal]"
starting command with i rule	"[as the parser]Please rephrase your command by typing just an emphasized keyword, or a verb like LOOK. Type HELP for more info.[as normal]"



 
Section - Lacuna Print Rule (in place of Section - The Print Rule in Legacy Extensions for Blue Lacuna by Blue Lacuna)

To print explanation for (why - a rule):    
	if sp-debug is true, say "(smart parser debug: printing message for [why])[command clarification break]"; 
	if there is a therule of why in Table of Extended Smarter Parser Messages:  
		choose row with a therule of why in Table of Extended Smarter Parser Messages;
		say "[as the parser][message entry][as normal]";
	otherwise if there is a therule of why in Table of Smarter Parser Messages: 
		choose row with a therule of why in Table of Smarter Parser Messages; 
		say "[as the parser][message entry][as normal]". 



Chapter - Misc Setup Conditions



The can't act in the dark rule is not listed in any rulebook. The adjust light rule is not listed in any rulebook. The check light in new location rule is not listed in any rulebook. [ We don't use the default light/dark model, so might as well declutter the rulebooks.]    

The examine described devices rule is not listed in any rulebook.   
   
To decide whether parser error is did not make sense in this context:   
      (- (etype == ASKSCOPE_PE) -)                   
          
To say notsurewhatyoumeant:
	if location is regionally in Dreamlands: 
		say "You can't seem to.[run paragraph on]"; [ This is mostly because we tend to flippantly refer to a lot of things in the dreams that aren't actually there.]
	otherwise:  
		if notsure_num is turn count, increase frust_ctr by 1;
		otherwise now frust_ctr is 0;
		say "[if frust_ctr is 2]I seem to be having difficulties understanding you. I apologize! Remember, I'm only likely to understand the emphasized keywords you see in the prose: [o]nouns[x], [d]directions[x], or [t]topics[x]. If a word is not emphasized, it's a good bet I won't understand it. Type keywords alone, or try combining them with basic verbs to do more complex actions. (Type VERBS to see a full list: if a verb is not on the list, it's a good bet I won't understand that, either.)[paragraph break]If you don't see any keywords, try pressing enter by itself, or typing LOOK, to get a fresh description of your surroundings and new keywords to try. You can also type HELP at any time for more detailed instructions[otherwise]Sorry, I'm not sure what you meant. [nearbypersonbit]Try LOOK to reorient yourself to your surroundings, or HELP for more instructions[end if]";
		now notsure_num is turn count.   [ The rule related to this is in the conversation "Not Understanding" section. ]      
  
notsure_num is a number that varies. frust_ctr is a number that varies.

      
To say nearbypersonbit:
	if an idle nonbestial other person is enclosed by location:
		unless tutorial mode is switched on, say "If you were trying to speak to [a random idle nonbestial other person enclosed by location], try typing HELLO first. ";
	otherwise if a nonbestial other person is enclosed by the location:
		say "If you were trying to speak to [a random nonbestial other person enclosed by location], try typing an emphasized keyword from recent dialogue. ".    

 

   



Chapter - Beginning Play

[The functionality here, to ensure the player gets to choose keywords they can see before the game proper begins, was later worked into the Highlighted Keywords extensions.]

When play begins: follow the very-beginning rule. 

This is the very-beginning rule:
	clear the screen;
	if Milestone mode is true or final release mode is true begin;  
	let ready-to-go be false;
	let show-toc be false;
	say "Welcome to [o]Blue Lacuna[x], release [release number].[paragraph break]If no words above were [one of]blue[or]emphasized[stopping], press K now.[paragraph break]Press [t]N[x] to begin from the beginning, [t]R[x] to restore an existing story, or [t]C[x] to show the Table of Contents.";
	while ready-to-go is false begin;
		let k be 0;  
		while k is 0 begin; let k be the chosen letter; end while;
		if k is 82 or k is 114, 	restore the game;  [ restore ]
		if k is 67 or k is 99 begin; now ready-to-go is true; now show-toc is true; end if;  [ table ]
		if k is 75 or k is 107 begin;  
			try setting the keyword style; 
			stop;
		end if;
		if k is 89 or k is 121 begin; [ yes ]
			try setting screen reader mode;  
			say "[paragraph break]Press any key to continue.";
			wait for any key;
			now k is 78;    
		end if;
		if k is 78 or k is 110 begin; [ new ]
			now ready-to-go is true;
		end if;   
	end while;   
	end if;
	if show-toc is true, show table of contents;
	else clear the screen.    
 
To restore the game: (- RESTORE_THE_GAME_R(); -).

To restart the game: (- @restart; -).  
 

  

 

Part - Beta Testing

[ Include Simple Debugger by Michael Hilborn. ]

Section - Milestone mode

Milestone mode is a truth state that varies. Milestone mode is false. Final release mode is a truth state that varies. Final release mode is true. [ These two set up different testing environments. Milestone mode was for frequent releases to testers, and included special prompts to save transcripts and certain testing commands.] 
 
First After reading a command when milestone mode is true (this is the ignore beta-comments rule):
	if the player's command matches the regular expression "^\p" begin;
		speak as the parser "Comment noted."; 
		reject the player's command;  
	end if.

Section - Hacks (not for release)

Include (- [ XTreeSub; print "***In debug mode this conflicts with the test command 'tree'; try typing 'tree9' instead.***^^"; ]; -) instead of "Tree Command" in "Tests.i6t". [ This prevents the tester who haplessly types the highlighted keyword "tree" from being buried in an epic poem's worth of debugging code.]
 

Chapter - Fast Forward

[ A testing command to quickly jump forward through the major sections of the story. The fast-forward rules are defined in each of the individual sections, making adjustments to the game world so that conditions will be the same as if the entire game has been played to this point.]

Fast-forward is an object-based rulebook.   

Section - The Fast Forward Command

Ffing is an action applying to nothing. Understand "ff" as ffing.  
 
Carry out ffing:    
	now yourself is awake;
	if Finishing-the-Prologue is unsolved begin;
		follow the fast-forward rules for Finishing-The-Prologue;
		speak as the parser "BETA: **advanced to Exploring Homeworld**[line break](You make a few key decisions.)"; 
	otherwise if Starting-The-Painting is unsolved; 
		follow the fast-forward rules for Starting-the-Painting;
		speak as the parser "BETA: **advanced to Rume-Conversation**[line break](You learn some things about yourself: that you are a Wayfarer, a traveller between worlds, who tonight feels the Call, a bond between your kind. Though you have toyed with settling down with Rume, who you may be in love with, the Call pulls at you insistently. But if you answer it by painting, you will not be able to return, for a Wayfarer's journey is one way only, and none may go with him.)";	   
	otherwise if Finishing-The-Painting is unsolved; 
		follow the fast-forward rules for Finishing-the-Painting;
		speak as the parser 	"BETA:**advanced to Exploring Lacuna**[line break](After a final conversation with Rume, you have answered the call, and Wayfared to another world through your painting of a curious tree.)"; 
	otherwise if Meeting-Progue is unsolved;
		follow the fast-forward rules for Meeting-Progue;
		speak as the parser "BETA:**met Progue**[line break]You find yourself on a tropical island, deserted save for a half-mad old man named Progue.)[if The-Mysterious-Door is incomplete]yes[else]no"; 
	otherwise if The-Mysterious-Door is unsolved; 	  
		follow the fast-forward rules for The-Mysterious-Door;
		speak as the parser "BETA:**advanced to lava door puzzle solved**[line break](Various signs of former inhabitation abound: an old treehouse with a clockwork head, a non-working ropeway leading to the top of the island's highest mountain, a cabin on a beach. It seems the past residents must have been artists, for there are two beautiful paintings in the cabin-- the work of Wayfarers?-- and a spectacular sculpture on the lip of the island's volcano. A secret door in the cabin inscribed with a cipher finally opens to you after you match the bands of color painted on it to animals and plants around the island used to make the paints.)";  
	otherwise if Getting-To-The-Lawn is unsolved;
		follow the fast-forward rules for Getting-To-The-Lawn;
		speak as the parser "BETA:**advanced to power chairlift puzzle solved**[line break](On the floor of the volcano you discover a boiler, channelling steam power to various points around the island. One of these is the ropeway, which, once powered, takes you to the top of the mountain, where a strange pyramid object awaits.)";
	otherwise if Finding-The-Egg is unsolved;
		follow the fast-forward rules for Finding-The-Egg;
		speak as the parser "BETA:**advanced to Find the Egg puzzle solved**[line break](On the east side of the island is a huge beehive, and various clues have led you to believe the bees are key to discovering some secret deep within the nearby rain forest. After watching the bees inside the hive do their strange dance, you finally manage to decipher its meaning, and follow the bees to a discovery deep within the forest. Meanwhile you have befriended Progue, whose memory is slowly beginning to return to him, and have been having a series of very strange dreams, where two entities both seem to be trying to reach you.)";  
	otherwise if Powering-Both-Devices is unsolved;
		follow the fast-forward rules for Powering-Both-Devices;
		speak as the parser "BETA:**advanced to Power Both puzzle solved (climbing variation)**[line break](To get to the pyramid, which the dreams and Progue are both hinting is somehow important, you must use the ropeway, but when it is powered there isn't enough left over power to run the pyramid, which seems to need an extraordinary amount. Fortunately, you are able to figure out a way to bypass the ropeway and get to the top of the mountain anyway, with the pyramid at full power.)";   
	otherwise if Opening-The-Pyramid is unsolved;
		follow the fast-forward rules for Opening-The-Pyramid;
		speak as the parser "BETA:**advanced to Pyramid Opened puzzle solved**[line break](The symbols on the sides of the pyramid sync up with symbols in an echoing cave beneath your rain forest discovery. After piecing together more clues, you realize the echo cave is some sort of security system enacted by Progue; only people who know his names for things around the island will be able to get in. After working out the puzzle you return to the pyramid and are able to open it.)";   
	otherwise if Contacting-All-The-Trees is unsolved;   
		follow the fast-forward rules for Contacting-All-The-Trees;
		speak as the parser "BETA:**advanced to All Trees Found (tree PW: [tree-password]; rebel PW: [rebel-password])**[line break](The dreams have led to a shocking revelation: one of the groups trying to reach you is actually a race of intelligent, telepathic beings: the trees, who are reliant on a symbiont race of human-like creatures to be their eyes, ears, and hands. Your forest discovery was the crashed ship the trees arrived in on this island; they lived while the symbiont humans died. The other group trying to reach you in dreams is from a mirrored world where the opposite ocurred: the trees died and the humans lived, and, force to think and fend for themselves, have decided they aren't so keen on their former 'masters.' By finding all the trees on the island, you are able to learn the whole story, and set encryption keys that will allow you to communicate in secret with either side (see passwords above). You have also calibrated the seiver device inside the pyramid, and are ready to begin.)";  
	otherwise if Being-In-Rebelworld is unsolved;  
		follow the fast-forward rules for Being-In-Rebelworld;
		speak as the parser "BETA:**advanced to Rebel World**[line break](Setting the seiver for the human symbionts, you activate the link.)"; 		 
	otherwise if Finishing-Rebelworld is unsolved;
		follow the fast-forward rules for Finishing-Rebelworld;
		speak as the parser "BETA:**advanced to Rebel World Completed**[line break](";
	otherwise if Being-In-Treeworld is unsolved; 
		follow the fast-forward rules for Being-In-Treeworld;
		speak as the parser "BETA:**advanced to Treeworld**[line break]("; 
	otherwise if Finishing-Treeworld is unsolved;
		follow the fast-forward rules for Finishing-Treeworld;
		speak as the parser "BETA:**advanced to Treeworld Completed**[line break](";
	otherwise if Completing-Progue's-Character-Arc is unsolved;
		follow the fast-forward rules for Completing-Progue's-Character-Arc; 
		speak as the parser "BETA:**advanced to Final Confrontation resolved**[line break]("; 
	otherwise if Finishing-The-Epilogue is unsolved;
		[ force solve Finishing-The-Epilogue;]
		speak as the parser "BETA:**advanced to Epilogue**[line break](";
	otherwise;
		speak as the parser "**Can't advance past Epilogue!**";
	end if.      

Section - Changing the time rate

[ Changing the time factor is an action out of world applying to one number. Understand "tf [a number]" as changing the time factor. Carry out changing the time factor: change the time factor to the number understood. Report changing the time factor: say "set to [the number understood]."     ]

Section - Teleportation

Teleporting is an action out of world applying to one thing. Understand "teleport [any room]" or "tp [any room]" as  teleporting. Carry out teleporting: move the player to noun.  

Section - Debug Verbs

[ Revealing all is an action out of world applying to nothing. Understand "reveal all" as revealing all. Carry out revealing all: say "Visible things: [list of visible things]." ]



Part - Menus and Help

Understand "help" or "menu" as asking for help. Asking for help is an action out of world.        
  
Carry out asking for help:      
	if topics-window is g-present, shut down the topics-window;
	show table of contents;
	if out-of-line keywords < 3 and an other attentive person is enclosed by location:
		open up the topics-window;
		follow the drawing rule of the topics-window.

After printing the banner text when turn count >= 2: say "Type MENU for more information.".  
    


Chapter - Table of Contents 

To show table of contents:
     change the current menu to the Table of Main Contents;
     carry out the displaying activity;
     clear the screen;
     if Finishing-The-Prologue is complete, try looking.

Table of Main Contents
title		subtable		description	toggle
"PREMENU"		--	"Please select an option from the menu using the arrow keys. Press enter to confirm your choice." 
"Dedication"	--			"[dedicationtext]"	--
"About This Edition"		--	"[abouttext]"			--
""	--	""	-- 
"Basic [wtfinstructions]"	--	"[simplehelptext].[paragraph break]Hit enter or type LOOK from any prompt to get a fresh description of your surroundings. Type SAVE to save your progress through the story; you can pick up where you left off later by typing RESTORE."	--
"Detailed [wtfinstructions]"		Table of Helpy Stuff		--			--
"Verb List"	--	"[otherverbs]."	--
"Adjust Keyword Style"		--	--	keyword setting rule
""	--	""	--
"Tutorial Mode ([if tutorial mode is switched on]ON[else]OFF[end if])"	Table of Tutorial Mode Options	--	
"Stats Mode ([if stats mode is true]ON[else]OFF[end if])"		Table of Stats Mode Options	--
""	--	""	--
"Acknowledgements"	--	"[acknowledgements]"	--
"About the Author"	--	"[authortext]"	--
"Where to Find More Interactive Fiction"		--		"[ifprimer]"	--
"POSTMENU"	--	"Press Q or the ESC key when you are ready to [if turn count <= 1]begin[otherwise]continue[end if]. You may type HELP from any prompt to return to this menu."  
    
To say wtfinstructions: say "Instructions".  [ Oddly, just writing "Instructions" in the menu table causes problems. ]  
 
To say ifprimer: say "An embarrassment of riches exists in the interactive fiction community, where a disproportionally talented group of writers, designers, and programmers have released hundreds of quality interactive stories for free over the past 15 years. The only problem is how to find them.

The Internet Fiction Database (ifdb.tads.org) collects reviews, ratings, and technical info about IF games. If you click 'Search' and then 'Recommended Lists,' you can search through user compilations of favorite games or even create your own.

Baf's Guide to the IF Archive (wurb.com/if) is a similar resource that also allows you to browse games sorted by genre, rating, or awards received. The five-star game list here is an excellent place to find quality games to play.

Emily Short's Reading IF page (emshort.wordpress.com/reading-if) categorizes games by their noteworthiness: games known for great settings, a focus on characterization, or interesting puzzles, for instance.

The Annual IF Comp (ifcomp.org) has been the preeminent venue for new works of short IF for well over a decade; browsing lists of past winners is an excellent way to find high-quality games.".

Table of Helpy Stuff
title		subtable		description	toggle
"More on Verbs"		--	"[commandstext]"	--
"More on Movement"	--	"[movementtext]"	--
"More on Conversation"		--	"[convotext]"	--
"Game Options"		--	"[optionstext]"	--
"What To Do If You Get Stuck"	--	"[hintstext]"	--

This is the keyword setting rule: try setting the keyword style.
 
To say dedicationtext: say "[paragraph break]To Benton, Fievel, and Fitz.". 

To say commandstext: say "In addition to typing emphasized keywords, you can also enter basic commands beginning with verbs to perform more complex actions in the story world. Type things like TOUCH GRASS, CLIMB TREE, OPEN BOX, or PUSH BUTTON in the appropriate situations, and the story will respond to your action. As with keywords, capitalization and punctuation doesn’t matter, and you can usually leave out pronouns like 'the,' but spelling does count.

A few other useful verbs: LOOK (or just pressing enter) will give you a fresh description of your surroundings. WAIT (or Z) will pass a few minutes of time in the story world-- you can also WAIT UNTIL a certain time of day (such as noon, sunset, night, etc.) or WAIT FOR a certain number of hours or minutes. Finally, AGAIN (or G, or pressing the up arrow on most interpreters) will repeat the last command you typed.

[otherverbs].".  
 
To say movementtext: say "Type emphasized direction words to move in that direction or towards that distant piece of scenery. Type EXITS to be reminded of the places you can go from your current location. (Note that there may be concealed exits that require closer examination of nearby objects to uncover.) Early in the story you may find a compass, which will allow you to navigate using cardinal directions instead by typing OPEN COMPASS.

In large open areas, moving one location at a time can become tedious. At any prompt, you can type LANDMARK to see a list of landmarks you've discovered. Typing the name of a landmark will quickly move you to that area, unless it is currently inaccessible or something interrupts you along the way. 

Finally, you can also sometimes FOLLOW someone, or type GO TO a distant piece of scenery to move one area towards it. Type GO BACK to return to the last area you were in.".    

To say convotext: say "Type HELLO to start speaking. [convotext1][paragraph break][convotext2][paragraph break][convotext3]".    

To say convotext1: say "During a conversation, watch for emphasized keywords, which you can type to control the direction of the discussion, and keep your eyes on the small window that appears at the bottom of the screen, which sometimes shows additional words like YES or NO in response to questions. As the discussion moves forward, old emphasized keywords will become irrelevant and disappear, meaning you can no longer bring them up at the moment; you'll always know what you can still talk about by referencing the small window." 

To say convotext2: say "You can also always say NOTHING (sometimes a wise conversational tactic) or GOODBYE when you want to stop talking. In some conversations you can change the SUBJECT; the small window will show a list of available topics." 

To say convotext3: say "During conversation, you can also take physical actions, such as (in order of friendliness) KISS, HUG, PUSH, or ATTACK. You can also simply walk away, though people may find that rude if you don't say GOODBYE first. (Similarly, type HELLO to begin a conversation with someone you aren't speaking with.) You can FOLLOW someone who walks away from you, or SHOUT to get the attention of some characters." [ touch redirects to HUG.] 

Displaying the options text is an action out of world. Understand "options" as displaying the options text. Carry out displaying the options text: say "[optionstext]". To say optionstext: say "You can save your progress in the story by typing SAVE, and return to the same point later by typing RESTORE. You can QUIT to end the story immediately, or RESTART to begin from the beginning. If you want to take back your last move, type UNDO.

To begin a transcript of your game session, type SCRIPT ON; to end it, type SCRIPT OFF. Feel free to send transcripts to aaron@lacunastory.com."     
 
Displaying the hints text is an action out of world. Understand the command "think" as something new. Understand "hint" or "hints" or "think" as displaying the hints text. Carry out displaying the hints text: say "[hintstext]". To say hintstext: say "If you're not sure what to do, [if Homeworld-Sequence is solved]you may just need to keep exploring. The scenery changes with both the time of day, the tides, the weather, and your own actions. Retrace your steps and keep a close eye on the changing descriptions[else]remember you can type LOOK or press enter alone to be reminded of your surroundings[end if]. Make sure you try typing any emphasized [d]direction[x] keywords you haven't explored or [o]objects[x] you haven't examined.

Asking other characters you meet about obstacles is also a good tactic. It also may help to sleep on your problem, particularly in a comfy, shady spot[if puzzle mode and Homeworld-Sequence is solved].

If you're having a particularly difficult time with puzzles, you might consider starting a new game and selecting 'story mode' instead at the end of Chapter One. The puzzles are less complex and less important in story mode[end if].

If you want specific hints, try asking on the newsgroup rec.games.int-fiction or e-mailing the address below.

Finally, if you encounter a bug or problem with the workings of the story, think something is unclear, or have suggestions, the author would love to hear from you. Please write to aaron@lacunastory.com or visit lacunastory.com."

To say simplehelptext: say "In Blue Lacuna, you take the role of a character in the story. As you read, you'll see certain emphasized keywords in the prose. Type any keyword and press enter to interact with the story.[paragraph break]There are three kinds of keywords: type[line break]  -- a [o]noun[x] to examine that thing more closely[line break]  -- an [d]exit[x] to move in that direction[line break]  -- a [t]word[x] recently spoken (if you're talking with someone) to direct the conversation". 

Displaying the about text is an action out of world. Understand "about" as displaying the about text. Carry out displaying the about text: say "[abouttext]". To say abouttext: say "[banner text][line break][list of extension credits]Smarter Parser by Aaron Reed[line break]Poor Man's Mistype by Aaron Reed[line break]Epistemology by Eric Eve[line break]Remembering by Aaron Reed[line break]Default Messages by David Fisher[line break]Flexible Windows by Jon Ingold[line break]Improved Menus by Aaron Reed (based on Basic Menus by Emily Short)[line break]Intelligent Hinting by Aaron Reed[line break]Numbered Disambiguation Choices by Aaron Reed.[paragraph break]The official website for Blue Lacuna is lacunastory.com.[paragraph break]Blue Lacuna was first publicly previewed in April 2008 in the Spring Thing Competition. Release 1 debuted in January 2009.[paragraph break]All versions of Blue Lacuna and its source code are released under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 license. In summary, you may freely distribute, perform, or create derivative works, but not for commercial purposes without permission from the author. More information is available at http://creativecommons.org/licenses/by-nc-sa/3.0/us/. The cover art contains photography by Kevin N. Murphy under the Creative Commons Attribution 2.0 Generic license."

To say acknowledgements: say "First and foremost, I owe a huge debt to those whose shoulders I've stood on, most directly those of the Inform 7 team: Graham Nelson, Emily Short, Andrew Hunter, and David Kinder. In addition to creating the wonderful, free tools that were used to create Blue Lacuna, they also answered an endless series of pesky questions and were generous with advice, bug fixes, and esprit de corps. Find out how to create your own interactive fiction at inform-fiction.org.

In addition, the entire community on the newsgroup rec.arts.int-fiction deserves commendation for their amazing responsiveness, friendliness, and willingness to answer questions no matter how unusual or dubious. Among others are Ron Newcomb, Mike Tarbert, JDC, Andrew Plotkin, vaporware, and Khelwood, but a special thanks to everyone on raif who helped me out with problems over the development of this project.

Many of my close friends took time with me to discuss various aspects of the story's design over the past several years. They know who they are and their insight was tremendously helpful in shaping the final product.

My beta testers were instrumental in finding bugs and tweaking the puzzles, spending countless hours hunched over their interpreters with keen eyes. A million thank-yous to Alexei Othenin-Girard, Basti, Depresiv, Doug Egan, Emily Boegheim, George Oliver, HenryMikel, James Jolley, Jeremy Rishe, Justin Lowmaster, katzy, Lynnutte, Mario Carneiro, Neale, Scott Maddix, Sharon Rishe, Stephanie Camus, and Victor Gijsbers. Any remaining bugs in the story are of course entirely my fault and not theirs.

Finally, Blue Lacuna owes a stylistic debt to the Miller brothers and the creative team at Cyan Worlds, whose Myst and Uru games have been a huge inspiration in my desire to create thought-provoking interactive stories. The ending is never written."   

Displaying the verbs text is an action out of world. Understand "verb" or "verbs" as displaying the verbs text. Carry out displaying the verbs text: speak as the parser "[otherverbs]." 

To say otherverbs: say "Below are some of the most important verbs the story understands:

 LOOK[line break]
TOUCH[line break]
PUSH (and PULL)[line break]
OPEN (and CLOSE)[line break]
WEAR (and TAKE OFF)[line break]
TASTE (or EAT or DRINK)[line break]
TAKE (and DROP)[line break]
CLIMB[line break][ov2]". To say ov2: say " WAIT[line break]
LANDMARK[line break]
SLEEP[line break]
SIT[line break]
LISTEN[line break]
HELLO (and GOODBYE)[line break]
ATTACK[line break]
HUG[line break]
KISS[line break]
FOLLOW (or APPROACH)

Other verbs which may be useful in specific situations include READ, JUMP, GIVE, TURN, SQUEEZE, SMELL, WAKE, SWIM, SHAKE, and PAINT.

Verbs useful for controlling the story itself include UNDO, SAVE, RESTORE, QUIT, RESTART, HELP, KEYWORDS, THINGS, EXITS, and TOPICS". 
 
To say authortext: say "Aaron A. Reed has worked as a travel writer, web monkey, offensive t-shirt designer, graphic artist, 3D animator, filmmaker, and murder mystery producer. His fiction has appeared in 'Fantasy & Science Fiction' magazine, and his interactive fiction has won numerous awards and been taught in new media courses from Australia to Sweden. Blue Lacuna is his first novel. His website may be visited at aaronareed.net."

 


Chapter - God Mode

Understand "god" or "backstage" as god modeing. God modeing is an action out of world.

Carry out god modeing:
	if out-of-line keywords < 3:
		if topics-window is g-present, shut down the topics-window;
	change the current menu to Table of God Options;
	carry out the displaying activity;
	clear the screen;
	if Finishing-The-Prologue is complete, try looking;
	if out-of-line keywords < 3 and an other attentive person is enclosed by location:
		open up the topics-window;
		follow the drawing rule of the topics-window.		
	
Table of God Options
title		subtable		description	toggle
"PREMENU"	--	"From these menus, you can access information on and sometimes change certain variables that Blue Lacuna uses to help tell the story."
"Progue Options"	Table of Progue Options	--	--
"Drama Options"	Table of Drama Options	--	--
"Puzzle Cheats"		Table of Puzzle Options	--	--
 
Table of Progue Options
title		subtable		description	toggle
"PREMENU"	--	"Progue is currently in [location of Progue] and in the [psyche of Progue] psychological state. He is [if Progue is wishing]on his way to [progue-venue] for [end if][animus of Progue]. His activity counter is [activity counter of Progue] (usually he'll pick a new activity at 15)[if an episode is playing]. The current episode is [current episode][end if]." [ Based on his scores, if the endgame began now Progue would fall into the [progue-archetype] archetype.]
"Affinity Score: [affinity of Progue]"	Table of Progue Affinity	--	--
"Submission Score: [submission of Progue]"	Table of Progue Submission	--	--
"Paternalism Score: [paternalism of Progue]"	Table of Progue Paternalism	--	--
"Romance Score: [romance of Progue]"	Table of Progue Romance	--	--

Table of Progue Affinity 
title		subtable		description	toggle
"PREMENU"	--	"Current Affinity: [affinity of Progue] (If this number is above 0, Progue likes you; if below, he doesn't.) After meeting Progue it's not possible to be 0. The maximum and minimum are based on Progue's current psychological state."	--
"Raise Affinity"	--	--	Progue-likes-you rule
"Lower Affinity"	--	--	Progue-dislikes-you rule
"POSTMENU"	--	"Press Q to go back."

This is the Progue-likes-you rule: Progue likes you more, silently. This is the Progue-dislikes-you rule: Progue likes you less, silently.

Table of Progue Submission
title		subtable		description	toggle
"PREMENU"	--	"Current Submission: [submission of Progue] (If this number is above 0, Progue feels submissive towards you; otherwise, he feels dominant towards you.) After meeting Progue it's not possible to be 0. The maximum and minimum are based on Progue's current psychological state."	--
"Raise Submission"	--	--	Progue-more-sub rule
"Lower Submission"	--	--	Progue-less-sub rule
"POSTMENU"	--	"Press Q to go back."

This is the Progue-more-sub rule: Progue is more submissive, silently. This is the Progue-less-sub rule: Progue is less submissive, silently.


Table of Progue Paternalism
title		subtable		description	toggle 
"PREMENU"	--	"Current Paternalism: [paternalism of Progue] (The higher above 0 this number is, the more fatherly Progue feels towards you.) It's not possible to be less than 0. The maximum is based on Progue's current psychological state. Raising this lowers the romance attribute."	--
"Raise Paternalism"	--	--	Progue-more-dad rule
"Lower Paternalism"	--	--	Progue-less-dad rule
"POSTMENU"	--	"Press Q to go back."

This is the Progue-more-dad rule: Progue feels more like a father, silently. This is the Progue-less-dad rule: Progue feels less like a father, silently.

Table of Progue Romance
title		subtable		description	toggle
"PREMENU"	--	"Current Romance: [romance of Progue] (The higher above 0 this number is, the more romantic Progue feels towards you.) Normally, it's not possible to drop this below 0, unless Progue is spurned in this phase, in which it becomes -1. The maximum is based on Progue's current psychological state. Raising this lowers the paternlaism attribute."	--
"Raise Romance"	--	--	Progue-more-love rule
"Lower Romance"	--	--	Progue-less-love rule
"Break Progue's Heart"	--	--	Progue-wayless-love rule
"POSTMENU"	--	"Press Q to go back."

This is the Progue-more-love rule: Progue is aroused, silently. This is the Progue-less-love rule: Progue is losing interest, silently. This is the Progue-wayless-love rule: Progue is heartbroken.

Table of Progue Reset
title		subtable		description	toggle
"PREMENU"	--	"This can sometimes fix Progue if he gets stuck[if an episode is playing]. WARNING: Since an episode is playing ([current episode]) resetting Progue right now may break the drama manager and prevent the game's narrative from continuing."
"Reset Progue"	--	--	Progue-reset rule.

This is the Progue-reset rule:
	if an episode is playing, complete current episode;
	pick a new activity for Progue.

Table of Drama Options
title		subtable		description	toggle
"[if an episode is playing]Current Episode: [current episode][else]No Current Episode"	Table of Episode Status	--	--
"Boredom Meter: [boredom meter][if time for excitement] (Time for excitement)[end if]"	Table of Boredom Status	--	--
"Rume Interest Tracker: [Rume-tracker]"	Table of Rume Tracker	--	--
"Injury Status: [if yourself is hale]Uninjured[else]Injured[end if]"	Table of Injury Status	--	--
"Genders"	Table of Gender Status	--	--
"Time Of Day: [time of day] ([current interval])"	Table of Time Status	--	--
"Chose [if we chose art]Art[else]Love"		Table of Art Love Status	--	--

Table of Episode Status
title		subtable		description	toggle
"PREMENU"	--	"Episodes control the narrative progression of the story, particularly as it relates to Progue. Using this tool to end vital story episodes may cause the narrative to derail: use with caution."
"[if an episode is playing]End Current Episode ([current episode])[else]No  Episode Is Playing"	--	--	end-curr-ep rule

This is the end-curr-ep rule: if an episode is playing, complete current episode.

Table of Boredom Status
title		subtable		description	toggle
"PREMENU"	--	"Boredom Meter: [boredom meter]. As time goes on without any new or exciting events, the boredom meter continually rises. When it gets above [the excitement level], episodes and hint scenes are more likely to be triggered."
"Set Boredom Meter to 0"	--	--	reset-boredom rule
"Set Boredom Meter to [the excitement level]"	--	--	upset-boredom rule

This is the reset-boredom rule: now boredom meter is 0. This is the upset-boredom rule: now boredom meter is excitement level.

Table of Rume Tracker
title		subtable		description	toggle
"PREMENU"	--	"Rume Interest Tracker: [Rume-tracker]. Depending on how much interest you show in Rume, this number rises and falls. If it has reached +10 by the endgame, you'll get the Rume-centric epilogue. (If not, you'll get the Progue-centric epilogue, or, if Progue is dead, the player-centric epilogue.)"
"Miss Rume a Lot"	--	--	miss-rume-lots rule
"Miss Rume a Little"	--	--	miss-rume rule
"Dis Rume a Little"	--	--	dis-rume rule
"Dis Rume a Lot"	--	--	dis-rume-lots rule

This is the miss-rume-lots rule: miss Rume a lot. This is the miss-rume rule: miss Rume. This is the dis-rume rule: dis Rume. This is the dis-rume-lots rule: dis Rume a lot.

Table of Injury Status
title		subtable		description	toggle
"PREMENU"	--	"Injury Status: [if yourself is hale]Uninjured[else]Injured[end if]. It's possible to injury your leg in various ways during the game, which changes Progue's reaction to you and affects the ways you can solve various puzzles."
"Switch to [if yourself is hale]Injured[else]Uninjured[end if]"	--	--	injury-toggle rule

This is the injury-toggle rule: if yourself is hale, now yourself is wounded; else now yourself is hale.

Table of Gender Status
title		subtable		description	toggle
"Player: [if yourself is male]Male (Change to Female[else]Female (Change to Male[end if])"		--	--	player-gender rule
"Rume: [if Rume is male]Male (Change to Female[else]Female (Change to Male[end if])"	--	--	rume-gender rule

This is the player-gender rule: if yourself is male, now yourself is female; else now yourself is male. This is the rume-gender rule: if Rume is male, now Rume is female; else now Rume is male.

Table of Time Status
title		subtable		description	toggle
"PREMENU"	--	"Time of Day: [time of day] ([current interval])[if raining] and raining[end if]. Tide is [tidestatus]."
"Next Interval"	--	--	next-interval rule
"Previous Interval"	--	--	prev-interval rule
"Force Low Tide"	--	--	force-lowtide rule
"Force High Tide"	--	--	force-hightide rule

This is the next-interval rule:
	if current interval is night, let tmpint be dawn;
	else let tmpint be the interval after current interval;
	change the time of day to the time corresponding to tmpint;
	update interval.
	
This is the prev-interval rule:
	if current interval is dawn, let tmpint be night;
	else let tmpint be the interval before current interval;
	change the time of day to the time corresponding to tmpint;
	update interval.

This is the force-lowtide rule: now the tide counter is 590. This is the force-hightide rule: now the tide counter is 20.

Table of Art Love Status
title		subtable		description	toggle
"PREMENU"	--	"Chose [if we chose art]Art[else]Love[end if]. This choice colors certain aspects of gameplay and becomes significant in the endgame."
"Switch to [if we chose art]Love[else]Art[end if]"	--	--	art-love-switch rule

This is the art-love-switch rule:
	if we chose love:
		now pr_love is unspoken;
		now pr_art is spoken;
	else:	
		now pr_art is unspoken;
		now pr_love is spoken.


Table of Puzzle Options
title		subtable		description	toggle
"PREMENU"	--	"WARNING: This is not a hint mode, but a tool that lets you bypass certain puzzles. The next screen assumes you have familiarity with all the puzzles in the game and might contain spoilers if you haven't already completed it once.

Furthermore, these options may cause execution problems if selected at certain moments during the game. Please save your game in progress before selecting anything here."
"Proceed"	Table of Puzzle2 Options	--	--

Table of Puzzle2 Options
title		subtable		description	toggle
"Open Color Door In Shack"	--	--	open-shack-door rule
"Increase Power In Steam System"	--	--	increase-steam rule
"Teleport to Egg in Rain Forest"	--	--	tp-egg rule
"Lower Secret Island Bridge"		--	--	secret-bridge rule
"Open Pyramid"		--	--	open-pyramid rule
"Mark All Trees Contacted (inventory shows passwords)"	--	--	contact-trees rule
"Mark City as Visited"	--	--	city-done rule
"Mark Forest as Visited"		--	--	forest-done rule

This is the open-shack-door rule: now lava tunnel door is open; if the psyche of Progue is ignorance, now the psyche of Progue is denial. This is the increase-steam rule: now the system power is 30. This is the tp-egg rule: move player to Egg Room. This is the secret-bridge rule: now secret rope bridge is open. This is the open-pyramid rule: remove the pyramid from play; move the mind chair to Observatory Exterior; move the mind machinery to Observatory Exterior. This is the contact-trees rule: now every windsigh tree is contacted; change the tree-password to "itchy"; change the rebel-password to "scratchy". This is the city-done rule: now cl_story7 is spoken; now the player is yourself; now the psyche of Progue is fugue. This is the forest-done rule: now gp_outtro is spoken; now the player is yourself; now the psyche of Progue is fugue.   
 
  
Table of Stats Mode Options
title		subtable		description	toggle
"PREMENU"	--	"Stats mode shows you notifications every time significant variables change, such as other characters['] feelings towards you. Turn it on if you want to expose some of the mechanics behind the story.[paragraph break]Stats mode is currently [if stats mode is true]ON[else]OFF[end if]."
"Toggle Stats Mode"	--	--	stats-mode rule

This is the stats-mode rule: if stats mode is true, now stats mode is false; else now stats mode is true.

When play begins: if final release mode is false and milestone mode is false, now stats mode is true.
 
Stats mode is a truth state that varies. 

Table of Tutorial Mode Options
title		subtable		description	toggle
"PREMENU"	--	"The tutorial shows you messages in the earlier parts of the game that help you learn how to interact with the story in Blue Lacuna, and is recommended for both experienced interactive fiction players and those new to the genre.[paragraph break]Tutorial mode is currently [if tutorial mode is switched on]ON[else]OFF[end if]."
"Toggle Tutorial Mode"	--	--	tutorial toggling rule


   



Part - New Kinds & Extending the World Model


Section - Props
   
[ Blue Lacuna ordinarily doesn't allow items to be picked up and carried around. This kind is for objects that are small and light enough that they would be take-able in an ordinary game.]

A prop is a kind of thing. A prop is usually fixed in place and undescribed. Check taking a fixed in place prop: say "You'd rather not carry that around." instead.      
  
Section - Setpieces

[ A setpiece is something too large to carry enclosed by the location.]

A setpiece is a kind of thing. A setpiece is usually fixed in place and undescribed. A setpiece can be perchable or unperchable. A setpiece is usually unperchable. [Things Progue can sit on.] 
   
Section - Set Dressing

[ Set dressing is something that vanishes from the location as soon as the player leaves. This is useful for unimportant objects mentioned in ambient messages, or ephemeral details like footprints.]

A set dressing is a kind of prop. After going (this is the remove set dressing rule): repeat with item running through on-stage set dressings begin; remove item from play; end repeat; continue the action.       
   
Section - Views

[ Views are large objects that can be seen from multiple locations.]

A view is a kind of backdrop. Instead of touching or taking or pushing or pulling or attacking or climbing or entering or tasting or opening a view, say "You are too far from [the noun] to do anything but look."  . asdf787 is a view. [ This prevents a crash during testing situations where all modules containing views are turned off.] 
   
Every view has a room called the base room. The base room of a view is usually UnRoom. [ This is used so we can "approach mountain" and know where to go.]
 
[ Also see Section - Visibility ]   
 

Section - Minor Things

A thing can be major or minor. A thing is usually major.  
 
Every thing has some text called provoke message.  

Instead of doing anything other than examining or remembering or examining by name or following to a minor thing (called target): 
	if the provoke message of target is "", try examining target;
	otherwise say "[provoke message of target][line break]". [ not sure why the extra line break here is needed, but it is...]  

Section - Abstractions

[ Used for non-tangible things.]

An abstraction is a kind of thing. An abstraction is always undescribed and minor.      

Section - Intervals

The interval is a kind of value. The intervals are dawn, sunrise, morning, midmorning, midday, afternoon, evening, sunset, twilight, night, moonrise, high tide, falling uptide, falling downtide, moonset, low tide, rising downtide, and rising uptide. Understand "daybreak" as dawn. Understand "noon" as midday. Understand "dusk" as twilight. Understand "dark" as night.  

Current interval is an interval that varies.

First every turn when location is regionally in Lacuna and we are not landmark-going (this is the deciding which interval is current rule): 
	update interval.
	 
To update interval:   
	if dawn begin; now current interval is dawn;
	otherwise if sunrise; now current interval is sunrise;
	otherwise if morning; now current interval is morning;
	otherwise if midmorning; now current interval is midmorning;
	otherwise if midday; now current interval is midday;
	otherwise if afternoon; now current interval is afternoon;
	otherwise if evening; now current interval is evening;
	otherwise if sunset; now current interval is sunset;
	otherwise if twilight; now current interval is twilight;
	otherwise; now current interval is night;  
	end if.  



Section - Prose Name

Every room has some text called prose name. The prose name of a room (called locale) is usually "NULL".   


Section - Books

Understand the command "read" as something new. Reading is an action applying to one visible thing. Understand "read [something]" as reading. 

Check reading when night and location is not regionally in Dreamlands: say "It's too dark to read right now." instead.

Check reading: if noun is not a book, try examining noun instead.    

A book is a kind of thing. Understand "book" or "books" or "page" or "pages" as a book.

A book can be open or closed. A book can be openable. A book is usually closed. A book is always openable. Does the player mean doing something to an open book: it is likely. Check opening a book (called tome): try reading tome instead. Check closing a book (called tome): now tome is closed; say "You close [the tome] again." instead.  

A book has a number called current page. The current page of a book is usually 0. To say current page of (tome - a book): let n be the current page of tome; choose row n in the contents of tome; say "[desc entry]".

A book has a table-name called contents. The contents of a book is usually Table of No Contents.         
    
Table of No Contents    
desc  
"The page is blank."   

Carry out reading:      
	repeat with tome running through books enclosed by location:
		now tome is closed;
	now noun is open;
	if current page of noun is 0, now current page of noun is 1; 
	say "[if current page of noun is 1]You open [the noun] and study the first page.[paragraph break][end if][current page of noun][paragraph break][if the current page of noun is at most the number of rows in contents of noun - 1]It looks like you could see more if you turn the page[otherwise][The noun] is turned to the last page[end if].".   
   
Check turning a book (called tome): 
	increase the current page of tome by 1;
	if current page of tome is greater than the number of rows in contents of tome begin;   
		now the current page of tome is 0;
		say "You seem to have reached the end of [the tome]. You close it again." instead;
	otherwise; 
		say "You turn the page.";   
		try reading tome instead; 
	end if. 

Section - Posture

player_imperiled is a truth state that varies.

Posture is a kind of value. The postures are reclining, sitting, standing, pacing, imperiled, and restraining. A person has a posture. A person is usually standing. 


 

Section - Elevation
 
An elevation is a kind of value. -1000 feet specifies an elevation. A room has an elevation.     
  
Definition: a room is low if its elevation is 50 feet or less. Definition: a room is uphigh if its elevation is 75 feet or more.        
  
Check going down when the room down from the location is not a room (this is the using elevation to determine which direction is down rule):       
    if an adjacent room is lower than the location begin;      
        head to the lowest adjacent room;  
	 do nothing instead;
    otherwise;  
        say "You can't see any way to go down from here." instead; 
    end if. 

Check going up when the room up from the location is not a room (this is the using elevation to determine which direction is up rule): 
    if an adjacent room is uphigher than the location begin; 
        head to the uphighest adjacent room; 
	 do nothing instead;
    otherwise; 
        say "You can't see any way to go up from here." instead; 
    end if. 

Section - Wakefulness

[ This should probably be deprecated. The proper way to make Progue asleep is to give him the animus "resting." Only yourself needs to be asleep/awake. (I think. Or do we use it for Rume?]

A person is either asleep or awake. A person is usually awake.

Section - In and Out

A room can be indoorsy or outdoorsy. A room is usually outdoorsy. 

Definition: a room is outward: 
    if it is indoorsy and the location is outdoorsy then no; 
    if it is outdoorsy and the location is indoorsy then yes; 
    if the number of rooms adjacent to it is greater than the number of rooms adjacent to the location then yes; 
    otherwise no.

Definition: a room is inward:  
    if it is outdoorsy and the location is indoorsy then no; 
    if it is indoorsy and the location is outdoorsy then yes; 
    if the number of rooms adjacent to it is less than the number of rooms adjacent to the location then yes; 
    otherwise no.  
 
Check going nowhere when the noun is outside: try exiting instead. 

Check exiting when the player is in a room (this is the guessing which way is out rule): 
    if at least one adjacent room is outward begin;  
        head to a random adjacent outward room;  
	do nothing instead;
    otherwise; 
        say "I'm not sure which way you mean. [exits]." instead;  
    end if.

Check going inside when the room inside from the location is not a room and at least one adjacent room is inward (this is the guessing which way is in rule): 
	if more than one adjacent room is inward begin; 
		say "I'm not sure which way you mean. [exits]." instead;
    otherwise; 
        head to a random adjacent inward room; 
	do nothing instead;
    end if. 



Section - Exits

A room has some text called the exits text. The exits text of a room is usually " ".  

Requesting the exits text is an action applying to nothing. Understand "exits" as requesting the exits text. Report requesting the exits text: say "[exits]."    [ We can't make this out of world since it is called by room descriptions, and if an OOW action is called the rest of the action routine no longer runs correctly. --Actually, I'm not sure this is true. Isn't the "to say exits" all that's called?]
  
Definition: a direction is viable if the room it from the location is a room.   

Check going nowhere: say "[goingnowhere]" instead. To say goingnowhere: say "You can't see an exit in that direction. [exits].[actfast]".  
   
To say exits:   
	if the exits text of the location is not " " begin; say "[the exits text of the location]";   
	otherwise;  
		let count of exits be the number of viable directions; 
		if the count of exits is 0, say "You can't see anywhere to go from here";
		if the count of exits is 1, say "From here, the only way out is to [list of viable directions]"; 
		if the count of exits > 1, say "From here, the viable exits are to [list of viable directions]";  
	end if. 

  
Section - Injury  
  
A person can be wounded or hale. A person is usually hale.    [ For the player breaking leg subplot.]


Section - Scrawls

[ These are the secret messages in Progue's language that provide hints and backstory.]

Reading level is a kind of value. The reading levels are uneducated, vowel-knowing, and language-knowing. The player has a reading level. The reading level of the player is uneducated.

A scrawl is a kind of prop. Check taking a scrawl: say "It's just writing." instead. A scrawl has some text called the standard message. A scrawl has some text called the secret message.  show-secret-scrawl is a truth state that varies. A scrawl is either hint-based or story-based. A scrawl is usually hint-based. Understand "copy [a scrawl]" or "write [a scrawl]" as a mistake ("You don't have anything to copy it down with."). Understand "message/letters" as a scrawl.

Check examining a scrawl:
	let full-message be indexed text; 
	if show-secret-scrawl is true: 
		if secret message of noun is "", say "You touch your fingers to the message, but no additional words appear.[paragraph break]";
		else say "As you touch the message, faint glowing letters appear below it, appearing in slow waves of heat diffusion spreading from your hand.[paragraph break]";
		change full-message to "[standard message of noun][secret message of noun]";
	otherwise: 
		change full-message to "[standard message of noun]";
	if reading level of player is uneducated:
		say "The message is written in strange letters that you don't understand.";
	otherwise if reading level of player is vowel-knowing:
		say "You recognize some of the letters from the clockwork head in the treehouse, but the message is still mostly incomprehensible.";
	if reading level of player is not language-knowing:
		if screen reader mode is true:
			say "Though you can't make it out, you see that the message runs from right to left." instead;
		otherwise:
			say line break;
			designify full-message;
		say line break instead;
	otherwise:
		if noun is hint-based: 
			say "From what you learned from the clockwork head in the treehouse, you think you'd be able to [t]translate[x] the message, though it will take some time[one of].[paragraph break][as the parser]Many of the writings you can translate can be seen as hints to nearby puzzles. If you don't want to see any hints related to this part of the island, don't translate the messages just yet.[as normal][or].[stopping]" instead;
		else:
			try translating noun instead.

Check touching a scrawl:
	if night:
		now show-secret-scrawl is true;
		try examining noun instead;
	else:
		say "You rub your fingers along the message, but feel nothing unexpected." instead.
		
After going (this is the reset secret scrawl rule):
	now show-secret-scrawl is false;
	continue the action.

Understand "translate [a scrawl]" as translating. Translating is an action applying to one thing. Rule for supplying a missing noun when translating: let Phil be a random scrawl enclosed by the location; if Phil is not a scrawl, say "There's nothing here to translate." instead; change the noun to Phil.  

Carry out translating: 
	if the reading level of player is language-knowing:
		pass 30 minutes of time;
		say "[one of]Read right to left and phonetically, you are unsurprised to discover you can read the script. In all worlds you've wayfared to, while the writing always changes, the spoken language, strangely, remains the same.[paragraph break][or][stopping]The message reads:[line break]";
		say line break;
		if screen reader mode is false:
			designify standard message of noun;
			say "[paragraph break]Or, the way you're more used to reading it:[paragraph break]";
		say "'[standard message of noun][if show-secret-scrawl is true][i][secret message of noun][r][end if]'.";
	otherwise:
		say "You don't know enough about this language yet to be able to translate it.".


To designify (msg - an indexed text):
	let original be indexed text;
	let coded be indexed text;
	now original is msg;
	let line-length be 35;
	let line-ctr be 0;
	repeat with wd running from 1 to the number of punctuated words in original:
		if line-ctr + 1 + the number of characters in punctuated word number wd in original > line-length:
			let padspaces be indexed text;
			now padspaces is "";
			while line-length - line-ctr > 0:
				now padspaces is " [padspaces]";
				increase line-ctr by 1;
			now coded is "[line break][padspaces][coded]";
			now line-ctr is 0; 
		increase line-ctr by the number of characters in punctuated word number wd in original + 1;
		let tmpword be indexed text;
		let tmpword be punctuated word number wd in original;
		[ Alright, this is admittedly ridiculous and a real man would have just coded this in Inform 6. But this is faster than a more automated I7 version might be.]
		if the number of characters in tmpword is 12:
			now coded is " [character number 12 in tmpword][character number 11 in tmpword][character number 10 in tmpword][character number 9 in tmpword][character number 8 in tmpword][character number 7 in tmpword][character number 6 in tmpword][character number 5 in tmpword][character number 4 in tmpword][character number 3 in tmpword][character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 11:
			now coded is " [character number 11 in tmpword][character number 10 in tmpword][character number 9 in tmpword][character number 8 in tmpword][character number 7 in tmpword][character number 6 in tmpword][character number 5 in tmpword][character number 4 in tmpword][character number 3 in tmpword][character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 10:
			now coded is " [character number 10 in tmpword][character number 9 in tmpword][character number 8 in tmpword][character number 7 in tmpword][character number 6 in tmpword][character number 5 in tmpword][character number 4 in tmpword][character number 3 in tmpword][character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 9:
			now coded is " [character number 9 in tmpword][character number 8 in tmpword][character number 7 in tmpword][character number 6 in tmpword][character number 5 in tmpword][character number 4 in tmpword][character number 3 in tmpword][character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 8:
			now coded is " [character number 8 in tmpword][character number 7 in tmpword][character number 6 in tmpword][character number 5 in tmpword][character number 4 in tmpword][character number 3 in tmpword][character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 7:
			now coded is " [character number 7 in tmpword][character number 6 in tmpword][character number 5 in tmpword][character number 4 in tmpword][character number 3 in tmpword][character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 6:
			now coded is " [character number 6 in tmpword][character number 5 in tmpword][character number 4 in tmpword][character number 3 in tmpword][character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 5:
			now coded is " [character number 5 in tmpword][character number 4 in tmpword][character number 3 in tmpword][character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 4:
			now coded is " [character number 4 in tmpword][character number 3 in tmpword][character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 3:
			now coded is " [character number 3 in tmpword][character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 2:
			now coded is " [character number 2 in tmpword][character number 1 in tmpword][coded]";
		else if the number of characters in tmpword is 1:
			now coded is " [character number 1 in tmpword][coded]";
	let padspaces2 be indexed text;
	while line-length - line-ctr > 0:
		now padspaces2 is " [padspaces2]";
		increase line-ctr by 1;
	now coded is "[padspaces2][coded]"; 
	if the reading level of player is vowel-knowing: [obscure everything except the vowels]
		replace the regular expression "<BCDFGHJKMNPQRSTVWXYZbcdfghjkmnpqrstvwxyz>" in coded with "-";
	otherwise if reading level of player is uneducated:
		replace the regular expression "<ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijiklmnopqrstuvwxyz>" in coded with "-";
	replace the regular expression " (<,?!.>) " in coded with "  \1";
	replace the regular expression " (<[quotation mark][apostrophe]>) " in coded with "  \1";
	say "[fixed letter spacing][coded][variable letter spacing]".

To decide which indexed text is the reverse of (wd - an indexed text):
	let candidate be indexed text;
	repeat with lt running from 1 to the number of characters in wd:
		now candidate is "[character number lt in wd][candidate]";
	decide on candidate.    
 

Section - Passwords

  
The tree-password is indexed text that varies. The tree-password is "not.hing". The rebel-password is indexed text that varies. The rebel-password is "noth.ing". The machinery-password is indexed text that varies. The machinery-password is "no.thing".  To decide whether tree-password is set: if tree-password is not "not.hing", decide yes; decide no. To decide whether rebel-password is set: if rebel-password is not "noth.ing", decide yes; decide no. To decide whether tree-password is unset: if tree-password is set, decide no; decide yes. To decide whether rebel-password is unset: if rebel-password is set, decide no; decide yes. 
 
Defining a password is an action applying to one thing and one topic. Understand "setkey [any thing] [text]" as defining a password.         

Rule for asking which do you mean while defining a password: do nothing; now disambiguation_flag is true. [ If we type a word that matches an object, the parser tries to disambiguate.]
 
Passwords is a thing. [ For debugging. ]  
 
To decide whether (passage - an indexed text) is blank: 
	if passage matches the text "no.thing", decide yes; decide no.  
	
To decide whether (passage - an indexed text) is not blank: if passage is blank, decide no; decide yes.     

[ Check defining a password:     
	if not valid player password, do nothing instead.]   
	 
To decide whether (trial - indexed text) is an invalid password:  
	if passwords is being debugged, say "// Passwords: deciding whether [trial] is an invalid password.";   
	if a meta command matches trial, decide yes;    
	if the number of characters in trial is less than 2 begin;  
		speak as the parser "The word you choose must be more than 1 character."; 
		decide yes;    
	otherwise if the number of characters in trial is greater than 15;
		speak as the parser "The word you choose must have no more than 15 characters.";
		decide yes;
	otherwise if the number of words in trial is greater than 1;
		speak as the parser "You must choose a single word."; 
		decide yes;  
	otherwise if final release mode is false and trial exactly matches the text "tree"; 
		speak as the parser "{Since TREE is a testing command, you can't use that as a password in the beta.}";
		decide yes;  
	end if;
	decide no. 

To decide whether a meta command matches (trial - indexed text) :
	if trial exactly matches the text "undo" or trial exactly matches the text "save" or trial exactly matches the text "restore" or trial exactly matches the text "oops"  or trial exactly matches the text "quit" or trial exactly matches the text "restart":
		decide yes;
	decide no.

[ A procedural rule when defining a password: ignore the basic accessibility rule. ] 



[AAR4]The my-basic-accessibility rule is listed instead of The basic accessibility rule in the action-processing rulebook. This is the my-basic-accessibility rule: if not defining a password and not discussing and not exhausting and not remembering and not examining by name, abide by the basic accessibility rule.

tree1pw is a thing. verjpw is a thing. machpw is a thing.

Carry out defining a password:	
	if passwords is being debugged, say "// Passwords: Carry out defining a password for [noun].";	
	if noun is tree1pw begin;
		change the tree-password to the topic understood;
		rule succeeds;  
	otherwise if noun is Verjpw;   
		change the rebel-password to the topic understood;
		rule succeeds;
	otherwise if noun is machpw;
		change the machinery-password to the topic understood;
		rule succeeds;  
	otherwise; 
		if passwords is being debugged, say "// Passwords: ERROR: invalid password destination specified.";  
	end if.

[ Testers often tried to type their passwords in different contexts, such as the Echo Chamber or while calibrating the seiver, so we go to some lengths to understand the passwords typed alone or after "say." ] 
	
First smarter parser rule (this is the understand passwords rule):
	if input contains the tree-password or input contains the rebel-password:
		now the rejected command is "try#pw";
		rule succeeds.
		
Password-trying is an action applying to nothing. Understand "try#pw" as password-trying. 

Check password-trying:
	if location is Echo Chamber, say "You say the word and it echoes and distorts weirdly through the cave, the strange formations twisting the syllables around into different orders and shapes, but as the sounds slowly die away nothing further seems to happen." instead.
	
Carry out password-trying: 
	say "You speak the word aloud, but nothing happens.".
	
The Smarter Parser trying harder to understand rule is not listed in any rulebook. Before printing a parser error (this is the Blue Lacuna trying harder to understand rule): 
	now the original rejected command is the player's command;
	now the rejected command is the player's command; 
	follow the Smarter Parser rules;
	if the rule succeeded:
		if rejected command is not original rejected command:
			unless rejected command is "try#pw", follow the announcing new command rule;
			now sp reparse flag is true;
	otherwise if the rule failed:
		now suppress parser error is true.
		
	
Section - Visibility

Verynearing relates various views to various rooms. Nearing relates various views to various rooms. Faring relates various views to various rooms. Veryfaring relates various views to various rooms.  

The verb to be very near implies the verynearing relation. The verb to be near implies the nearing relation. The verb to be far from implies the faring relation. The verb to be very far from implies the veryfaring relation.

Check examining a view: 
	if noun is very near the location or noun is near the location or noun is far from the location or noun is very far from the location, continue the action; 
	otherwise say "You don't have a good view of [the noun] from here." instead.   

To say distance of (obj - a view): 
	if obj is very near location, say "quite close by";
	if obj is near location, say "a ways off";
	if obj is far from location, say "off in the distance";
	if obj is very far from location, say "hazy blue with distance".








Part - Commands

Chapter - Meta Commands

Section - Tutorial Mode

Tutorial mode is a device. Tutorial mode is switched on. 

Tutorial-switching is an action out of world applying to nothing. Understand "tutorial" as tutorial-switching. Understand "tutorial [text]" as a mistake ("[as the parser]Type TUTORIAL to toggle tutorial mode on and off[as normal].").

Carry out tutorial-switching:
	if tutorial mode is switched off:
		if location is not regionally in Homeworld:
			speak as the parser "Tutorial mode is no longer available at this stage of the story." instead;
		speak as the parser "Tutorial mode is now on.";
	otherwise:
		speak as the parser "Tutorial mode is now off.";
	follow the tutorial toggling rule.

This is the tutorial toggling rule: if tutorial mode is switched on, now tutorial mode is switched off; else now tutorial mode is switched on.


Section - Requesting the score

Understand the command "score" as something new. Understand the command "notify" as something new.

Understand "score" as requesting the score. 

Check requesting the score:
	say "You've made it to chapter [current chapter in words] (out of ten)";
	if current chapter > 1, say " in [if puzzle mode]puzzle[else]story[end if] mode";
	say ", exploring [the number of explored regions in words] region[s] (out of [the number of regions in words])";
	if met_progue is true:
		say ". You've met [the Progue], who [if affinity of Progue > 0]likes you[else]dislikes you[end if] ([if affinity of Progue > 0]+[end if][affinity of Progue]), [if submission of Progue > 0]feels submissive towards you[else]feels dominant towards you[end if] ([if submission of Progue > 0]+[end if][submission of Progue]), and ";
		if paternalism of Progue > 1:
			say "feels paternal towards you (+[paternalism of Progue])";
		else if romance of Progue > 1:
			say "feels romantic towards you (+[romance of Progue])";
		else if romance of Progue < 0:
			say "feels bitter towards you ([romance of Progue])";
		else:
			say "feels neither particularly paternal (+[paternalism of Progue]) nor romantic (+[romance of Progue]) towards you";
	if current chapter > 1, say ". You've shown [if rume-tracker <= -10]almost no[else if Rume-tracker < 0]a little[else if Rume-tracker < 10]some[else]significant[end if] interest in finding a way back to Rume[if player is wounded], you've injured yourself[end if][if time for excitement], and based on my best guess, I'd say you're a little bored right now[end if]";
	say ". And never forget that at first you chose [if we chose love]love[else]art[end if]." instead.

Definition: a region is explored: if the number of visited rooms regionally in it is at least 1, yes; no.
	
Understand "notify" as switching score notification. Switching score notification is an action out of world applying to nothing. Understand "notify on" or "notify off" as a mistake ("[as the parser]You can simply type NOTIFY to toggle stats mode[as normal].").

Check switching score notification:
	if stats mode is false:
		now stats mode is true;
		say "[as the parser]Stats mode turned on[as normal]." instead;
	else:
		now stats mode is false;
		say "[as the parser]Stats mode turned off[as normal]." instead.


Section - xyzzy

[ A little Easter egg.]

Xyzzying is an action out of world applying to nothing. Understand "xyzzy" as xyzzying. Carry out xyzzying: say "Here are some of the albums that were on constant play during my writing of Blue Lacuna, along with, in some cases, which sequence they helped shape. These albums can perhaps be thought of as the unofficial soundtrack:

Gyorgi Ligeti, Requiem[line break] 
Lisa Gerrard, The Silver Tree -- the Windsigh[line break]
Ryan Miller, Tim Larkin and Jack Wall, soundtracks to the Myst games -- exploring[line break]
Michael Stearns, The Lost World -- the eastern forest[line break]
Colleen, The Golden Morning Breaks -- Phoebe and Lethe[line break]
amiina, Animamina and Kurr -- Phoebe and Lethe[line break]
Kenji Kawai, Ghost In The Shell Soundtrack -- The Great Philosopher[line break]"; say "Robert Rich, Gaudi / Below Zero -- The Heart of the Forest[line break]
Jakob Draminsky Højmark, En Landsoldats Dagbog -- Progue's Despair[line break]
Jocelyn Pook, various -- painting[line break]
Jeremy Soule, Game Soundtracks[line break]
Michael Andrews, Donnie Darko Original Score -- Progue's Playfulness[line break]
Aphex Twin, Melodies From Mars -- Progue[line break]
Eluvium, various albums -- the dreams

And other albums which are not tied to particular moments but which nevertheless received heavy play during the writing:

Geinoh Yamashirogumi, Akira Soundtrack / Ecophony Gaia[line break]
[xyzzy2]". To say xyzzy2: say "Brian Tyler, Children of Dune[line break]
Matt Uelmen, Diablo II Soundtrack[line break]
Leon Willet, Dreamfall Soundtrack[line break]
Philip Glass, Koyaanisquatsi[line break]
Paul Ruskay, Homeworld Soundtrack[line break]
Juno Reactor, Labyrinth[line break]
Sigur Rós, various albums[line break]
Lemon Demon[line break]
Vangelis, various albums[line break]
Clint Mansell, The Fountain[line break]
and the entire Jonathan Coulton catalog.". 


Understand "things" as thing-listing. Thing-listing is an action out of world applying to nothing. Carry out thing-listing: say "Nearby [is-are the list of mentionable things]." 


   

 

Chapter - Emphasized Keyword Processing
  
[  
Precedence rules: 

Mistakes always take precedence over non-mistakes.

A more specific grammar line takes precedence:
  "a door" is more specific than "a thing"
  "a robust thing" is more specific than "a thing"
  "a thing" is more specific than "any thing"

Earlier lines of equal specificity take precedence.

Ergo, the following lines are in order of precendence.
]       
   
Understand "[a metalike prop]" as examining by name.    
         
Understand "[a metalike thing]" as examining by name. [ If we need to discuss a thing, add a check rule (see distant-tree3 in Lacuna). ] [This is distinct so that takeable things will be selected before background objects without disambiguation questions. Players can always "x something" to disambiguate as normal.]               
        
Understand "discuss [any metalike beat]" or "[any metalike beat]" as discussing.                 
            
Understand "[any landmarkable room]" or "go [any landmarkable room]" or "go to [any landmarkable room]" or "go back to [any landmarkable room]" as landmark-going. Definition: a room is landmarkable if it is landmarked and it is visited.     

Understand "go to [a direction]" as going. Understand "go in to [something]" as entering. Understand "go down [something]" as entering. Understand "go up [something]" as entering.
       
Understand "[any seen thing]" as remembering. [ See Remembering for definition of seen.]  
   
Understand "examine [an unimplemented door]" or "x [an unimplemented door]" as a mistake ("[as the parser]Most of the time, exits are more useful for moving towards than examining more closely. In this case, there are no further interesting details to be seen.[as normal]").      
      
Definition: a thing is metalike if 1 is 1.    

A door can be either implemented or unimplemented. A door is usually unimplemented.     

Chapter - Synonyms and New Grammar

Understand the command "nothing" as "listen". Understand "say nothing" as listening. 

Understand "look [something]" as examining. 

Understand the command "bring" or "grab" as "take".

Understand the command "see" as "look".

Understand the command "place" as "put".

Understand "wayfarer" as yourself when last beat is silence.  
 
Understand the command "shift" as something new. Understand the command "cover" as something new. 
 
Check taking a person: try touching noun instead.

Check swearing mildly: try swearing obscenely instead.    

Understand "sit [something]" or "sit at [something]" as entering. Does the player mean entering a supporter: it is likely. 

Understand the command "descend" or "ascend" as "climb". 

The can't push what's fixed in place rule is not listed in any rulebook.         

Understand the command "raise" or "lift" as "pull". Understand the command "lower" [or "poke"] as "push". 
 
Understand the command "catch" or "untie" as "take". Understand the command "spin" as "turn".  
 
Understand the command "wave" as something new. Understand the command "shed" as something new. Understand the command "tree" as something new. Understand the command "pay" as something new. Understand the command "buy" as something new.    

Understand "add [something] to [something]" as putting it on.    
 
sleeponing is an action applying to one thing. Understand "sleep on/in [something enterable]" or "rest on/in [something enterable]" or "lie down on/in [something enterable]" or "lay down on/in [something enterable]" or "lay on/in [something enterable]" or "lie on/in [something enterable]" as sleeponing. Check sleeponing: if it is before 5:01 AM or it is after 6:59 PM, try entering noun; try sleeping instead.            
 
Understand the command "light" as something new.       
 
Understand "climb [a direction]" as going. Understand "climb into/in/on/through [something]" as entering.

[ Understand "climb [a direction] [something]" as overly-specific-going. Understand "climb [something] [a direction]" as overly-specific-going (with nouns reversed). Overly-specific-going is an action applying to two things. Carry out overly-specific-going: try going noun instead. ][ Doesn't work because of issues parsing directions.]   
 
Understand "get in" as entering. Rule for supplying a missing noun when entering: if an enterable supporter (called platform) is enclosed by the location begin; change the noun to platform; otherwise if an enterable container (called platform) is enclosed by the location; change the noun to platform; otherwise; speak as the parser "I'm not sure what you wanted to do that to."; end if.  

Understand "get out of/from [something enterable]" or "exit [something enterable]" as specific-exiting.  Specific-exiting is an action applying to one thing. Carry out specific-exiting: try exiting.    

Understand "off" as exiting.
 
Understand "go to bed" or "go to sleep" or "lie down" as sleeping.         
 
Understand the command "cross" as something new. 

Understand "sit down" as entering. Understand "sit down on [something]" as entering.  

[ Understand "drink from [something]" as tasting. ][For some reason, this doesn't work.]

Check looking (this is the differentiate player-requested looks rule):
	let pcmd be indexed text; 
	let pcmd be the player's command;
	if pcmd exactly matches the text "l" or pcmd exactly matches the text "look", now player-looking is true. 
	
Before reading a command (this is the reset player-looking rule): now player-looking is false. player-looking is a truth state that varies.

Understand "extinguish [something]" or "douse [something]" or "blow [something]" as switching off.       
  
Understand the command "fix" as something new.  

Understand the command "short" as something new. Understand the command "long" as something new.     
  
Understand the command "explore" as "go". Understand the command "find" as "examine".  

Understand the command "place" as something new.  



Chapter - Player Commands
     


Section - Wayfaring and Painting

Understand "wayfare" as wayfaring. Wayfaring is an action applying to nothing.    

Check wayfaring: say "You wayfare by painting." instead.   

Vague painting is an action applying to nothing. Understand "paint" or "draw" or "work" or "make" or "finish" as "[paintword]". Understand "[paintword]" or "answer call" or "answer the call" as vague painting. 
  
Painting is an action applying to one thing. Understand "use [lacuna-canvas]" or "use [paintbrushes]" or "[paintword] with [paintbrushes]" or "[paintword] [lacuna-canvas]" or "[paintword] on [lacuna-canvas]" as painting.   
 
Carry out painting: say "[cantpainthere].". Carry out vague painting: say "[cantpainthere].". To say cantpainthere: say "There's nothing here to paint with[if location is regionally in Homeworld]; you must get to your studio[end if]".  

Section - Using

Understand "use [an edible thing]" as eating.   

Understand "use [a wearable thing]" as wearing.

Understand "use [a closed openable container]" as opening. Understand "use [an open openable container]" as closing.

Understand "use [a switched off device]" as switching on. Understand "flip [something]" as switching on. 
 
Understand "use [something]" as using. Using is an action applying to one thing. Carry out using: say "[as the parser]You will have to be more specific about your intentions[as normal]."

Understand "use [a door]" as opening. Understand "use [an open door]" as entering.

Understand "use [something enterable]" as entering.

Section - Leaping and Crossing

Understand "jump in/into/across/over [something]" or "dive in/into [something]" as leaping. Understand "jump off/from [something]" or "jump off/out of [something]" as leaping. Understand "jump on/onto [something]" as entering.

Leaping is an action applying to one thing.  
 
Carry out leaping:
	if noun is not enterable, try jumping instead;
	try entering noun.
	
Understand "cross [something]" or "cross over [something]" as crossing. Understand "cross" as crossing.
 
Crossing is an action applying to one thing.

Carry out crossing: say "That's not something you can cross."


Section - Going Back

The former location is a room that varies.      
  
First carry out going rule (this is the update the former location rule):   
    change the former location to the location.    

Understand "go back" as retreating. Understand "back" or "return" or "retreat" as retreating.   
  
Retreating is an action applying to nothing. 
 
Check retreating when the former location is the location: say "You haven't gone anywhere yet." instead.

Carry out retreating:      
	if former location is an adjacent room, head to former location;
	otherwise say "You can't see an open way back."   


Section - Following
  
Following is an action applying to one thing. Understand "follow [any seen thing]" or "approach [any seen thing]" or "go to/towards/after [any seen thing]" or "go [any seen thing]" or "walk to/towards/after [any seen thing]" or "move to/towards [any seen thing]" as following. 
 
Check following:   
	if noun is off-stage and noun is distant-progue, try following Progue instead;
	if noun is off-stage, say "[as the parser]You can't approach or follow that noun, either because it's not important, no longer relevant, or I misunderstood the noun.[as normal]" instead;
	if noun is a heavenly body, say "Would that you could." instead;
	if noun is distant-rayfish and location is not Ocean Waters:
		let way be the best route from location to Ocean Waters;
		if way is a direction:
			try going way instead;
		else:
			say "[cantfollowmsg]" instead;
	if noun is not a backdrop and noun is enclosed by location, say "But [the noun] [is-are of noun] right here." instead; 
	if noun is an adjacent room, head to noun instead; 
[	if noun is a landmarked room, try wordgoing noun instead;]
	if noun is a view and the base room of noun is not Unroom:
		if base room of noun is location, say "You're already there." instead;
		let way be the best route from location to base room of noun;
		if way is a direction:
			unless the room way from location is base room of noun, say "(moving one area towards that destination)[command clarification break]";
			try going way instead; 
		else:
			say "[cantfollowmsg]" instead;
	if noun is old path: 
		if location is South Beach:  
			try going southeast instead; 
		if location is Sloping Meadow:
			try going west instead;  
		if location is Big Tree:
			try going north instead; 
		try requesting the exits text instead;
	if noun is bridge:
		if location is Volcano Floor, try going northwest instead;
		if location is Sloping Meadow, try going east instead;
		if location is Rockslide, try going southwest instead;
		if location is Jumble, try going southeast instead;
	if ( location is regionally in Homeworld and noun is not regionally in Homeworld ) or ( location is regionally in Lacuna and noun is not regionally in Lacuna ) or ( location is regionally in Rebelworld and noun is not regionally in Rebelworld ) or ( location is regionally in Treeworld and noun is not regionally in Treeworld ) or ( location is regionally in Dreamlands and noun is not regionally in Dreamlands ) , say "You wish you knew how to get there from here." instead;   
	if noun is a person and noun is enclosed by location:
		say "[The noun] [is-are] still here." instead;	
	if noun is a person and location of noun is adjacent to location:
		head to location of noun; 
		do nothing instead;
		[ let way be the best route from location to location of noun;
		if way is a direction, try going way instead;
		else say "[cantfollowmsg]" instead;]
	if noun is a room:
		let way be the best route from location to noun;
		if way is a direction:
			unless the room way from location is location of noun:
				say "(moving one area towards that destination)[command clarification break]";
			try going way instead;
		else: 
			say "[cantfollowmsg]" instead;  
	if noun is off-stage: 
		say "[cantfollowmsg]" instead; 
	let way be the best route from location to location of noun;
	if way is a direction:
		unless the room way from location is location of noun:
			say "(moving one area towards that destination)[command clarification break]";
			if noun is distant-Progue or noun is Progue, move distant-Progue to the room way from location;
		try going way instead;
	say "[cantfollowmsg]" instead.

To say cantfollowmsg: say "You'll have to work out how to get there on your own.[actfast]". 

	  



[ After deciding the scope of the player while following: repeat with locale running through adjacent rooms begin; place locale in scope; end repeat. ]      
  
The my-reach-inside-rooms rule is listed instead of the can't reach inside rooms rule in the reaching inside rulebook. This is the my-reach-inside-rooms rule: if not following and not remembering, abide by the can't reach inside rooms rule.

Carry out following:  
	do nothing.




Section - Navigate by room names

[Speed tests showed that the below method was significantly faster than using Inform's built-in pathfinding, which became very significant when travelling via landmark, where both Progue and the player would be doing this calculation multiple times per move.]

To head to (destination - a room):
	if the room north of location is destination begin; try going north;
	else if the room northeast of location is destination; try going northeast;  
	else if the room east of location is destination; try going east;
	else if the room southeast of location is destination; try going southeast;
	else if the room south of location is destination; try going south;
	else if the room southwest of location is destination; try going southwest;
	else if the room west of location is destination; try going west;
	else if the room northwest of location is destination; try going northwest;		
	else if destination is above location; try going up;
	else if destination is below location; try going down;
	else if the room inside location is destination; try going inside;
	else if the room outside from location is destination; try going outside;
	else; try going north;
	end if.

Rule for clarifying the parser's choice of a room: do nothing instead. 



Section - Type nouns alone to examine them


Examining by name is an action applying to one thing. 

Carry out examining by name: try examining noun.



Section - Going by Landmark

A room can be landmarked or unlandmarked. A room is usually unlandmarked. 
 
A room has some text called the landmark name. The landmark name of a room is usually "null".     

The last landmark turn is a number that varies. The last landmark turn is 0.  [ This number stores the turn count on which we last discovered a new landmark, useful for the drama manager.] 

Understand "landmark" or "landmarks" as landmark-listing. Landmark-listing is an action applying to nothing.
 
we-are-landmark-going is a truth state that varies.
		
First report going to an unvisited landmarked room: say "(new [d]landmark[x] discovered)[command clarification break]"; now last landmark turn is turn count; continue the action.  
 
After reading a command: 
	if the player's command matches "go" or the player's command matches "walk", replace the player's command with "landmark";
	if the player's command matches "lie down" or the player's command matches "lay down" or the player's command matches "go to sleep", replace the player's command with "sleep". 

Definition: a room is unadjacent if it is not the location and it is not adjacent to the location.   

Landmark-going is an action applying to one thing.   
 
Check landmark-going:
	if noun is location, say "You're already here." instead;
	if noun is adjacent to location, head to noun instead.

To decide whether ready to landmark-go: 
	if ( noun is regionally in Homeworld and player is not regionally in Homeworld ) or ( noun is regionally in Lacuna and player is not regionally in Lacuna ) or ( noun is regionally in Rebelworld and player is not regionally in Rebelworld ) or ( noun is regionally in Treeworld and player is not regionally in Treeworld ) begin;
		say "That's in a whole other world[if noun is regionally in Homeworld]... one you can never return to[end if].";
		decide no; 
	end if;  
	if the holder of the player is not a room, try exiting;
	if location is not noun begin;
		say "You head towards ";    
		if the prose name of noun is "NULL", say "[the noun].";
		otherwise say "[the prose name of noun]."; 
	end if;
	truncate travelogue to 0 entries;   
	decide yes.  
 
Travelogue is a list of objects that varies.   

To clean up landmark-go, silently:   
	if we-are-landmark-going is false, stop; [ If this has been set by hand, it's assumed we've done all this already.]
	now we-are-landmark-going is false; 
	remove location from travelogue, if present;
	if not silently:
		if location is not noun, say "(Before you arrive, you were distracted"; 
		if the number of entries in travelogue is at least 1:
			if location is noun, say "On your way, you pass through ";
			otherwise say ", after passing through "; 
			let ctr be 1; 
			repeat with loc running through travelogue:
				say prose name of loc;
				if ctr is ( number of entries in travelogue - 1 ) :
					say " and "; 
				otherwise if ctr < number of entries in travelogue:
					say ", "; 
				increase ctr by 1;
		say "[if location is not noun].)[otherwise if the number of entries in travelogue is at least 1].[end if]";
	say "[line break][bold type][location][roman type][line break][description of location][line break]". [ We do it this way so we don't spend a turn looking, which would prevent us from immediately reacting to something that stopped us.]  
	  
Carry out landmark-going:  
	if ready to landmark-go begin; 
	now we-are-landmark-going is true;
	while location is not noun and we-are-landmark-going is true begin;
		let aim be the best route from the location to noun, using doors; 
		let target be the room aim from location;  
		if aim is not a direction or target is not a room begin;
			say "You can't seem to progress any farther ([aim]).";
			stop; 
		end if;  
    		try silently going aim; 
		if location is not target begin; 
			clean up landmark-go;
			stop;
		otherwise;
			add location to travelogue;
		end if;
		follow the turn sequence rules; [ Why? well, for Progue to move. ]
	end while;  
	clean up landmark-go;
	end if. 


Section - Swimming

 Swimming in is an action applying to one visible thing. Understand "swim in [something]" or "wade in [something]" as swimming in.  
 
Carry out swimming in: say "You don't see a good place to swim here."

Vague swimming is an action applying to nothing. Understand "swim" or "go swimming" as vague swimming.

Carry out vague swimming: say "You don't see a good place to swim here."   
 
Section - Digging

[ This is something people often try, so we implement it. It's also used in the Rebelworld segment. ]

Digging is an action applying to nothing. Understand "dig" as digging. Specific digging is an action applying to one topic. Understand "dig [text]" as specific digging. Check specific digging: try digging instead.  

Carry out digging:
	if location is regionally in Beachfront begin; say "You dig a little in the sand with your hands, down to a cooler layer of wetter beach, but find little of interest.";
	otherwise if location is regionally in Tiderooms or location is regionally in Marshlands; say "It's too wet to dig here."; 
	otherwise if location is Rockslide; say "It's too rocky to dig here.";
	otherwise if location is Hive Room or location is Edge of Ravine or location is Viewpoint or location is regionally in Rain Forest; say "You dig a little through the dirt, but it's not very fun, clean, or effective with just your bare hands.";
	otherwise if location is Sloping Meadow or location is Crater Pond or location is Lawn or location is Observatory Exterior; say "The grass is too hardy to dig through with just your bare hands.";  
	otherwise if location is regionally in Frozen Hell or location is Chasm Edge or location is Rise; say "Through hardened lava rock? Not likely.";  
	otherwise if location is Ledge; say "Through rock? Not likely."; 
	otherwise; say "You don't really have the proper tools or energy to dig here.";
	end if.     
 
Section - Knocking

Knocking is an action applying to one visible thing. Understand "knock [something]" or "knock on [something]" as knocking. Carry out knocking: say "Nothing happens." Vague knocking is an action applying to nothing. Understand "knock" as vague knocking. Carry out vague knocking: speak as the parser "You'll have to specify what you want to knock."  

Section - Taking Shelter From

Taking shelter from is an action applying to one topic. Understand "take shelter [text]" or "hide under [text]" as taking shelter from. Check taking shelter from: try taking shelter in general. Taking shelter in general is an action applying to nothing. Understand "take shelter" or "hide" as taking shelter in general.

Check taking shelter in general (this is the can't take shelter when no reason rule): if weather state is not raining, say "There's nothing you need to take shelter from right now." instead.

Report taking shelter in general:
	if the location contains a setpiece, say "You huddle in the leeward side of [the random setpiece in the location], managing to avoid most of the downpour.";
	otherwise say "You take shelter as best you can from the rain.".
 
Section - Help

Understand "help [someone]" or "save [someone]" as a mistake ("[if noun is Progue and psyche of Progue is emotional]You pull the blankets closer around him and make him as comfortable as you can, but otherwise there's not much else you can do[else if current episode is Water Works][as the parser]You'll have to try something specific[as normal][else]You're not sure how to help [it-them of noun][end if]."). 


Section - Mourning

Understand "cry" or "weep" or "mourn" or "grieve" or "regret" or "repent" or "pray" or "lament" as "[mourning word]". Understand "[mourning word]" or "think of/about Rume" as mourning. Mourning is an action applying to nothing. Understand "[mourning word] [text]" as a mistake ("[mourning-text]").
 
Carry out mourning: say mourning-text.

To say mourning-text:
	if current chapter is 1 begin; 
		say "You feel only the mounting dread of impending loss. The loss itself is not yet real.";    
	otherwise if current chapter <= 3; 
		say "[one of][missRumelots][or][stopping]"; 
		if the player's command includes "cry" or the player's command includes "weep", say "Tears fill your eyes and then trickle down your cheek, slow, wet. ";      
		if the player's command includes "think" or the player's command includes "mourn" or the player's command includes "grieve", say "You sink to your knees and clutch yourself tightly as the pain of your loss rolls through you. ";
		say "Dread finality fills you, tinged with red regret, and you know your loss all over again. Finally, you recover yourself. Rume is gone, and you must move on.";  
	otherwise;
		say "You remember Rume, but the memory is only a dull ache that your consciousness will not, for the moment, allow you to prod."; 
	end if. To say missRumelots: miss Rume a lot.
	 
Section - Shaking

Understand "shake [something]" as shaking. Shaking is an action applying to one thing.  

Carry out shaking: try pushing noun instead.

Section - Tasting
  
[ We make no distinction between eat, drink, and taste, and as tasting does not require the object to be held, we route them all into that action.]

Understand the command "eat" as something new. Understand the command "drink" as something new. Understand "eat [something]" or "drink [something]" as tasting.      Understand the command "lick" as "taste". 


  

Section - Extended Waiting

[ Two forms of waiting which are often tried by players in a game with a day/night system-- waiting for a certain time and waiting for a certain *amount* of time. First some utility functions:]

To decide which time is the time corresponding to (moment - an interval):
	if moment is dawn, decide on 4:01 AM;
	if moment is sunrise, decide on 5:01 AM;
	if moment is morning, decide on 5:10 AM;
	if moment is midmorning, decide on 7:01 AM;
	if moment is midday, decide on 10:31 AM;
	if moment is afternoon, decide on 2:31 PM;
	if moment is evening, decide on 5:31 PM;
	if moment is sunset, decide on 7:01 PM;
	if moment is twilight, decide on 7:20 PM;
	if moment is night, decide on 8:01 PM; 
	decide on 12:01 PM. 

To decide what number is the number of minutes between (starttime - a time) and (endtime - a time):
	[ The math goes wrong if we do this too fast for some reason...]
	let startt be the hours part of starttime;
	if startt > 12, decrease startt by 12;
	now startt is startt * 60;
	if starttime is after 12:59 PM and starttime is before 12:00 AM, now startt is startt + 720;
	increase startt by the minutes part of starttime;
	let endt be the hours part of endtime;
	if endt > 12, decrease endt by 12;
	now endt is endt * 60;
	if endtime is after 12:59 PM and endtime is before 12:00 AM, now endt is endt + 720;
	increase endt by the minutes part of endtime;
	let finalt be endt - startt;
	if finalt < 0, increase finalt by 720;
	decide on finalt.

[ Map a command like "wait till sunset" to waiting for a specific amount of time.]

Understand "wait til/till/until/for [an interval]" as waiting until. Waiting until is an action applying to one interval. 

Check waiting until:
	if location is not regionally in Lacuna, say "[if location is regionally in Dreamlands]You're not sure whether time passes or not[else]There's too much at stake to just wait around right now[end if]." instead.
	
Check waiting until:
	if current interval is the interval understood, say "It's [current interval] now." instead.
	
Check waiting until:
	if the interval understood is low tide or the interval understood is high tide, say "You don't know the tides here well enough to be sure when that might be, but you can try waiting for a certain number of hours, or until a certain time of day." instead.

Carry out waiting until:
	let target time be the time corresponding to the interval understood;
	try waiting for ( 12:01 AM + the number of minutes between the time of day and target time minutes - 1 minute ) instead.
	
[ Now understand waiting for a specific amount of time. Because of the way episodes are triggered, we have to be careful not to skip over things that should be happening at certain times.]

Understand "wait for [a time period]" or "wait [a time period]" as waiting for. Waiting for is an action applying to one time.

Check waiting for:
	if location is not regionally in Lacuna, say "[if location is regionally in Dreamlands]You're not sure whether time passes or not[else]There's too much at stake to just wait around right now[end if]." instead.

Carry out waiting for: 
	if the heavens are being debugged, say "**waiting for [the time understood]**";
	if the time understood > 8 hours, say "You can't just wait around for that long." instead;
	if the time understood < 5 minutes, speak as the parser "In the future, to wait for just a few minutes you can simply type WAIT." instead;
	if current interval is night, say "If you try to wait that long, you're likely to fall asleep. Better find a good spot for that." instead; 
	if an attentive other person is enclosed by location, say "That would be rude to do while you're in the middle of this discussion." instead;
	if an episode is playing, say "You find you are too keyed up just now to wait around." instead;	
	let old-time be the time of day;
	let old-interval be current interval;
	let new-time be the time understood;
	if ambience_on is 1, say "You pace restlessly as the time passes[time-of-day-bit]."; 
	let totaltime be new-time;
	increase totaltime by the time of day;
	if the heavens are being debugged, say "**about to test 'while the time of day [the time of day] < the time of day + new-time ([new-time]) (which is [totaltime]) and an attentive other person is not enclosed by location ([if an attentive other person is not enclosed by location]yes[else]no[end if])'**";
	while the time of day < totaltime and the number of attentive people is 0 begin; 
		if the heavens are being debugged, say "**yes**";
		increase the time of day by new-time; [ This is temporary; we'll set it back and use the proper "pass x minutes" method in a moment.]
		if the heavens are being debugged, say "%[the time of day]%%[current interval]%"; 
		update interval;
		change the time of day to old-time;
		if the heavens are being debugged, say "**about to test whether current interval [current interval] > old-interval [old-interval]";
		if current interval > old-interval or ( current interval is night and current interval < old-interval ) begin; [ if the total amount of waiting time remaining switches us to a new interval, we need to change so that we're only advancing one interval's worth of time. This is because certain events may be triggered by the transition to a certain interval, so we need to give them a change to fire and potentially interrupt the waiting.]
			if the heavens are being debugged, say "**yes**";
			if old-interval is night, let tmptime be the time corresponding to dawn;
			else let tmptime be the time corresponding to the interval after old-interval;
			if the heavens are being debugged, say "**old-time: [old-time]; tmptime: [tmptime]; mins: [the number of minutes between old-time and tmptime]; old-interval: [old-interval]; current interval: [current interval]**";
			pass ( the number of minutes between old-time and tmptime ) minutes of time;
			if old-interval is night, now old-interval is dawn;
			else now old-interval is the interval after old-interval;
			if the heavens are being debugged, say "**decreasing new-time [new-time] by [the number of minutes between old-time and tmptime] minutes --> ";
			decrease new-time by ( the number of minutes between old-time and tmptime ) minutes;
			if the heavens are being debugged, say "[new-time] (-3 mins)**";
			now old-time is the time of day;
		else;
			if the heavens are being debugged, say "**no**";
			decrease new-time by ( the number of minutes between the time of day and totaltime ) minutes;			
			pass ( the number of minutes between the time of day and totaltime ) minutes of time;		
		end if; 
		decrease new-time by 3 minutes;	[ to account for the time that will pass when we follow the turn sequence rules.]
		if the heavens are being debugged, say "**following turn sequence**";
		follow the turn sequence rules;		
		now totaltime is new-time;
		increase totaltime by the time of day;		
		if the heavens are being debugged, say "**about to test 'while the time of day [the time of day] < the time of day + new-time ([new-time]) (which is [totaltime])'**";
	end while;
	if ambience_on is 1, try looking.


Section - Sleeping

A room has some text called the sleep message. The sleep message of a room is usually "".

A person can be either asleep or awake. A person is usually awake. Yourself is awake.          

Yourself has a number called sleep debt. The sleep debt of yourself is 0. 

Every turn when yourself is awake and night and player is regionally in Lacuna and the sleep debt of yourself <= 7 (this is the growing tired rule): 
	if a random chance of 1 in 10 succeeds begin;
		add potential messages from the Table of Sleepy Messages;
		increase the sleep debt of yourself by 1;  
	end if. 
	
Every turn when yourself is awake and night and player is regionally in Lacuna and the sleep debt of yourself > 7 (this is the growing really tired rule): 
	if a random chance of 1 in 8 succeeds begin; 
		add potential messages from the Table of Really Sleepy Messages;
		increase the sleep debt of yourself by 1;
	end if.   
   
Table of Sleepy Messages
freq		start time	end time	text	table		trigger	flag	
guaranteed	--	--	"You stifle a yawn[one of] and rub your eyes... you're getting tired[or]. You're starting to feel pretty tired[in random order]."         
   
Table of Really Sleepy Messages
freq		start time	end time	text	table		trigger	flag	 
guaranteed		--	--	"You blink away haze from your eyes blearily. You aren't sure how much longer you can stay awake."
guaranteed		--	--	"You feel dead on your feet. You really need to get some sleep."
guaranteed		--	--	"You are dead tired. Better find some place to rest."    

The block sleeping rule is not listed in any rulebook. The block waking up rule is not listed in any rulebook. [ Override Inform's normal behavior.]

Sleeptime is a number that varies. Old time factor is a number that varies. Wakeup time is a time that varies. Wakeup time is 5:20 AM.

Check sleeping when location is regionally in Lacuna and it is after 5:00 AM and it is before 7:00 PM (this is the napping rule):
	if already-napped is true:
		say "You can only take so many naps in one day, you know. Might as well make it to sunset." instead;
	otherwise if evening:  
		say "It's close to sunset; you might as well stay up at least till then." instead; 
	otherwise if an episode is playing:
		say "You lay your head down and try to shut your eyes, but you seem to be too keyed up for sleep just now; thoughts and images race through your mind. Finally you stand again, resigned to wakefulness for now." instead;  
	otherwise if Epilogue is happening:
		say "You can't. Not now." instead;
	otherwise: 
		now already-napped is true;  
		if the sleep message of location is not "", say sleep message of location; 
		otherwise say "Yawning, you lie down and settle in for a good nap.";   
		print a section break;
		let old_ambience be ambience_on;
		now ambience_on is 0;
		try waiting for two hours;
		now ambience_on is old_ambience; 
		be more bored with "taking a nap";
		say "[if good place to dream]You drowse lazily, half-aware on occasion of your surroundings, but also half-aware of something else, faint ticklings of premonition or urgent murmurs you can't quite catch, seeping up from some fuller, deeper sleep.[paragraph break][end if]You awaken a few hours later, ";
		if it is after 6:00 PM, say "still feeling sleepy";
		else say "feeling refreshed";
		say ".";
		try looking instead.
	
 already-napped is a truth state that varies. 

Dreams is a thing.
 
Carry out sleeping:  
	let xmins be 0;   
	now wakeup time is a random number from -50 to 20 minutes after 5:00 AM; 
	if the hours part of the time of day < 12, now xmins is ( 60 * -1 * the hours part of time of day ) - 60;  
	otherwise now xmins is ( 23 - the hours part of the time of day ) * 60;
	now xmins is xmins + ( 60 - the minutes part of the time of day ) ;
	now xmins is xmins + ( the hours part of wakeup time * 60 ) ;
	now xmins is xmins + the minutes part of wakeup time;	  
	now sleeptime is xmins;  
	if location encloses a nook (called platform) and player is not enclosed by platform, try entering platform;
	if the sleep message of location is not "", say sleep message of location;
	otherwise say "Yawning, you kick off your shoes and settle in for a good rest."; 
 	if dreams are being debugged, say "// Dreams: time now: [time of day]; sleeptime [sleeptime] minutes, wakeup time: [wakeup time]."; 
	now old time factor is time factor; 
	now time factor is 0;  [ stop time ]
	now the player is asleep.       
 	 
Check waking up (this is the can't wake up if already awake rule): if the player is awake, say "But you're already awake." instead. [ See also the special rules in Lacuna-Dreams that prevent waking up from a dream early.]      
   
pseudo-dream is a number that varies. pseudo-dream is 0.  
 
Carry out waking up: wake up now.      
  
To wake up now:  
	if yourself is awake begin; 
		if dreams are being debugged, say "// Dreams: wake up now: skipping since yourself already awake.";
	otherwise;
		if dreams are being debugged, say "// Dreams: wake up now.";
		if pseudo-dream is 0 begin; [ normally time passes after a dream; if this variable is larger than 0, we don't want it to. ]
			now time factor is sleeptime;  [ this ensures we only have to follow the turn sequence rules once. ] 
			if dreams are being debugged, say "// Dreams: setting time factor to sleeptime ([sleeptime]).";
			follow the turn sequence rules;    
			if dreams are being debugged, say "// Dreams: setting time factor to old time factor ([old time factor]).";
			now time factor is old time factor;  [ restart time ]	
			now the sleep debt of yourself is 0; 
			now wakeup time is 5:00 AM;  
			now already-napped is false;
			if dreams are being debugged, say "// Dreams: advanced time to [time of day].";    
		end if;    
		update interval;
		now yourself is awake; 
	end if.
	       
	  
The list of remembered stuff is a list of objects that varies.    
  
Every thing has some text called dream-text. The dream-text of a thing is usually "".  
 
Every turn when location is regionally in Lacuna and a random chance of 1 in 7 succeeds (this is the brain makes note of memorable things rule):	
	if noun is a thing and noun is enclosed by location begin;  
		if noun is not a person, add noun to the list of remembered stuff, if absent; 
	otherwise; 
		let macguffin be a random other thing enclosed by location;
		if macguffin is a thing begin;
			if macguffin is part of something (called mother), now macguffin is mother; 
			if macguffin is a thing, add macguffin to the list of remembered stuff, if absent;    
		end if; 
	end if;
	let num be number of entries of list of remembered stuff;   
	if num > 25, truncate list of remembered stuff to the last 10 entries;
	let num be number of entries of list of remembered stuff;	  
	if dreams are being debugged and num > 0, say "// Dreams: adding [entry num of list of remembered stuff] to list of remembered stuff.".    
 
The list of convo stuff is a list of objects that varies. [ Understand "lcs" as lcsing. Lcsing is an action out of world applying to nothing. Carry out lcsing: say "[list of convo stuff]". ]

[ Noticing referencable things rule is in Lacuna-Progue.]
	 
Understand "yawn" as a mistake ("You yawn widely, starting to feel the day catching up with you. Maybe you should find a spot to get some [d]sleep[x]."). 

Understand "nap" or "take nap" or "take a nap" as sleeping.


Section - Eyes

Eye opening is an action applying to nothing. Understand "open eyes" or "open my eyes" as eye opening.    

Carry out eye opening: say "Your eyes are already open." [ This command can be synonymous with "wake up" but it mostly exists merely as a logical counterpart to "close eyes," which is used to leave Treeworld. ]

Eye closing is an action applying to nothing. Understand "close eyes" or "close my eyes" or "close the eyes" or "blink" as eye closing.

Check eye closing:
	try sleeping instead. [ See also Lacuna-Lacuna for dealing with other worlds.]

Section - Inventory

The print standard inventory rule is not listed in any rulebook.  
 
Carry out taking inventory: 
	now everything is unmarked for listing; [ Don't ask. Please don't.]
	let pobj be yourself; 
	if player is DrQuick, now pobj is DrQuick;
	if player is Lacunite-Follower, now pobj is Lacunite-Follower; 
	if the number of things enclosed by pobj is 0, say "You are naked." instead;  
	say "You are wearing ";    
	now all things enclosed by pobj are unmarked for listing; 
	now all things worn by pobj are marked for listing;
	if no things are marked for listing:
		say "nothing"; 
	otherwise:  
		list the contents of pobj, as a sentence, listing marked items only;  
	now all things carried by pobj are marked for listing; 
	now all things worn by pobj are unmarked for listing;  
	now pobj is unmarked for listing;
	if at least one thing is marked for listing:
		if Progue is carried:
			say ", and carry Progue on your shoulders"; 
		else:
			say ", and hold "; 
			list the contents of pobj, giving inventory information, as a sentence, including contents, listing marked items only; 
			say " in your hand"; 
	if ( tree-password is set or rebel-password is set ) and location is regionally in Lacuna:
		say ". You are also carrying around ";
		if tree-password is set and rebel-password is set, say "two passwords";
		else say "a password";
		say " in your head: "; 
		if tree-password is set, say "['][tree-password]";
		if tree-password is set and rebel-password is set, say "['] and ";
		if rebel-password is set, say "['][rebel-password]";
		say ".['][line break]";
	else:
		say ".".    

Section - Examining Yourself

Conds is a list of indexed texts that varies.  

Check examining yourself:
	truncate conds to 0 entries;
	let legmsg be indexed text; let legmsg be "Your leg still pains you enough that you won't be doing any jumping or climbing";
	let rainmsg be indexed text; let rainmsg be "You are soaking wet";
	let tire1msg be indexed text; let tire1msg be "You're exhausted";
	let tire2msg be indexed text; let tire2msg be "You could really use a good night's sleep";
	let rumemsg be indexed text; let rumemsg be "The pain of loss is still sharp in your chest";
	let nakedmsg be indexed text; let nakedmsg be "You're naked";  
	let lovemsg be indexed text; let lovemsg be "Something inside you is giddy and flush with excitement";
	let dreammsg be indexed text; let dreammsg be "You're still rubbing the sleep from your eyes"; 
	[imperiled] 
	if the player is wounded, add legmsg to conds;  
	if raining and location is outdoorsy, add rainmsg to conds;
	if sleep debt of yourself > 10 begin; add tire1msg to conds;
	otherwise if sleep debt of yourself > 5; add tire2msg to conds;
	end if; 
	if current chapter <= 3, add rumemsg to conds;
	if homemade outfit is not worn, add nakedmsg to conds;
	if romance of Progue >= 3, add lovemsg to conds; 
	if the number of entries in list of remembered stuff <= 1, add dreammsg to conds;
	let endctr be number of entries in conds;
	repeat with ctr running from 2 to endctr begin;
		now entry ctr of conds is "[entry ctr of conds in lower case]";
	end repeat;  
	if the number of entries in conds is 0, say "You're not sure what to do next";
	say "[conds], but otherwise you're doing all right." instead. 
	
Instead of touching or hugging yourself, try examining yourself.

	


Part - Parser Improvements

 
Section - Numbering disambiguation choices

First before printing the name of something while asking which do you mean: if we are discussing, now disambiguation-busy is true. [ This prevents numbers from being printed before any objects like Progue we ask to describe themselves during a refusal to disambiguate.]


Section - Eliminate inappropriate noun guessing

Vague unlocking is an action applying to one thing. Understand "unlock [something]" as vague unlocking. Carry out vague unlocking: if noun is lockable, say "You don't have a key."; otherwise say "That's not something you can lock." [ Rule for supplying a missing noun when vague unlocking: if a random locked thing is visible, change the noun to a random locked visible thing.]  
 
Vague locking is an action applying to one thing. Understand "lock [something]" as vague locking. Carry out vague locking: if noun is lockable, say "You don't have a key."; otherwise say "That's not something you can lock."    

Rule for supplying a missing noun: if noun part of last-action is visible, change the noun to noun part of last-action; else speak as the parser "You must do that to something specific. Try your command again but with a noun as well.". [ last-action is defined in Drama Manager.]

Rule for supplying a missing second noun: speak as the parser "You'll need to specify what you want to do that with."   

Does the player mean entering a thing which is not enterable: it is very unlikely. 
  
Understand the command "tie" as something new. Understand "tie" as a mistake ("[as the parser]You won't need to 'tie' anything in this story.[as normal]").

[ The following lines prevent Inform from guessing inappropriately if there is only one noun in the location and the player types the verb alone, something the one-word input encourages players to do. ] 

Understand "touch" as touching. Understand "take" as taking. Understand "examine" as examining. Understand "swim" or "wade" as vague swimming. Understand "open" as opening. Understand "close" as closing. Understand "push" as pushing. Understand "pull" as pulling. Understand "eat" as tasting. Understand "drink" as tasting. Understand "taste" as tasting. Understand "read" as reading.


Section - Looking in Directions
      
Check examining a direction (called dir):  
	let rm be the room dir from location;
	if rm is a room, say "[if dir is up]Above you[otherwise if dir is down]Below you[otherwise if dir is inside]Inside[otherwise if dir is outside]Outside[otherwise]To the [dir][end if] is [if rm is visited][prose name of rm][otherwise]an unexplored area[end if]." instead;
	otherwise say "Unnavigable." instead.  

Section - Auto Get Off
 
Check going somewhere (this is the auto get off rule):  
	if player is in something (called the encloser) and the encloser is not a room:
		auto get off encloser;
	else if player is on something (called the encloser) and the encloser is not a room:  
		auto get off encloser.   

To auto get off (encloser - a thing):    
	say "(first leaving [the encloser])[line break]"; 
	silently try exiting.    	 
	 
Does the player mean getting off something not onable: it is very unlikely.

Definition: a thing is onable: 
	if it is a room, no;
	if it supports the player or it contains the player, yes;
	no. 
 



Section - Recognizing Unimplemented Scenery
   
A stuff is a kind of thing. Stuff is always undescribed, fixed in place, and privately-named. The printed name of stuff is usually "scenery". Instead of doing anything to stuff: say "It's just part of the scenery.". Does the player mean doing anything to stuff: it is very unlikely.


Section - Disable "All"


After reading a command (this is the can't use all rule):
	if the player's command includes "all" and final release mode is true begin;
		speak as the parser "For various reasons, use of ALL is not allowed in Blue Lacuna. Please deal with objects one at a time instead.";
		reject the player's command;
	end if. 

Section - Clarifying the Parser's Choices Silently

Rule for clarifying the parser's choice of something: do nothing. [ This tends to produce a confusing and obvious message most of the time; if we need to override with a more specific rule, we can. ]  


Section - Custom Library Error Messages



[ Librarydebug-toggling is an action out of world applying to nothing. Understand "libdebug" as librarydebug-toggling. Carry out librarydebug-toggling: if library message debug is on, change library message debug to off; otherwise change library message debug to on.]       

To say emptylineinit: if the number of initapped things enclosed by location > 0 and final release mode is false, say "[paragraph break][the list of initapped things enclosed by location]". To say emptylineperson: if a described other person is enclosed by location and final release mode is false, say "[paragraph break][a random other person enclosed by the location]".      
 
Table of custom library messages (continued)
Message Id		Message Text
LibMsg <undo succeeded>		"Okay, I've taken back your last move.[as normal][line break]"
LibMsg <empty line>			"[unless location is a flash-room][lookfudge][as normal][bold type][location][roman type][line break][description of location][emptylineinit][the initial appearance of a random initapped thing enclosed by location][emptylineperson][initial appearance of a random other uncarried person enclosed by location][end unless]" [ Hack of the year award.]  
LibMsg <cannot take yourself>	"[as the parser]Sorry, that doesn't make sense to me.[as normal][actfast]"
LibMsg <block burning>	"[if location is regionally in Homeworld]You don't have the heart to burn [that-those of noun][else]There's no fire here to burn [that-those of noun] with[end if].[line break]"
LibMsg <cannot take scenery>	"[as the parser]I'm interpreting that as an attempt to take part of the scenery, which either doesn't make sense or isn't an action I know how to process-- please try rephrasing![as normal][actfast]"
LibMsg <block giving>	"Better keep it, for now.[line break]"
LibMsg <cannot give to yourself>		"You're already holding [that-those of noun].[as normal][line break]"           
LibMsg <cannot enter something already entered>		"I believe you're already on [the main object].[as normal][actfast]"   
LibMsg <report player touching things>	"You feel nothing unexpected.[line break]"  
LibMsg <block swearing obscenely>	"I'm sorry if you're feeling frustrated. You might try typing HELP for an introduction to the commands, or SAVE to record your progress and come back later.[as normal][actfast]"
LibMsg <block climbing>		"You're not sure there's anything to be gained by climbing on [that-those of noun].[as normal][actfast]"     
LibMsg <block jumping>		"Not here.[line break]"
LibMsg <block waving hands>	"You wave, but you're unsure if anyone sees you.[as normal][line break]"   
LibMsg <block attacking>	"[if the main object is a person]Think carefully before you take such a rash action[otherwise]You doubt violence will change much of anything[end if].[line break]"  
LibMsg <block pushing in directions>		"[as the parser]You seem to be trying to push something in a direction, but that's probably trying to be more specific than the story is capable of understanding. Try TAKE to pick up objects, or just mention the object in conversation if you want to show it to someone.[as normal][actfast]"  
LibMsg <cannot pull people>		"Sorry, that doesn't make sense to me. Try again?[as normal][actfast]"
LibMsg <cannot turn people>		"Sorry, that doesn't make sense to me. Try again?[as normal][actfast]"  
LibMsg <cannot talk to absent person>	"[correct conv]"
LibMsg <block kissing>	"[if noun is bestial]You're a little afraid to get your lips near [it-them of noun].[otherwise]Now's not the right time for that[end if].[as normal][actfast]"
LibMsg <report player touching other people>	"[The noun] sh[ies] away from your touch.[line break]" 
LibMsg <block singing>	"[if location is Echo Chamber]The song bounces and echoes around the cave, distorted and twisted in weird ways, some syllables seeming to arrive later and some earlier than the order in which you sang them.[else if player is yourself]You sing quietly, an old song you learned as a child, forgotten for years until surfacing now.[otherwise]Nothing comes to mind.[end if][line break]"
LibMsg <block saying yes>	"[invalidresponse]"
LibMsg <block saying no>	"[invalidresponse]" 
LibMsg <block saying sorry>	"No problem.[as normal]" 
LibMsg <unknown object>	"I couldn't understand that, or the noun you used isn't nearby.[as normal][actfast]"       
LibMsg <command not understood>	"[if final release mode is false]1[end if][as the parser][notsurewhatyoumeant].[as normal]"
LibMsg <number not understood>	"[if final release mode is false]2[end if][as the parser][notsurewhatyoumeant].[as normal]"  
LibMsg <verb cannot have inanimate object>	"[if location is regionally in Dreamlands]There will be time for that later.[else]That's either too far away or not something I expected you to do that to.[actfast][end if]"
LibMsg <cannot push scenery>			"You can't reach it from here.[line break][actfast]"
LibMsg <cannot pull scenery>			"You can't reach it from here.[line break][actfast]" 
LibMsg <cannot turn scenery>			"You can't reach it from here.[line break][actfast]"    
LibMsg <block tasting>	"[as the parser]Apologies, but that isn't  something the story expected you to try eating[as normal].[line break]"        
LibMsg <something more substantial needed>		"[as the parser]For the most part, exit keywords should just be typed alone to move in that direction.[as normal][actfast]"  
LibMsg <command partly understood>	"Sorry, I didn't understand the part after "  
LibMsg <block vaguely going>	"[as the parser]You can move to a new location by typing an emphasized [d]direction[x] keyword. Type LOOK to see nearby keywords again.[as normal]"
LibMsg <cannot take hidden parts>	"[as the parser]You'll have to use direction keywords to follow him from here[if final release mode is false]([the main object] in [the location of the main object])[end if][as normal]."
LibMsg <you have died>	" An End "
LibMsg <you have won>	" An End "

Understand the command "brief" as something new. Understand the command "verbose" as something new. Understand the command "superbrief" as something new. Understand "brief" or "verbose" or "superbrief" as a mistake ("Blue Lacuna uses a nonstandard system for printing room descriptions (which change anyway based on time of day, weather, and game events) so brief and superbrief modes are unfortunately not available.").      

To say invalidresponse: speak as the parser "[if a conversing person is enclosed by location]I don't think [a random conversing person enclosed by location] is looking for an answer to a yes or no question right now[otherwise]You aren't speaking with anyone right now[end if].[line break]"; now acting-fast is true.          

To say actfast: now acting-fast is true; say line break. Acting-fast is a truth state that varies. Before reading a command: now acting-fast is false. First turn sequence rule: if acting-fast is true, rule succeeds. [ This kludge prevents time from passing if the player says yes or no at an inappropriate time during conversation, thus losing their chance to say something correct.] 
 
To say lookfudge: now player-looking is true.

Definition: a thing is initapped: if it is worn, no; if it is held, no; if it is undescribed, no; if it is a person, no; if it is on something, no; if it is in something, no; if it is part of something, no; if its initial appearance is not "", yes; no.

To say trytouching: say "[as normal]"; try touching noun.


Section - Remembering

Understand "find [any seen thing]" as remembering.

Check remembering: if noun is visible, try examining noun instead.
  
[ Blue Lacuna has so many objects that it's not safe to assume the player is referring to something far-off. If they're using a word actually in the printed name of a thing, we'll hazard a guess that the thing is what they mean; otherwise print the standard "unrecognized input" message (since in that case the word the user typed may be an adjective or some other obscure word that in their mind bears little resemblance to our guess. ]
First report remembering: 
	let playerc be indexed text;
	now playerc is the player's command; 
	let candidate be indexed text;
	now candidate is printed name of noun;
	repeat with wd running from 1 to the number of words in candidate:  
		if playerc matches the regular expression "\b[word number wd in candidate]":
			say "If you mean [the noun], ";
			if noun is on-stage and noun is a room, say "the last place you saw [it-them of noun] was [if remembered spot is location]right here[otherwise][remembered spot][end if]." instead; 
			else say "you're not sure where [it-they of noun] ended up." instead;
	say "[as the parser]You used either a verb or a keyword I don't recognize, or at least not in that combination[as normal]." instead.



Section - Room Descriptions

[ This was an early system for dynamic room descriptions that ended up being almost entirely deprecated in the final version.]

Describing is an action applying to one thing.  

To process description table (tab - a table-name) with (r - a number):
	if r is 98, say ", ";
	if r is 99, say ". ";
	if r is at most 97 begin;
		choose row r in tab; 
		say "[text entry]";
	end if.	
	
To do the room description dance with (t1 - a table-name) and (t2 - a table-name):
	repeat through t1 begin;
		if time entry is current interval begin;
			if there is a s1 entry, process description table t2 with s1 entry;
			if there is a s2 entry, process description table t2 with s2 entry;
			if there is a s3 entry, process description table t2 with s3 entry;
			if there is a s4 entry, process description table t2 with s4 entry;
			if there is a s5 entry, process description table t2 with s5 entry;
			if there is a s6 entry, process description table t2 with s6 entry;
			if there is a s7 entry, process description table t2 with s7 entry;
			if there is a s8 entry, process description table t2 with s8 entry;
			if there is a s9 entry, process description table t2 with s9 entry;
			if there is a s10 entry, process description table t2 with s10 entry;
			stop;
		end if;
	end repeat.	

Table of Explanatory Structure
time		s1	s2	s3	s4	s5	s6	s7	s8	s9	s10
an interval	a number		a number		a number		a number		a number		a number		a number		a number		a number		a number




Section - Fallback Actions

Understand the command "search" as something new. Understand "search" or "search [text]" as a mistake ("[as the parser]You won't need to use the verb SEARCH in Blue Lacuna; type HELP to find a list of useful verbs[as normal]."). Understand the command "look under" as something new. Understand the command "look inside" as something new.

After reading a command (this is the replace look under and related search commands with examine rule): if the player's command includes "look under" or the player's command includes "look in" or the player's command includes "look inside" or the player's command includes "look through" or the player's command includes "look behind", replace the matched text with "examine".

After reading a command (this is the left/right hack rule): [ This unfortunate hack is necessary to work around a mysterious bug that appeared at one point, preventing the words "left" or "right" on their own from being understood by the parser.]
	if the player's command includes "left", replace the matched text with "hleft";  
	if the player's command includes "right", replace the matched text with "hright".  

Check rubbing something: try touching the noun instead. Check squeezing a person: try touching the noun instead. Understand the command "clean" as something new. Understand the command "dust" as something new.   
   
Check cutting something: try attacking the noun instead.  
 
Section - Acknowledging out-of-scope objects

Check remembering yourself: try examining player instead.

disambiguation_flag is a truth state that varies.

[Rule for asking which do you mean while remembering (this is the don't disambiguate while remembering rule):
	say "[as the parser]You used either a verb or a keyword I don't recognize, or at least not in that combination[as normal].";
	now disambiguation_flag is true.]






Part - Lacuna Ambience 

Chapter - Ambient Messages

ambience_on is a number that varies. ambience_on is 1.

A room has a table-name called the ambience table. 

A region has a table-name called the ambience table. The ambience table of a region is usually the Table of No ambience. A room has a table-name called the ambience table. The ambience table of a room is usually the Table of No ambience.  

Table of No ambience
value
0

Table of Temp Messages
freq		text		table			trigger	flag
a frequency	text		a table-name	a thing	a number
with 20 blank rows

Table of Potential Messages
freq		text		table			trigger	flag
a frequency	text		a table-name	a thing	a number
with 20 blank rows

The frequency is a kind of value. The plural of frequency is frequencies. The frequencies are guaranteed, frequent, common, uncommon, rare, superrare, uberrare, and singular.  
    
The ACO [ ambience control object] is a thing. Understand "ambience" as the ACO.   
    
To add potential messages from (msg - a table-name), only one:
	if ambience_on is 0, stop;
	if ACO is being debugged, say "// Ambience: add potential messages from [msg][if only one], only one[end if].";
	repeat through msg begin;
		if there is a start time entry begin; 
			if high tide begin;
				if start time entry is high tide, change flag entry to 1;
			otherwise if falling uptide;
				if start time entry is falling uptide, change flag entry to 1;
			otherwise if falling downtide;
				if start time entry is falling downtide, change flag entry to 1; 
			otherwise if low tide;
				if start time entry is low tide, change flag entry to 1;
			otherwise if rising downtide;
				if start time entry is rising downtide, change flag entry to 1;
			otherwise if rising uptide;
				if start time entry is rising uptide, change flag entry to 1;	 
			end if;						
			if there is an end time entry begin;
				if start time entry <= current interval and current interval <= end time entry begin; change flag entry to 1;
				otherwise if start time entry is current interval; change flag entry to 1;
				end if;  
			end if;
		otherwise; 
			change flag entry to 1;
		end if; 
	end repeat;  
	if ACO is being debugged, say "// Ambience: [if there is a flag of 1 in msg]qualifying message(s) found.[otherwise]no qualifying message found.";
	sort msg in random order; 
	repeat with Nvar running from 1 to the number of rows in msg begin;
		if there is a flag in row Nvar of msg and flag in row Nvar of msg is 1 and the number of blank rows in Table of Potential Messages > 0 begin;
			choose a blank row in Table of Potential Messages;
			change freq entry to the freq in row Nvar of msg;
			if there is a text in row Nvar of msg, change text entry to the text in row Nvar of msg; 
			if there is a table in row Nvar of msg, change table entry to the table in row Nvar of msg; 
			if there is a trigger in row Nvar of msg, change trigger entry to the trigger in row Nvar of msg;  
			if only one, let Nvar be the number of rows in msg; 
		end if;        
	end repeat;         
	repeat through msg begin;      
		change flag entry to 0;   
	end repeat.	     	   

To fire one off by frequency from (msg - a table-name), definitely selecting and/or no extra spacing:  
	[ if ambience_on is 0, stop;]
	if ACO is being debugged, say "// Ambience: fire one off by frequency from [msg][if definitely selecting], definitely selecting[end if].";	 
	if the number of filled rows in the Table of Temp Messages is 0 begin; 
		repeat with N running from 1 to the number of filled rows in msg begin; 
			choose a blank row in Table of Temp Messages;
			change freq entry to the freq in row N of msg;
			if there is a text in row N of msg, change text entry to the text in row N of msg;
			if there is a table in row N of msg, change table entry to the table in row N of msg; 
			if there is a trigger in row N of msg, change trigger entry to the trigger in row N of msg;
		end repeat;
	end if; 
	repeat through Table of Temp Messages in freq order begin;
		if freq entry is guaranteed begin;
			change flag entry to 1;
		otherwise if freq entry is frequent;
			if a random chance of 1 in 2 succeeds, change flag entry to 1;
		otherwise if freq entry is common;
			if a random chance of 1 in 4 succeeds, change flag entry to 1;
		otherwise if freq entry is uncommon;
			if a random chance of 1 in 8 succeeds, change flag entry to 1;
		otherwise if freq entry is rare;
			if a random chance of 1 in 16 succeeds, change flag entry to 1;
		otherwise if freq entry is superrare;
			if a random chance of 1 in 32 succeeds, change flag entry to 1;
		otherwise if freq entry is uberrare;
			if a random chance of 1 in 64 succeeds, change flag entry to 1;
		otherwise if freq entry is singular;
			if a random chance of 1 in 128 succeeds, change flag entry to 1;
		end if;
	end repeat;
	if ACO is being debugged, say "// Ambience: [if there is a flag of 1 in Table of Temp Messages]message found.[otherwise]no message selected.";
	let success be 0; 
	if there is a flag of 1 in Table of Temp Messages begin;
		choose row with a flag of 1 in Table of Temp Messages;
		if there is a text entry begin; now success is 1; say "[text entry][unless no extra spacing][paragraph break][end if]"; end if;
		if there is a table entry begin; let xz be table entry; repeat through Table of Temp Messages begin; blank out the whole row; end repeat; now success is 1; fire one off by frequency from xz, definitely selecting; end if; 
		if there is a trigger entry begin; now success is 1; move the trigger entry to location; change trigger entry to seen; end if;
		repeat through Table of Potential Messages begin;
			blank out the whole row;
		end repeat;
		repeat through Table of Temp Messages begin;
			blank out the whole row;
		end repeat; 
	end if;
	if definitely selecting and success is 0 begin;
		if ACO is being debugged, say "// Ambience: definitely selecting, so trying again.";	
		repeat through Table of Temp Messages begin;
			if freq entry is not guaranteed, change freq entry to the frequency before freq entry;
		end repeat;
		fire one off by frequency from Table of Temp Messages, definitely selecting;
	end if.
	
To decide whether okay to be ambient: 
	if the player is regionally in Dreamlands, decide no;
	if location is regionally in Treeworld or location is regionally in Rebelworld, decide yes;
	if yourself is asleep, decide no;  
	if dawn or sunrise or sunset or twilight or last interval is not current interval, decide yes;  
	if something dramatic is up, decide no;	
	if just had excitement, decide no; [ something interesting just happened]
	if we are going or we are landmark-going, decide no;
	if an [ attentive] nonbestial other person is enclosed by the location, decide no;
	if conversation fuse is 0, decide no;	
	decide yes.  
	 
The ambient messages rule is listed last in the every turn rules. Every turn when ambience_on is 1 (this is the ambient messages rule):
	if okay to be ambient begin;    
		if ACO is being debugged, say "// Ambience: running the ambient messages rule (because player is awake and we are not going/examining and no one is nearby).";  
		if ( we are examining or we are examining by name ) and ( a random chance of 1 in 2 succeeds or location is regionally in Rebelworld ) and ( last interval is current interval ) , continue the action;     [ Make it less likely for ambience to distract people in the middle of something. ]
		repeat with area running through region-relevant regions begin;  
			if a random chance of 1 in 2 succeeds and last interval is current interval, add potential messages from the ambience table of area; 
		end repeat; 
		if the ambience table of location is not the Table of No ambience and a random chance of 1 in 2 succeeds and last interval is current interval, add potential messages from the ambience table of location;
		if location is outdoorsy and location is regionally in Lacuna and  location is not Jumble, consider time of day ambience;
		fire one off by frequency from Table of Potential Messages;
	otherwise; 
		if ACO is being debugged, say "// Ambience: ambient messages rule NOT running (because [if player is not awake]player is not awake[end if] / [if we are going]we are going[end if] / [if something dramatic is up]nothing dramatic is up is false[end if] ).";
	end if. 

Definition: a region (called area) is region-relevant if the player is regionally in area and the ambience table of area is not the Table of No Ambience.

The flushing ambient messages rule is listed after the ambient messages rule in the every turn rules. Every turn when we are not landmark-going and ambience_on is 1 (this is the flushing ambient messages rule):
	if ACO is being debugged, say "// Ambience: running the flushing ambient messages rule.";
	repeat through Table of Potential Messages begin;
		blank out the whole row; 
	end repeat;
	repeat through Table of Temp Messages begin;
		blank out the whole row;
	end repeat.    
 


Chapter - Day & Night



The fast time rule is listed instead of the advance time rule in the turn sequence rulebook.   

The tide counter is a number that varies. The tide counter is 200. 

The time factor is a number that varies. The time factor is 3.

This is the fast time rule:    
	increase the turn count by 1;
	change the time of day to time factor minutes after the time of day;
	change the tide counter to the tide counter + time factor;
	if the tide counter is greater than 1100, change the tide counter to the tide counter minus 1100.  



To decide whether moonrise: if the tide counter > 0 and the tide counter < 15 then decide yes; decide no.   

Every turn when we are not landmark-going and location is regionally in Lacuna (this is the adjust the tides rule): 
	if tidein begin; 
		if location is Inside-Manta begin;
			say "It looks like the tide is coming in, and you don't want to be stuck in here until it goes back out. You turn the wheel to pull yourself back up to the beach, and clamber out onto the sand.";
			try going outside;
		end if;
	end if.   

To decide whether moonset: if the tide counter >= 544 and the tide counter < 559 then decide yes; decide no.


To decide whether tideout: if tide counter >= 366 and tide counter < 915, decide yes; decide no.  

To decide whether tidein: if tideout then decide no; decide yes.

To decide whether high tide: if the tide counter >= 0 and the tide counter < 183 then decide yes; decide no.

To decide whether falling uptide: if the tide counter >= 183 and the tide counter < 366 then decide yes; decide no. 

To decide whether falling downtide: if the tide counter >= 366 and the tide counter < 559 then decide yes; decide no.

To decide whether low tide: if the tide counter >= 559 and the tide counter < 732 then decide yes; decide no.

To decide whether rising downtide: if the tide counter >= 732 and the tide counter < 915 then decide yes; decide no.   

To decide whether rising uptide: if the tide counter >= 915 and the tide counter <= 1100 then decide yes; decide no.


To decide whether sunup: if it is after 5:00 AM and it is before 7:16 PM, decide yes; decide no. To decide whether sundown: if it is after 6:59 PM and it is before 5:01 AM, decide yes; decide no.

To decide whether dawn: if it is before 5:01 AM then decide yes; decide no.

To decide whether sunrise: if it is after 5:00 AM and it is before 5:06 AM then decide yes; decide no. 

To decide whether morning: if it is after 5:05 AM and it is before 7:01 AM then decide yes; decide no.  

To decide whether midmorning: if it is after 7:00 AM and it is before 10:31 AM then decide yes; decide no.  

To decide whether midday: if it is after 10:30 AM and it is before 2:31 PM then decide yes; decide no.  

To decide whether afternoon: if it is after 2:30 PM and it is before 5:31 PM then decide yes; decide no.

To decide whether evening: if it is after 5:30 PM and it is before 7:01 PM then decide yes; decide no.

To decide whether sunset: if it is after 7:00 PM and it is before 7:16 PM then decide yes; decide no.

To decide whether twilight: if it is after 7:15 PM and it is before 8:01 PM then decide yes; decide no. 

To decide whether night: if it is after 8:00 PM then decide yes; decide no.

To decide whether day: if night, decide no; decide yes.

To decide whether moonup: if the moon is on-stage, decide yes; decide no. To decide whether moondown: if the moon is on-stage, decide no; decide yes.

To say tidestatus: say "[if high tide]high[otherwise if rising uptide]ris. up[otherwise if rising downtide]ris. dwn[otherwise if low tide]low[otherwise if falling downtide]fall. dwn[otherwise if falling uptide]fall. up[end if]".

Check examining when night and location is indoorsy and noun is not a scrawl and noun is not a heavenly body and noun is not an echo-keyword (this is the most things indoors can't be examined at night rule): say "It's too dark to make out any details." instead.



Last interval is an interval that varies.

To consider time of day ambience, definitely selecting:
	if ( dawn or sunrise or sunset or moonrise or moonset or twilight or night or last interval is not current interval ) or definitely selecting or a random chance of 1 in 4 succeeds begin;
	if current interval is dawn begin;
		if it is before 4:10 AM begin; add potential messages from the Table of Dawn1 ambience;
		otherwise if it is before 4:20 AM; add potential messages from the Table of Dawn2 ambience;
		otherwise if it is before 4:30 AM; add potential messages from the Table of Dawn3 ambience;
		otherwise if it is before 4:40 AM; add potential messages from the Table of Dawn4 ambience;
		otherwise if it is before 4:50 AM; add potential messages from the Table of Dawn5 ambience;
		otherwise if it is before 5:00 AM; add potential messages from the Table of Dawn6 ambience;
		end if;
	otherwise if current interval is sunrise;
		add potential messages from the Table of Sunrise ambience;
	otherwise if current interval is morning;
		if it is before 6:00 AM begin; add potential messages from the Table of Morning1 ambience;
		otherwise; add potential messages from the Table of Morning2 ambience;
		end if;
	otherwise if current interval is midmorning;
		if it is before 8:00 AM begin; add potential messages from the Table of Midmorning1 ambience; 
		otherwise if it is before 9:00 AM; add potential messages from the Table of Midmorning2 ambience;
		otherwise; add potential messages from the Table of Midmorning3 ambience;
		end if;
	otherwise if current interval is midday;
		if it is before 12:30 PM begin; add potential messages from the Table of Midday1 ambience;
		otherwise if it is before 1:00 PM; add potential messages from the Table of Midday2 ambience;
		otherwise; add potential messages from the Table of Midday3 ambience;
		end if;
	otherwise if current interval is afternoon;	 	
		if it is before 4:00 PM begin; add potential messages from the Table of Afternoon1 ambience;
		otherwise; add potential messages from the Table of Afternoon2 ambience; 
		end if;
	otherwise if current interval is evening;
		if it is before 6:15 PM begin; add potential messages from the Table of Evening1 ambience;
		otherwise; add potential messages from the Table of Evening2 ambience;
		end if; 
	otherwise if current interval is sunset; 
		add potential messages from the Table of Sunset ambience;
	otherwise if current interval is twilight;
		if it is before 7:10 PM begin; add potential messages from the Table of Twilight1 ambience;
		otherwise if it is before 7:20 PM; add potential messages from the Table of Twilight2 ambience;
		otherwise if it is before 7:30 PM; add potential messages from the Table of Twilight3 ambience;
		otherwise if it is before 7:40 PM; add potential messages from the Table of Twilight4 ambience;
		otherwise if it is before 7:50 PM; add potential messages from the Table of Twilight5 ambience;
		otherwise if it is before 8:00 PM; add potential messages from the Table of Twilight6 ambience;  
		end if;    
	otherwise;
		if night_notification_trig is 0 or definitely selecting begin; add potential messages from the Table of Night ambience; now night_notification_trig is 1; end if; 
	end if; 
	end if.  

night_notification_trig is a number that varies. Every turn when not night and night_notification_trig is 1: now night_notification_trig is 0. 
	
The last Every turn rule: if current interval is not last interval begin; if ACO is being debugged, say "// Ambience: new interval."; now last interval is current interval; end if.  



Table of Dawn1 ambience
freq		text	table		trigger	flag
frequent		"[one of]The sky to the east is beginning, almost imperceptibly, to lighten[or]You're not quite sure if you're imagining it, but a dull grey fuzz lines the horizon to the east[or]The first hints of light are coloring the horizon to the east[in random order]."

Table of Dawn2 ambience
freq		text	table		trigger	flag
frequent		"[one of]A faint grey light steals over the island, slowly bringing the indistinct darkness into focus[or]Grey light touches the eastern horizon, slowly snuffing the stars out one by one[or]The horizon glows with a dim grey light[in random order]."

Table of Dawn3 ambience
freq		text	table		trigger	flag
frequent		"[one of]The eastern sky is a wash of white just touched with color, casting a shadowless light over everything[or]The galaxy fades above you as the sky slowly turns from black to grey to pink-scrubbed white[or]A dull grey glow lights up your surroundings as the horizon to the east continue to brighten[in random order]."

Table of Dawn4 ambience
freq		text	table		trigger	flag
frequent		"[one of]Streaks of pink and gold strengthen on the eastern horizon, brightening minute by minute[or]The last of the stars wink out as the sky above casts a shadowless light over the island[or]The horizon glows with rich shades of pink and amber, brightening towards white where it meets the ocean[in random order]."

Table of Dawn5 ambience
freq		text	table		trigger	flag
frequent		"[one of]The sky brightens more each minute[or]Scudding wisps of cloud high above glow pink and cream in the sun, which has not yet risen down here[or]Birds flock through the sky in the predawn light, preparing for the coming day[in random order]."  

Table of Dawn6 ambience
freq		text	table		trigger	flag
frequent		"[one of]The top of the mountain glows pink as the first rays of the morning sun hit it[or]The sun touches the rim of the volcano, which burns in the sudden wash of color almost as if on fire[in random order]."

Table of Sunrise ambience
freq		text	table		trigger	flag
guaranteed	"The sun rises over the [if location is Saddle or location is Atop or location is Observatory Exterior or location is Lawn or location is Viewpoint or location is Rim of Volcano or location is Ravine Floor or location is Top of Ravine][else]hidden [end if]ocean to the east." 

Table of Morning1 ambience
freq		text	table		trigger	flag
frequent		"The sun hangs over the eastern horizon, reflecting brilliantly off the waves."

Table of Morning2 ambience
freq		text	table		trigger	flag
frequent		"The sun [one of]burns through the morning mist[or]shifts through whole palettes of color[in random order] as it rises higher in the eastern sky."

Table of Midmorning1 ambience
freq		text	table		trigger	flag
guaranteed		"[one of]The sky slowly loses the colors of dawn and begins to take on the colors of day[or]The morning light gives way to the hot sharp brightness of day[in random order]."

Table of Midmorning2 ambience 
freq		text	table		trigger	flag 
frequent		"[one of]The sun angles down, casting your shadow westward[or]From halfway up the eastern sky, the sun burns down brightly[in random order]."

Table of Midmorning3 ambience
freq		text	table		trigger	flag 
frequent		"The sun [one of]burns down from high in the eastern sky[or]shines above, climbing slowly towards the zenith[in random order]."  
  
Table of Midday1 ambience
freq		text	table		trigger	flag
guaranteed	"[one of]The sun sears the sky above you, almost directly overhead[or]Noonday light beams brightly down on you[in random order]."  

Table of Midday2 ambience 
freq		text	table		trigger	flag
frequent		"[one of]Your shadow has almost disappeared as the sun shines directly above[or]Your hair and neck burn in the heat of the tropical noon[in random order]."

Table of Midday3 ambience 
freq		text	table		trigger	flag
frequent		"[one of]The hot midday sun beats down on your head[or]The sun hovers just west of the zenith, as if unsure whether it wants to start downward[in random order]."
 
Table of Afternoon1 ambience
freq		text	table		trigger	flag
frequent		"[if raining]Rain buckets down in ceaseless torrents.[otherwise if weather state is decided to rain]Quick-moving clouds gather overhead, darkening rapidly.[otherwise][one of]Sunlight angles down on you from above as the light begins to shift to the west[or]The brilliance of midday fades a little into the deeper tones of afternoon[in random order].[end if]"
 
Table of Afternoon2 ambience
freq		text	table		trigger	flag
frequent		"[if raining]Rain buckets down in ceaseless torrents.[otherwise if weather state is decided to rain]Quick-moving clouds gather overhead, darkening rapidly.[otherwise][one of]The afternoon sunlight casts a shadow pointing east[or]Lazy afternoon sunlight tilts golden through the air[in random order].[end if]" 

Table of Evening1 ambience
freq		text	table		trigger	flag
guaranteed	"[one of]Late afternoon gives way to evening as the sun sinks lower in the western sky[or]The sun sinks through the westward sky, slowly burning towards the shades of evening[in random order]."

Table of Evening2 ambience
freq		text	table		trigger	flag
frequent		"[one of]The evening sun hovers just above the westward horizon, causing brilliant dancing reflections to burn on the sea[or]The sun drops quickly towards the horizon, a red-orange ball of flame[in random order]."

Table of Sunset ambience
freq		text	table		trigger	flag
guaranteed	"[if sun over ocean]The [o]sun[x] touches the horizon, sinking slowly into the sea in a fiery red spectacle[else][one of]The colors of the sky begin to darken[or]The colors of the sky hover on the edge of twilight[or]Echoes of daylight still stream through the clouds[cycling][end if]."

To decide whether sun over ocean:
	if exploring Progue's turf or location is regionally in High Altitude or location is Rim of Volcano or location is Volcano Slopes or location is Saddle or location is Atop or location is Rockslide or location is regionally in Chairlift-Ride, decide yes;
	decide no.

Table of Twilight1 ambience
freq		text	table		trigger	flag
frequent		"[one of]The brilliant red-orange glare to the west causes burnished highlights to dance on the ocean waves[or]The sun still strikes the clouds floating out over the ocean to the west, lighting them with a cream-orange glow[or]The hot orange aftermath of the sunset burns brightly on the horizon[in random order]."

Table of Twilight2 ambience
freq		text	table		trigger	flag
frequent		"[one of]Orange fades to reds and violets as the western sky begins to fade[or]The brilliant glow of the sunset continues to fade[in random order]." 

Table of Twilight3 ambience
freq		text	table		trigger	flag
frequent		"The [one of]light[or]twilit sky[or]fading sky[in random order] [one of]grows dim and indistinct[or]loses more and more of its vibrant colors[at random] as the sky [one of]fades to deep indigo[or]darkens[or]falls slowly into night[in random order] above."

Table of Twilight4 ambience
freq		text	table		trigger	flag
frequent		"[one of]A single bright star twinkles above in the grey-blue sky as shapes grow darker and indistinct around you[or]A few stars twinkle faintly above, emissaries of night's rapid approach[or]The sky's blue continues to deepen, allowing a few faint stars to shine through above[in random order]."

Table of Twilight5 ambience
freq		text	table		trigger	flag
frequent		"[one of]The failing light grows weaker by the minute[or]More and more stars appear in the slate-grey sky above as the twilight continues to fade[or]Nightfall is rapidly approaching; more and more stars shine in the deep blueness above[in random order]." 

Table of Twilight6 ambience 
freq		text	table		trigger	flag
frequent		"[one of]Stars come out one by one in the grey sky above, a faint glow from the horizon all that remains of the light[or]The daylight is almost gone, just a hint of brightness remaining on the western horizon[at random]." 

Table of Night ambience
freq		text	table		trigger	flag
guaranteed	"The last of the light has faded from the sky, leaving only a rich black sky studded with millions of stars and a great swirling [o]galaxy[x][if moonup], as well as a pale pink [o]moon[x][end if]."

After waiting (this is the waiting causes time to pass faster rule):
	if time factor is not 1 and yourself is awake and current episode is not Water Works begin;    
		pass 7 minutes of time; 
	end if;     
	continue the action.       
  
To say time-of-day-bit:    
	if night begin; say ", [one of]soft night breezes tickling your hair[or]your feet on the [surface-material] the only sound in the night's stillness[or]moving cautiously in the dim light of the [light-source][or]the deepness of the night swallowing your footsteps[or]moving quietly almost without meaning to in the thick silence of the night[or]only the faint light of the [light-source] above showing your way[in random order]";
	otherwise if dawn; say "[one of], the pre-dawn light smoothing form and motion into secret grey blurs[or] under the brightening sky[or], feeling like a ghost gliding through the silence of daybreak[or], the sound of your steps on the [surface-material] flat and echoless in the early morning's half-light[or], scanning the horizon for signs of sunrise[or], enjoying the shifting panolpy of colors growing in the eastern sky[or], listening to the distant call of gulls anxious for sunlight and circling in the grey-blue sky[in random order]"; 
	otherwise if morning; say ", [one of]the chill air of night still not quite dispelled[or]shivering a bit in the lingering chill of the night air[or]the morning sunlight picking out random details in the scenery in shifting, waving highlights[or]under a sky still warming to day's colors as the sun begins its long climb[or]enjoying the brightening colors of the new day[or]as shafts of newborn sunlight pierce the air[or]warmed by horizontal rays of golden sunlight[or]the clouds above you flaming with hot gold sunlight[in random order]";
	otherwise if midmorning; say ", [one of]already starting to feel warm though it's not yet noon[or]through the swaying shadows of midmorning light[or]the blue sky above you achingly bright and clear[or]squinting up at the fresh-scrubbed sky above you[or]under the slanted rays of the sun rising ever higher in the tropical sky[or]the [surface-material] under your feet warming in the late morning sunlight[or]a few gusts of warming wind swirling listlessly around you[in random order]";
	otherwise if midday; say ", [one of]sweating in the hot sunlight[or]sweltering in the heat[or]warm air gusting around you like blasts from an oven[or]your shadow almost vanished in the noon sun[or]the [surface-material] baking underneath your feet[or]squinting against the brightness of the tropical midday light[or]heat waves shimmering in the distance before you[or]first pausing for a moment to wipe the sweat from your brow[or]enjoying the faint breeze you generate as you move through the still midday air[in random order]";
	otherwise if raining; say ", [one of]slogging through the rapidly dampening [surface-material][or]moving quickly through the rain[or]water trickling down all around you[or]resigned to getting totally soaked in the downpour[or]brushing wet hair from your face[or]dodging pools of water forming on the [surface-material] at your feet[or]shivering as the rainwater soaks through your worn travelling clothes[or]raising a hand to your eyes to shield them from the pouring rain[in random order]";  
	otherwise if afternoon and rained; say ", [one of]stepping around shrinking puddles soaking into the [surface-material][or]the dripping of moisture from the soaked vegetation around you making a gentle chorus[in random order]";
	otherwise if afternoon and cloudy; say ", [one of]through shifting shadows as the scudding clouds hide and reveal the sun[or]shadowed by patches of heavy grey cloud above[or]the heat of the day subdued as racing clouds conceal the sunlight[or]in a sudden patch of afternoon light breaking through the heavy cloudbank[or]through dim shadows in the suddenly cloud-muted light[or]keeping an eye on the storm clouds above[or]eyeing the racing grey clouds above warily[or]trying to decide what the gathering clouds above are going to do[in random order]";
	otherwise if afternoon; say ", [one of]the afternoon light painting everything in lazy tan hues[or]the heat of earlier dulled now by the gentle shift to afternoon[or]the sky above the radiant blue of an afternoon that might last forever[or]hot afternoon breezes gusting through the clean island air[in random order]";
	otherwise if evening or sunset; say ", [one of]the rapidly sinking sun painting everything in regal hues[or]glancing up at the shifting colors in the sky as the sun sinks towards the horizon[or]golden light from the failing sun sending streaks of illumination over the terrain[or]the [surface-material] at your feet sending up waves of heat in memory of the noonday sun[or]a feeling of quiet tranquility soaking the landscape in the light of the sinking sun[or]the evening light saturating the tropical colors everywhere you look[in random order]";
	otherwise if twilight; say ", [one of]through growing shadows as the daylight fades[or]passing through the lull of twilight as night prepares to settle in[or]watching the sky darken from moment to moment as the daylight drains away[or]stepping carefully in the failing light over the [surface-material][or]moving quickly as night's slow arrival continues[or]the fading light seeming to suck the movement and colors from the scenery as it departs[in random order]";
	end if.      
  

Section - Time Travel - Not for release

Time traveling is an action applying to one interval. Understand "tt [interval]" as time traveling. Carry out time traveling: let dest be the interval understood; if dest is dawn, now time of day is 4:10 AM; if dest is sunrise, now time of day is 5:00 AM; if dest is morning, now time of day is 5:10 AM; if dest is midmorning, now time of day is 7:10 AM; if dest is midday, now time of day is 10:40 AM; if dest is afternoon, now time of day is 2:40 PM; if dest is evening, now time of day is 5:40 PM; if dest is sunset, now time of day is 7:01 PM; if dest is twilight, now time of day is 7:16 PM; if dest is night, now time of day is 8:10 PM; say "(time travelled to [dest])"; try looking. Understand "tt" as vague time traveling. Vague time traveling is an action out of world applying to nothing. Carry out vague time traveling: speak as the parser "The valid times are: dawn, sunrise, morning, midmorning, midday, afternoon, evening, sunset, twilight, and night.".

Chapter - The Heavens
     
Outdoors is a region.
 
A heavenly body is a kind of backdrop. A heavenly body is always minor. The provoke message of a heavenly body is usually "Would that you could." First report remembering a heavenly body: say "[The noun] is [if dawn and noun is sun]not yet in[else]no longer in[end if] the sky." instead.      
 
Understand "sky/horizon" as up. Instead of examining up when location is regionally in Outdoors:
	if sunup begin;  
		try examining sun; 
		if moonup, try examining moon;
	otherwise;
		if moonup, try examining moon; 
		otherwise try examining stars;
	end if.    

Every turn when the player is awake and the player is regionally in Lacuna and we are not landmark-going (this is the motions of the heavenly spheres rule):
	if sunup:
		if the heavens are being debugged, say "// The Heavens: placing the daytime heavens in scope.";
		move the sun to Outdoors;
		remove the stars from play;
		remove the galaxy from play;    
	otherwise:
		if the heavens are being debugged, say "// The Heavens: placing the nighttime heavens in scope.";
		remove the sun from play;
		move the stars to Outdoors;
		move the galaxy to Outdoors;    
	if the tide counter > 841 or tide counter < 229:
		remove the moon from play;
		if the heavens are being debugged, say "// The Heavens: removing the moon.";  
	otherwise:
		move the moon to Outdoors;
		if the heavens are being debugged, say "// The Heavens: placing the moon in scope. Tide counter: [tide counter].".

The stars are a heavenly body. [ Can't recognize "star" due to conflict with a beat.]The description is "There must be millions of stars overhead, sparkling above you and lorded over by the great [if galaxy is named]galaxy [o]Capalla[x][otherwise][o]galaxy[x][end if] running through them all."  

The great galaxy is a heavenly body. Understand "Capalla" as galaxy. The description is "Stretching nearly from horizon to horizon, the galaxy[if named][one of] -- Capalla, [the Progue] called it --[or] Capalla[stopping][end if] is rich with a million tiny dots finer than dust grains, streaked through with every shade of orange-tinted silver you can imagine." 

Noticing-The-Galaxy is a scene. Noticing-The-Galaxy begins when galaxy is on-stage and night and location is outdoorsy and location is regionally in Lacuna. Noticing-The-Galaxy ends when Noticing-The-Galaxy begins. When Noticing-The-Galaxy begins: say "Gazing up at the sky, you pause for a moment in wonder. Spanning the horizon is a fantastic sight-- a silver-orange [o]galaxy[x], glimmering in the night like some vision. You've seen countless night skies in your travels, but this certainly counts as one of the most spectacular.".

Phase is a kind of value. The phases are new, sliver, crescent, fat crescent, half, waxing, three quarter, almost full, and fullmoon. 

The moon is a heavenly body.  The moon is in Outdoors. The moon has a phase. The description of the moon is "[if we have not examined the moon]There is almost always a moon, no matter the world. This one[otherwise]The moon[end if] is about the size of your fist held at arm's length, and it glows a ghostly pink, streaked through with shades of orange. Hanging [moon location], it's [long moon description]." 
  
Check remembering the moon: say "The moon is not up right now." instead. 
 
To say moon location:
	if tide counter >= 229 and tide counter < 300, say "just above the eastern horizon";
	if tide counter >= 300 and tide counter < 371, say "low in the eastern sky";
	if tide counter >= 371 and tide counter < 443, say "halfway up the eastern sky";	
	if tide counter >= 443 and tide counter < 514, say "high in the eastern sky";
	if tide counter >= 514 and tide counter < 585, say "almost directly overhead";
	if tide counter >= 585 and tide counter < 657, say "high in the western sky";
	if tide counter >= 657 and tide counter < 728, say "halfway down the western sky";	
	if tide counter >= 728 and tide counter < 800, say "low in the western sky";
	if tide counter >= 800 or tide counter < 229, say "on the edge of the western horizon".

moon_wester is a truth state that varies.

To calculate moon phase:
	[ set sun_time to a number from 0 to 1439 representing the time of day / sun's position in the sky.]
	let sun_time be the hours part of time of day * 60;
	let sun_time be sun_time plus the minutes part of time of day;
	[ set moon_time to the moon's position in the sky on the same scale, losing some accuracy to stay within Inform's 32,768 integer maximum.]
	let tmp be ( tide counter / 10 ) * 144;
	let moon_time be tmp / 11;	
	[ the difference between these is the distance between the two bodies; convert this to 360 degrees (which is 1/4 of 1440) to get the angular distance between the two bodies, which in turn will be the phase of the moon. ]
	let offset be ( sun_time - moon_time ) / 4;
	[ for descriptive purposes, check whether the moon is on the west or east side of the sun. ]
	if offset < 0, now moon_wester is true;
	otherwise now moon_wester is false;
	[ We don't care whether the moon is waxing or waning, so we can simplify to just a number between 0 (new) and 180 (full). ]
	if offset > 180, change offset to offset - 360;
	if offset < -180, change offset to offset + 360;
	if offset < 0, change offset to offset * -1;
	[ now we can decide on the moon's phase. ]
	if offset < 20, now the phase of the moon is new;
	if offset >= 20 and offset < 40, now the phase of the moon is sliver;
	if offset >= 40 and offset < 60, now the phase of the moon is crescent;
	if offset >= 60 and offset < 80, now the phase of the moon is fat crescent; 
	if offset >= 80 and offset < 100, now the phase of the moon is half;
	if offset >= 100 and offset < 120, now the phase of the moon is waxing;  
	if offset >= 120 and offset < 140, now the phase of the moon is three quarter;
	if offset >= 140 and offset < 160, now the phase of the moon is almost full;
	if offset >= 160, now the phase of the moon is fullmoon;
	if the heavens is being debugged, say "// The Heavens: calculate moon phase (sun_time: [sun_time]; moon_time: [moon_time]; offset: [offset]; [the phase of the moon]).". 


To say moon description:
	calculate moon phase;
	if phase of moon is new, say "tiny sliver of a";
	if phase of moon is sliver, say "thin sliver of a";
	if phase of moon is crescent, say "crescent";
	if phase of moon is fat crescent, say "fat crescent";
	if phase of moon is half, say "half";
	if phase of moon is waxing, say "just over half";
	if phase of moon is three quarter, say "three-quarter";
	if phase of moon is almost full, say "almost full";
	if phase of moon is fullmoon, say "full".

To say long moon description:
	calculate moon phase;
	say "[if phase of moon is new]a barely visible splinter [moonclosesunbit][end if][if phase of moon is sliver]a skinny sliver [moonclosesunbit], its edges delicately traced in pink and black[end if][if phase of moon is crescent]a rounded crescent[end if][if phase of moon is fat crescent]a fat crescent, nearly half-full[end if]";
	say "[if phase of moon is half]half full, the dark half faintly visible[end if][if phase of moon is waxing]a little more than half full[end if][if phase of moon is three quarter]three quarters full[end if][if phase of moon is almost full]almost full, the only imperfection a rounded sliver of shadow along one side[end if][if phase of moon is fullmoon]full and bright[end if]". 
	
To say moonclosesunbit:
	if phase of moon is new, say "just ";
	if moon_wester is true begin;
		if midmorning or midday or afternoon, say "west of";
		if evening or sunset, say "below";
		if sunrise or dawn or morning or twilight or night, say "above";
	otherwise;
		if midmorning or midday or afternoon, say "east of";
		if evening or sunset or twilight, say "above";
		if sunrise or morning or dawn or night, say "below";
	end if;
	 say " [if sunset or evening]the blaze of the setting sun[otherwise if sunrise or morning]the bright rising sun[otherwise if sunup]the blaze of the sun[otherwise if dawn or twilight or night]the horizon[otherwise]in the sky[end if]". 
   
The sun is a seen heavenly body. The sun is in Outdoors. The description of the sun is "[if sunrise]The sun creeps over the ocean with yellow gold fire, lighting up a brilliant streak in the waves[otherwise if morning]The morning sun beams brightly down on you, burning away the faint chill of night[otherwise if midmorning]The sun is high in the eastern sky. It's beginning to get hot[otherwise if midday]The sun is directly overhead, bright, and scorching[otherwise if afternoon]High in the western sky, the sun is bright and hot[otherwise if evening]Colors begin to deepen as the sun approaches the western horizon[otherwise if sunset]The sunset over the waves is spectacular[otherwise]The sun has slipped beneath the waves[end if]." Understand "sunrise" and "sunset" as the sun. Understand "flash" or "green flash" as the sun when Progue is idle.

To pass (span - a number) minutes of time: 
	now the time of day is span minutes after the time of day;
	increase the tide counter by span;
	if the tide counter is greater than 1100, change the tide counter to the tide counter minus 1100.
 
The Heavens is a thing. Check object-debugging sun: try object-debugging the heavens instead. Check object-debugging moon: try object-debugging the heavens instead. Check object-debugging galaxy: try object-debugging the heavens instead. Check object-debugging rain clouds: try object-debugging the heavens instead.

To say light-source:  
	if sunup begin; say "sun";
	otherwise;
		if moonup, say "moonlight";
		otherwise say "stars";   
	end if. 
 
To say approximate time: say "[if dawn]Dawn[end if][if sunrise]Sunrise[end if][if morning]Morning[end if][if midmorning]Midmorning[end if][if midday]Midday[end if][aptime2]". To say aptime2: say "[if afternoon]Afternoon[end if][if evening]Evening[end if][if sunset]Sunset[end if][if twilight]Twilight[end if][if night]Night[end if]".



Chapter - Weather

[ This is very simple. Each afternoon there is a certain chance that there
  will be a storm. This lasts the whole afternoon (but only the afternoon)
  and is divided into three phases: gathering clouds, storm, dispersing clouds. ]

Weather status is a kind of value. The weather statuses are undecided, endgame-storm, endgame-dispersing, decided to rain, decided not to rain, gathering clouds, raining, and dispersing clouds. The weather state is a weather status that varies. The last weather state is a weather status that varies. The weather state is undecided. The last weather state is undecided.

Every turn when weather state is undecided and afternoon (this is the deciding on the weather rule):
	if the heavens are being debugged, say "// The Heavens: deciding whether to rain (because weather state is undecided and afternoon)."; 
	if a random chance of 1 in 2 succeeds, now the weather state is decided to rain;  
	otherwise now the weather state is decided not to rain;
	if the heavens are being debugged, say "// The Heavens: decided [if weather state is decided not to rain]not [end if]to rain.".
	
Every turn when the weather state is not decided not to rain and the weather state is not undecided and yourself is awake (this is the rainstorm computations rule):
	if the heavens are being debugged, say "// The Heavens: rainstorm computations rule."; 
	if it is after 3:30 PM and it is before 4:31 PM begin;
		if weather state is not raining begin;
			if the heavens are being debugged, say "// The Heavens: setting weather state to raining."; 
			now weather state is raining;
			move rain clouds to Outdoors; 
			move lightning to Outdoors; 
			if the player is in Outdoors, say "With a crash of thunder, raindrops begin to fall. A moment later you are in a downpour.";
		otherwise if the player is in Outdoors; add potential messages from the Table of Rainstorms, only one;
		end if;
	otherwise if it is after 2:30 PM and it is before 3:31 PM;
		if weather state is not gathering clouds begin;
			if the heavens are being debugged, say "// The Heavens: setting weather state to gathering clouds."; 
			now weather state is gathering clouds;
			if the player is in Outdoors, say "The sky overhead is beginning to fill up with dark [o]clouds[x].";
			move rain clouds to Outdoors;
		otherwise if the player is in Outdoors; add potential messages from the Table of Gathering Clouds, only one; 
		end if; 
	otherwise if it is after 4:30 PM and it is before 5:31 PM;
		if weather state is not dispersing clouds begin;
			if the heavens are being debugged, say "// The Heavens: setting weather state to dispersing clouds."; 
			now weather state is dispersing clouds;
			move rain clouds to Outdoors; move lightning to Outdoors;
			if the player is in Outdoors, say "The rain peters out and the [o]clouds[x] begin to disperse.";
			if a random chance of 1 in 3 succeeds, move rainbow to Outdoors;
		otherwise if the player is in Outdoors; add potential messages from the Table of Dispersing Clouds, only one;
		end if;  
	otherwise if it is after 5:30 PM;
		if the heavens are being debugged, say "// The Heavens: cleaning up rainstorm aftermath & setting weather state to undecided.";   
		remove rain clouds from play; 
		remove lightning from play; 
		remove rainbow from play;
		now weather state is undecided;
		now last weather state is dispersing clouds;  
	end if.

Check listening when weather state is raining: say "The sound of rain falling all around you creates a torrential cacophany." instead. 

Some rain clouds are a backdrop. Understand "dark/cloud/thunderheads/wind/storm" as rain clouds. The description is "[if weather state is gathering clouds]They are flying in rapidly from the east, black and ominous[end if][if weather state is raining]Buckets of warm rain pour down from the black thunderheads above[end if][if weather state is dispersing clouds]The clouds are quickly being carried off westward, revealing a reddish-orange evening sky[end if]." Check smelling rain clouds: say "[if raining or  weather state is dispersing clouds]The smell of wet earth and clean rain is thick in the air[otherwise if weather state is gathering clouds]The expectant smell of approaching rain rides on the breeze[end if]." instead.  

A rainbow is a backdrop. The description is "It arcs triumphantly over the ocean, scintillating wetly in the air as the sun shines past the retreating thunderheads to light it.". 

The flash of lightning is a backdrop. The description is "Only a purple blotch over your vision, now."   
 
Every turn when night (this is the finishing up the weather business rule):
	if the heavens are being debugged, say "// The Heavens: ensuring weather state is undecided (because night)."; 
	now weather state is undecided; 
	now last weather state is undecided.
	
To decide whether rained: if weather state is dispersing clouds or last weather state is dispersing clouds, decide yes; decide no. To decide whether cloudy: if weather state is gathering clouds or weather state is dispersing clouds, decide yes; decide no.
  
To decide whether didnt rain: if rained or raining, decide no; decide yes. 

To decide whether raining: if the weather state is raining, decide yes; decide no. To decide whether not raining: if raining, decide no; decide yes.

Table of Gathering Clouds
freq		start time	end time	text	table		trigger	flag	
frequent	an interval	an interval	"[one of]Heavy rain clouds[or]Dark thunderheads[or]Dark grey clouds[in random order] [one of]are gathering overhead[or]race in, blotting out the sun more and more each minute[or]scud quickly across the sky[or]drag cold shadows across the island, gusts of sweet-smelling wind trailing behind[or]continue to gather above[in random order]." 

Table of Rainstorms
freq		start time	end time	text	table		trigger	flag	
frequent	an interval	an interval	"[one of]Lightning flashes and thunder rumbles as the storm continues[or]Wind and rain buffet you in waves as the storm rages on[or]Sheets of rain dance through the air[or]A sudden flash of lightning somewhere above you glints off the [surface-material], followed moments later by a resounding crack of thunder[or]The rainfall patters on every surface around you[or]The storm continues around you[or]Deep grey thunderheads race through the sky above you as the storm continues[or]Muffled flickers of lightning gutter in the clouds above you as the rain continues[in random order]."
 
Table of Dispersing Clouds
freq		start time	end time	text	table		trigger	flag	
frequent	an interval	an interval	"[if rainbow is on-stage][rainbowmsg][otherwise][one of]The rain clouds[or]The storm clouds[or]The clouds[or]The grey remnants of the storm[in random order] [one of]continue to slowly disperse[or]break up more and more each minute[or]are scattering, letting streaks of blue sky through[or]are dissolving in the late afternoon sunlight[in random order][end if]."
 
To say rainbowmsg: say "A rainbow [one of]floats serenely above the water[or]shines brightly below the clouds[or]hovers gracefully out over the ocean[in random order], [one of]glimmering in the afternoon light[or]the spill of color making the tropical view even more magical[or]an unexpected coda to the rainfall[in random order]". 

The heavens has an interval called saved time. The saved-weather-state is a weather status that varies.

After going from an outdoorsy room to an indoorsy room:
	now the saved time of the heavens is current interval;
	now the saved-weather-state is weather state;
	continue the action.

[ To help keep players aware of the passage of time, we note it when the player steps outdoors after having been indoors for a while. ]

After going from an indoorsy room to an outdoorsy room:
	if former location is Inside-Manta, continue the action; [ If we're leaving the manta, we have to describe that process first, so it doesn't make sense to print the below message.]
	if current interval is not saved time of the heavens or ( afternoon and weather state is not saved-weather-state ) begin;
		say "[one of]As you emerge, you see that[or]Stepping outside, you discover that[at random] [if dawn]the beginnings of daylight flush the sky[otherwise if sunrise or morning]the sun has come up, flooding your eyes with light[otherwise if midmorning]the morning sun has moved higher into the sky, chasing off the long dawn shadows[otherwise if midday]the sun is now high in the sky, beating down from near the zenith[otherwise if afternoon and raining]a rain storm has blown in, waves of wind and water descending on the island in buckets[otherwise if afternoon and weather state is decided not to rain]the sun has moved down in the westward sky, and afternoon light colors everything in shades of burnt gold[otherwise if afternoon]clouds have moved over the sun, hiding the afternoon light in racing streaks of white and grey[otherwise if evening or sunset]the sun has sunken to near the horizon, producing a spectacular display[otherwise if twilight]the sun has set, leaving the island in a fading twilight[otherwise if night]the sun has set and the light has gone, leaving you in the black of night[end if].";
	end if; 
	continue the action. 



 


 

	




	

Part - Conversation System

 [ NOTES:   
	This conversation system is designed for situations in which there is never more than a single NPC in the location at any given time. 
] 

Conversation is a thing. Does the player mean object-debugging conversation: it is likely. [ For debugging ]  
  
Chapter - Instructing the Player

Instead of asking someone to try doing something, try correct conversing. Instead of asking anyone about anything, try correct conversing. Instead of telling anyone about anything, try correct conversing. Instead of answering anyone that anything, try correct conversing. Understand  "ask [text]" or "ask" or "tell" or "say" or "ask about [text]" or "tell about [text]" or "ask [someone] about [text]" or "tell [someone] about [text]" or "show" or "show [text]" as a mistake ("[correct conv]").         
 
Understand the command "ask" as something new. Understand the command "tell" as something new. Understand the command "show" as something new. [Understand the command "give" as something new.] Understand the command "shout" as something new.  

First carry out giving something to somebody: say "You'd better hold on to it.". 

Correct conversing is an action out of world. Carry out correct conversing: say "[correct conv]".

To say correct conv:
	let myinp be indexed text;
	now myinp is the player's command;
	if myinp matches the regular expression "[tree-password]" or myinp matches the regular expression "[rebel-password]":
		say "You speak the word aloud, but nothing happens.";
	else if location is Echo Chamber:
		say "You call it out loud and clear. Instantly, the weird shapes and formations suck your utterance up, twist it around, and send it back to you weirdly changed and deformed to reverberate around the cavern until finally dying down.";
	else:
		say "[as the parser]Tutorial: To speak with people, try using emphasized keywords in their dialogue, a conversation verb, or a simple HELLO to get things started. Type HELP for more details[as normal].".

[ Blue Lacuna responds to four types of physical actions: strong attack (the "attack" verb), weak attack (the "push" verb), weak affection (the "hug" verb), and strong affection (the "kiss" verb). Other interaction verbs are routed into one of these. ] 

Check throwing something at someone (called target): try attacking target instead. 

Check touching someone (called lucky one): if lucky one is an animal, continue the action; otherwise try hugging lucky one instead.	 



Chapter - Definitions  
 
 
Check listening when an other person (called Phil) is enclosed by the location and Phil is attentive: say "You stay quiet." instead.   

Section - Gender Pronouns

To say CHeShe: if a random other nonProgue person enclosed by the location is male, say "He"; otherwise say "She".   
To say heshe: if a random other nonProgue person enclosed by the location is male, say "he"; otherwise say "she". 
To say CHisHer: if a random other nonProgue person enclosed by the location is male, say "His"; otherwise say "Her".
To say hisher: if a random other nonProgue person enclosed by the location is male, say "his"; otherwise say "her". 
To say CHimHer: if a random other nonProgue person enclosed by the location is male, say "Him"; otherwise say "Her".
To say himher: if a random other nonProgue person enclosed by the location is male, say "him"; otherwise say "her". 
To say hishers: if a random other nonProgue person enclosed by the location is male, say "his"; otherwise say "hers". 
  
Definition: a person is nonProgue: if he is Progue, no; yes.

Chapter - Beats and Threads
 
A beat is a kind of thing. A beat has some text called keyword name. [ The basic unit of conversation. ]     
  
highlight topics is a truth state that varies. nicename topics is a truth state that varies. 
   
Rule for printing the name of a beat (called topc) while highlight topics is true:
	[ If Progue is asking a question, we don't want to highlight relevant words since that veers the conversation off topic. Instead, we add it to the list of subjects so the player can return to that idea later. (Note that non-yes/no answers need to be explicitly summoned.]
	if topc is legit and last beat is insistent and topc is not summoned by last beat begin;    
		say "[keyword name of topc]"; 
		if location is not regionally in Dreamlands and topc is not listed in list of convo stuff, add topc at entry 1 in list of convo stuff; 
	[ if this is a topic that we haven't discussed before (or we have and its repeatable and replaced by something), emphasize the word and summon it. ]
	otherwise if topc is legit;      
		say "[t][keyword name of topc][x]";    
		now tempfuse of topc is fuse of topc;  
		if tempfuse of topc > 100, now tempfuse of topc is 5; 	
	[ This must be something that's already been discussed, so don't reveal that it's a topic; just print the word. ] 
	otherwise; 
		say "[keyword name of topc]"; 
	end if;   
	if final release mode is false and keyword name of topc is "", say "**";
	if keyword name of topc is "", say printed name of topc;
	if conversation is being debugged, say "*([printed name of topc]:[tempfuse of topc])". 

Definition: a thing (called topc) is legit: let dis be 0; if last beat is topc, decide no; if topc is spoken, now dis is 1; if dis is 0 or topc is repeatable or topc is replaced by something legit, decide yes; decide no.

Rule for printing the name of a beat (called topic) while nicename topics is true: if keyword name of topic is not "", say keyword name of topic; otherwise say printed name of topic.    
 
A beat has some text called the reaction. [ What is printed when the beat is discussed. ]     
  
A beat has a beat called yes-beat. The yes-beat of a beat is usually silence. A beat has a beat called no-beat. The no-beat of a beat is usually silence. A beat has a beat called maybe-beat. The maybe-beat of a beat is usually silence. A beat has a beat called both-beat. The both-beat of a beat is usually silence. A beat has a beat called neither-beat. The neither-beat of a beat is usually silence. [ Note that these need to be given an explicit keyword name of "yes" or whatever. (Why?)]

A beat has a number called fuse. The fuse of a beat is usually 3. A beat has a number called tempfuse. [ Newly summoned beats expire after a certain number of turns. ]         
  
Definition: a beat is available if its tempfuse > 0. Definition: a beat is unavailable if it is not available. [ An available beat is relevant to speak about at the present moment. ]          
   
A beat is either spoken or unspoken. A beat is usually unspoken. [ This tracks whether we have discussed the beat. We don't use Inform's built in "we have discussed" because it's too inflexible; sometimes we want to pretend we've discussed something when we actually haven't, and a beat might incorrectly be marked as "discussed" by Inform even if it didn't make it through our routines to actually having printed something.]      
  
A beat is either repeatable or unrepeatable. A beat is usually unrepeatable. [ Most beats can only be said once. ]                  
 
A beat is either ephemeral or substantial. A beat is usually substantial. [ Ephemeral beats are for tangents or asides which do not affect the main flow of the conversation, which continues immediately after printing them. ]   
 
A beat is either terminal or interstitial. A beat is usually interstitial. [ A terminal beat marks a possible endpoint of a conversation. ]  

A beat is either verbal or nonverbal. A beat is usually verbal. [ Most beats are spoken aloud, and it thus makes sense for others to be described as "listening" for instance. Some beats either immediately suggest something else or encode a nonverbal response. ]   
  
Importance is a kind of value. The importances are insistent, dogged, or casual. A beat has an importance. The importance of a beat is usually casual.   [ An insistent beat means that the NPC expects an answer, and all other active beats are squelched. A dogged beat is one that keeps the preceeding insistent beat's answers available. ]      
 
A beat is either exciting or average. A beat is usually average. [ Some beats will be brought up by the NPC as soon at the player gives them a chance to get a word in. ]        
   
Affinity-tone is a kind of value. The affinity-tones are affinitive, unaffinitive, and affinity-neutral. A beat has an affinity-tone. The affinity-tone of a beat is usually affinity-neutral. Paternal-tone is a kind of value. The paternal-tones are paternal, unpaternal, and paternal-neutral. A beat has an paternal-tone. The paternal-tone of a beat is usually paternal-neutral. Submissive-tone is a kind of value. The submissive-tones are submissive, unsubmissive, and submissive-neutral. A beat has an submissive-tone. The submissive-tone of a beat is usually submissive-neutral. Romantic-tone is a kind of value. The romantic-tones are romantic, unromantic, and romantic-neutral. A beat has an romantic-tone. The romantic-tone of a beat is usually romantic-neutral. Annoyance-tone is a kind of value. The annoyance-tones are annoying, impressive, and annoying-neutral. A beat has an annoyance-tone. The annoyance-tone of a beat is usually annoying-neutral. [ Beats can change Progue's attitude towards the player. ] 
 
The last beat is a beat that varies. The actual last beat is a beat that varies. The penultimate beat is a beat that varies. [ The next beat is a beat that varies.] Silence is a beat. The last beat is silence. [ The next beat is silence.] The penultimate beat is silence. [ Keeps track of the last thing said, and, sometimes, a queued response for the NPC to say when the player runs out of things to ask. ]     
  
A person has a beat called unavailable-beat. The unavailable-beat of a person is usually silence. [ Sets what the NPC should do if the player tries to refer to a no-longer-relevant beat. ]  

Summoning relates various beat to various beats. The verb to summon (he summons, they summon, he summoned, it is summoned) implies the summoning relation. [ Beats can bring other beats into play by making them available. ]   

Suggesting relates various beats to one beat. The verb to suggest (he suggests, they suggest, he suggested, it is suggested) implies the suggesting relation. [ A throughline should be defined for every beat, which tells the NPC how to continue the conversation if the player is silent. ] 

Replacing relates one beat to various beats. The verb to replace (he replaces, they replace, he replaced, it is replaced) implies the replacing relation. [ An individual beat may only be seen once per game (unless it is repeatable). Replacing explains which beat should be used if the beat requested has already been said. If none is specified, the character will reply with his unavailable-beat. ]
 
Enqueuing relates various beats to one beat. The verb to enqueue (he enqueues, they enqueue, he enqueued, it is enqueued, he is enqueuing) implies the enqueuing relation. [ Some beats move immediately on to a next beat before the player has as chance to react. ]  

Canceling relates various beats to various beats. The verb to cancel (he cancels, they cancel, he canceled, it is canceled) implies the canceling relation. [ Beats can make other beats no longer available, useful for keeping the player from changing their answer to a question. ]  

Referencing relates one thing to various beats. The verb to reference (he references, they reference, he referenced, it is referenced) implies the referencing relation. [ Beats can refer to objects; by using the DISCUSS verb, we can see a list of the most recent objects we've encountered that this NPC has conversation topics for. ] 

A thread is a kind of container. A thread is usually closed, unopenable, and transparent. [ A thread is a group of related beats, representing one conversation. They are tied together via the suggesting and replacing relations. ]

[ A procedural rule (this is the ignoring basic accessibility for beats rule): if we are discussing or exhausting and the noun is a beat, ignore the basic accessibility rule. ][ Beats do not conform to the usual scope rules. ] [ moved to the my-basic-accessibility rule definition.]   

A thread has a beat called the escape clause. The escape clause of a thread is usually default_escape_clause. [ If a conversation stalls out due to bad programming or an unexpected condition, the escape clause contains a way to gracefully end it unexpectedly. Really, this is always a programming problem, but hopefully in the worst case scenario where it appears, keeps the game from appearing broken. ]   

default_escape_clause is a beat with reaction "'I've lost my train of thought,' [the random other person in the location] says. (Error: no conversation beat.)".   
   
[ We never want to have to disambiguate between beats, since they are not named. Thus, we intelligently figure out which one the player is talking about. As long as we never introduce two beats that can be referred to with the same word on the same turn, this should work. ]

[ According to vaporware, "only the best matching rule for each object actually matters." ] 
 
Definition: a thing is sequitous if it is in a random thing that encloses penultimate beat.  

Definition: a beat is potent if its tempfuse is its fuse - 1. 
  
Definition: a beat is relevant if it is available or it is sequitous.
  
[ 
Beats are assumed to have priority in the following order:
	-- In same thread as last beat and summoned by the last beat spoken
	-- Not in same thread as last beat but summoned by last beat spoken
	-- In same thread as last beat and still available
	-- Not in same thread as last beat but available 
	-- Not available. 
	
Unavailable beats are never matched, just return an error message.
]

Does the player mean doing something with a beat (called gambit):
	if gambit is unavailable, it is very unlikely;
	if gambit is not potent and gambit is not sequitous, it is unlikely;
	if gambit is not potent, it is possible;  
	if gambit is not sequitous, it is likely;
	it is very likely.       
  
[ If the player tries to type a beat when not in conversation, or one that would mistakenly produce a disambiguation message, prevent them.]
Rule for asking which do you mean while discussing [ and final release mode is true]: 
	if conversation is being debugged, say "// Conversation: rule for asking which do you mean."; 
	let joe be a random conversing person enclosed by the location;
	if joe is a person and the unavailable-beat of joe is not silence, force discuss the unavailable-beat of joe; 
	otherwise say "[if a dream presence is enclosed by location]You can't see or hear it, but you know somehow it's there[else if an other person is enclosed by location][as the parser]It's no longer a good time to talk about that[as normal][otherwise][as the parser]The noun you used was either misspelled, not something I know about, or not nearby[as normal][end if]."; 
	now disambiguation_flag is true. [ This will override the disambiguation question.]  
      
To extend beats:   
	repeat with item running through available beats:
		increase tempfuse of item by 1.
    
 
Chapter - Commands

Section - Hello and Goodbye
   
A person can be idle, attentive, or bestial. A man is usually idle. A woman is usually idle. An animal is always bestial. Definition: a person is nonbestial if it is not an animal.            
    
Definition: a person is other if it is nonbestial and it is not the player. Definition: a person is conversing if it is other and it is attentive.      
  
Understand "hello/hi/greet/greetings/talk" or "shake hands" or "shake hands with" as "[greeting word]". Greeting is an action applying to one visible thing. Understand "[greeting word] [something]" or "[greeting word] to [something]" or "say [greeting word] to [something]" or "[greeting word]" or "say [greeting word]" as greeting. 
 
Rule for supplying a missing noun when greeting (this is the pick a random person to greet rule):
	let Phil be a random other nonbestial person enclosed by the location; 
	if location is Dream7Nexus:
		say "Who, the [o]tall[x] figure or the [o]short[x] one?" instead;
	else if Phil is not a person:  
		if location is Echo Chamber: 
			say "[echochmmsg]." instead;
		else if location is regionally in Rebelworld and pedestrians are in location:
			vague greet pedestrians; 
			stop the action; 
		else:
			say "There's no one here to greet." instead;
	change the noun to Phil.    

Check greeting (this is the can't greet someone you're talking to rule): if noun is attentive, say "You're already talking to [the noun]." instead.  
   
Check greeting (this is the can't greet animals or things rule):
	if noun is an animal:
		if noun is touchable, try touching noun instead;
		otherwise say "[The noun] makes no response." instead;
	if noun is pedestrians:
		vague greet pedestrians;
		stop the action;
	if noun is not a person:
		say "You give [it-them of noun] a whimsical hello, but receive no response." instead.

Carry out greeting:
	if conversation is being debugged, say "// Conversation: Carry out greeting.";	
	pre-conversation processing.        

To pre-conversation processing: 
	if conversation is being debugged, say "// Conversation: pre-conversation processing.";
	let joe be a random other person enclosed by the location;
	if joe is not a person begin; if conversation is being debugged, say "// Conversation: BUG: no random other person is enclosed by location."; 
	otherwise; 
		now the boredom counter of joe is 0;
		if conversation is being debugged and the number of entries in list of convo stuff > 1, say "// Conversation: making legit entries in list of convo stuff ([list of convo stuff]) available."; 
		if location is regionally in Lacuna begin;
			repeat with item running through list of convo stuff begin; 
				if item is a beat and item is legit, now tempfuse of item is fuse of item; 
			end repeat;
		end if;
	now joe is attentive;     
	end if.       
     
Report greeting: say "You greet [the noun]."         
    
Understand "goodbye/goodby/bye/farewell" or "good bye" as "[farewell word]".   
Saying farewell to is an action applying to one visible thing. Understand "[farewell word] [someone]" or "say [farewell word] to [someone]" or "[farewell word]" or "say [farewell word]" as saying farewell to.  Rule for supplying a missing noun when saying farewell to: let Phil be a random other person enclosed by the location; if Phil is not a person, say "There's no one here to say goodbye to." instead; change the noun to Phil.      
  
[ Check saying farewell to (this is the can't farewell someone you're not talking to rule): if noun is idle, say "You aren't talking to [the noun] right now." instead.  ]

Carry out saying farewell to:      
	if conversation is being debugged, say "// Conversation: Carry out saying farewell to.";	    
	now the boredom counter of noun is 0;
	post-conversation processing.    

To post-conversation processing:	   
	if conversation is being debugged, say "// Conversation: post-conversation processing. Making [list of available beats] unavailable."; 
	now all people are idle;  
	repeat with target running through available beats begin; 
		now tempfuse of target is 0; 
	end repeat; 
[	now the next beat is silence; ]
	now the last beat is silence.      

Report saying farewell to: say "You say goodbye to [the noun]."  

     

Section - Conversation Verbs Defined By Inform
 
[ Saying yes.] Understand "sure" or "yep" or "yup" or "ok" or "ya" or "yeah" or "yah" or "nod" or "agree" or "affirmative" as saying yes. First instead of saying yes: if yes-beat of last beat is not silence begin; try discussing yes-beat of last beat instead; else if yes-beat of actual last beat is not silence; try discussing yes-beat of actual last beat instead; else; continue the action; end if. [ Originally this line was just "Instead" with no else continue, but this broke something.]         
     
[ Saying no.] Understand "no" or "nope" or "nah" or "disagree" or "negative" or "no thanks" as saying no. First instead of saying no: if no-beat of last beat is not silence begin; try discussing no-beat of last beat instead; else if no-beat of actual last beat is not silence; try discussing no-beat of actual last beat instead; else; continue the action; end if.  

[ Saying sorry.] [ Understand "apologize" or "apologise" as saying sorry. ] Understand the command "sorry" as something new. 

[ Kissing. (Used by us as intimate touching, as opposed to comfort touching like hugging. ]
Understand the command "fuck" as something new. Understand the commands "grope" and "caress" and "fuck" and "fondle" as "kiss".  Understand "make out with [someone]" or "make love to [someone]" or "have sex with [someone]" or "sleep with [someone]" as kissing when Rume is enclosed by location. [ The stipulation is largely to prevent the following unintentional response:  

>HAVE
(sex with yourself)
If you think that'll help.]  
  
[ Attacking.]   

Understand the commands "smack" or "choke" or "strangle" or "rape" or "tear" or "rip" or "slap" or "crush" or "stab" as "attack". 

[ We have to be careful because "punch", an existing synonym for attack, is a keyword used in the Confrontation fight. There, we say "instead of attacking Progue".  But "kick" as a verb should also map to attack, so if we made it a synonym we wouldn't be able to tell them apart in the fight; so here we understand the conversation topic as attacking. ]

[ Understand "[fc_kick] [something]" as attacking when fc_kick is not available.] Understand "[fc_kick] [something]" as manual-attacking. Manual-attacking is an action applying to two things. Carry out manual-attacking: try attacking second noun.
 
 Does the player mean attacking a person: it is very likely. 
 
Section - New Conversation Verbs

Saying maybe is an action applying to nothing. Understand "maybe" or "shrug" or "dunno" or "dont know" or "dont care" or "not sure" or "either" or "could be" as saying maybe. Check saying maybe: if an attentive person is not enclosed by the location, say "You're not talking to anyone." Carry out saying maybe: say "Your reply is ignored." Carry out saying maybe when the maybe-beat of last beat is not silence: try discussing maybe-beat of last beat instead.  

Saying neither is an action applying to nothing. Understand "neither" or "none" as saying neither. Carry out saying neither: try saying maybe. Carry out saying neither when the neither-beat of last beat is not silence: try discussing neither-beat of last beat instead.   

Saying both is an action applying to nothing. Understand "either" or "both" as saying both. Carry out saying both: try saying maybe. Carry out saying both when the both-beat of last beat is not silence: try discussing both-beat of last beat instead.  

Thanking is an action applying to one visible thing. Understand "thanks/thank" or "thank you" as "[thanking verb]". Understand "[thanking verb]" or "[thanking verb] [something]" or "say [thanking verb] to [something]" as thanking. Check thanking: if noun is not a person or noun is player, speak as the parser "You can only thank another person." instead. Check thanking: if noun is not attentive, try greeting noun instead. Carry out thanking: say "[if a random conversing person is male]H[otherwise]Sh[end if]e nods at your expression of thanks.". Rule for supplying a missing noun when thanking: let Phil be a random other person enclosed by the location; if Phil is not a person begin; say "There's no one here to thank right now."; otherwise; if conversation is being debugged, say "// Conversation: vague thanking; try thanking [Phil]."; change the noun to Phil; end if. 

Hugging is an action applying to one visible thing. Understand the command "hug" as something new. Understand "hug/console/comfort" as "[hugging verb]". Understand "[hugging verb]" or "[hugging verb] [something]" as hugging. Check hugging (this is the can only hug another person rule): if noun is not a person or noun is player, speak as the parser "You can only hug another person." instead. [ Check hugging (this is the first greet unattentive people rule): if noun is not attentive, try greeting noun instead. ]Check hugging (this is the can't hug animals rule): if noun is an animal, try touching noun instead. Carry out hugging: say "This may not be the best time for that.". Rule for supplying a missing noun when hugging: let Phil be a random other person enclosed by the location; if Phil is not a person begin; say "There's no one here to hug right now."; otherwise; if conversation is being debugged, say "// Conversation: vague hugging; try hugging [Phil]."; change the noun to Phil; end if.  
 
   
 


Section - Discussing

The topics-window is a g-window with type g-text-buffer. The main-window spawns the topics-window. The position of the topics-window is g-placebelow. The scale method of the topics-window is g-fixed-size. The measurement of the topics-window is 3.

Discussing is an action with past participle discussed, applying to one thing. [ Discussing is the conversation verb in this system. ]  

Understand "discuss" as vague discussing. Vague discussing is an action out of world applying to nothing. Understand the command "subject" as "discuss".  

A puzz-unfinished rule: [ This is to help out Intelligent Hinting]
	if temp-act is discussing something and noun part of temp-act is spoken, rule fails. 
	
A puzz-possibility rule:
	if temp-act is discussing something and noun part of temp-act is unavailable, rule fails. 
 
Carry out vague discussing:  
	let joe be a random other conversing person enclosed by location;
	if the number of entries in list of convo stuff is 0 or last beat is insistent begin;     
		if joe is a person, let ua-beat be the unavailable-beat of joe; 
		if joe is Progue and the number of entries in list of convo stuff is 0, now ua-beat is the naughttosay_beat of Progue;
		if ua-beat is a beat begin; 
			if conversation is being debugged, say "// Conversation: force discussing [ua-beat] (because nothing to change subject to (num: [number of entries in list of convo stuff]/[list of convo stuff]) or last beat [last beat] insistent ([if last beat is insistent]yes[otherwise]no[end if]).";    
			now vague-dis-beat is ua-beat;      
			now tempfuse of ua-beat is 0;     
			now vague-dis-hack is true;    
			stop;    
		otherwise;
			speak as the parser "There's no one here to talk to.";
		end if;    
	otherwise;  
		if joe is not a person begin;
			if an other nonbestial person is enclosed by the location, speak as the parser "You're not talking to anyone right now."; otherwise speak as the parser "There's no one here to talk to.";
		otherwise; 
			if Joe is Progue begin; 
				add denial animii to tl; [ let the player ask about what Progue's doing]
			end if; 
			now showing-offtopics is true;
			if topics-window is g-present, follow the drawing rule of topics-window;
			say "What do you want to discuss?"; 
			change the command prompt to ">>";
			repeat with item running through list of convo stuff begin;
				now tempfuse of item is 2;
			end repeat; 
			stop the action;     
		end if; 
	end if.
	
vague-dis-hack is a truth state that varies. vague-dis-beat is a beat that varies. 

Rule for reading a command when vague-dis-hack is true: [ This is unfortunately necessary since "vague discussing" is meta, meaning action rules attached to something we tried to discuss wouldn't fire. ]
	if conversation is being debugged, say "// Conversation: vague-dis-hack (changing command to 'discuss [vague-dis-beat]')."; 
	now vague-dis-hack is false; 
	force discuss vague-dis-beat;
	change the text of the player's command to "do#nothing".
	
Understand "do#nothing" as doingnothing. Doingnothing is an action out of world applying to nothing. Carry out doingnothing: do nothing.

After reading a command while showing-offtopics is true:
	now showing-offtopics is false;	 
	change the command prompt to ">";
	let pcmd be indexed text;
	let pcmd be the player's command;
	if the player's command matches "cancel" begin; 
		replace the player's command with "cancel";
	otherwise if the player's command matches "bye" or the player's command matches "goodbye";
		replace the player's command with "goodbye";
	otherwise;  
		replace the regular expression "^(.*)$" in pcmd with "discuss \1";
		change the text of the player's command to pcmd;
	end if.     
	
Nothing-doing is an action out of world applying to nothing. Understand "cancel" as nothing-doing. Carry out nothing-doing: say "Ok.".

Check discussing (this is the can only discuss things with attentive people rule):  
	if skip_conversing_check is false and no conversing person is enclosed by location:
		if location is regionally in Dreamlands:
			say "You can't focus on that." instead;
		else if an other nonbestial person is enclosed by location:
			speak as the parser "You aren't talking to [a random other nonbestial person enclosed by the location] right now; type HELLO to begin conversing." instead;
		otherwise:
			say "[if final release mode is false]4[end if][as the parser][notsurewhatyoumeant].[as normal]" instead.  [ We need this, since otherwise the game tries to talk when conversations have ended. ] 

Original beat is a beat that varies. Original beat is silence. 

Every turn (this is the reset the discussion recursion brake rule): now original beat is silence.  

To force discuss (target - a beat): 
	if conversation is being debugged, say "// Conversation: making [target] available.";
	now tempfuse of target is fuse of target;
	now skip_conversing_check is true; 
	try discussing target.   
   
skip_conversing_check is a truth state that varies. 
 
Carry out discussing:    
	now skip_conversing_check is false; 
	if conversation is being debugged, say "// Conversation: Carry out discussing ([noun] ([if noun is available]available[otherwise]unavailable[end if]/[if noun is insistent]insistent[otherwise if noun is dogged]dogged[otherwise]casual[end if]/[if noun is ephemeral]ephemeral[otherwise]substantial[end if])).";
[	if next beat is noun, now next beat is silence; ]
	let target be noun;   
	let keep_going be true;
	if target is Silence, do nothing instead;  
	if target is spoken and target is unrepeatable:
		if original beat is target: [ we have recursed back to starting ]
			if conversation is being debugged, say "// Conversation: we have recursed back to starting (because original beat ([original beat]) is target ([target]).";
			if target suggests a beat (called new target):
				force discuss new target;  
			otherwise:
				if target is insistent, now target is casual;
				try exhausting target instead; 
		otherwise:
			if conversation is being debugged, say "// Conversation: target spoken and unrepeatable; setting original beat to target ([target]).";
			if original beat is silence, now original beat is target;  
		if a beat (called new target) replaces target:
			if conversation is being debugged, say "// Conversation: force discussing [new target] (because [target] is spoken and it is unrepeatable).";
			now tempfuse of target is 0; [ make the beat we're skipping unavailable again. ] 
			force discuss new target; [ ok-- has to be force discuss because otherwise it may be unavailable and we'll get rerouted to the unavailable-beat instead. ]
			stop the action;
		otherwise:
			if conversation is being debugged, say "// Conversation: exhausting [target] (because [target] is spoken and it is unrepeatable and no beat replaces [target]).";
			if target is insistent, now target is casual;
			try exhausting target instead;
	let joe be a random conversing person enclosed by the location; 
	if target is unavailable:
		if joe is not a person:
			if conversation is being debugged, say "// Conversation: error-- there are no attentive other people enclosed by the location."; 
		otherwise:
			if conversation is being debugged, say "// Conversation: force discuss [the unavailable-beat of a random attentive other person enclosed by the location] (the unavailable-beat of [a random attentive other person enclosed by the location]) because [target] is unavailable.";
			force discuss the unavailable-beat of joe;
			stop the action;
	if noun is substantial and noun is not dogged:
		now penultimate beat is last beat; 
		now last beat is target;         
	now actual last beat is target; [ stores even an ephemeral beat. ] 
	if reaction of target is not "": 
		now highlight topics is true;   
		now nicename topics is true; 
		if Progue is enclosed by location, adjust Progue's social standing; 
		say "[reaction of target][line break]";  
		now target is spoken; 
		now nicename topics is false;   
		now highlight topics is false;
		if joe is a person, now the boredom counter of joe is 0;  
		now last-spoken-turn is turn count;
		now conversation fuse is 0;         
		follow the reset the discussion recursion brake rule; 
	if conversation is being debugged and target summons at least 1 beat, say "// Conversation: making [list of beats summoned by target] available.";	     
	repeat with arrival running through beats summoned by target:
		now tempfuse of arrival is fuse of arrival; 
	if yes-beat of target is not silence:
		if conversation is being debugged, say "// Conversation: making yes-beat ([yes-beat of target]) of target ([target]) available.";
		now tempfuse of yes-beat of target is fuse of yes-beat of target; 
	if no-beat of target is not silence:
		if conversation is being debugged, say "// Conversation: making no-beat ([no-beat of target]) of target ([target]) available.";	
		now tempfuse of no-beat of target is fuse of no-beat of target;
	if maybe-beat of target is not silence:
		if conversation is being debugged, say "// Conversation: making maybe-beat ([maybe-beat of target]) of target ([target]) available.";	 
		now tempfuse of maybe-beat of target is fuse of maybe-beat of target; 
	if neither-beat of target is not silence:
		if conversation is being debugged, say "// Conversation: making neither-beat ([neither-beat of target]) of target ([target]) available.";	  
		now tempfuse of neither-beat of target is fuse of neither-beat of target;
	if both-beat of target is not silence:
		if conversation is being debugged, say "// Conversation: making both-beat ([both-beat of target]) of target ([target]) available.";	
		now tempfuse of both-beat of target is fuse of both-beat of target;
	[ now tempfuse of target is fuse of target;] [?]
	if conversation is being debugged and the number of beats canceled by target > 0, say "// Conversation: cancelling [list of beats canceled by target].";  
	repeat with leper running through beats canceled by target:
		now tempfuse of leper is 0;  
	if target is dogged: [ If we're trying to get an answer to a question, make sure answers don't expire.] 
		if conversation is being debugged, say "// Conversation: extending [list of available beats] (because [target] is dogged).";   
		repeat with dude running through available beats:
			increase tempfuse of dude by 1; 
	otherwise if target is insistent or penultimate beat is insistent: [ If we're asking a question, kill all previous topics.] [ if we remove reference to penultimate beat here, then insistent questions break. (answers still hang around.)] 
		if conversation is being debugged, say "// Conversation: cancelling [list of nonnow beats] (because target [target] is insistent ([if target is insistent]y[otherwise]n[end if]) or penultimate beat [penultimate beat] is insistent ([if penultimate beat is insistent]y[otherwise]n[end if]). List of available beats: ";
		repeat with leper running through nonnow beats:
			now tempfuse of leper is 0;    
	if target enqueues a beat (called new target) :
		if conversation is being debugged, say "// Conversation: enqueues [new target].";   
		force discuss new target; 
	now nicename topics is false; 
[	if target is unrepeatable begin;
		if conversation is being debugged, say "//Conversation: making [target] unavailable (because its unrepeatable).";
		now tempfuse of target is 0;
		end if; ]
	if conversation is being debugged, say "// Conversation: making [target] unavailable.";
	now tempfuse of target is 0;
	remove target from list of convo stuff, if present.
 
After discussing a terminal beat (this is the trigger post-conversation processing after discussing a terminal beat rule): if conversation is being debugged, say "// Conversation: After discussing a terminal beat (pcp)."; post-conversation processing; continue the action.    

The last every turn rule (this is the look after convos end rule):
	if ( we are discussing a terminal beat or we are saying farewell to someone ) and Finishing-the-Prologue is complete and only-look-once is false and Epilogue is not happening: 
		try looking;  
		now only-look-once is true.   
 
Before reading a command (this is the reset only look once variable rule): now only-look-once is false.
only-look-once is a truth state that varies.
Check looking (this is the only look once rule): if only-look-once is true, do nothing instead; else continue the action.  
After looking (this is the after looking mark only look once as true rule): now only-look-once is true; continue the action. 

Definition: a beat is nonnow if it is available and its tempfuse is not its fuse and its fuse < 100.   
   
  
Section - Exhausting
 
Exhausting is an action applying to one thing. [ Exhausting happens when the NPC has nothing else to say about a given topic. ]  

Carry out exhausting: say "'I have nothing else to say about that,' [the random other person in the location] says." [ NPCs should replace this with a more personable message, preferable randomized. ]
 
After exhausting: 
	if conversation is being debugged, say "// Conversation: After exhausting.";	 
	if last beat suggests anything, try discussing a random beat suggested by last beat.          
     

  

  

Section - Getting Bored 

Getting bored is an action applying to one thing. Before getting bored when Finishing-The-Prologue is complete: if conversation is being debugged, say "// Conversation: before getting bored post-conversation processing [noun]."; post-conversation processing. [ An NPC gets bored if the player has not spoken for several turns. ]      [ we don't use silently saying farewell because that would print a duplicate farewell message.]   
   
Carry out getting bored: say "'Well, I've got to get back to this,' [the random other person in the location] says.".        

A person has a number called the boredom counter. The boredom counter of a person is usually 0.           
    
Section - Not Understanding

[ This is not a verb, as we always cause the conversation to fail at the parser level, not the NPC level. This prevents NPCs from professing ignorance over things the player expects them to know about. ]  

Rule for printing a parser error when parser error is did not make sense in this context and Finishing-The-Prologue is complete:   
	if a conversing person is enclosed by the location begin;
		let myinput be indexed text;  
		let myinput be the player's command;  
		replace the regular expression "discuss " in myinput with "";
		if myinput matches the regular expression "^(examine|x) " begin; say "Normally, you can just type an emphasized topic word alone to bring it up in conversation. If you need to, you can use the verb DISCUSS to differentiate, say, examining a person from asking them about themself." instead;
		otherwise if the number of words in myinput > 1; say "If you're trying to converse, it's best to stick with typing one single emphasized keyword." instead;
		otherwise; say "If you're trying to converse, make sure you're typing an emphasized keyword[one of]. [convohelp][or]. [convohelp][or]. [convohelp][or].[stopping]" instead; 
		end if;
	otherwise; say "[as the parser]You used either a verb or a keyword I don't recognize, at least not in that combination.[run paragraph on][as normal]"; 
	end if. 
	
To say convohelp: say "Type HELP, select 'Detailed Instructions' then 'More on Conversation' for more help interacting with people."



Section - Testing Commands
 
Auditing is an action out of world applying to nothing. Understand "audit" as auditing. Specific-auditing is an action out of world applying to one thing. Understand "audit [any beat]" as specific-auditing.

Check auditing: if a conversing person is not enclosed by the location, say "Nothing to audit.". 

Check specific-auditing: if noun is not a beat, say "You can only audit beats."

Carry out auditing:
	try specific-auditing last beat. 

Carry out specific-auditing:
	now temp-beat-list is { };  
	analyze noun with indentation 0;
	say "[line break]*: Terminal / %: Not in same thread as [noun] / &: suggests nothing / $: spoken.";
	let parent be a random thread enclosing noun;
	let xor be the list of beats in a random thread enclosing noun;
	remove temp-beat-list from xor;
	if the number of entries in xor > 0, say "[line break]Beats outside tree: [xor].";
	truncate xor to 0 entries;
	let xor be the list of keywordless beats in a random thread enclosing noun;
	if the number of entries in xor > 0, say "[line break]Beats w/o keyword names: [xor]".
	
Definition: a beat is printable-keyworded if its keyword name is not "". Definition: a beat is keywordless if its keyword name is "" and something summons it. Definition: a beat is keyworded if it is not keywordless.
 
[	
stop-loop is a number that varies. stop-loop is 0. loop-path is a list of objects that varies. 


To loop search with (parent - a list of objects):
	repeat with item running through parent begin;
		loop process item;
	end repeat.
]
[	
To loop process (item - a beat):
	if item is listed in loop-path begin;
		now stop-loop is 1;
		add item to loop-path;
		say "Endless replace loop found: [loop-path].";
	end if;
	if stop-loop is 1, stop;
	add item to loop-path;
[	if anything is enqueued by item begin;]
[		let Q be a random thing enqueued by item;
		loop process Q;]
[	end if;	]
[	if anything is enqueued by item, loop process a random thing enqueued by item;]
[	loop search with the list of things enqueued by item;]
[	add the list of things enqueued by item to newlist; ]
[	let newlist be the list of things enqueued by item;
	loop search with newlist;
	if the number of entries in newlist > 1 begin;
		now stop-loop is 1;
		say "Error: [item] enqueues more than 1 thing ([newlist]).";
	end if;]
[		now newlist is { };
	add every thing item replaces to newlist;
	loop search with newlist;
	if the number of entries in newlist > 1 begin;
		now stop-loop is 1;
		say "Error: [item] is replaced by more than 1 thing ([newlist]).";
	end if;
	now newlist is { };
	add every thing that item summons to newlist;
	if the number of entries in newlist > 0, loop search with newlist;]
	let N be the number of entries in loop-path;
	remove entry N from loop-path.
]

To say (N - a number) spaces: 
    repeat with index running from 1 to N 
    begin; 
        say " | ";  
    end repeat.

temp-beat-list is a list of objects that varies. 
	
[ [if anything replaces target](replaced by [a random beat that replaces target])[end if]]

To analyze (target - a beat) with indentation (indent - a number), indicating suggestion:
	say ( indent ) spaces;
	say "+ ";
	if indicating suggestion, say "(suggests) [run paragraph on]";
	if target is listed in temp-beat-list begin;
		say "[target][line break]";
		stop;
	end if; 
	while target is not last beat and target is spoken and something replaces target begin;
		say "[d]replacing [target]:[x]";
		now target is a random thing that replaces target;
	end while;
	if target is listed in temp-beat-list begin;
		say "[target][line break]";
		stop;
	end if;
	add target to temp-beat-list, if absent;
	let targettitle be "[target]" in upper case;
	say "[if target is terminal]*[end if][if number of things suggested by target is 0 and number of things enqueued by target is 0 and target is substantial and target is interstitial]&[o][end if][if a random thread enclosing target is not a random thread enclosing noun]%[o][end if][if target is spoken]$[d][end if][targettitle][x]";
	say ": [if target is repeatable](R)[end if][if number of things summoned by target > 0]summons [number of things summoned by target] beats [end if][run paragraph on]";
	let stop_flag be 0;  
	if a beat replaces target begin; 
		let Q be a random beat that replaces target;
		while Q is replaced by a beat and stop_flag is 0 begin;
			let replacer be a random beat that replaces Q;
			if replacer is target or a random beat enqueued by Q is target begin;   
				say "[o]ERROR: infinite replace loop.[x]";
				now stop_flag is 1;
			otherwise; 
				let Q be replacer;
			end if;  
		end while; 
	end if;
	if target is repeatable and target suggests a repeatable beat, say "[o]WARNING: repeatable suggests repeatable[x]";
	let stop_flag be 0; 
	if number of things enqueued by target > 0 begin;
		say " --> "; 
		let newtarget be a random thing enqueued by target;
		if newtarget is not listed in temp-beat-list, analyze newtarget with indentation indent;
		otherwise say "[newtarget][line break]";
	otherwise;    
		say "[line break]";    
	end if; 
	if indent < 10 begin;
		repeat with item running through things summoned by target begin;
			analyze item with indentation ( indent + 1 ) ;
		end repeat;
		if number of things suggested by target > 0 begin;
			analyze a random thing suggested by target with indentation ( indent + 1 ), indicating suggestion;  
		end if;
	otherwise;
		say ( indent + 1) * 4 spaces;
		if number of things summoned by target > 0, say "...[run paragraph on][number of things summoned by target] more[line break]";
	end if.




Chapter - Single Word Conversation


Conversation fuse is a number that varies. Conversation fuse is 0. [ This is reset to 0 each time we talk. Useful to ensure the NPCs don't talk over themselves or too often. ]    

overrule further dialog is a truth state that varies. 

Every turn when a attentive other person is enclosed by location (this is the checking if the NPC has anything else to say rule): 
	if conversation is being debugged, say "// Conversation: checking if the NPC has anything else to say rule (because Every turn when a attentive other person is enclosed by location ([list of attentive other people enclosed by location]). if last beat [last beat] suggests a beat ([a random beat suggested by last beat]) and ( conversation fuse is not 0 ([conversation fuse]) or actual last beat ([actual last beat]) is ephemeral ([if noun is ephemeral]true[otherwise]false[end if]) we'll continue.";
	if the last beat suggests a beat (called new target) and ( conversation fuse is not 0 or actual last beat is alb-qualified ) and overrule further dialog is false begin; 
		 if conversation is being debugged, say "// Conversation: found.";   
		force discuss new target;
	otherwise;
		 if conversation is being debugged, say "// Conversation: conditions not met.";  
		now overrule further dialog is false;
	end if.
	
Definition: a thing is alb-qualified if it is ephemeral and it is casual.	 
  


Chapter - Bookkeeping 
  
The conversation bookkeeping rule is listed after the checking if the NPC has anything else to say rule in the every turn rules.
  
last-spoken-turn is a number that varies.

This is the conversation bookkeeping rule: 
	if conversation is being debugged, say "// Conversation: conversation bookkeeping rule).";	
	if an attentive other person (called target) is enclosed by location begin;  
		if conversation is being debugged, say "// Conversation: CBR found something to do.";
		if conversation fuse is 0 begin; 
			now the boredom counter of target is 0; 
		otherwise;    
			if the number of exciting available beats is 0 begin;
				increase the boredom counter of target by 	1;
			otherwise;    
				let Q be a random exciting available beat;
				if conversation is being debugged, say "// Conversation: force discuss [Q] (because [target] is enclosed by location and [q] is exciting and available)."; 
				force discuss Q;  
			end if;   
		end if;   
		if the boredom counter of target >= 2 begin;
			try getting bored target; 
		end if; 
		if the number of available beats > 0 and actual last beat is not ephemeral and actual last beat is not dogged begin;
			if conversation is being debugged, say "// Conversation: subtracting 1 from tempfuse of [list of available beats].";
			repeat with subtarget running through available beats begin;
				decrease tempfuse of subtarget by 1; 
			end repeat;
		end if;
	otherwise if the number of attentive people > 0;
		post-conversation processing; 
	end if; 
	if conversation is being debugged begin;
		say "// Conversation: available beats are now ";
		repeat with trg running through available beats begin;
			say "[trg]:[tempfuse of trg], ";
		end repeat;
		say "; last beat is [last beat]; penultimate beat is [penultimate beat]; actual last beat is [actual last beat]";
	end if. 
	
The increase convo fuse rule is listed before the checking if the NPC has anything else to say rule in the every turn rules. This is the increase convo fuse rule: if last-spoken-turn is not turn count, increase conversation fuse by 1.


Chapter - Topics Line
	  
Before reading a command when Finishing-The-Prologue is complete (this is the show topics rule):
	if a conversing other person is enclosed by the location or the number of available on-topic beats > 0:
		if conversation is being debugged, say "// Conversation: show topics window because a conversing other person is enclosed by the location ([if a conversing other person is enclosed by the location][a random conversing other person enclosed by the location][else]no[end if]) or the number of available on-topic beats > 0 ([if the number of available on-topic beats > 0][the list of available on-topic beats][else]no[end if]).";
		if out-of-line keywords is 3:
			if player is awake, show topics; 
		otherwise if player is awake:
			if out-of-line keywords is 2, now the measurement of the topics-window is 5;
			otherwise now the measurement of the topics-window is 3;
			if topics-window is g-unpresent, open up topics-window;
			move focus to topics-window, clearing the window;
			show topics; 
			return to main screen; 
	otherwise:
		if topics-window is g-present:
			shut down topics-window;
			try looking. 

The drawing rule of topics-window is the draw topics window rule.
 
[ This ensures that we see the topics even after an undo.]
This is the draw topics window rule:  
	if player is awake:
		if topics-window is g-unpresent, open up topics-window;
		move focus to topics-window, clearing the window;
		show topics; 
		return to main screen.

showing-offtopics is a truth state that varies.

Understand "topics" or "topic" as topic-showing. Topic-showing is an action out of world applying to nothing. [ Provided as a complement to THINGS and EXITS.] 

Carry out topic-showing:
	if an attentive other person is enclosed by the location:
		show topics;
		say paragraph break;
	else:
		say "[as the parser]You're not talking to anyone right now.[as normal]". 

To show topics: 
	now nicename topics is true; 
	truncate toplist to 0 entries;
	if showing-offtopics is false begin;
		add list of available on-topic printable-keyworded beats to toplist;   
		sort toplist in reverse tempfuse order;
	otherwise; 
		add list of convo stuff to toplist;
	end if; 
	let orig be the number of entries in toplist; 
	truncate toplist to 6 entries;	  
	if number of entries in toplist > 0 or a conversing person is enclosed by the location or we are setting the keyword style, say "[if we are setting the keyword style and out-of-line keywords is 3][line break][end if][if out-of-line keywords is 3][end if]Topics: [if we are setting the keyword style]topic, this[otherwise if the number of entries in toplist is 0]listen[otherwise][toplist][end if][if orig > 6] (...)[run paragraph on][end if]"; 
	if we-are-keyword-setting is true begin;
		say "[line break]More information is often displayed here.";
		stop;
	else if out-of-line keywords < 3; say "[line break][if showing-offtopics is true]Or say [t]cancel[x] if you don't want to change the subject[otherwise]You can also say [nothingbit][t]goodbye[x][subjectbit][end if].[run paragraph on]";
	otherwise; say "[one of][line break]You can also say nothing, goodbye, or subject.[or][line break]You can also say nothing, goodbye, or subject.[or][line break][stopping]";
	end if; 
	if screen reader mode is true, say line break;
	now nicename topics is false. 
 
To say nothingbit: if the number of entries in toplist > 0, say "[t]nothing[x][if Progue is not attentive] or[else],[end if] ". 

To say subjectbit: if Progue is attentive and current episode is not Word Day and current episode is not Final Confrontation, say ", or change the [t]subject[x]".
   
Definition: a beat is on-topic if its tempfuse > 0 and its tempfuse < 100.  [ Beats which reference objects or concepts are given a fuse of 9999, meaning they stay relevant until recalled but will not show up in the standard list.]
	
toplist is a list of objects that varies.


	




	
Part - Presentation

Section - Section Breaks 

[ Section breaks are used to indicate that an important transition or passage of time has happened, without a chapter change. ]

To print a section break: 
	reset the boredom meter with "new section or chapter";
	say paragraph break;
	say "*   *   *   *   *   *   *   *";
	say paragraph break.
  
To say section break: print a section break. 

Section - Chapters 

The current chapter is a number that varies. The current chapter is -1.   
 
The last chapter turn is a number that varies. The last chapter turn is -5.
  
To begin chapter (chap - a number):   
	unless current chapter is chap:
		now current chapter is chap;
		unless current chapter is 0, say "[line break]";  
		print a section break; 
		if current chapter is:
			-- 0: say "Prologue";
			-- 1: say "Chapter One";
			-- 2: say "Chapter Two";
			-- 3: say "Chapter Three";
			-- 4: say "Chapter Four";
			-- 5: say "Chapter Five";
			-- 6: say "Chapter Six";
			-- 7: say "Chapter Seven";
			-- 8: say "Chapter Eight";
			-- 9: say "Chapter Nine";
			-- 10: say "Chapter Ten";
			-- 11: say "Epilogue";
		print a section break;
		now last chapter turn is turn count;
		say "[paragraph break]".
	
[ To say chapadv: begin the next chapter.]



Chapter - Emphasized Keywords

out-of-line keywords is a number that varies. out-of-line keywords is 1. [ 1=2 line window, 2=4 line window, 3=Topics line ]

A printing-style is a kind of thing. Some printing-styles are defined by the Table of Lacuna Styles.

Table of Lacuna Styles
printing-style	output-style
object-word		2
direction-word	1
topic-word		3
parser-word		5

Table of User Styles (continued)
style name		fixed width		boldness	relative size	glulx color
special-style-1	proportional-font	bold-weight	0	g-pure-green
special-style-2	proportional-font	bold-weight	0	g-pure-blue
 
Table of Common Color Values (continued)
glulx color value		assigned number   
g-pure-green	3381555  [ green  ]
g-pure-blue		255	  

print-upper-case is a truth state that varies. print-upper-case is false.

The currently printing style is a printing-style that varies. 

we-are-keyword-printing is a truth state that varies. we-are-keyword-printing is false. we-are-parser-speaking is a truth state that varies. we-are-parser-speaking is false.  

To set the text style for (whichstyle - a printing-style):
	now we-are-keyword-printing is true;
	let val be the output-style of whichstyle;
	if val is 1 begin; say first custom style;
	otherwise if val is 2; say second custom style;
	otherwise if val is 3; say bold type;
	otherwise if val is 4; say fixed letter spacing;
	otherwise if val is 5; say italic type;
	[ otherwise if val is 5; say "*";
	otherwise if val is 6; say "_";
	otherwise if val is 7; say "[bracket]";]
	otherwise if val is 8; now print-upper-case is true;
	end if.
	
Before asking which do you mean: now asking-which is true. After asking which do you mean: now asking-which is false. asking-which is a truth state that varies.


Section - Screen Reader Mode

Screen reader mode is a truth state that varies. 

Setting screen reader mode is an action out of world. Understand "screenreader" as setting screen reader mode.
	
Carry out setting screen reader mode:
	if screen reader mode is true begin;
		now screen reader mode is false;
		say "Screen reader mode has been deactivated.";
	otherwise;
		now screen reader mode is true; 
		now out-of-line keywords is 3;
		say "Screen reader mode has been activated. Blue Lacuna uses emphasized keywords to indicate certain words. Your reader software may put a recognizable vocal stress on emphasized words like [o]this[x] one. If it doesn't, you can type the word 'things' from any prompt for a list of nearby objects, or type 'exits' for a list of nearby directions. During conversation, a list of relevant topics will be read automatically. Type keywords to adjust the style of keywords, or type screen reader with no space to toggle this mode on or off.";
	end if.

Section - Print Style Commands

To say o:
	unless asking-which is true or we are remembering, set the text style for object-word; 
	now the currently printing style is object-word.
	
To say t:
	set the text style for topic-word; 
	now the currently printing style is topic-word.  	      
 
To say d: 
	set the text style for direction-word;
	now the currently printing style is direction-word.  	  
	 
To say dc: if dir, say "[d]". To say dr: if not dir, say "[d]".

To say as the parser:
	now we-are-parser-speaking is true;
	if a random chance of 1 in 2 succeeds, be more bored with "parser speaking";
	set the text style for parser-word.
	 
To say as normal:
	now we-are-parser-speaking is false; 
	reset output-styles with parser-word.

To speak as the parser (str - some text): 
	say "[as the parser][str][as normal][line break]". 

Before printing a parser error: say "[as the parser]". After printing a parser error: say "[as normal][line break]". 
 
To say x:
	reset output-styles with currently printing style;
	
To reset output-styles with (whichstyle - a printing-style):
	if we-are-keyword-printing is true begin;
	now we-are-keyword-printing is false;
	let val be the output-style of whichstyle;
[ 	if ( out-of-line keywords > 0 or print-upper-case is true ) and whichstyle is not parser-word begin; say end-word with I6; say end-word-aftermath with I6; print line ( upper buffer limit of I6 ) of I6; end if; ]
	if val is 1 or val is 2 begin; say roman type;
	otherwise if val is 3; say roman type;
	otherwise if val is 4; say variable letter spacing;
	otherwise if val is 5; say roman type;
	[ otherwise if val is 5; say "*";
	otherwise if val is 6; say "_";
	otherwise if val is 7; say "[close bracket]";]
	otherwise if val is 8; now print-upper-case is false;
	end if;
	if we-are-parser-speaking is true, say as the parser;
	end if. 
           
To say i: say "[italic type]". To say r: say "[roman type]". 

To say north: say "[dc]north[x]". To say northeast: say "[dc]northeast[x]". To say east: say "[dc]east[x]". To say southeast: say "[dc]southeast[x]". To say south: say "[dc]south[x]". To say southwest:  say "[dc]southwest[x]". To say west: say "[dc]west[x]". To say northwest: say "[dc]northwest[x]". To say up: say "[d]up[x]". To say down: say "[d]down[x]". To say in: say "[d]in[x]". To say inside: say "[d]inside[x]". To say out: say "[d]out[x]". To say outside: say "[d]outside[x]".  

To say Cnorth: say "[dc]North[x]". To say Cnortheast: say "[dc]Northeast[x]". To say Ceast: say "[dc]East[x]". To say Csoutheast: say "[dc]Southeast[x]". To say Csouth: say "[dc]South[x]". To say Csouthwest: say "[dc]Southwest[x]". To say Cwest: say "[dc]West[x]". To say Cnorthwest: say "[dc]Northwest[x]".

Section - Setting the Keyword Style

Setting the keyword style is an action out of world applying to nothing. Understand "keyword" or "keywords" as setting the keyword style. 

 
Carry out setting the keyword style: 
	let mychar be 1;   
	now we-are-keyword-setting is true;
	while mychar is not 0 begin; 
	clear the screen;  
[	clear saved cache;]
	say "There are three types of emphasized keywords in Blue Lacuna. It is important that your interpreter program correctly displays all three with some form of emphasis. Type a number below to cycle through display options until you find one that displays clearly on your system.[paragraph break]";
	say "1) Emphasized [o]object[x] keywords currently look like [o]this[x].[line break]2) Emphasized [d]exit[x] keywords currently look like [d]this[x].[line break]"; say "3) Emphasized [t]topic[x] keywords currently look like [t]this[x].[paragraph break]";
	say "4) [as the parser]Messages from the parser currently display like this[as normal].[paragraph break]During conversation, topic keywords are normally shown in a small window at the bottom of the screen. If this window or its contents are not clearly visible, press 5 to try an alternate style.[paragraph break]5) Change the style of the topic window to [if out-of-line keywords is 1]a large window[else if out-of-line keywords is 2]display inline before the prompt[else]a small bottom window (default)[end if].";
	if output-style of object-word is 8 or output-style of direction-word is 8 or output-style of topic-word is 8, say "[line break]**A warning: The emphasized keywords are integral to Blue Lacuna's design. It may be difficult or impossible to know how to continue if emphasis is not visible.**[line break]";  
	if ( output-style of object-word is output-style of direction-word ) or ( output-style of object-word is output-style of topic-word ) or ( output-style of direction-word is output-style of topic-word ) , say "[line break]**A warning: it may at times be useful to be able to differentiate between the various kinds of keyword.**[line break]";
	say "[line break]Press 0 when you're finished here.[run paragraph on]";
	if out-of-line keywords < 3, follow the drawing rule of the topics-window; 
	if out-of-line keywords >= 3 begin;
		say line break; generate ool list; if screen reader mode is true, say "Press 0 to begin."; say paragraph break;
	end if;
	now mychar is single-character - 48;
	if mychar is 1 begin; advance style with object-word;
	otherwise if mychar is 2; advance style with direction-word;
	otherwise if mychar is 3; advance style with topic-word;
	otherwise if mychar is 4; advance style with parser-word;
	otherwise if mychar is 5; toggle ool;
	end if;
	end while;
[	clear saved cache; ]
	if topics-window is g-present, shut down topics-window; 
	now we-are-keyword-setting is false;
	if turn count <= 0 begin;
		follow the very-beginning rule;
	otherwise;
		clear the screen;
		if Prologue is happening, say manorwoman2;
		else try looking; 
	end if. 
	  
we-are-keyword-setting is a truth state that varies.

To generate ool list:
	if out-of-line keywords is 3, show topics.

Definition: a thing is mentionable if it is enclosed by location and ( it is a prop or it is a setpiece ) and it is not part of a thing and its printed name is not "".    

To toggle ool:   
	increase out-of-line keywords by 1;    
	if out-of-line keywords > 3, now out-of-line keywords is 1;
	if out-of-line keywords < 3 begin;
		if topics-window is g-present, shut down the topics-window;
		if out-of-line keywords is 2, now the measurement of the topics-window is 5;  
		otherwise now the measurement of the topics-window is 3;
		open up the topics-window;
		follow the drawing rule of the topics-window;
	otherwise;
		shut down the topics-window;
	end if.
	
Before reading a command while out-of-line keywords is 3 and a conversing person is not enclosed by location: [ say "*";] generate ool list. [ After reading a command while out-of-line keywords is 4:] [ say "%";][ clear saved cache.]

To advance style with (styl - a printing-style):
	increase the output-style of styl by 1;
	if the output-style of styl > 8, now the output-style of styl is 1;
	if the output-style of styl > 5, now the output-style of styl is 8.

To decide which number is single-character: (- (VM_KeyChar()) -).



Chapter - Improved Status Line 



showing-offtopics is a truth state that varies.

[To show topics: do nothing.]

Rule for constructing the status line when Finishing-The-Prologue is incomplete or location is regionally in Dreamlands or location is a flash-room: do nothing.    
	
Rule for constructing the status line when Finishing-The-Prologue is complete: 
	center "[if location is regionally in Lacuna]Lacuna[otherwise if The-Path-Of-Love is happening and location is not Old Tumble]Near Home[otherwise if location is regionally in Homeworld]The Tumble[otherwise if location is regionally in Treeworld]The Heart Of Forest[otherwise if location is regionally in Rebelworld]First City[otherwise]Somewhere Else[end if], [approximate time][if raining] Rainstorm[end if]  -  [if current chapter is 0]Prologue[otherwise if current chapter > 10]Epilogue[otherwise]Chapter [current chapter in words][end if]" at row 1;
	rule succeeds.    
	

Part - Inclusions

Include Lacuna-Room-Definitions by Blue Lacuna.  
Include Lacuna-Homeworld by Blue Lacuna.
Include Lacuna-Lacuna by Blue Lacuna.
Include Episodes by Blue Lacuna.
Include Lacuna-Progue by Blue Lacuna.
Include Lacuna-Progue-Denial by Blue Lacuna.
Include Lacuna-Progue-Fear by Blue Lacuna. 
Include Lacuna-Progue-Suppression by Blue Lacuna.       
Include Lacuna-Progue-Uncertainty by Blue Lacuna.     
Include Lacuna-Progue-Emotional by Blue Lacuna.
Include Lacuna-Progue-Confrontation by Blue Lacuna.
Include Lacuna Tsunami by Blue Lacuna.
Include Lacuna-Lacuna-Dreams2 by Blue Lacuna.
Include Lacuna-Epilogue by Blue Lacuna.
Include Lacuna-Treeworld by Blue Lacuna.  
Include Lacuna-Rebelworld by Blue Lacuna.
Include Drama Manager by Blue Lacuna.

