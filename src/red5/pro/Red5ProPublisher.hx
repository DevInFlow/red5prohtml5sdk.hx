package red5.pro;

import js.lib.Promise;
import red5.event.EventEmitter;

@:native("window.red5prosdk.Red5ProPublisher") extern class Red5ProPublisher extends EventEmitter{
    public function new():Void;
    public var publishTypes:Dynamic;
    public function getPublishOrder():Array<String>;
    public function init(options:Dynamic):Promise<Dynamic>;
    public function setPublishOrder(order:Array<String>):Red5ProPublisher;

}