
' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********

Function loadConfig() as Object
    arr = [
'##### Format for inputting stream info #####
'## For each channel, enclose in brackets ## 
'{
'   Title: Channel Title
'   streamFormat: Channel stream type (ex. "hls", "ism", "mp4", etc..)
'   Logo: Channel Logo (ex. "http://Roku.com/Roku.jpg)
'   Stream: URL to stream (ex. http://hls.Roku.com/talks/xxx.m3u8)
'}
    
{
    Title: "Roku Example One"
    streamFormat: "hls"
    Logo: "https://placeholdit.imgix.net/~text?txtsize=33&txt=channel+logo&w=267&h=150"
    Stream: "http://hls.ted.com/talks/2439.m3u8"
}
{
    Title: "Roku Example Two"
    streamFormat: "hls"
    Logo: "https://placeholdit.imgix.net/~text?txtsize=33&txt=channel+logo&w=267&h=150"
    Stream: "http://hls.ted.com/talks/2439.m3u8"
}
{
    Title: "Roku Example Three"
    streamFormat: "hls"
    Logo: "https://placeholdit.imgix.net/~text?txtsize=33&txt=channel+logo&w=267&h=150"
    Stream: "http://hls.ted.com/talks/2439.m3u8"
}
{
    Title: "Roku Example Four"
    streamFormat: "hls"
    Logo: "https://placeholdit.imgix.net/~text?txtsize=33&txt=channel+logo&w=267&h=150"
    Stream: "http://hls.ted.com/talks/2439.m3u8"
}
{
    Title: "Roku Example Five"
    streamFormat: "hls"
    Logo: "https://placeholdit.imgix.net/~text?txtsize=33&txt=channel+logo&w=267&h=150"
    Stream: "http://hls.ted.com/talks/2439.m3u8"
}
{
    Title: "Roku Example Six"
    streamFormat: "hls"
    Logo: "https://placeholdit.imgix.net/~text?txtsize=33&txt=channel+logo&w=267&h=150"
    Stream: "http://hls.ted.com/talks/2439.m3u8"
}
    
    
    
'##### Make sure all Channel content is above this line #####    
    ] 
    return arr
End Function
