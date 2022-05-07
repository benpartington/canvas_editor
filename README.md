Canvas Editor

----------

Description
-----------
A program that simulates a canvas editor

Tech
----
- Ruby

User Stories
------------
```
As a user  
So that I can draw on the canvas  
I want to be able to create a new blank canvas
```
```
As a user  
So that I can see my current canvas  
I want to be able to print the canvas to the screen
```
```
As a user  
So that I can change the canvas  
I want to be able to input coordinates and a colour
```
```
As a user
So I can go and do something else
I want to be able to terminate the program!
```

Design
------
My design for this program was to first start with returning a small array of 'white pixels' (O). To do
this I created a single large method, but I then extracted the various commands into multiple smaller methods and instead use a 'CanvasEditor' class, to better follow SRP (single responsibility principle). In this way I have the user inputs triggering the appropriate method to run.

I've attempted to use array indexing to access the relevant user inputs.

I had trouble with writing tests for this program, as I haven't had much experience with testing for command line user input. Because of time constraints I decided to focus on implementation over testing, to exhibit my skills in this area. Given more time I would have spent a while researching and learning how to write tests for user inputs, and then implemented one small feature at a time.

Future Features
---------------
- I really wanted to implement a feature to fulfill user story 3 (above), but I had trouble figuring out how to isolate a single cell, rather than a whole column. My 'L' command does paint the canvas, but because of the way I am creating the rows, it adds the colour to every row rather than just the specified one.

Edge cases I would investigate next include:
- User trying to paint a pixel when they haven't created a canvas
- User entering invalid characters
- User trying to create a 0 x 0 canvas
- User trying to create a canvas bigger than the specified max


Commands
--------

I M N - Creates a new canvas with the dimensions M x N (Height x Width)  

"I 5 4" would create the canvas shown below     

S - Shows the contents of the current canvas

00000  
00000  
00000  
00000

X - Terminate the session

