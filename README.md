# Code Blue
Code Blue is a mental health app for YC students. (CAS Project 2020)

The focus of project is on alleviating academic stress, raising awareness about mental health and promoting stronger bonds within the school community

## Overview

We aim to create an app to help students at YC deal with stress. In this app, we will include meditation recordings from Mr C, a scheduling feature to remind students not to procrastinate, counsellors’ contacts and mental health hotlines, and the option to message the Code Blue team to participate in the “Choco Project”. The aim of the app is to give students a tool in their everyday lives to manage their mental health.

The app is structured as so:
* Launch Screen: short splash screen while app loads
* Home Screen: main page with links to About, Meditation, Schedule, Help and Choco Project screens.
* About Screen: contains information about creators and credits for images.
* Meditation Screen: contains click-and-play recordings of meditation sessions from Mr C.
* Schedule Screen: contains a Pomodoro timer to help students structure work times, and an important task picker for students to assign deadlines to themselves for major tasks, e.g. internal assessments, extended essays.
* Help Screen: contains list of contacts for school counsellors and mental health hotlines.
* Choco Project Screen: contains information about the Choco Project, and an entry form for users to submit requests to the Choco Project.

## Development

Code Blue is being developed in Swift 5 through Xcode, and designed to run on iPhones.

For the Pomodoro Timer in the scheduler screen, code for the circular progress view was based off this Github repository: [KDCircularProgress](https://github.com/kaandedeoglu/KDCircularProgress).

Cloud Firestore is used to store data for when users submit requests to the Choco Project. Cocoa Pods was used to install the appropriate frameworks for Firebase, Firestore and Firebase Authentication (see Podfile). The app uses anonymous authentication so that only users who submit through the app can write to the database. Team members can view the database on the [Firebase console](https://console.firebase.google.com).

The UI layout was designed on Figma, and the prototype can be viewed [here](https://www.figma.com/file/IXyJRs2XBycFgbSsQM7iLD/CODE-BLUE?node-id=0%3A1).

Here is a task list:
1. HOME SCREEN
  - [x] Add basic view layout and static content
2. ABOUT SCREEN
  - [x] Add basic view layout and static content
  - [ ] Add [StoreKit](https://developer.apple.com/documentation/storekit/skstorereviewcontroller) notification so that users can give rating on App Store
3. MEDITATION SCREEN
  - [x] Add basic view layout
  - [ ] Embed click-and-play audio files of meditation sessions to appropriate boxes
4. SCHEDULER SCREEN
  - [x] Add basic view layout
  - [x] Embed Pomodoro Timer with start and stop buttons
  - [x] Add functionality to timer
  - [x] Embed important task picker with UIPicker and UIDatePicker
  - [x] Add functionality to task picker
5. HELP SCREEN
  - [x] Add basic view layout and static content
6. CHOCO PROJECT SCREEN
  - [x] Add basic view layout and static content
  - [x] Install [Firebase and Cloud Firestore](https://firebase.google.com/docs/firestore) for database / authentication method
  - [x] Add functionality to submit form
7. MISCELLANEOUS
  - [x] Configured auto layout so that app looks good across various device sizes.

## How to contribute

- Install git on your computer. See the [documentation](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git). Create an account on Github.
- Click the "Fork" button in the upper right to make your own copy of the repository. DO NOT EDIT THE MASTER BRANCH.
- Open terminal. Clone the fork to your computer using `git clone https://github.com/yourusername/code-blue.git`.
- Go into the folder just created. (Right click on folder, go to services, press new terminal at folder.) Set up the upstream remote so that you can eventually pull changes from the main repository. `git remote add upstream https://github.com/mee-kell/code-blue.git`.
- Fetch and track all branches. `git fetch --all`
- Pull the latest changes from the remote repository. `git pull --rebase upstream master`
- Work on your task.
- Enter `git status` to see what files have changed.
- To stage all new files, enter `git add -A`.
- Use `git commit -m "/message/"` to commit changes and add a message to describe the changes.
- Update to the latest code from the main repository. `git pull --rebase upstream master`.
- To upload your changes, use `git push`.
- Your forked repository will update your changes. To submit these changes to the main repository here, create a pull request asking to merge your fork and the main code.

### Creators
Michelle Lo
Leyla Ozcan

[![Run on Repl.it](https://repl.it/badge/github/mee-kell/code-blue)](https://repl.it/github/mee-kell/code-blue)
