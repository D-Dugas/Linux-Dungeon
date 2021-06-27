#!/bin/bash

#Creating a variable called varloop which will be used to keep a while loop open
varloop=1
#Creating a variable called levelcount which will be used to verify what level the player is on, and running code specific to that level
levelcount=1

#Echo commands are used a huge amount throughout this whole program, for that reason I will only explain once what they are used for as they all serve the same purpose for our case
#The echo commands are used to print text to the user. This text is what is present between the quotation marks. We also use blank echo commands to create new lines and create nice formatting
echo
echo "Game Introduction:"
echo
echo "Welcome to the Linux Dungeon! This game was created by me (Dalen Dugas) as a final project for my Linux Scripting course taken during my Cyber Security degree. Its purpose was to challenge myself and create"
echo "something I'd be proud to add to my portfolio. When thinking of what I was going to create, I had many ideas, but one in particular kept sticking out to me. I thought to myself,"
echo "wouldn't it be awesome to create a game using Bash that could be used to both learn, and remember Bash? That's when I started to think of the old DOS text adventure games, and realized"
echo "I could create one of those myself to serve this purpose, and so, here we are! Please read the game rules to make sure the experience is as flawless as possible, and have fun!"
echo
echo "Game Rules:"
echo
echo "1. Play with the terminal on fullscreen! This will ensure everything looks as nice as possible!"
echo "2. The solution to every answer is a Bash command. It will never be multiple, and will always be lowercase, some examples may be cd, ls, and pwd"
echo "3. If at any point you want to close the program, simply type exit!"
echo
#Like the echo commands, we use cat throughout the program as well. I will only explain it here, but every use of cat within this program serves the same purpose
#The cat command is used to print the contents of a file to the user. In our case, we use it to print files that contain images made out of text, so our game has graphics
cat caveart.txt
echo
echo "You awaken within a dark dungeon. You have no knowledge of where you are, and no memory of how you got here. You look around the room and see multiple paths. One in particular calls to you."
echo "As you stand to approach the path, you feel your foot kick something, and hear the sound of something sliding. As you look to the ground, you are able to faintly see the outline of a book."
echo "You pick it up, and start to analyze the book. It's made of wood, and is quite heavy. While holding it, you feel some type of energy within you, an energy you can't describe. The front of"
echo "the book reads the words: The Spells of Linux, and nothing else. As you flip through the pages, you feel a strange wave of knowledge wash over you. This is a spellbook. You don't know how to use it,"
echo "you don't know what it does, and you don't even believe in magic, but for some reason you are sure in your heart that this book is not ordinary. You hold onto it, and continue to the pathway."
echo "As you approach, the stone walls of the dungeon crumble, and block your path. As you stand in fear that your potential exit has been lost, the book starts to glow! Of course! There must be a spell"
echo "we can use in order to get past these stones! It's time to recite a spell, you just have to figure out the right one! If we wanted to change locations, how could we do it......"
echo

#The start of our while loop. It simply says while the variable varloop is not equal to 0, do the following. This will virtually always be true, effectively keeping the program running endlessly until the user exits
while [[ $varloop != 0 ]]; do
    #Reading user input and storing it in a variable called answer
    read answer

    #An if statement that checks if the user has not entered a correct answer. If that is the case, a variable called errorcheck is set to 1, and will be used later in the code
    if [[ $answer != "cd" && $answer != "ls" && $answer != "rm" && $answer != "mkdir" && $answer != "pwd" && $answer != "cp" && $answer != "sleep" && $answer != "history" && $answer != "clear" && $answer != "exit" ]]; then
        errorcheck=1
    fi

    #An if statement that checks if the answer variable is equal to cd, and if the levelcount is 1. If it is, the code within is ran
    if [[ $answer == "cd" ]] && [[ $levelcount == 1 ]]; then
        echo
        #Once again using the cat command to print art to the screen. This is the last time I will point this out
        cat box.txt
        echo
        echo "You teleport through the stones as if they never existed in the first place, and you now stand within a new room! The spell worked! You quickly search your surroundings and in the corner of"
        echo "the room you discover a box. As you attempt to put your hand within it, you receive a shock and are thrown off your feet. That hurt! It looks like it may be time for another spell! The question"
        echo "is which spell should we use to list the contents of the box?"
        echo
        #Letting the levelcount variable be equal to what it currently is set to, plus 1. This is used so we can advance the user through the levels
        let levelcount=levelcount+1
        #Letting the errorcheck variable be equal to 0, virtually resetting it. This is done due as if we don't reset it the program will throw out an error even if it was the right answer
        let errorcheck=0
    #Elif is used to say if the above if statement isn't true, then check this instead. In this case it is checking to see see if the answer was not equal to the correct values, which in this case are cd and exit
    #It then checks that levelcount is equal to 1 and errorcheck is equal to one, which means it is true. If those criteria turn out to be true, a message is printed to the user to tell them to try again
    elif [[ $answer != "cd" ]] && [[ $answer != "exit" ]] && [[ $levelcount == 1 ]] && [[ $errorcheck == 1 ]]; then
        echo
        echo "Try Again!"
        echo
    #Fi is used to end an if statement
    fi

    #Every single level from here on out follows the exact same structure as the level above. For that reason, I will not be explaining each one as it would just be the same thing repeated
    #The only things that change are the text outputs, the correct answers the program is looking for, and the values of the variables. Everything else works the exact same
    #I will continue the comments when something new occurs within the code
    if [[ $answer == "ls" ]] && [[ $levelcount == 2 ]]; then
        echo
        cat demon.txt
        echo
        echo "It worked! In front of us is a list of what's inside the box. The list includes a kazoo, a Gameboy, and a sword. While some Pokemon on the Gameboy would be great fun right now, we decide"
        echo "to be smart and take the sword. As you turn around, a terrifying demon appears! You quickly swing your sword and cut the monster, but it heals instantly! Time to think...... That's it!"
        echo "You must enchant the sword with a magical spell to defeat the demon! What spell can you use to remove something from the world?"
        echo
        let levelcount=levelcount+1
        let errorcheck=0
    elif [[ $answer != "ls" ]] && [[ $answer != "exit" ]] && [[ $levelcount == 2 ]] && [[ $errorcheck == 1 ]]; then
        echo
        echo "Try Again!"
        echo
    fi

    if [[ $answer == "rm" ]] && [[ $levelcount == 3 ]]; then
        echo
        cat eye.txt
        echo
        echo "You killed the demon! You sit against the wall and take a second to breathe, that was a close call! Even though that disaster was avoided, you realize a new problem exist, there's no exit."
        echo "You frantically search the room, but there's no way out. You do however find an odd looking carving on the wall, it seems to depict an eye. As you stare at the art, you start to feel different,"
        echo "it's as if the eye is communicating with you, without actually saying anything. As you stand in awe, your thoughts are filled with a solution, if there's no exit, we have to make one ourselves!"
        echo "Which spell could you use to make a new area?"
        echo
        let levelcount=levelcount+1
        let errorcheck=0
    elif [[ $answer != "rm" ]] && [[ $answer != "exit" ]] && [[ $levelcount == 3 ]] && [[ $errorcheck == 1 ]]; then
        echo
        echo "Try Again!"
        echo
    fi

    if [[ $answer == "mkdir" ]] && [[ $levelcount == 4 ]]; then
        echo
        cat mountains.txt
        echo
        echo "You awake at the top of a mountain. Once again you have no clue how you got here, or where you are, but it seems the spell worked, and you were able to create a new location in your world!"
        echo "You're surrounded by snow and rocks, and you feel your bones starting to chill. If you don't get off this mountain soon, you'll most certainly freeze! Before you go anywhere though, you need"
        echo "to get a better idea of where exactly you are, and which direction you should walk in. What spell could we use to find information on what location we are currently in?"
        echo
        let levelcount=levelcount+1
        let errorcheck=0
    elif [[ $answer != "mkdir" ]] && [[ $answer != "exit" ]] && [[ $levelcount == 4 ]] && [[ $errorcheck == 1 ]]; then
        echo
        echo "Try Again!"
        echo
    fi

    if [[ $answer == "pwd" ]] && [[ $levelcount == 5 ]]; then
        echo
        cat bridge.txt
        echo
        echo "You manage to get your bearings, and you walk into the distance. You eventually come upon an old stone bridge that seems to lead off the mountain. As you approach, a new challenge appears."
        echo "The bridge is broken in the middle, and only half of it remains, so you cannot traverse to the other side. Filled with determination from your previous triumphs, you look at this challenge"
        echo "not with despair, but instead with tenacity. You think of a way to solve this puzzle, and you craft a brilliant idea of making copies of the bridge to extend it! What spell can you"
        echo "use in order to copy an item?"
        echo
        let levelcount=levelcount+1
        let errorcheck=0
    elif [[ $answer != "pwd" ]] && [[ $answer != "exit" ]] && [[ $levelcount == 5 ]] && [[ $errorcheck == 1 ]]; then
        echo
        echo "Try Again!"
        echo
    fi

    if [[ $answer == "cp" ]] && [[ $levelcount == 6 ]]; then
        echo
        cat creature.txt
        echo
        echo "The plan worked! The bridge now extends far enough for you to safely make it to the other side! As make your way across the bridge, some weird looking figure pops up! He stops you in your"
        echo "tracks and shoves a scroll in your face. The scroll contains lines upon lines of words, and seems to never end. As you look up at the odd creature, he shouts the following:"
        echo
        echo "Scoopy scoo, loody doo, if you wish to pass, my favorite word you must spew!"
        echo
        echo "It seems the creature wants you to find his favorite word within the scroll, but that's impossible! There so many words! What spell could we use to solve this puzzle?"
        echo "Maybe there's a spell that allows us to find a specific part of something, a spell we could use to select a specific portion of our text, but what could it be....."
        echo
        let levelcount=levelcount+1
        let errorcheck=0
    elif [[ $answer != "cp" ]] && [[ $answer != "exit" ]] && [[ $levelcount == 6 ]] && [[ $errorcheck == 1 ]]; then
        echo
        echo "Try Again!"
        echo
    fi

    if [[ $answer == "grep" ]] && [[ $levelcount == 7 ]]; then
        echo
        cat stars.txt
        echo
        echo "You look at the scroll, and one word in particular sticks out to you, without hesitation, you yell it out loud, Nincompoop! The creature looks at you with empty eyes, and before long"
        echo "it starts to laugh at the top of its lungs. After a few minutes of rolling around on the ground, slamming its fist on the stone, and tearing up from laughter, the odd little thing"
        echo "steps out of the way, and directs you to continue your journey. Finally, you've reached the other side! You lay down in the snow, look up at the night sky, and catch your breath after"
        echo "an exhausting day. It may not be smart to stay here long, but you need your rest. You decide that if you can find a spell to quickly fall asleep for a set amount of time, you're fine"
        echo "with taking a bit of a break before cracking on with your journey. You think for a few moments, and wonder what spell could you use to sleep for a specific amount of time?"
        echo
        let levelcount=levelcount+1
        let errorcheck=0
    elif [[ $answer != "grep" ]] && [[ $answer != "exit" ]] && [[ $levelcount == 7 ]] && [[ $errorcheck == 1 ]]; then
        echo
        echo "Try Again!"
        echo
    fi

    if [[ $answer == "sleep" ]] && [[ $levelcount == 8 ]]; then
        echo
        cat sunrise.txt
        echo
        echo "As the sun rises over the mountain peaks, you feel your eyes slowly open. You feel well rested, and ready to take on the new day. You sit up and take a few more moments to"
        echo "enjoy the fresh air, and collect your thoughts. The previous day was so crazy that you can't seem to even remember everything that happened. So far spells have helped you"
        echo "through every challenge, so maybe they can help you with something simple like remembering as well right? What spell could we use to remember all the previous spells we used?"
        echo
        let levelcount=levelcount+1
        let errorcheck=0
    elif [[ $answer != "sleep" ]] && [[ $answer != "exit" ]] && [[ $levelcount == 8 ]] && [[ $errorcheck == 1 ]]; then
        echo
        echo "Try Again!"
        echo
    fi

    if [[ $answer == "history" ]] && [[ $levelcount == 9 ]]; then
        echo
        cat skull.txt
        echo
        echo "All your memories quickly come flooding back to you, in fact, there's so much activity happening in your head that it becomes painful. You curl up in the snow and grab your face"
        echo "with your hands. The pain is out of this world, it's as if your whole life is taking place again within your head in a matter of seconds. The only thing you want is for this to stop."
        echo "You scream in agony and tears start rushing down your face. There has to be a way to stop this.....There has to be! Maybe a spell! Yes a spell! What spell can be used to clear your"
        echo "head? There has to be something! Think! Think faster! Stop this pain!"
        echo
        let levelcount=levelcount+1
        let errorcheck=0
    elif [[ $answer != "history" ]] && [[ $answer != "exit" ]] && [[ $levelcount == 9 ]] && [[ $errorcheck == 1 ]]; then
        echo
        echo "Try Again!"
        echo
    fi

    if [[ $answer == "clear" ]] && [[ $levelcount == 10 ]]; then
        echo
        cat caveart.txt
        echo
        echo "You awaken within a dark dungeon. You have no knowledge of where you are, and no memory of how you got here, but something about the situation feels oddly familiar....."
        echo
        echo "Congratulations! You've beaten the game! Take a moment to bask in your victory, and when you're ready, type exit to close the program!"
        echo
        let errorcheck=0
    elif [[ $answer != "clear" ]] && [[ $answer != "exit" ]] && [[ $levelcount == 10 ]] && [[ $errorcheck == 1 ]]; then
        echo
        echo "Try Again!"
        echo
    fi

    #An if statement checking to see if the user inputs the string exit. If they do, the program is closed using the exit command
    if [[ $answer == "exit" ]]; then
        exit
    fi

#Ending the while loop with the done statement
done
