package red5.event;

import red5.base.ISubscriber;

@:native("window.red5prosdk.SubscribeEvent") extern class SubscribeEvent extends Event {
	public var subscriber:ISubscriber;
}
