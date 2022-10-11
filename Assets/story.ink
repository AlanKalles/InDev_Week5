VAR map=false
VAR ticket=false
I am in the zoo. 
*[next]->next0
=next0
There is a board writeen with notes in front of me.
*[Read]->readb
*[Dismiss]->dismissb
==readb==
Rules of the zoo:
*[next]->readb1
=readb1
1.The ape park only has ONE route and only has apes
*[next]->readb2
=readb2
2.The rabbit does NOT speak
*[next]->readb3
=readb3
3.The elephant has two big drooping ears, and is NOT white
*[next]->readb4
=readb4
4.There are only FOUR white lions in the lion park
*[next]->readb5
=readb5
5.WE DON'T SELL ANY RABBIT ACCESSORIES-
*[Go ahead]->intozoo

==dismissb==
->intozoo

==intozoo==
I pass the board. There are two parks to go.
*[Ape Park]->apep1
*[Rabbit Park]->rabp1

==backtozoo1==
I go back. There are two parks to go.
+[Ape Park]->apep1
+[Rabbit Park]->rabp1

==apep1==

I see the gate of ape park.
+[next]->next1
=next1
I can hear apes yelling inside.
+[Get closer]->apep1closer
+[Leave]->backtozoo1

    =apep1enter
I get closer to the gate. There are two routes.
*[Go left]->apep2l
*[Go right]->apep2r
    =apep1closer
Before I enter the ape park, should I drink some water?
*[Drink]->apep1enterdrink
*[I am not thirsty]->apep1enternodrink
    =apep1enterdrink
I drink some water and I feel good.
*[It is time to enter the park]->apep1enter
    =apep1enternodrink
There is no need to drink water. Time to go inside the park.
*[It is time to enter the park]->apep1enter

==apep2l==
I see a lot of apes playing and 'fighting' with each other.
*[next]->next2
=next2
They are funnier than I thought.
*[make fun of them]->apep2lmf
*[try to praise them]->apep2lpr
=apep2lpr
I praise their power. The apes seem to understand it.
*[next]->next3
=next3
They groan at me and give me a map.
*[check the map]->apep2map
=apep2map
It is hard to identify anything from the map.
*[next]->next4
=next4
It is old and worn.
~ map = true
*[Time to leave]->apep2ex
=apep2lmf
"Stupid apes, they never know how ridiculous they are."
*[next]->next5
=next5
I say so and laugh at them.
*[next]->next6
=next6
They hear my laughter...
*[next]->next7
=next7
and all stares at me.
*[It is better to leave]->apep2ex
*[They are just apes and I am not afraid of them]->apep2lmfd
=apep2lmfd
I do not like their gaze and decide to step up.
*[next]->next8
=next8
"What you stupid apes? What you trying to do?"
*[next]->next9
=next9
They are just staring at me. Their eyes are like black holes.
*[It is better to leave]->apep2ex
*[They are just apes and I am not afraid of them]->apep2lmfd2
=apep2lmfd2
I wave my punch to perform a powerful figure.
*[next]->next10
=next10
The apes react nothing to my behavior. They are still staring.
*[It is better to leave]->apep2ex
*[They are just apes and I am not afraid of them]->apep2lmfd3
=apep2lmfd3
I yelled at them.
+[next]->next11
=next11
The apes react nothing to my behavior. They are still staring.
*[It is better to leave]->apep2ex
+[They are just apes and I am not afraid of them]->apep2lmfd3
=apep2ex
I leave the ape park.
*[go to rabbit park]->rabp1
*[go to elephant park]->elep1
->END

==apep2r==
I go to the right.
*[next]->next12
=next12
There are apes and...rabbits
*[next]->next13
=next13
Why rabbits are here?
*[Stay]->apep2rst
*[Leave]->apep2rle
=apep2rst
I look at these rabbits. They give me bad feelings, though they look normal.
*[next]->next14
=next14
Should I still look at them? I feel uncomfortable.
*[Stay]->apep2rcg
*[Leave?]->apep2rle
=apep2rle
I want to leave, but my feet cannot move.
*[next]->next15
=next15
->apep2rcg
=apep2rcg
Then I see it.
*[next]->next16
=next16
There is something hiding behind the rabbits. I do not even know if I could call it a 'thing'.
*[next]->next17
=next17
It's getting closer!
*[next]->next18
=next18
...
*[...]->next19
=next19
 TAOG MA I.
 *[END]->END

==rabp1==
I am in front of the gate of rabbit park.
*[next]->next20
=next20
A man stands next to the gate.
*[next]->next21
=next21
He looks at me and rushes to my side.
*[next]->next22
=next22
"Rabbit eats ape. Rabbit eats ape? GOAT is elephant. I am GOAT!"
*[next]->next23
=next23
He then runs away to the brushes. It is so weird.
*[enter the park]->rabp2
==rabp2==
I go inside the rabbit park. 
*[next]->next24
=next24
The rabbits are all snow-white with ruby eyes. They hide in the shade and rarely play under the sunlight.
*[next]->next25
=next25
How could rabbit eat apes? I feel what the man said nonsense.
*[go deeper]->next26
=next26
As I go deeper to the park, more rabbits are shown. I then hear some laughters coming from the shade.
*[check]->rabq2ch
*[ignore]->rabq2ig
=rabq2ig
I feel a bit weird about it, and do not want to find why there are laughters. So, I decide to leave.
*[go to elephant park]->elep1
*[go to ape park]->apep1
=rabq2ch
I step towards where the sound comes from.
*[go]->next27
=next27
Only rabbits.
*[look at them]->next28
=next28
I looks a them, as the way they look at me.
*[...]->next29
=next29
I look at them.
*[look]->next30
=next30
I kool mhte ta.
*[TAOG MA I]->next31
=next31
(*sounds of chewing)
*[END]->END

==elep1==
I have arrived the elephant park.
*[next]->next32
=next32
The elephants are really huge, way bigger than I thought.
*[next]->next33
=next33
I then see a woman with bunny ears. She asks me whether if I want to see some other kinds of elephant.
*['Yes I want']->elep1y
*['No thank you']->elep1n
=elep1y
I agreed. She brought me to go deeper.
[next]->next34
=next34
The elephants are becoming whiter.
*[following her]->elep2
*[Run away]->elep1yr
=elep2
I see white elephants with bunny ears.
*[next]->elep2n
=elep2n
I don't know when but the woman disappear.
*[look around]->elep2nn
=elep2nn
The elephants are staring me.
*[escape]->elep2nne
*[stay]->elep2nns
=elep2nne
There is no way to escape. 
*[stay]->elep2nns
=elep2nns
Elephants are just like that.
*[...]->elep2nnn
=elep2nnn
Elephants are rabbits.
*[...]->elep2die
=elep2die
TAOG MA I
*[END]->END
=elep1yr
I don't think it's a smart choice to continue follow her.
*[next]->next35
=next35
I throw a stone to distract her and run away.
*[next]->next36
=next36
Even though she does not follow me, I still can feel her vision burning my back.
*[go to lion park]->liop1
=elep1n
I refused. She goes away, but she leaves a ticket to me.
*[pick up the ticket]->pick
*[throw it away]->throw
=pick
I pick the ticket.
~ ticket = true
*[check]->checkt
=throw
I throw away the ticket.
*[go to lion park]->liop1
=checkt
The ticket is old and rarely recognizable.
*[go to lion park]->liop1
==liop1==
I am at the lion park.
*[next]->next37
=next37
"ROAR"
*[ONE lion]->liop11
=liop11
"ROAR"
*[TWO lion]->liop12
=liop12
"ROAR"
*[THREE lion]->liop13
=liop13
"ROAR"
*[FOUR lion]->liop14
=liop14
"ROAR"
*[FIVE lions?]->liop15
=liop15
Do I have a map?
*[Yes]->liop2y
*[No]->liop2n
=liop2y
I tear up these stuff, and the lions stop roaring.
*[leave]->safe
=liop2n
The lion's voices become closer.
*[...]->next38
=next38
I see five white lions.
*[...]->next39
=next39
(Sound of chewing)
*[END]->END
=safe
The way to leave the zoo is at the end of lion park. I leave the zoo.
*[Survive]->survivetalk
==survivetalk
Days after I returned home, I completely forget why I go to the zoo and where it is.
*[END]->END