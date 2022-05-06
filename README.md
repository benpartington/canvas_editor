Canvas Editor

----------

Description
-----------
A program that simulates a canvas editor

Tech
----
- Ruby
- RSpec

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

Design
------
My design for this program was to first start with returning a small array of 'white pixels' (O). To do
this I've created a single method, but I would like to extract the various commands into methods and instead use a 'CanvasEditor' class, to better follow SRP (single responsibility principle). In this way I could have user inputs triggering the appropriate method to run, for example, if the user enters L as the first element of their input, the program would run a method called 'paint_pixel' which would fulfill user story 3 (above).  

I've attempted to use array indexing to access the relevant user inputs

I had trouble with writing tests for this program, as I haven't had much experience with testing for command line user input.

Edge cases and future features I would like to implement include:
- Accounting for user trying to paint a pixel when they haven't created a canvas


Commands
--------

Use these commands to fill the canvas with 'colours' (letters)

I M N - Creates a new canvas with the dimensions M x N (Height x Width)   
> I 5 4  

00000  
00000  
00000  
00000  

S - Shows the contents of the current canvas

X - Terminate the session

