Drama Manager by Blue Lacuna begins here.

Use authorial modesty.


Volume - Drama Manager

Chapter - Rume Tracker

[ Throughout the game, we keep track of how the player feels about Rume. When we reach our epilogue, we make our best guess as to whether the player wants to return, and if so, trigger that epilogue.

At various moments throughout the game, the player has opportunities to take actions that reveal their feelings. Positive points indicate a desire for / wanting to return to Rume, and negative points indicate indifference or apathy. We can score minor or major points in either direction. 

If we reach the epilogue with 10 or more points, we get the Rume-centered ending.]

Rume-tracker is a number that varies. Rume-tracker is -10. 
 
To miss Rume:
	increase Rume-tracker by 5; 
	if drama manager is being debugged or stats mode is true, say "[as the parser](Missing Rume: score now [if Rume-tracker > 0]+[end if][Rume-tracker]).[as normal][line break]".
	
To miss Rume a lot: 
	increase Rume-tracker by 15;   
	if drama manager is being debugged or stats mode is true, say "[as the parser](Missing Rume a lot: score now [if Rume-tracker > 0]+[end if][Rume-tracker]).[as normal][line break]".
	
To dis Rume:
	decrease Rume-tracker by 5; 
	if drama manager is being debugged or stats mode is true, say "[as the parser](Letting Rume go: score now [if Rume-tracker > 0]+[end if][Rume-tracker]).[as normal][line break]".	

To dis Rume a lot:
	decrease Rume-tracker by 15;
	if drama manager is being debugged or stats mode is true, say "[as the parser](Forgetting Rume: score now [if Rume-tracker > 0]+[end if][Rume-tracker]).[as normal][line break]".
	
After remembering Rume for the first time: miss Rume; continue the action.

Report remembering Rume: try mourning instead.

Chapter - Story / Puzzle Mode

[ After the Homeworld sequence, we ask the player whether they'd prefer an emphasis on story or puzzles, using actions during that sequence to make a guess. ]

The drama manager is a thing. The drama manager can be storied or puzzled. The drama manager is puzzled. To decide whether story mode: if drama manager is storied, decide yes; decide no. To decide whether puzzle mode: if drama manager is puzzled, decide yes; decide no.

The boredom meter is a number that varies. 

[ A key narrative component that most interactive fiction lacks is the concept of pacing. If the player is stuck on a puzzle, even the most well-constructed game grinds to a halt. The longer the player goes without seeing something new, the more the artifice is exposed and the magic is lost.

Blue Lacuna attempts to deal with this problem by keeping track of how long it's been since something interesting happened, and, if we're past a certain point, introduce hints, new plot points, or even just random scenes for fun into the game. The result is that we make sure new things are always happening, even if it's not necessarily relevant to the plot.

Some time for excitement scenes just break the monotony, or draw the player towards unexplored accessible rooms, or add more Progue color. Others are more explicit hint-giving scenes. In these we should take care not to give hints to players who don't want them. The hint scenes should be sequential, slowly revealing more and more info.]

Understand "dmtrack" as dmtracking. dmtracking is an action out of world applying to nothing.

Carry out dmtracking:
	if dr-window is g-present, shut down dr-window;
	otherwise open up dr-window.

The dr-window is a g-window with type g-text-buffer. The main-window spawns the dr-window. The position of the dr-window is g-placeabove. The scale method of dr-window is g-fixed-size. The measurement of the dr-window is 3.

Before reading a command when dr-window is g-present: 
	move focus to dr-window, clearing the window;
	say "boredom meter: [boredom meter] [if time for excitement][d](time for excitement)[x] [end if][if desperate for excitement][o](desperate for excitement)[x] [end if]    - moves since: last chapter - [turn count - last chapter turn][line break]";
	say "curr ep: [current episode] - [the number of filled rows in episode schedule] possible episode[s] - [the number of filled rows in Table of Progue's Appointment Book] appointment[s]";
	return to main screen.

Section - Something Dramatic Is Up

[ We don't want to step on the toes of other systems or have events happen too fast, so we check and make sure not to trigger scenes at inappropriate times.]

To decide whether nothing dramatic is up:
	if player is on beehive, decide no;
	if we are examining an echo-keyword, decide no;
	if player is enclosed by mind chair, decide no;
	if location is regionally in Chairlift-Ride, decide no;
	if something dramatic is up with Progue, decide no;
	decide yes. To decide whether something dramatic is up: if nothing dramatic is up, decide no; decide yes.

To decide whether nothing dramatic is up with Progue:
	if ambience_on is 0, decide no;
	if we are landmark-going, decide no;
	if Progue is attentive, decide no;
	if current episode is not no-episode and ( Progue is enclosed by location or distant-Progue is enclosed by location ) , decide no;
[	if scene_underway is true, decide no;]
[	if the animus of Progue is acting, decide no;]
	decide yes.  To decide whether something dramatic is up with Progue: if nothing dramatic is up with Progue, decide no; decide yes.

To decide whether just had excitement:
	if boredom meter < 3, decide yes;
	decide no.

Section - Time For Excitement

The excitement level is a number that varies. The excitement level is 200.

To decide whether time for excitement, ignoring drama:
	if boredom meter > excitement level and ( ignoring drama or   nothing dramatic is up ) begin;
		if the drama manager is being debugged, say "// Drama manager: deciding that time for excitement ([boredom meter] > [excitement level]).";
		decide yes;
	otherwise;
		decide no; 
	end if. 

The desperation level is a number that varies. The desperation level is 400.

To decide whether desperate for excitement:
	if boredom meter > desperation level and nothing dramatic is up begin;
		if the drama manager is being debugged, say "// Drama manager: deciding that desperate for excitement ([boredom meter] > [desperation level]).";
		decide yes;
	otherwise;
		decide no; 
	end if. 	

Section - Triggering Progue

[ About once an hour (or when time for excitement) we check to see if we should trigger a Progue scene. (The triggering code is in Episodes.)]
	
Scene-daemon is a truth state that varies. Scene-daemon is false. At the time when the daemon wakes: if the drama manager is being debugged, say "// Drama manager: scene-daemon awakes."; now scene-daemon is true. 


Chapter - When Interesting Things Happen

[ Whenever something new or unusual happens, we reset the boredom meter.]

To reset the boredom meter with (msg - some text):
	if drama manager is being debugged, say "// Drama: resetting the boredom meter (because [msg]).";
	now boredom meter is 0.

To assuage boredom with (msg - some text):
	if drama manager is being debugged, say "// Drama: assuaging boredom (because [msg]).";
	decrease boredom meter by 25;
	if boredom meter < 0, now boredom meter is 0.

Section - Going to an unvisited room

After going to an unvisited room: reset the boredom meter with "going to an unvisited room"; continue the action.

Section - Discussing something new

[ This covers the dreams too.]

Before discussing an unspoken beat (this is the Drama Manager reset boredom meter when saying something new rule): reset the boredom meter with "talking to somebody"; continue the action.

Section - Blue Flashes

[ This is defined in Homeworld.] 

Section - Examining something new

Definition: a thing is unexamined if we have not examined it and it is not set dressing and it is not minor.

After examining something unexamined: assuage boredom with "examining something new"; continue the action.

Section - New chapter

[ This is defined in Main.]

Section - The Endgame

Every turn when a random chance of 1 in 10 succeeds and ( Finishing-Treeworld is solved or Finishing-Rebelworld is solved ) : reset the boredom meter with "Endgame"; continue the action.



Chapter - When Uninteresting Things Happen

[ The boredom meter naturally rises over the course of time. However, certain actions indicating boredom or frustration cause it to rise faster.]

To be more bored with (msg - some text):
	increase boredom meter by 20;
	if story mode, increase boredom meter by 10;
	if drama manager is being debugged, say "// Drama: becoming more bored because [msg].".

Section - The dreadful march of time

Every turn when boredom meter >= 0 (this is the boredom increases over time rule): increase boredom meter by 1.

Section - Frustrated Behavior

Understand the commands "damnit" and "hell" and "bastard" and "bitch" and "fucker" and "shithead" and "asshole" as "damn".

Swearing obscenely is puzzle frustration. Swearing mildly is puzzle frustration. Attacking something is puzzle frustration. Displaying the hints text is puzzle frustration.

Before puzzle frustration: be more bored with "puzzle frustration"; continue the action. 

Section - Parser Messages

[ Parser messages are sometimes an indicator that the player is frustrated, because they are either trying things that aren't understood or they're pushing against the limits of the implementation.]

[ This is coded in the main code.]

Section - Repeating the same action

The last-action is a stored action that varies. The last-action-counter is a number that varies.

Every turn (this is the watch for repeated actions rule):
	if the action-name part of current action is the action-name part of last-action and we-are-landmark-going is false, increase last-action-counter by 1;
	otherwise now last-action-counter is 0;
	if last-action-counter >= 4 and current action is not going somewhere:
		be more bored with "repeated verb";
	now last-action is current action.

Section - Taking a Nap

[ See main code.]

Section - Repeating a conversation topic

Before discussing something spoken (this is the Drama Manager be more bored with repeated conversation rule): be more bored with "repeating conversation"; continue the action. [ Has to be before because with "after" everything is spoken.]



Chapter - Overall Time For Excitement Scenes

Section - Increase Liklihood of Progue Episodes

[ Code in the Episodes extension. If we've defined an episode as "common" or whatever the chance that it will not fire is overruled if time for excitement.]

Section - Prodding to Explore

[ Some players may not realize they haven't explored all the available areas. This scene can prod them to do so. Normally our time for excitement scenes are one-time only, but since this is an event that could conceivably happen more than once, we may as well let it.]

Prodding-To-Explore is a recurring scene. Prodding-To-Explore begins when time for excitement and nothing dramatic is up and PTE won't annoy player and location is regionally in Lacuna [ and final release mode is true] and the number of adjacent unvisited rooms > 0 and a random chance of 1 in ptectr succeeds. Prodding-To-Explore ends when 1 is 1. ptectr is a number that varies. ptectr is 1.

To decide whether PTE won't annoy player: [ Make sure this doesn't lure the player somewhere they can't go.]
	if ( location is North Marsh or location is Lawn ) and player is wounded, decide no;
	if location is Edge of Ravine, decide no;
	if location is Lower Beach and Inside-Manta is unvisited, decide no;
	if location is Forest3, decide no; [ So as not to spoil Egg puzzle.]
	decide yes.

When Prodding-To-Explore begins:
	increase ptectr by 1; [ make this scene increasingly unlikely to fire.]
	let candidate be a random adjacent unvisited room;
	reset the boredom meter with "hinted at unexplored room";
	unless candidate is not a room:
		let way be the best route from the location to candidate;
		unless way is not a direction:
			move small furry creature to location;
			now way-went of small furry creature is way;
			say "Out of the corner of your eye, you catch a hint of movement. Some small furry [o]creature[x] just darted [if candidate is indoorsy]inside[else]off to[end if] [the prose name of candidate][if way is up] above you[else if way is down] below you[else if dir] to the [way][end if]. It turns back and looks at you, whiskers twitching and little paws quivering, then darts off and vanishes.".

A small furry creature is seen minor set dressing. The description is "It's scampered off now, but you realize you've never explored off in that direction." Understand "critter/animal/something/whiskers/paws" as small furry creature when small furry creature is enclosed by location.

A small furry creature has a direction called way-went. Instead of following small furry creature, try going way-went of small furry creature.


Drama Manager ends here.

