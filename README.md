# Welcome to Trail Blazer

### Blaze your own trails! 

## Team Roster
* Isaac Lindland
    * [GitHub](https://github.com/swandivejack)
    * [LinkedIn Profile](https://www.linkedin.com/in/isaaclindland/)
* Joel Bond
    * [GitHub](https://github.com/bondj89)
    * [LinkedIn Profile](https://www.linkedin.com/in/bondcsm/)
* Justin Dominguez
    * [GitHub](https://github.com/justinbdom)
    * [LinkedIn Profile](https://www.linkedin.com/in/justin-dominguez-8912b3191/)
* Khizar Saleem
    * [GitHub](https://github.com/khizar-saleem)
    * [LinkedIn Profile](https://www.linkedin.com/in/khizar-saleem/)
    
    

## Introduction & Description 
* For our Capstone project we decided to build a multi-tier Android application called Trail Blazer. 
Our application consists of a server side and a client side that has allowed our team to organize 
trail data from the Albuquerque New Mexico Open Trails dataset. With this information we were able 
to produce a clean and simple user interface for outdoor enthusiasts within the Albuquerque area. 

* Trail Blazer helps consumers navigate, track and explore the outdoors. Populate local trails based 
on current location and keep track of your progress by recording the activity. Share your activities 
with friend or save them privately to your profile. This is your guide to Albuquerque's vast open trails. 
Discover, share and blaze your favorite trails right from the palm of your hand. 


## Intended Users
* Any Burqueno that loves to enjoy New Mexico's beautiful weather and perfect hiking trails! 
* Visitors who want to explore Albuquerque. 
* Friends who want to share their trails. 
* Outdoor enthusiasts looking for new adventure! 



# Summary of State of Trail Blazer
* [PDF Summary](docs/resources/trailblazer-summary.pdf)

## Current State
* Able to pull trails from ABQ Open Space 
* Able to pop up and show trails in Google Maps
* Users can record and name their own trails
* Users can navigate to a trail using external Google Maps app
* Able to add user profile with characteristics 

## Stretch Goals
* Users can share their data with other users on platform 
* Add an indicator that shows difficulty of of pre-populated trails
* 


## Technical Documentation

* [ERD & Entity Source Code](docs/erd.md)  
* [Data Definition Language](docs/ddl.md)
* [Outlines of Technology Stacks](docs/outlines-of-technology-stacks.md)
* [User Stories](docs/user-stories.md) 
* [Wireframe Diagrams](docs/wireframe.md)
* [Repository Interfaces](docs/repo-interfaces.md) 
* [Service and Client Documentation](docs/controllers-and-services.md)
* [Trail Blazer Service Repo](https://github.com/the-trail-blazer/trailblazer-service)
* [Trail Blazer Client Repo](https://github.com/the-trail-blazer/trailblazer-client)
* [Javadocs](https://the-trail-blazer.github.io/trailblazer-service/docs/javadocs/overviewsummary.html)


## Instructions for Building 

1. Go to the [GitHub repository](https://github.com/the-trail-blazer/trailblazer-client)

2. Click on Clone or download

3. Make sure Clone with SSH is selected and click the clipboard icon to copy the SSH key

4. Use the IntelliJ Check out from Version Control/Git (from the welcome screen) or File/New/Project from Version Control/Git (from the workspace) command to clone.
  
5. DO NOT click open when prompted to do so.

6. Import the project you just cloned. In the Import Project window, select Import project from external model and then the Gradle item in the list.

7. After the project is imported add a run configuration. This should use the Android App configuration, with a Name of "app", and with app selected from the Module pull-down control.

8. Click the run icon and select the device you wish to run it on.

## Instructions for Using our App
* Trail Blazer uses Google Sign-in so the user must sign in with a Google account
* After signing in the user will see a prompt requesting location permission
* Users can create their own profile in the Profile tab so they can record trails that will belong to their account
* Users can see trails in Albuquerque in the explore and they can also see the trails that they've recorded
* Users can start recording their own trail by pressing the red button in the Map tab
 

## External Services Used
This app consumes the following services. 
+ [Google Sign In](https://developers.google.com/identity)
+ [ABQ Open Trails](http://data.cabq.gov/community/opentrails/)


## Helpful Links
* [Ground Rules](docs/ground-rules.md)


## Tools 
* [Lucid Chart](lucidchart.com)
* [Github](https://github.com/the-trail-blazer)
* [Scrum Board](https://github.com/the-trail-blazer/trailblazer.github.io/projects/5)


## Resources 
* [Milestones](docs/milestones.md)
* [Data Model Implementation Scenarios](https://deep-dive-coding-java-cohort-8.github.io/2019/10/17/data-model-implementation-scenarios.html)

## Trail Blazer, All Rights Reserved
```
This work is Copyright, 2019, Isaac Lindland, Joel Bond, Khizar Saleem, Justin Dominguez, All rights reserved.
```






