# Project 4: Adventure App

## Authors
* Yonas Kbrom
* Angus Hung

## Purpose 
Adventure allows you to see all your options in terms of fun activies,
events, and travel sites. Once you open the app, you will be able to browse
through the app and see what lovely things there are to do in your area in an
instant! 

## Features
* Ability to adjust mile radius
* Ability to tap on
an event and send to a friend
* Ability to suggest events based on weather/time
of day/previous event choices
* (Possibly an ability to create account/log in,
mainly for the use of pop up notifications)

## Control Flow
* First
presented with the create/log in screen (If already logged in, app starts off
with second bullet point)
* Then presented with a tinder-like view, where you
can swipe left/right or tap on the activity/event
* If activity is tapped on,
you will be able to send an invite with a message to a friend with the app
also
* Option to click on "Expand" button on top-right of page to see
specific categories of events
* Option to click on "Profile" button to
see/edit your profile
* Option to click on "Public" button that allows you to
post in a public feed where you can join strangers and do an activity

##
Instructions 

#### Model
* Activity.swift
* Profile.swift

#### View
*
Sign in/login View
* HomeView (View for the random activity, swipe left or
right on activity, next one pops up)
* ProfileView (View for your profile,
contains name, age, photo, and list of activities/events your are interested
in
* ActivityView (View for when you tap on an activity, shows you the rating,
location, cost (says FREE if no cost)
* CategoryTableView (View of a specific
type of activity/event)
* PublicView (View for the public news feed, people
able to message you if interested in event also

#### Controller
* ProfileController.swift
* HomeController.swift
* CategoryController.swift
*
ActivityController.swift
