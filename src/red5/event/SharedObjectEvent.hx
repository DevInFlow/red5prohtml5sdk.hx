package red5.event;

@:native("window.red5prosdk.SharedObjectEvent") extern class SharedObjectEvent extends Event{
    public var name:String;//The name of the Shared Object.
}