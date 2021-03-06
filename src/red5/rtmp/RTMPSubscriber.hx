package red5.rtmp;

import red5.base.ISubscriber;
import haxe.extern.EitherType;
import js.html.Element;
import red5.SubscriberPlaybackController;
import js.lib.Promise;

@:native("window.red5prosdk.RTMPSubscriber") extern class RTMPSubscriber extends SubscriberPlaybackController implements ISubscriber{
	public function new():Void;
	public function getControls():Dynamic;
	public function getOptions():Dynamic;
	public function getPlayer():Element;
	public function getType():String;
	public function init(options:Dynamic):Promise<EitherType<Void, Dynamic>>;
	public function subscribe():Promise<EitherType<Void, Dynamic>>;
	public function unsubscribe():Promise<EitherType<Void, Dynamic>>;
}
