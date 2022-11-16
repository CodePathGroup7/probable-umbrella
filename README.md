Original App Design Project - README Template
===

# WorkoutTracker

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
1. [Schema](#Schema)
1. [Progress Report](#PRogress Report)

## Overview
### Description
The WorkoutTracker app will allow users to create an account where they can login and see a list of workouts along with instructions on how to complete them and how many calories are burned with each workout. It can also keep track of which workouts are completed.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Fitness
- **Mobile:** This app is designed to be used on mobile devices although it would be possible to expand the platform to allow users to view their data on other devices
- **Story:** Users to can create an account and view detailed instructions on how to complete specific workouts along with the ability to track their progress.
- **Market:** Any Individual interested in working out.
- **Habit:** This app as often or unoften as the user wants.
- **Scope:** First we would start with a predetermined list of workouts. Then we could potentially broaden the scope of the project to suggest workouts based on previous user activity.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* [x] User must have the ability to sign-in/create an account.
* [2] Upon login the user is presented with the main menu containing the following options: Account, Your Progreess, Workouts, Share, Logout.
* [3] User must have the ability to navigate between tabs (workouts/stats).
* [4] User can tap on a workout icon and transtion to the Workout Instructions page.
* [5] User can view the workout details on the instructions page and have the ability to mark the workout as completed.
* [6] Upon completing the workout the user is returned to workouts page.
* [7] User can view stats related to their account on the stats page.
* [8] User can navigate to an Account Details Page from the main menu.
* [9] User can view details such as Name and phone number from the Account Details Page.

**Optional Nice-to-have Stories**

* Ability to share progress to social media (ex: send out tweet)
* Take into account past workouts to recommend users new workouts.

### 2. Screen Archetypes

* Login Page
   * [x] User must have the ability to sign-in/create an account.
   * [x] Upon login the user is transitioned to a page with the list of workouts.
* Workouts Page
   * [3] User must have the ability to navigate between tabs (workouts/stats).
   * [4] User can tap on a workout icon and transtion to the Workout Instructions page.
* Workout Instructions Page
  * [5] User can view the workout details on the instructions page and have the ability to mark the workout as completed.
  * [6] Upon completing the workout the user is returned to workouts page.
* User Stats Page
  * [7] User can view stats related to their account on the stats page.
* Account Details Page
  * [8] User can navigate to an Account Details Page from the main menu.
  * [9] User can view details such as Name and phone number from the Account Details Page.
 
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Main Menu Tab
* Stats Tab

**Flow Navigation** (Screen to Screen)

* Forced Login Screen -> Main Menu Screen
* Main Menu Screen -> Workouts Screen
* Main Menu Screen -> Account Details Screen
 
## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="https://i.imgur.com/6lSvOD4.jpg" width=600>


## Schema 
### Models
#### User

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | userId        | String   | unique id for the user post (default field) |
   | profilePicture| Pointer to profile picture | Points to image storage to retrive the user's profile picture|
   | progress      | Pointer to User progress | Points to model for User workout progress and stats|
   | userName      | String   | user's username |
   | phoneNumber   | String   | user's phone number |
   | name          | String   | user's name  |
#### Progress/Stats
  
   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | author        | Pointer to User| pointer to user model |
   | | Pointer to User progress | Points to model for User workout progress |
   | | String   | image caption by author |
   | | Number   | number of comments that has been posted to an image |
   | | Number   | number of likes for the post |
   | | DateTime | date when post is created (default field) |
   | | DateTime | date when post is last updated (default field) |

### Networking
#### List of network requests by screen
   - Example Home Feed Screen
      - (Read/GET) Query all posts where user is author
         ```swift
         let query= PFQuery(className: “Search”) query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in if let error = error { 
             print(error.localizedDescription)
         } else if let searches = searches {
             print("Searched \(searches.count) searches.") request.httpMethod = “DELETE"Task.resume( )
             }               
             return         
         }
         ```

## Progress Report

### Sprint #1

For this week, we focused on adding the skeleton to the code base from a previously done project and we plan to work off of it to get our desired project we have a lot of pages to add and a database to perfect.There was a bug with the comment code, but we fixed it and have our database and login set up. Next week, we plan to get our pages added to the project.
<img src="http://g.recordit.co/dHqyg9Owso.gif" width=250><br>
