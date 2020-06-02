package red5.rtmp;

import haxe.extern.EitherType;
import js.lib.Promise;
import red5.event.EventEmitter;

@:native("window.red5prosdk.RTMPPublisher") extern class RTMPPublisher extends EventEmitter{
    public function new():Void;
    public function init(options:Dynamic):Promise<EitherType<Void,Dynamic> >;
    public function publish(?streamName:String,?promise:Promise<Dynamic>):Promise<EitherType<Void,Dynamic> >;
    public function unpublish():Promise<Dynamic>;
    public function send(methodName:String,data:Dynamic):Void;
    public function getOptions():Dynamic;
    public function getType():String;
}