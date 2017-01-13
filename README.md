# Reminder Bot

## Setup
* Sign up a HipChat account for Reminder bot with the name `Reminder`
* Ensure all environment variables are setup
* Instruction for adding Reminder Bot to [private room](#joining-private-room) and [public room](#joining-public-room)

## Local development environment
* Start Redis server using command `redis-server`
* Use `bundle exec lita` to start Lita server

## Joining private room
* `Invite People` > Select `Reminder` > Click `Invite People`
* After inviting Reminder to the private chatroom, go to private chatroom with Reminder
* `join ROOM_ID`

## Joining public room
* Go to private chatroom with Reminder
* `join ROOM_ID`

## Leaving a room
* Go to private chatroom with Reminder
* `part ROOM_ID`
* Then remove Reminder from the room

## Help
* Use `help` in Reminder Bot's private chatroom to S.O.S.

## Deploy to Heroku
* Use Heroku's RedisToGo Addons to your application.
* REDISTOGO_URL for development environment: `redis://localhost:6379`

## HipChat Jabber ID/Room ID
* All JID/ROOM_ID can be found here ---> https://yourorganisation.hipchat.com/account/xmpp

## Reminder to post standup
* Reminder Bot will send reminder to the chatroom every weekday at 6pm Malaysia Time.
