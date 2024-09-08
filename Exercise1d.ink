/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night





-> seashore

== seashore ==
You are sitting on the beach.

It is {advance_time () }



+ [Stroll down the beach] -> beach2
-> DONE
== beach2 ==

This is further down the beach

It is {advance_time () }

* {time == 1 } [Pick up some shells] -> shells

+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells, you found a cave while picking up the shells, go inside!

+ [Go in cave ] -> cave

-> beach2



== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
    == cave ==
You found this giant cave, seek shelter and lookout for new items!
* [Pick up rocks]
-> rocks
* [Go deeper in cave]
-> deepcave




== rocks ==
You found tons of rocks. Grab them and see what you find!
->END

== deepcave ==

This cave is huge, are you willing to stay the night inside the cave to explore it?
* [Explore cave]
-> deepestcave

== deepestcave ==

Now that you have explored the cave look for new items to pick up.
* [Look for new items]
-> rareitems


== rareitems ==

No way!!! You found the gear youll need to surive in this cave and fight anything off that is going to give you any problems!
->END





    
