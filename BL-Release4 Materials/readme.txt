************************************
BLUE LACUNA
An Interactive Novel in Ten Chapters
By Aaron A. Reed
************************************

Release 4 / July 18, 2010
http://www.lacunastory.com/



******************************
********* INSTALLING *********
******************************

In addition to the main "BlueLacuna-r4.gblorb" file, you will also need an "interactive fiction interpreter" program for your operating system (see below). 

Install the interpreter program by merely putting all the files in the .ZIP archive in a folder of your choosing, then launch it by double-clicking the "Spatterlight" or "Git" icon in that folder. Mac users should then click on the "Spatterlight" menu, select Preferences, and make sure "Colors and styles" is checked.

Use the File menu of your interpreter to open the "BlueLacuna.gblorb" file and the story will begin. Type HELP within the game for more detail instructions.



******************************
*** SUPPORTED INTERPRETERS ***
******************************

Blue Lacuna now runs on most major Glulx interpreters. The story requires an interpreter that has been optimised for speed and conforms very precisely with the Glulx spec. The interpreters recommended below are known to work; the story may run on other interpreters, but it may be slower or more prone to crash. 

FOR WINDOWS

 * Git (version 1.2 or higher). http://www.ifarchive.org/if-archive/programming/glulx/interpreters/git/wingit-126.zip

FOR APPLE MACS

 * Spatterlight (version 0.5 or higher)
   http://ccxvii.net/spatterlight/download/spatterlight-0.5.0.zip

   **NOTE: After installing and starting Spatterlight, you will need to go to the Preferences menu and make sure "Colors and styles" is selected.**

FOR LINUX

 * There are no officially supported interpreters at this time, although you may be able to compile Glulxe for your platform: http://www.eblong.com/zarf/glulx/



******************************
*********** HINTS ************
******************************

A full online hint guide is available at http://lacunastory.com/hints.html


******************************
*********** CONTACT **********
******************************

The author can be reached at aaron@aaronareed.net. 



******************************
********** LICENSE ***********
******************************

Blue Lacuna and its source text are released under the Creative Commons  Attribution-Noncommercial-Share Alike 3.0 license. More information is available here: http://creativecommons.org/licenses/by-nc-sa/3.0/us/ . In summary, you may freely distribute, perform, or create derivative works, but not for commercial purposes. The cover art contains photography by Kevin N. Murphy under the Creative Commons Attribution 2.0 Generic license.



******************************
********** CHANGELOG *********
******************************

*Release 4* July 18, 2010.
 -- Updated to compile with Inform 5Z71. The new speed improvements in this release of Inform and newer interpreters should make BL run faster on slower machines.
 -- Updated several previously hacked extensions to merely replace the relevant parts of the existing extension, to simplify source code release
 -- Fixed bugs where Progue responded to player nudity at times when he shouldn't or in dramatically inappropriate ways.
-- Fixed a bug that could cause the Dr. Quick epilogue to get stuck.
-- Prepared code for public release.


*Release 3* March 4, 2009.
 -- Not a Blue Lacuna bug, but an updated version of Git which fixes a presentation bug in Glk has been posted. If Blue Lacuna wasn't honoring your custom styles, the new version of Git should address this. See http://tinyurl.com/new-git 
 -- Fixed Progue bugs relating to:
    * too easy to miss the conversation at the start of chapter 7
    * using meta commands like "save" and "restore" during guessing games
    * unable to leave the rainfall conversation
    * the distant steam mission (removed this scene entirely)
    * stuck conversations on scenes incorrectly triggered while swimming
    * disappearing from room descriptions
 -- A lot of subtle and mysterious errors were introduced in Release 2 because of internal reorganization of the source code.
	* The bridge/stairs control now works again in story mode.
	* Using cardinal directions in City no longer confuses the map generator.
	* The bees can no longer get into a stuck loop where they stop flying off and/or dancing.
 -- Removed some testing commands that had been left.
 -- Fixed bug where, if Progue was nearby when a green flash was triggered, Rume's gender pronouns fluctuated randomly; and a related bug where Rume's gender could be printed incorrectly during the epilogue.
 -- The pots of paint on the Studio's workbench were sometimes not accessible when they should be.
 -- Waiting for a specific tide level is now disabled (it never worked, but gave the impression that it did in certain cases.)
 -- The maximum number of locations in the endgame text is now correct.
 -- The cage in the secret prison is no longer portable.
 -- Fixed several bugs in the confrontation and epilogues that could cause these conversations to derail in certain cases.
 -- Fixed a few bugs in City with the coins and the historian.
 -- Previously, "subject" was removed from the list of conversation options at times where it shouldn't be typed. Now typing it at these times is explicitly disallowed. (This prevents a bug where Dr. Cloudeye could seem to turn into Progue, among other issues.)
 -- In some of the epilogues, the story could incorrectly think you chose one side or another when you meant to choose neither.
  -- Sundry bits of implementation added to the "stay with Rume" sequence.

*Release 2* February 4, 2009.
 -- Fixed bug where asking Progue something not on the keyword list during the final confrontation led to a crash.
 -- Fixed issue where it was possible to finish the final dream without defining both passwords, which led to the player getting stranded on the mountaintop in Chapter 9.
 -- Fixed: trying to watch more than the maximum number of blue flashes (when player left Rume) caused a crash.
 -- Fixed: if you miss the Meteor Shower event after scheduling it, Progue erroneously tried to start it the next morning.
 -- Fixed: bug that prevented Progue from leading the player to the hot springs in the "Let's Take A Soak" episode.
 -- Fixed: Progue would respond to certain unexpected keywords like "goodbye" even while asleep.
 -- Softened the language of the "story/puzzle" question so as to not imply the player is an IF newbie...
 -- Moved information about SAVE and RESTORE to more prominent positions in the help menu and tutorial.
 -- A few bugs where taking an unexpected action led to text from a different part of the game being printed.
 -- A handful of minor description or keyword related issues.
 
*Release 1* January 26, 2009.
 -- Initial release.
