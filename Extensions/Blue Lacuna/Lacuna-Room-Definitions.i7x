Lacuna-Room-Definitions by Blue Lacuna begins here.

Book - Room Definitions

Use authorial modesty.

Outdoors is a region. Beachfront and Tiderooms and North Island and West Forest and Frozen Hell and East Island and Rain Forest and Marshlands and High Altitude and Narrow Ravine and Volcanic Uplands and Secret Island are regions.

Beachfront and Tiderooms and North Island and West Forest and Frozen Hell and Volcanic Uplands and East Island and Rain Forest and Marshlands and High Altitude and Narrow Ravine and Secret Island are in Outdoors. Rim of Volcano and Chasm Edge and Crater Pond and Atop and Tidepools and Hot Springs and Saddle are in Outdoors.

South Beach is south of Center Beach, northwest of Fork, and northeast of Among the Boulders. Among the Boulders is south of Ocean Waters and northeast of Tidepools. Center Beach is west of Hut. Center Beach is south of North Beach. Hut is west of Back Room. North Beach is north of Center Beach. South Beach, Among the Boulders, Center Beach, and North Beach are in Beachfront. Lower Beach is in Outdoors.

Ocean Waters is west of Lower Beach, southwest of Lower Beach, and northwest of Lower Beach. Lower Beach is northwest of South Beach, west of Center Beach, north of Among the Boulders, and southwest of North Beach. Inside-Manta is inside from Lower Beach.

High Altitude is a Region. High Altitude is in Outdoors. Ledge is up from North Marsh. Cliffside is up from Ledge. Lawn is up from Cliffside. Cliffside is down from Lawn. Observatory Exterior is east of Lawn. Ledge, Cliffside, Lawn, and Observatory Exterior are in High Altitude.

Chairlift-Ride is a region in Outdoors. Chair-lift1, Chair-lift2, and Chair-lift3 are in Chairlift-Ride. 

Marshlands is a region. Marshlands is in Outdoors. West-Marsh is a room. East Marsh is east of West-Marsh. North Marsh is northeast of West-Marsh and north of East Marsh. West-Marsh, East Marsh, and North Marsh are in Marshlands.

Stumps is a room in North Island. Stumps is north of Rise. Stumps is southwest of West-Marsh. Stumps is southeast of Chairlift Base.

Rise is northwest of North Beach. Hot Springs is east of Rise. Stumps is north of Rise. Chairlift Base is northwest of Stumps. Rise, Stumps, and Chairlift Base are in North Island.

Jumble and Chasm Floor and Volcano Floor and Steam Vents and Cinder Cone are in Frozen Hell. Ocean Waters is in Tiderooms.

Volcano Slopes and Sloping Meadow are in Volcanic Uplands.

Top of Ravine and Ravine Floor are in Narrow Ravine.

Fork is west of Sloping Meadow and north of Big Tree. The rope ladder is down from Treehouse and up from Big Tree. Volcano Slopes is south of Big Tree. Rim of Volcano is southeast of Volcano Slopes. Fork and Big Tree and Treehouse are in West Forest.

Chasm Floor is southeast of Jumble, and northwest of Volcano Floor. Volcano Floor is northwest of Cinder Cone and northeast of Steam Vents. Steam Vents is west of Cinder Cone. Cinder Cone is north of Volcano Cave and outside from Volcano Cave. 

[These three invisible doors below are necessary to simulate our one complex door, which is essentiall movable between two exits (something the I7 world model doesn't allow.) Doing it this way means we don't have to adjust exits on the fly, which is good since that means pathfinding info can be cached rather than constantly recalculated.]

The chasm-ebridge is a closed unopenable undescribed door. It is privately-named. It is northeast of Chasm Edge and southwest of Rockslide. 

The chasm-wbridge is a open unopenable undescribed door. It is privately-named. It is east of Sloping Meadow and west of Chasm Edge.

The chasm-stairs is a closed unopenable undescribed door. It is privately-named. It is up from Chasm Floor and down from Chasm Edge.

Crater Pond is southeast of Rockslide. Grassy End is northwest of Hive Room. Hive Room is north from Rockslide. Hive Room is south of a room called Edge of Ravine. Hive Interior is up from Hive Room. Ravine Floor is down from Edge of Ravine. Top of Ravine is west of Ravine Floor. Water Cave is west of Top of Ravine and down from Top of Cave. Top of Cave is down from Saddle. Saddle is down from Atop. 

A rainforest-room is a kind of room. Forest1, Forest2, Forest3, Forest4, Forest5, Forest6, Forest7, Forest8, and Forest9 are rainforest-rooms. Forest1 is north of Forest2, west of Forest7 and northwest of Forest6. Forest2 is east of Hive and north of Forest5. Forest3 is southeast of Forest2. Northwest of Forest3 is nowhere. Forest3 is east of Forest5,northwest of Forest4, and west of Forest9. east of Forest3 is nowhere. north of Forest3 is Forest9. Southeast of Forest3 is nowhere. south of Forest3 is Forest4. north of Forest4 is nowhere. Crater Pond is southwest of Forest4. Northeast of Crater Pond is nowhere. Forest4 is southeast of Forest9. east of Forest4 is Forest9. Forest5 is north of Crater Pond. Forest6 is south of Forest7. Southeast of Forest6 is nowhere.  north of Forest1 is Edge of Ravine. Forest8 is south of Viewpoint,northeast of Forest7 and northeast of Forest9. Forest9 is southeast of Forest8.  Forest6 is northwest of Forest9. Southeast of Forest6 is nowhere. south of Forest9 is nowhere.

Backside is down from Egg Room. Egg Room is northeast of Forest3. Egg Interior is inside from Egg Room. Seal Beach is down from Backside.  Prison is north of Overhang. South of Prison is nowhere. Overhang is west of Prison. East of Overhang is nowhere. Mossy Ledge is east of Prison. West of Mossy Ledge is nowhere. Prison is north of Mossy Ledge. Overhang is south of Mossy Ledge. Mossy Ledge is south of Overhang. Echo Chamber is down from Overhang. Backside, Seal Beach, Overhang, Prison and Mossy Ledge are in Secret Island.

Progue's Domain is a region. Hut and Studio and Back Room are in Progue's Domain.

East Island is a region. Rockslide, Hive Room, Hive Interior, Grassy End, Edge of Ravine, and Viewpoint are in East Island.

Lacuna is a region. Outdoors and Progue's Domain and Volcano Cave and Top of Cave and Water Cave and Egg Interior and Inside-Manta and Echo Chamber are in Lacuna.

Studio, Hut, Back Room, Jumble, Treehouse, Volcano Cave, Echo Chamber, Water Cave, Egg Interior, Inside-Manta and Top of Cave are indoorsy.

Center Beach, Chairlift Base, Volcano Floor, Fork, Hive Room, East Marsh, Egg Room, and Overhang are landmarked.

 Homeworld is a region. Rebelworld is a region. Treeworld is a region.

To say surface-material:
	if location is regionally in Beachfront begin; say "sand";
	otherwise if location is regionally in Tiderooms; say "ocean floor";
	otherwise if location is regionally in Marshlands; say "marshy ground";
	otherwise if location is Rockslide; say "loose boulders";
	otherwise if location is Hive Room or location is Edge of Ravine or location is Viewpoint; say "dirt";
	otherwise if location is regionally in Rain Forest; say "forest underbrush";
	otherwise if location is Sloping Meadow or location is Crater Pond or location is Lawn or location is Observatory Exterior; say "grass";
	otherwise if location is regionally in Frozen Hell; say "lava rock";
	otherwise if location is Chasm Edge or location is Rise; say "lava rock";
	otherwise if location is Ledge; say "rock";
	otherwise; say "ground";
	end if.

Definition: a room is landed: if it is Ocean Waters, decide no; decide yes.

Chapter - Elevations

The elevation of Tidepools is 5 feet. The elevation of Among the Boulders is 10 feet. The elevation of North Beach is 12 feet. The elevation of Center Beach is 8 feet. The elevation of Ocean Waters is 0 feet. The elevation of Lower Beach is 2 feet. The elevation of South Beach is 12 feet. The elevation of Rise is 25 feet. The elevation of Hot Springs is 25 feet. The elevation of Stumps is 5 feet. The elevation of Chairlift Base is 11 feet. The elevation of West-Marsh is 4 feet. The elevation of East Marsh is 4 feet. The elevation of North Marsh is 4 feet. The elevation of Ledge is 100 feet. The elevation of Hut is 18 feet. The elevation of Studio is 19 feet. The elevation of Back Room is 19 feet. The elevation of Fork is 25 feet. The elevation of Sloping Meadow is 30 feet. The elevation of Big Tree is 30 feet. The elevation of Volcano Slopes is 30 feet. The elevation of Rim of Volcano is 100 feet. The elevation of Chasm Edge is 35 feet. The elevation of Jumble is 20 feet. The elevation of  Chasm Floor is 20 feet. The elevation of Volcano Floor is 20 feet. The elevation of Steam Vents is 20 feet. The elevation of Cinder Cone is 20 feet. The elevation of Volcano Cave is 15 feet. The elevation of Ravine Floor is 4 feet. The elevation of Top of Ravine is 12 feet. The elevation of Water Cave is 14 feet. The elevation of Top of Cave is 25 feet. The elevation of Saddle is 75 feet. The elevation of Atop is 110 feet. The elevation of Rockslide is 55 feet. The elevation of Hive Room is 45 feet. The elevation of Grassy End is 45 feet. The elevation of Edge of Ravine is 40 feet. The elevation of Viewpoint is 40 feet. The elevation of Crater Pond is 35 feet. The elevation of Treehouse is 35 feet. The elevation of Forest1 is 45 feet. The elevation of Forest2 is 45 feet. The elevation of Forest3 is 45 feet. The elevation of Forest4 is 45 feet. The elevation of Forest5 is 45 feet. The elevation of Forest6 is 45 feet. The elevation of Forest7 is 45 feet. The elevation of  Forest8 is 45 feet. The elevation of Forest9 is 45 feet. The elevation of Egg Room is 35 feet. The elevation of Backside is 22 feet. The elevation of Seal Beach is 15 feet. The elevation of Overhang is 15 feet. The elevation of Prison is 20 feet. The elevation of Mossy Ledge is 15 feet. The elevation of Echo Chamber is 3 feet. The elevation of Cliffside is 150 feet. The elevation of Lawn is 200 feet. The elevation of Observatory Exterior is 200 feet.
	
	 

Lacuna-Room-Definitions ends here.
