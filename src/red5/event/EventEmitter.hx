package red5.event;

@:native("window.red5prosdk.EventEmitter") extern class EventEmitter {
	public function off(type:String, fn:Dynamic):Void;
	public function on(type:String, fn:Dynamic):Void;
	public function trigger(event:Event):Void;
}
