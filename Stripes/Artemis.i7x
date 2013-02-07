Version 2 of Artemis by Stripes begins here.
[Version 2 - Resting mechanic added]

"Adds a neuter rubber tigress pet named Artemis."

Section 1 - Encounter

Poor Kitty is a situation.
The sarea of Poor Kitty is "Midway";
when play begins:
	add Poor Kitty to badspots of girl;
	add Poor Kitty to badspots of furry;

Instead of resolving a Poor Kitty:
	if hp of rubber tigress is 0:
		say "     As you're cautiously poking into some of the abandoned booths around the fair, you end up startling one of those rubbery tigresses from her hiding spot.  She runs out of the cupboard on all fours with a squeaking mrowl of surprise, sending a pile of red plastic drinking cups spilling out around you.  As you watch her run towards the exit, you notice two strange things about her.  First, despite her feminine curves and rounded bottom, she seems to be stuck on all fours unlike the others of her kind.  The second, and even more surprising, is the lack of any gender or genitals to her.";
		say "     Intrigued, you look down at your feet and pick up one of the red cups at your feet.  Turning it around, you notice the cup in your hand has a large bite taken out of it, as if this feline's been slowly dining on them.  Cup still in hand, you head to the exit and look around.  You spot her hiding around the corner of a nearby booth.  She releases a soft, cautious mewl, eying the cup.  She pads out slowly towards you and mewls again.  Shall you [link]give her the cup (Y)[as]Y[end link] or [link]throw it away (N)[as]N[end link] to distract her?";
		if the player consents:
			say "     She looks up at you and slowly reaches out to take the cup into her muzzle.  Her smooth, rubbery mouth doesn't so much bite into it as absorb the portion her lips touch.  Her tongue slides the melting red and white plastic around in her mouth before swallowing it down[if skinname of player is listed in infections of Latexlist].  Seeing her do this is a little disconcerting, given your current nature, but she is careful to only take the cup into her mouth when she goes for the second bite[otherwise].  She takes rest of the cup into her mouth and it soon follows the first bite[end if].";
			say "     After swallowing the last of it down, she nuzzles against your leg and purrs softly, giving a cute, cat-like mew.  You reach down and cautiously pet her head, rubbing the rubber tigress's ears for a bit.  After petting her head for a while, you move to back off while she watches you go.";
			increase score by 5;
			now hp of rubber tigress is 1;
		otherwise:
			say "     You throw the several yards away and the tigress bounds over to it.  She gives it several playful bats with her paw, sending it skittering across the ground.  She hunkers down, hips and tail all atwitch as she creeps closer and then pounces.  She bites into the cup, her lips melting through the plastic.  As she's doing all this, you're backing away slowly and dash off around the corner.  You hear a soft, plaintive mewl in the distance, but that is all.";
			now hp of rubber tigress is 2;
			now Poor Kitty is resolved;
	otherwise if hp of rubber tigress is 1:
		say "     While walking the midway you get this odd feeling that you're being watched.  You catch a bit of orange out of the corner of your eye and close to the ground, but it is gone by the time you look.  Noticing that you've been in this area before, you suspect you know what's up.  You continue nonchalantly while knowing that strange, neuter tigress is following you.  You consider your options, you wonder if you should try offering her [link]another treat (Y)[as]y[end link] or just [link]drive her off (N)[as]n[end link].";
		if the player consents:
			say "     Continuing to walk along, you take some string you found and an empty water bottle out of your pack.  Keeping this out of sight, you tie the string around the neck of the bottle.  The next time you go around a corner, you hurry ahead and drop the bottle.  As your rubbery stalker comes around the corner, you tug at the string, making the bottle skitter a little.  She hunkers down and starts purring, her tail swishing as she shifts her weight before pouncing.  You tug the bottle a little further back, making her pursue it with soft swats of her padded paws.  Soon enough, you have her rolling on her back beside you, juggling the bottle on her paws as she purrs happily.  She plays with her toy for a while like this before biting down on it, eating the plastic in gooey bites.";
			say "     After swallowing the last of it down, she spits out the loop of string and nuzzles at your leg.  She purrs softly, giving a cute, cat-like mew.  You reach down and cautiously pet her head, rubbing the rubber tigress's ears.  She nuzzles against your touch, purring all the louder.";
			say "     'You're just a big kitty, aren't you?' you say to her, getting another mew from her.  'You're certainly a strange rubber tigress,' you muse.  'What can I call you?'  She can only reply with a mewl.  'Hmm... rubber tigress... RT... Artie?  No, Artemis.  How about Artemis, kitty?  Roman goddess of the hunt, wilderness and... uhhh... virginity.'  She seems pleased with this choice, giving a happy, squeaking mew and purring all the louder.  Having received a name from you, Artemis purrs and nuzzles at you happily.  It seems you've made a friend.  With her following, you go back to the concession stand where you first found her, gather up a stack of cups for her and put them in your pack.";
			increase carried of cup stack by 1;
			increase score by 20;
			now rubber tigress is tamed;
			now hp of rubber tigress is 3;
			now libido of rubber tigress is 30;
			say "     (The rubber tigress is now tamed! You can make her your active pet by typing [bold type][link]pet rubber tigress[end link][roman type].  You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command.  Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap.  Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
			now Poor Kitty is resolved;
		otherwise:
			say "     Continuing to walk along, you turn around the next corner and, once out of sight, run around the stand.  You move quietly as you sneak back onto the main thoroughfare, finding the strange tigress poking her head around the corner[if weapon object of player is not journal].  You pull out your weapon and charge at her[otherwise].  You raise your fists and charge at her[end if].  She gives a shrill shriek of surprise and scrambles away.  You don't expect that thing will be bothering you again.";
			now hp of rubber tigress is 2;
			now Poor Kitty is resolved;


Section 2 - Artemis

rubber tigress is a pet.  rubber tigress is a part of the player;
The description of rubber tigress is "[artemisdesc]";
The weapon damage of rubber tigress is 5;
The level of rubber tigress is 3;
The Dexterity of rubber tigress is 16;
The summondesc of rubber tigress is "The rubber tigress gives a soft mew and nuzzles at your thigh as you call her over.  She purrs happily when you scritch her ears.";
The assault of rubber tigress is "[one of]The rubber tigress swipes at your foe with her paws, hard, plastic claws unsheathed.[or]Sneaking around behind your foe, Artemis pounces on them with an angry mrowl![or]The rubber tigress bites at your enemy with hardened plastic teeth.[or]Artemis bashes herself against your foe, partially deflates and wraps her rubbery hide around them, squeezing down hard and slowing them long enough for you to get in an additional quick strike.[or]Winding her tail around your foe's [if a random chance of 1 in 4 succeeds]arm[otherwise if a random chance of 1 in 3 succeeds]leg[otherwise if a random chance of 1 in 2 succeeds]wrist[otherwise]ankle[end if], the rubber tigress holds them long enough to [if a random chance of 1 in 2 succeeds]get in some slashes with sharp claws[otherwise]bite them[end if].[at random]";

to say artemisdesc:
     say "     Artemis, as you've called the rubber tigress currently at your side, is built like a feral tiger make of smooth rubber, but with faintly feminine curves.  Her skin is a glossy orange with black stripes and flexes and moves as she pads quietly.  Malformed or incomplete for some reason, the rubber tigress cannot stand upright and lacks any gender of her own, unlike the rest of her kind.  Despite her female curves and strangely sexy booty, she has nothing under her striped tail save for the crinkled hole of her anus.  Noticing you looking at her, she [one of]purrs happily[or]rolls onto her back in search of tummy rubs[or]nuzzles your thigh[or]lightly mouths your hand with her padded muzzle[or]gives a cute, slightly squeaking mew[at random].";
	say "     While your companion, the loyal rubber tigress can keep an ear perked for trouble if you're sleeping outside, keeping you safe from unwanted interruption.";


instead of sniffing the rubber tigress:
	say "The rubber tigress smells faintly of rubber in a pleasant way.";

understand "Artemis" as rubber tigress.


Section 3 - Sexxxings and Playtime

Chapter 0 - Everyturn Mechanics

lastArtemisplay is a number that varies.  lastArtemisplay is normally 255.

An everyturn rule:
	if companion of player is rubber tigress:
		increase libido of player by 3;
		increase libido of rubber tigress by 5;
		if lastfuck of rubber tigress - turns >= 4 and ( cocks of player > 0 or cunts of player > 0 ):
			let diceroll be a random number from 80 to 300;			[lust check vs 300, total of 80 or less auto-wins]
			if diceroll < ( libido of player + libido of rubber tigress ):
				let artemissex be a list of numbers;
				if cocks of player > 0 and "More Anal" is listed in feats of player, add 1 to artemissex;		[anal]
				if cocks of player > 0, add 2 to artemissex;									[M-oral 1]
				if cocks of player > 0, add 3 to artemissex;									[M-oral 2]
				if cocks of player > 0, add 4 to artemissex;									[M-oral 3]
				if cunts of player > 0, add 5 to artemissex;									[F-oral 1]
				if cunts of player > 0, add 6 to artemissex;									[F-oral 2]
				if cunts of player > 0, add 7 to artemissex;									[F-oral 3]
				sort artemissex in random order;
				if entry 1 of artemissex is 1, say "[artemissex1]";
				if entry 1 of artemissex is 2, say "[artemissex2]";
				if entry 1 of artemissex is 3, say "[artemissex3]";
				if entry 1 of artemissex is 4, say "[artemissex4]";
				if entry 1 of artemissex is 5, say "[artemissex5]";
				if entry 1 of artemissex is 6, say "[artemissex6]";
				if entry 1 of artemissex is 7, say "[artemissex7]";
				now lastfuck of rubber tigress is turns;
		if lastArtemisplay - turns >= 4 and lastfuck of rubber tigress is not turns:
			if a random chance of 1 in 4 succeeds:
				if cup stack is owned:
					say "[one of][artemisplay1][or][artemisplay2][or][artemisplay3][or][artemisplay4][or][artemisplay5][or][artemisplay6][in random order]";
				otherwise:
					say "[one of][artemisplay5][or][artemisplay6][cycling]";
				now lastArtemisplay is turns;


Chapter 1 - Sexxxings Scenes

to say artemissex1:	[anal]
	say "     Your rubber tigress companion snuggles up beside you as you take a short break.  She nuzzles at your hand, getting you to scritch her.  As the scritching continues, Artemis slinks slowly forward, letting your hand rub down her back and eventually across her ass.  As you scritch her bottom, she gives a needy mewl and wiggles her rear, tail raised with her sexy bottom on display.  It takes you only a moment to realize what your kitty wants.  Lacking a pussy of her own, she still has another hole you can fill.";
	say "     Moving in behind her, you press your stiffening member to her anus and easily spread open that rubbery ring.  She mewls in pleasure, her soft, smooth flesh squeezing down around your [cock size desc of player] [cock of player] shaft, milking at it as you fuck her.  You pound away at the needy kitty, doing your best to satisfy her with a good, long fucking before finally cumming, depositing your sticky seed inside the kitty's rubber insides[if cock width of player > 40], rounding her tummy and making her slosh as she moves for quite a while[otherwise if cock width of player > 20], making her slosh a little as she moves around for a while[end if].  She stretches slowly and gives a big yawn, giving you a good view of her smooth, rubber maw.";
	now libido of player is ( 2 * libido of player ) / 3;
	now libido of rubber tigress is libido of rubber tigress / 3;

to say artemissex2:	[M-oral 1]
	say "     The rubber tigress nuzzles at your groin and mewls softly.  You reach down and scritch her head, knowing what your needy kitty's after.  You give your [cock size desc of player] [cock of player] cock a few strokes before letting her slide her slick muzzle down over it.  The smooth, rubbery mouth and tongue squeeze and rub at your shaft, coaxing your precum to flow.  This only serves to make her mouth slicker and you grip her neck, curling some of her rubbery hide around your fingers so you can pound into her muzzle.  This rough treatment seems fine by the kitty, who's more than happy to get some sexual fun.  Soon she's gulping down your hot seed as you cum down the feline's throat.  When you pull out, she licks her licks and rolls onto her back, rubbing her paws over her [if cock width of player > 40]bloated, [otherwise if cock width of player > 20]stuffed, [end if]cream-filled tummy";
	if cock width of player > 20:
		say ".  After having been so well fed, she gives a sleepy yawn";
	otherwise:
		say ".  She turns to you and seems to smile as she opens her muzzle to show that she's swallowed it all down, but this turns into a sleepy yawn from your lazy tigress";
	if hp of player < ( maxhp of player * 3 ):
		say ".  You end up yawning in response and, given how you're feeling, that might not be such a bad idea";
	otherwise:
		say ".  As always seems to happen when someone yawns, you can't help but yawn as well.";
	now libido of player is ( 2 * libido of player ) / 3;
	now libido of rubber tigress is ( 2 * libido of rubber tigress ) / 3;

to say artemissex3:	[M-oral 2]
	say "     The rubber tigress nuzzles at your leg, sniffing softly along it as she makes her way to your crotch.  She noses at it, licking her lips and mewling softly.  With a grin, you rub her head and offer your [cock size desc of player] [cock of player] cock to her.  She plunges her muzzle forwards, stuffing it into her mouth[if cock length of player > 9] and down her throat[end if].  She works her muzzle and tongue over your shaft with a lustful eagerness.  You pet her head, telling her what a good kitty is the feline gives you a fine blow job.  When you finally blow, she eagerly laps up every spurt of your cum she can get[if cock width of player > 40], stuffing her belly with your seed[otherwise if cock width of player > 20], feeding her your ample load[end if]";
	if cock width of player > 20:
		say ".  After having been so well fed, she gives a sleepy yawn";
	otherwise:
		say ".  She turns to you and seems to smile as she opens her muzzle to show that she's swallowed it all down, but this turns into a sleepy yawn from your lazy tigress";
	if hp of player < ( maxhp of player * 3 ):
		say ".  You end up yawning in response and, given how you're feeling, a nap might not be such a bad idea";
	otherwise:
		say ".  As always seems to happen when someone yawns, you can't help but yawn as well.";

to say artemissex4:	[M-oral 3]
	say "     Suddenly feeling quite turned on, you notice your kitty's sexy muzzle and decide to get a little relief.  With your poor kitty's lack of gender, she's more than eager to get some sexual fun now that she's got you to please.  She runs her tongue along your [cock size desc of player] [cock of player] cock.  Her tongue has rough, rubbery texture that's very pleasing.  Soon enough she has you very excited and leaking precum.  She slurps over your balls before taking your shaft into her muzzle and suckling at it.  You moan in pleasure, rub her ears and release your hot seed down her throat[if cock width of player > 40], rounding her empty belly with your seed[otherwise if cock width of player > 20], filling her empty belly with your seed[end if]";
	if cock width of player > 20:
		say ".  After having been so well fed, she gives a sleepy yawn";
	otherwise:
		say ".  She turns to you and seems to smile as she opens her muzzle to show that she's swallowed it all down, but this turns into a sleepy yawn from your lazy tigress";
	if hp of player < ( maxhp of player * 3 ):
		say ".  You end up yawning in response and, given how you're feeling, a nap might not be such a bad idea";
	otherwise:
		say ".  As always seems to happen when someone yawns, you can't help but yawn as well.";

to say artemissex5:	[F-oral 1]
	say "     The rubber tigress nuzzles at your groin and mewls softly, licking her lips.  Knowing what she's after, you find a spot to sit and spread your legs, giving her access to your juicy pussy.  As her rough, rubbery tongue licks across your wet folds of your [cunt size desc of player] snatch, you rub her head.  Reaching back a little, you grip her neck and curl some of her rubbery hide around your fingers so you can pull firmly to your pussy.  This rough treatment seems fine by the kitty, who's more than happy to get some sexual fun.  She dives her tongue into you, working it inside you to lap up your juices as you cum a few times before finally letting her go.";
	say "     After having gotten her tasty treat, your lazy tigress";
	if hp of player < ( maxhp of player * 3 ):
		say ".  You end up yawning in response and, given how you're feeling, a nap might not be such a bad idea";
	otherwise:
		say ".  As always seems to happen when someone yawns, you can't help but yawn as well.";
	now libido of player is ( 2 * libido of player ) / 3;
	now libido of rubber tigress is ( 2 * libido of rubber tigress ) / 3;

to say artemissex6:	[F-oral 2]
	say "     The rubber tigress nuzzles at your leg, sniffing softly along it as she makes her way to your crotch.  She noses at it, licking her lips and mewling softly.  With a grin, you rub her head and move onto all fours, waving your ass at her face.  With your juicy cunt on display, Artemis mrowls lustfully and dives in, licking over [if anallevel is 3]your pucker a few times before shifting down to [end if]your wet folds and lapping up your female cum as you get off several times to your eager pet's licking tongue.";
	say "     After having gotten her tasty treat, your lazy tigress";
	if hp of player < ( maxhp of player * 3 ):
		say ".  You end up yawning in response and, given how you're feeling, a nap might not be such a bad idea";
	otherwise:
		say ".  As always seems to happen when someone yawns, you can't help but yawn as well.";
	now libido of player is ( 2 * libido of player ) / 3;
	now libido of rubber tigress is ( 2 * libido of rubber tigress ) / 3;

to say artemissex7:	[F-oral 3]
	say "     Suddenly feeling quite hot and wet between your legs, you notice your kitty's sexy muzzle and decide to get a little relief.  Propping one leg up, you spread your pussy and call open your other pussy to deal with it.  She's more than eager to get some sexual fun and bounds over to you, pressing her muzzle to your snatch.  She runs her tongue along your dripping folds and teases your clit with the rough, rubbery texture of her tongue, exciting you greatly.  Soon enough she has you very cumming, your juices running over the kitty's muzzle.  She laps up as much as he can get and keeps it up, getting you off a few more times before you're feeling satisfied for the moment.";
	say "     After having gotten her tasty treat, your lazy tigress";
	if hp of player < ( maxhp of player * 3 ):
		say ".  You end up yawning in response and, given how you're feeling, a nap might not be such a bad idea";
	otherwise:
		say ".  As always seems to happen when someone yawns, you can't help but yawn as well.";
	now libido of player is ( 2 * libido of player ) / 3;
	now libido of rubber tigress is ( 2 * libido of rubber tigress ) / 3;


Chapter 2 - Playtime Scenes

to say artemisplay1:	[chase cup]
	say "     Artemis comes up to you and mewls softly.  She nuzzles at your pack and runs her tongue across her muzzle.  Figuring she wants another tasty cup, you pull one out, much to her delight.  She purrs happily and weaves around your legs, mewling and purring like a kitty eager to get a treat.  You scritch her ears and roll it across the ground.  She chases after it, batting it around with her paws before finally pouncing it and gobbling it down.";

to say artemisplay2:	[slurp cup]
	say "     Deciding your good kitty deserves a treat, you pull out one of the red plastic cups.  Hearing the crinkle of it, her ears perk up and she comes bounding over to you, mewling for her treat.  You scritch her ears and set it down for her.  She runs her tongue slowly along the rim, melting the edge of the cup.  She then leans in and seems to almost slurp up the cup, inhaling the flowing red and white plastic as the cup gradually melts down.  She smiles up at you, licking her muzzle as the last of the sticky goo slides down her throat.";

to say artemisplay3:	[juggle cup]
	say "     Artemis comes up to you and mewls softly.  She nuzzles at your pack and runs her tongue across her muzzle.  Figuring she wants another tasty cup, you pull one out, much to her delight.  She purrs happily and weaves around your legs, mewling and purring like a kitty eager to get a treat.  You scritch her ears and roll it across the ground.  She chases after it, batting it around with her paws before knocking it into the air so she can juggle and bat at it with her paws.  Finally getting a grip on it, she eats up the cup in three fast bites that consume the red plastic in gooey mouthfuls.";

to say artemisplay4:	[string cup]
	say "     Deciding to have some fun with your overgrown kitty, you pull out one of the plastic cups.  Hearing the sound of it coming out, her rubber ears perk up and she comes bounding over, mewling for her treat.  When you don't give it right away, she resorts to rolling onto her tummy to look extra cute.  It's not until you've tied and knotted some string through a hole you punch in the bottom of it that you put it down.  You start dragging the cup across the ground by the string, making a toy for her to bat and chase.  She has lots of fun swatting it around and pouncing at it, only eating the cup once you've both tired of the game.  After finishing it off, she gives a very wide yawn and licks her paws clean.  You can't help but yawn as well, though you feel happier for having taken the time to play with her a little.";
	if morale of player < 0:
		increase morale of player by 5;
		if morale of player > 0, now morale of player is 0;
	otherwise:
		increase morale of player by 1;

to say artemisplay5:	[tummy rubs]
	say "     As the rubber tigress wanders close to you, you reach out and scritch her ears.  She purrs happily and nuzzles into your touch.  You continue scritching her as she leans into it more and more, eventually flopping over onto her side.  She rolls over and mewls softly.  Kneeling down, you rub the cute tigress's tummy, making her moan and purr happily.  You keep this up until she's yawning and lays down to have a little rest.  Seeing her yawn has you do the same.";

to say artemisplay6:	[scritches]
	say "     Deciding to lavish some attention on your cute kitty, you wrap your arms around the tigress and start scritching her.  She purrs happily at his and nuzzles against you.  She particularly seems to like it when you rub under her chin.  You scritch and hug the big feline, cuddling her in your arms.";


Section 4 - Cup Stack

Table of Game Objects (continued)
name	desc	weight	object
"cup stack"	"A big stack of red, plastic cups you grabbed as treats for Artemis."	1	cup stack

cup stack is a grab object.
it is part of the player.
It is not temporary.

instead of using cup stack:
	if companion of player is rubber tigress:
		say "You toss Artemis one of the cups.  She bats it around playfully before eating it.";
		say "(These do nothing special yet.)[end link]";
	otherwise:
		say "You flip cup around in your hand for a moment, but have no real use for it without Artemis around.  You tuck it away again.";

instead of sniffing cup stack:
	say "Ordinary, everyday plastic cups[if facename of player is listed in infections of Latexlist and skinname of player is listed in infections of Latexlist].  They smell strangely... appetizing... to your altered nose[end if].";


Section 5 - Food/Drink

after using water bottle while companion of player is rubber tigress:
	say "     After finishing off your drink, you notice Artemis looking up at you... or, more appropriately, at your empty bottle.  You toss it to her and she [one of]chomps onto it, melting the plastic into clear goo and swallowing it down[or]pounces atop it, flattening it down before licking up one end and sliding it into her mouth whole to melt and slide down her throat[or]bats it around for a bit before eating it[at random].";

after using dirty water while companion of player is rubber tigress:
	say "     After finishing off your drink, you notice Artemis looking up at you... or, more appropriately, at your empty bottle.  You toss it to her and she [one of]chomps onto it, melting the plastic into clear goo and swallowing it down[or]pounces atop it, flattening it down before licking up one end and sliding it into her mouth whole to melt and slide down her throat[or]bats it around for a bit before eating it[at random].";

after using chips while companion of player is rubber tigress:
	say "     From the time you first started opening your snack, [one of]Artemis's eyes have been watching you intently[or]Artemis has been lying down and acting nonchalant, but you can see the corner of her eye watching, waiting[or]Artemis's ears have perked up and she's been purring around your legs, mewling excitedly[at random].  Finished with the snack, you roll the wrapper into a ball and toss it to her.  She bats it out of the air and chases it for a bit before licking it up with her tongue.  It melts in her mouth and flows down her throat with a soft gulp.";


Section 6 - Napping w/Artemis

to artemisnap:
	now libido of rubber tigress is libido of rubber tigress / 3;
	if hp of rubber tigress < 5:
		say "     As you're getting ready to lie down and take a nap, the rubber tigress pads over to you.  She purrs softly, kneads around for a little bit and then curls up to name with you.  Being mostly filled with air, she's fairly light, but still feels nice against your [one of]legs[or]thigh[or]side[at random] and her soft purring helps lull you to sleep.";
		increase hp of rubber tigress by 1;
	otherwise if hp of rubber tigress is 5:
		say "     As usual, when you're getting ready to lie down and take catnap, the rubber tigress pads over to you.  She purrs softly, kneads around for a little bit and then curls up to name with you.  Being mostly filled with air, she's fairly light, but still feels nice against your [one of]legs[or]thigh[at random] and her soft purring helps lull you to sleep.";
		attemptowait;
		say "     You have strange dreams again, feeling yourself lying down with Artemis atop you, but she's not merely resting on you, but flowing down overtop of you.  The tigress's rubbery flesh melts over you, wrapping around your waist and legs.  With her flowing over your groin, you can feel the sensation building and your sleep-clouded mind starts to realize that this may be no dream at all.  You try to get up, but she's already engulfed most of your legs and hips, making it impossible to stand.  When you press your hands to her head and try to push her off, her rubbery flesh deforms before going soft, capturing them as well.  The rubber overtop over your legs and waist presses in tighter, wrapping snugly over your body and loins[if cocks of player > 1].  Your cocks are fully erect, unchanged in form, but sealed in a layer of orange[otherwise if cocks of player is 1].  Your cock is fully erect, unchanged in form, but sealed in a layer of orange[end if][if cunts of player > 1].  You can feel more of her flowing skin pushing into your cunts, lining them with a thin layer of latex[otherwise if cunts of player is 1].  You can feel more of her flowing skin pushing into your cunt, lining it with a thin layer of latex[end if][if anallevel is not 1 or (cocks of player is 0 and cunts of player is 0)].  She even presses a bubble of the flowing stuff into your rear, coating your very depths with herself[end if].";
		say "     She stands you up even as she's solidifying around your arms and coating your head in flowing rubber, her feline head reforming over yours.  You gasp and try to take a breath, allowing her to slide into your mouth and down your throat.  Having you fully encapsulated now, she makes your body move, walking upright a little unsteadily for the first few steps.  Everything has a pale orange sheen and is ever so slightly out of focus, making you feel as if you are again in a dream.  You start to drift off, sleepwalking along as your pet walks you around.  She seems quite pleased with herself, able to [if bodyname of player is listed in infections of Taurlist]strut around as a taur[otherwise]stand upright as an anthro [end if]tiger.";
		if cocks of player > 0 and cunts of player > 0:		[herm]
			say "     But it's not like she does this for long, having something else she's wanted so much more to enjoy right between her legs.  Returning to where you were resting, she takes a seat and reaches down, running her smooth paws over your genitals, hers now as well, mewling softly in pleasure at the sensation.  Soon she's masturbating, stroking her [if cocks of player > 1]cocks[otherwise]cock[end if] and fingering her [if cunts of player > 1]pussies[otherwise]pussy[end if].  She plays with herself frantically and with little direction, simply overloading herself on the pleasures of having them.  She goes at it for hours, filling your walking dream with the sensation cumming again and again as your juices soak her thighs and your seed is released all across your hijacked body.  Eventually, she's finally sated for a time and you pass out fully into sleep.";
		otherwise if cocks of player > 0:				[male]
			say "     But it's not like she does this for long, having something else she's wanted so much more to enjoy right between her legs.  Returning to where you were resting, she takes a seat and reaches down, running her smooth paws over your maleness, hers now as well, mewling softly in pleasure at the sensation.  Soon she's masturbating, stroking her [cock size desc of player] [if cocks of player > 1]cocks[otherwise]cock[end if] and mrowling happily.  She plays with herself frantically and with little direction, simply overloading herself on the pleasures of having a gender.  She goes at it for hours, filling your walking dream with the sensation cumming again and again as your sticky seed is released all across your hijacked, rubber-coated body.  Eventually, she's finally sated for a time and you pass out fully into sleep.";
		otherwise if cunts of player > 0:				[female]
			say "     But it's not like she does this for long, having something else she's wanted so much more to enjoy right between her legs.  Returning to where you were resting, she takes a seat and reaches down, running her smooth paws over your genitals, hers now as well, mewling softly in pleasure at the sensation.  Soon she's masturbating,fingering her [cunt size desc of player] [if cunts of player > 1]pussies[otherwise]pussy[end if] and mrowling happily.  She plays with herself frantically and with little direction, simply overloading herself on the pleasures of having them.  She goes at it for hours, filling your walking dream with the sensation cumming again and again as she uses your hijacked body to frig you both over and over, letting your juices soak her thighs.  Eventually, she's finally sated for a time and you pass out fully into sleep.";
		otherwise:								[neuter]
			say "     She stumbles around for a bit, getting better and better and moving your [body size of player] body, enjoying her new, upright stature.  She rubs between your legs with a soft mewl of disappointment, still left without genitals.  She wiggles her fingers and seems to realize that she's still got something extra she was lacking before.  Stretching out where you were resting, she takes a seat and runs her paws over her body, rubbing, pinching, teasing and kneading any sensitive or interesting spot she can find.  She plays with herself frantically and with little direction, simply overloading herself on the pleasure of being able to grope and fondle herself[if anallevel is not 1].  Still wanting more, she slides a hand a little further down past your bare crotch to your crinkled anus.  She rubs at the rubber-coated hole and mewls at the sensation playing it provides.  Soon she's stuffing one, and then several fingers into your ass[otherwise].  In her search for stimulation at times, she gets a little rough, pinching too hard or pushing down too firmly, but it all brings a little pleasure for her with it as well[end if].  She goes at it for hours, filling your walking dream with these sensations as she plays with your hijacked body.  Eventually, she's finally tires of her new fun for now and you pass out fully into sleep.";
		wait for any key;
		increase hp of rubber tigress by 1;
	otherwise:
		say "     As you're getting ready to lie down and take a nap, the rubber tigress pads over to you, snuggling up at your feet.  Having a pretty good idea what she really has in mind, you pet her head and decide to just go with it.  You'll get your rest and even some kinky dreams while she gets her much needed release.  Once again, as you're drifting off into slumber, she starts to spread over you[if scalevalue of player > 5].  It takes some extra time and stretching to be able to cover your [body size of player], [bodydesc of player] body, but the prospect of being bigger as well makes it well worth the effort for her[end if].  This time you don't resist, instead letting her flow out and cover you.  The feel of her forming tightly around you, even reshaping you a little to make you into a [if cocks of player > 0 and cunts of player is 0]girlish tiger[otherwise]sexy tigress[end if][if bodyname of player is listed in infections of taurlist] taur[end if] made of rubber.";
		say "     The feel of her rubbery goo flowing [if cocks of player > 0 and cunts of player > 0]over and into you dual genitals[otherwise if cocks of player > 1]over your cocks[otherwise if cocks of player is 1]over your cock[otherwise if cunts of player > 1]into your cunts[otherwise if cunts of player is 1]into your cunt[otherwise]into your back passage[end if].  The feel of her covering your head and going down your throat is still somewhat disconcerting, but as that's ending, you drift off into a more passive state, sleepwalking along as she uses your body as her own.";
		if a random chance of 1 in 1 succeeds:	[other variations to come]
			if cocks of player > 0 and cunts of player > 0:		[herm]
				say "     After a bit of time just spent enjoying walking upright and casually feeling up her new body, she settles down to the main event, playing with those wonderful genitals she now possesses.  Putting her hand around [if cocks of player > 1]one of your [cock size desc of player] cocks[otherwise]your [cock size desc of player] cock[end if], she starts stroking its [cock of player] length with a soft purr.  When her other paw makes it down to your [cunt size desc of player] [if cunts of player > 1]pussies[otherwise]pussy[end if], she runs her paws over the wet, sensitive folds before pushing a few fingers into it and pumping away.  Much less frantic about her masturbation, but just as eager and overjoyed as ever, she plays with herself, and thereby with you, through several orgasms.";
				say "     All this dreamy pleasure has you moan softly, enjoying the feline's control of your body and the delight she takes in enjoying such pleasures you can take for granted at times.  She goes at it for quite some time, though time is a difficult concept to hold onto during the erotic dreams of this somnambulistic state.  As she's winding down, she delights in running her rubbery paws through the accumulated cum and juices sticking to herself and then licking them up.  Eventually, you drift off to a deeper sleep with her still encapsulating you.";
			otherwise if cocks of player > 0:				[male]
				say "     After a bit of time just spent enjoying walking upright and casually feeling up her new body, she settles down to the main event, playing with those wonderful male genitals she now possesses.  Your [if cocks of player > 1]cocks[otherwise]cock[end if] and balls jut from her feminine body, stiff and erect.  Putting her hand around [if cocks of player > 1]one of your [cock size desc of player] cocks[otherwise]your [cock size desc of player] cock[end if], she starts stroking its [cock of player] length with a soft purr.  After caressing her body a little longer, her paw ends up drifting down to her balls, your balls, and rolls them around in her paw.  She rubs and kneads at them, delighting in the pleasures they bring.  Much less frantic about her masturbation, but just as eager and overjoyed as ever, she plays with herself, and thereby with you, through several orgasms.";
				say "     All this dreamy pleasure has you moan softly, enjoying the feline's control of your body and the delight she takes in enjoying such pleasures you can take for granted at times.  She goes at it for quite some time, though time is a difficult concept to hold onto during the erotic dreams of this somnambulistic state.  As she's winding down, she delights in running her rubbery paws through the accumulated cum sticking to herself and then licking it up.  Eventually, you drift off to a deeper sleep with her still encapsulating you.";
			otherwise if cunts of player > 0:				[female]
				say "     After a bit of time just spent enjoying walking upright and casually feeling up her new body, she settles down to the main event, playing with those wonderful genitals she now possesses.  Sliding a paw to [if cunts of player > 1]one of your [cunt size desc of player] cunts[otherwise]your [cunt size desc of player] cunt[end if], she starts running her paw over the wet, sensitive folds.  After a little teasing, she pushes a few fingers into the wet cunny and starts pumping away.  She finds many a sensitive spot, most delightfully your [if cunts of player > 1]clits[otherwise]clit[end if], and gives particular attention to them.  Much less frantic about her masturbation, but just as eager and overjoyed as ever, she plays with herself, and thereby with you, through several orgasms.";
				say "     All this dreamy pleasure has you moan softly, enjoying the feline's control of your body and the delight she takes in enjoying such pleasures you can take for granted at times.  She goes at it for quite some time, though time is a difficult concept to hold onto during the erotic dreams of this somnambulistic state.  As she's winding down, she delights in running her rubbery paws through the accumulated cum and juices sticking to herself and then licking them up.  Eventually, you drift off to a deeper sleep with her still encapsulating you.";
			otherwise:								[neuter]
				say "     After spending a while enjoying walking upright and casually feeling up her new body, she seems much more at ease with moving you around than when she started out.  She even tries a little [one of]climbing[or]jumping[or]dancing[or]stretching[or]swinging[at random] before getting bored of this and settling down for the main event, playing with this wonderfully sensitive body she both now possesses and has the means to enjoy.  She lets her paws run all over her rubbery hide, putting particular emphasis on all those sensitive spots she's found before and even finding a few new ones to try out.  She is much less frantic in her search for stimuation than before, but remains just as eager and overjoyed as ever at doing so
[if anallevel is not 1].  Completing this preamble and wanting more, she slides a paw across your ass and starts teasing as her crinkled hole.  The rubber-coated ring parts easily enough for her, letting her stimulate you both inside and out[otherwise].  Her search for stimulation can be a little rough at times, but she seems to have a fairly good idea now of how much is too much and only indulges in a harder pinch or prod from time to time[end if].  She plays with herself, and thereby with you, for quite some time before eventually wearing herself out and letting you drift fully into slumber with her still encapsulating you.";
		wait for any key;
		increase hp of rubber tigress by 1;
		if hp of rubber tigress < 7, now hp of rubber tigress is 7;
	now skipturnblocker is 1;


after resting while companion of player is rubber tigress:
	now skipturnblocker is 0;
	if hp of rubber tigress is 4:
		say "     You wake up from your nap feeling refreshed[if libido of player > 40] and even somewhat less wildly aroused[end if].  As you stretch, you rouse the tigress at your side, who yawns her rubbery mouth wide and comes up to nuzzle you[if cocks of player > 0 or cunts of player > 0], picking up the faint scent of sex from her[end if].  You feel a little closer to the pretty kitty and snug her in your arms as thanks for keeping watch while you slept.";
		now libido of player is ( libido of player * 2 ) / 3;
	otherwise if hp of rubber tigress is 5:
		say "     You wake up from your nap feeling refreshed[if libido of player > 40] and even somewhat less wildly aroused[end if] despite the odd, sexual dreams you had.  As you stretch, you rouse your kitty, who yawns her rubbery mouth wide and comes up to nuzzle you[if cocks of player > 0 or cunts of player > 0].  You notice she again smells faintly of sex.  Perhaps she snuck off for a bit and found some fun of her own while you rested[otherwise].  You notice she seems in a particularly good mood, making you wonder if she perhaps snuck off for a bit and found some fun of her own while your rested[end if].  Regardless, you snuggle her affectionately and as thanks for keeping watch while you slept.";
		now libido of player is ( libido of player * 2 ) / 3;
	otherwise if hp of rubber tigress is 6:
		say "     You awaken same as always after your nap, your body same as it was before as if it was indeed all a strange dream.  Roused by your movement, the rubber tigress stretches and yawns her smooth mouth open wide before coming up to nuzzle you.  She purrs and licks your cheek, leaving a long streak of orange rubber that clings briefly before being pulled back into your mouth.  You can still smell the scent of [if cocks of player > 0 or cunts of player > 0]arousal[otherwise]yourself[end if] upon her.";
		say "     Looking yourself and her both over carefully, it seems you're both unchanged from these somnolescent escapades.  Since everything seems fine and intact, you can't really get upset with the kitty for wanting in on the fun, given her circumstances.  To show you're not upset, you give her a big, tight hug that briefly distorts her rubbery body and makes her head bulge comically.  She releases a long, squeaking mew to rebalance the air inside her before nuzzling and licking you again, a less sticky one this time.";
		now libido of player is libido of player / 2;
	otherwise:
		say "     When you awaken from slumber, you find yourself well rested and a little less aroused (at least for the moment).  Artemis is just starting to wake up as you shift about.  After a yawn and a stretch, she's nuzzling you and purring happily, getting some [']morning['] scritches from her you.  Having shared so much with the rubbery feline, you can't but feel closer to her.";
		now libido of player is ( libido of player * 3 ) / 4;
	now lastfuck of rubber tigress is turns;


[ hp of rubber tigress ]
[ 0 = no encounter     ]
[ 1 = fed once         ]
[ 2 = refused          ]
[ 3 = tamed            ]
[ 4 = 1 nap            ]
[ 5 = 2 naps           ]
[ 6 = 3 naps - glomped ]
[ 7 = 4+ naps (willing)]

Section 6 - Endings

[
when play ends:
	if rubber tigress is tamed:
...
]

Artemis ends here.