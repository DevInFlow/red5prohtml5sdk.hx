package red5.rtc;

import red5.base.IPublisher;
import red5.rtc.RTCConfigurationProperties.Publisher;
import haxe.extern.EitherType;
import js.html.rtc.PeerConnection;
import js.html.MediaStream;
import js.lib.Promise;
import red5.event.EventEmitter;
@:native("window.red5prosdk.RTCPublisher") extern class RTCPublisher extends EventEmitter implements IPublisher{

    public function new():Void;
    public function init(options:Publisher):Promise<EitherType<Void,Dynamic> >;
    public function initWithStream(options:Dynamic,mediaStream:MediaStream):Promise<Dynamic>;
    public function muteAudio():Void;
    public function muteVideo():Void;
    public function unmuteAudio():Void;
    public function unmuteVideo():Void;
    public function preview():Promise<Dynamic>;
    public function publish(?streamName:String,?promise:Promise<Dynamic>):Promise<EitherType<Void,Dynamic> >;
    public function unpublish():Promise<Dynamic>;
    public function send(methodName:String,data:Dynamic):Void;
    public function callServer(methodName:String,args:Array<String>):Promise<Dynamic>;
    public function getMediaStream():MediaStream;
    public function getOptions():Dynamic;
    public function getPeerConnection():PeerConnection;
    public function getType():String;
}