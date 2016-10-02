# Multi Live Channel
Proof of concept streaming channel - for a single live video stream or multiple live stations with navigation. Roku Ads are integrated in the channel. For more info about the Roku Ad Framework, please contact advertising@roku.com.

This channel is publishing ready and can be used as a template for a Roku channel.

![Sample Multi Station Channel Screen Shot](/images/multi-live-channel-screenshot.jpg)

## Use Case

This sample channel is an easy way to publish a live station of multiple live stations. Simply add your stream or video URL, title, and logo.

In addition, the Roku Ad Framework is already integrated into the Channel.

**Video Formats:** For the full list of supported Video formats on Roku devices, refer to our docs at https://sdkdocs.roku.com/display/sdkdoc/Video+Encoding+Guidelines

## How to run this channel

* Have you stream URL ready
* Download the Multi-Live Channel from https://github.com/rokudev/Multi-Live-Channel
* Locate the `Config.brs` file in the components folder and follow the instructions in the file to enter your info for your stream
* Select all the files and folders and .zip up the package (note: do not zip the containing folder)
* Load the application onto your Roku device [read the developer setup guide] (https://blog.roku.com/developer/2016/02/04/developer-setup-guide/)

## Features

* Pre-made template for streaming live television content
* Includes easy functionality to just plug, play, and publish
* Custom lower third navgiation for supporting multiple channels
* Incorporates the Roku Ad Framework as an example

## Directory Structure
* **Components:** SceneGraph Components
  * `Config.brs` This is a file where the user can enter their stream info
  * `HomeScene.brs` This is the back-end for the UI. It tracks and monitors video playback to play ads and handles channel change events.
  * `HomeScene.xml` Creates all SceneGraph nodes displayed in the UI
  * `RowListItems.xml` Formats RowList to have captions, poster-size, etc.
  * **tasks**
    * `RowListContentTask.xml` Goes through stream contents and stores all data in content nodes for RowList
* **Source:** Contains Main method
  * `Main.brs` Creates screen to display UI when channel starts. Contains setup for RAF integration

## Channel Flow
* **Event:** Upon starting the channel, the stream info is parsed and all content is passed to the SceneGraph nodes.
* **Event:** The content is loaded into a RowList and all channel artwork is created.
* **Event:** The main thread calls for a pre-roll add to play. Afterwards, the user's content will play.
* **User:** If the channel contains more than one stream, the user is presented with a RowList that can toggle between channels.
* **Event:** Upon choosing a new channel, a pre-roll ad is played. If the same channel is streaming for 20 mintues, a mid-roll ad will play.
