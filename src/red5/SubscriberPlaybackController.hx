package red5;

import red5.event.EventEmitter;

@:native("window.red5prosdk.SubscriberPlaybackController") extern class SubscriberPlaybackController extends EventEmitter{
public function mute():Void;
public function pause():Void;
public function play():Void;
public function resume():Void;
public function seekTo(value:Float,?duration:Float):Void;
public function setVolume(value:Float):Void;
public function stop():Void;
public function toggleFullScreen():Void;
public function unmute():Void;

}