package red5.rtmp;

import red5.base.IPublisher;
import haxe.extern.EitherType;
import js.lib.Promise;
import red5.event.EventEmitter;

@:native("window.red5prosdk.RTMPPublisher") extern class RTMPPublisher extends EventEmitter implements IPublisher implements IPublisher{
    public function new():Void;
    public function init(options:Dynamic):Promise<EitherType<Void,Dynamic> >;
    public function publish(?streamName:String,?promise:Promise<Dynamic>):Promise<EitherType<Void,Dynamic> >;
    public function unpublish():Promise<EitherType<Void,Dynamic> >;
    public function send(methodName:String,data:Dynamic):Void;
    public function getOptions():Dynamic;
    public function getType():String;
}