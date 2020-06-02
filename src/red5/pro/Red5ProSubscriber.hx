package red5.pro;

import red5.event.EventEmitter;
import js.lib.Promise;

@:native("window.red5prosdk.Red5ProSubscriber") extern class Red5ProSubscriber extends EventEmitter{
    public function new():Void;
    public var playbackTypes:Dynamic;
    public function getPlaybackOrder():Array<String>;
    public function init(options:Dynamic):Promise<Dynamic>;
    public function setPlaybackOrder(order:Array<String>):Red5ProSubscriber;

}