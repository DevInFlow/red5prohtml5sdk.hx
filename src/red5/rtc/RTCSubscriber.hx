package red5.rtc;

import red5.rtc.RTCConfigurationProperties.Subscriber;
import haxe.extern.EitherType;
import js.html.Element;
import js.html.rtc.PeerConnection;
import js.html.MediaStream;
import js.lib.Promise;

@:native("window.red5prosdk.RTCSubscriber") extern class RTCSubscriber extends SubscriberPlaybackController {
	public function new():Void;
	public function getControls():Dynamic; // PlaybackControls
	public function callServer(methodName:String, args:Array<String>):Promise<Dynamic>;
	public function disableStandby():Void;
	public function enableStandby():Void;
	public function getMediaStream():MediaStream;
	public function getOptions():Dynamic;
	public function getPeerConnection():PeerConnection;
	public function getPlayer():Element;
	public function getType():String;
	public function init(options:Subscriber):Promise<Dynamic>;
	public function subscribe():Promise<EitherType<Void, Dynamic>>;
	public function unsubscribe():Promise<EitherType<Void, Dynamic>>;
}
