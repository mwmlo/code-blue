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

## How to contribute

Here is a list of tasks:

If you are contributing, please remember to create a new branch, make your edits, execute `git pull --rebase upstream master` and submit your changes through a pull request! Do not edit directly to the master branch.

### Creators
Michelle Lo
Leyla Ozcan

[![Run on Repl.it](https://repl.it/badge/github/mee-kell/code-blue)](https://repl.it/github/mee-kell/code-blue)
