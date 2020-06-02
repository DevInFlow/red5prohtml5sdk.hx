package red5.event;

@:native("window.red5prosdk.SubscribeEvent") extern class SubscribeEvent extends Event{
    public var subscriber:Dynamic;//The Subscriber instance that dispatched the event.
}