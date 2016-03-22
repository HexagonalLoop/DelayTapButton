# DelayTapButton
A button that can bear rapid taps before performing any heavy operation.

# The Problem
Suppose you have a butotn in your app that triggers a network call and then updates the UI of the app.
The user of the app can tap the button quickly 10 times, which will initiate 10 service calls (if you have not cancelled previous service calls, which is fine for many cases)
You now have a bad user experience and a server flooded with (un necessary) requests.

# Solution
The Delay tap button will allow the user tap quickly as many times ignoring the tap. and triggering an action only once the user has stopped tapping continuously on the button.


