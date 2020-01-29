# Pre-work - *JUST THE TIP.*

**JUST THE TIP.** is a tip calculator application for iOS.

Submitted by: **Roneil Sembrano**

Time spent: **7** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [ ] Settings page to change the default tip percentage.
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] User can choose to make their own tip rate.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://i.gyazo.com/890607eb6e57c90506a40fa1279b1531.gif' width='' alt='Video Walkthrough' />

## Notes

It was challenging trying to figure out how to pass data from one screen to another. I realized that you can make essentially a copy of an entire view controller to access its contents. I also found it challenging determining the argument needed to be passed to call a function from a IBAction. I was successful passing in NIL to call a function without having to press a button. Also, the safe guard checks were a bit difficult because I had included a variable for a custom rate that could have data or be nil.
## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
