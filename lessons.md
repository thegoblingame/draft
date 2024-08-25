This is just a text file where i'm documenting some lessons I learned from working on this.

As always, planning is king. The more planning the better

More specifically, I'm currently following this model

Huge, broad planning => code until I get stuck => plan small piece => code small piece => plan small piece

but it should really be more like this

Huge, broad planning where I define criteria for finished product best as possible
literally keep planning until your brain is totally sick of it. this is a muscle we have to train.
once you move into the phase where you're creating files and navigating around in an IDE,
start pseudocoding shit. pseudocoding is nice and you need to do as much as possible.

before starting, try to find some good source code examples that you can learn from

After planning + pseudocoding is done
start implementing task by task
whenever I run into something that changes my plans or elucidates part of the plan that was nebulous,
go back and modify plan if possible
every time a new concept is learned,
check to see if it changes the plans or if previously written code needs to be updated

try to do as much as possible via the documentation
9/10 times this will lead you to "best practice" better than other resources

if you're ever copy pasting something, pause and think if it actually makes sense to do so
CONCEPTS
in an OOP language, u got class based/prototypal inheritance. this is why for example, you can do something like call
child.MethodOfParent() when u got Child inheriting from Parent. Because Child "inherits" those functions.

whether or not you cram a bunch of stuff into 1 line is mostly preference.
for example x.split().pop().whatever. it might make it easier to debug if you break it into multiple lines

vectors
the vector (4,3) is the same as any other vector (4,3) even if the 1st one starts at the origin and the 2nd does not
adding vectors u just add x1 + x2 and y1 + y2
scalar is a vector multiplier. so (1,3)*2 is (2,6). Scalar only changes the magnitude not the direction
normalizing a vector reduces its length to 1 while preserving the direction. so ur just reducing its magnitude
