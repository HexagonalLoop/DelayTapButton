
# DelayTapButton
A button that can bear rapid taps before performing any heavy operation.

# The Problem
Suppose you have a button in your app that triggers a network call and then updates the UI of the app.
The user of the app can tap the button quickly 10 times, which will initiate 10 service calls (if you have not cancelled previous service calls, which is fine for many cases)
You now have a bad user experience and a server flooded with (un necessary) requests.

# Solution
The Delay tap button will allow the user tap quickly as many times ignoring the tap. and triggering an action only once the user has stopped tapping continuously on the button.


# How To
Just drop a UIButton in storyboard and change the class to ````DelayTapButton````

##### Change the Button class
![Change class name](https://raw.githubusercontent.com/HexagonalLoop/DelayTapButton/master/Artwork/Demo/Screen%20Shot%202016-03-23%20at%202.16.19%20AM.png)


##### Configure the delay time (default is ````0.5````)
![Change class name](https://raw.githubusercontent.com/HexagonalLoop/DelayTapButton/master/Artwork/Demo/Screen%20Shot%202016-03-23%20at%202.15.55%20AM.png)
