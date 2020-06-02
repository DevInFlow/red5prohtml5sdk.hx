package red5.event;

@:native("window.red5prosdk.Event") extern class Event{
    public var data:Dynamic;
    public var type:String;
}