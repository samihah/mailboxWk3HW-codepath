## Mailbox

The purpose of this homework is to leverage animations and gestures to implement more sophisticated interactions. We're going to use the techniques from this week to implement the Mailbox interactions.

Time spent: `15`

### Features

#### Required

- [Y ] On dragging the message left:
  - [Y ] Initially, the revealed background color should be gray.
  - [ Y] As the reschedule icon is revealed, it should start semi-transparent and become fully opaque. If released at this point, the message should return to its initial position.
  - [ Y] After 60 pts, the later icon should start moving with the translation and the background should change to yellow.
    - [ 1/2 Y] Upon release, the message should continue to reveal the yellow background. When the animation it complete, it should show the reschedule options.
  - [ Y] After 260 pts, the icon should change to the list icon and the background color should change to brown.
    - [1/2 Y ] Upon release, the message should continue to reveal the brown background. When the animation it complete, it should show the list options.

- [N ] User can tap to dismiss the reschedule or list options. After the reschedule or list options are dismissed, you should see the message finish the hide animation.
- [ Y] On dragging the message right:
  - [Y ] Initially, the revealed background color should be gray.
  - [ Y] As the archive icon is revealed, it should start semi-transparent and become fully opaque. If released at this point, the message should return to its initial position.
  - [ Y] After 60 pts, the archive icon should start moving with the translation and the background should change to green.
    - [ Y] Upon release, the message should continue to reveal the green background. When the animation it complete, it should hide the message.
  - [ Y] After 260 pts, the icon should change to the delete icon and the background color should change to red.
    - [1/2 Y ] Upon release, the message should continue to reveal the red background. When the animation it complete, it should hide the message.


#### Optional

- [ ] Panning from the edge should reveal the menu.
  - [ ] If the menu is being revealed when the user lifts their finger, it should continue revealing.
  - [ ] If the menu is being hidden when the user lifts their finger, it should continue hiding.
- [ ] Tapping on compose should animate to reveal the compose view.
- [ ] Tapping the segmented control in the title should swipe views in from the left or right.
- [ ] Shake to undo.

#### The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. color literals
2. 

### Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/nXRewib.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />



## Notes

General feedback: after spending 3 hours on the .ended state without luck on the spring back in the gray state or showing the list view or later view, I've given up on that part of the requirements. It would be truly amazing if concepts were explained in class. The "how" part is being explained well with the labs (ex: how to create an outlet - ctrl +click and drag to cocoa touch file), but what's missing are the "why" and "what." Ex: explanations on why you use .translate or why you have to define the center of your view in a local variable before calling it, and "what" a .translate is or what a CGPoint is and why we use it or why we use it with an exclamation mark. These explanations would make a world of difference in helping those of us that learn by knowing why something is done in addition to how it's done, to learn Swift.

