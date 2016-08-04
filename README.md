# Multi-Live-Channel
Fully working streaming channel - accepts multiple streams and creates streaming channel with RAF integrated.

## Use Case

This sample channel can be used as an easy way to publish content. All it needs is a stream link, title, and logo. RAF is already integrated into the Channel

## How to run this channel

* Have you stream URL ready
* Download the Multi-Live Channel from our Github account [github.com/rokudev](https://github.com/rokudev/Multi-Live-Channel)
* Locate the Config.brs file in the components folder and follow the instructions in the file to enter your info for your stream
* Select all the files and folders and .zip up the package (no containing folder needed)
* Load the application onto your Roku [read the developer setup guide] (https://blog.roku.com/developer/2016/02/04/developer-setup-guide/)

## Features

* Predesigned template for streaming content
* Includes easy functionality to just plug, play, and publish
* Uses a custom bottom bar to navigate channels while watching video content
* Implements RAF into channel

## Directory Structure
* **Components:** SceneGraph Components
  * `Config.brs` This is a file where the user can enter their stream info
  * `HomeScene.brs` This is the back-end for the UI. It tracks and monitors video playback to play ads and handles channel change events.
  * `HomeScene.xml` Creates all SceneGraph nodes displayed in the UI
  * `RowListItems.xml` Formats RowList to have captions, poster-size, etc.
  * **tasks**
    * `RowListContentTask.xml` Goes through stream contents and stores all data in content nodes for RowList
* **Source::** Contains Main method
  * `Main.brs` Creates screen to display UI when channel starts. Contains setup for RAF integration
  
## Channel Flow
* **Event:** Upon starting the channel, the stream info is parsed and all content is passed to the SceneGraph nodes.
* **Event:** The content is loaded into a RowList and all channel artwork is created.
* **Event:** The main thread calls for a pre-roll add to play. Afterwards, the user's content will play.
* **User:** If the channel contains more than one stream, the user is presented with a RowList that can toggle between channels.
* **Event:** Upon choosing a new channel, a pre-roll ad is played. If the same channel is streaming for 20 mintues, a mid-roll ad will play.
