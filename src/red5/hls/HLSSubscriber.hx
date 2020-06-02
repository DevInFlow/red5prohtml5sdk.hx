package red5.hls;

import red5.base.ISubscriber;
import haxe.extern.EitherType;
import js.lib.Promise;
import js.html.Element;

@:native("window.red5prosdk.HLSSubscriber") extern class HLSSubscriber extends SubscriberPlaybackController implements ISubscriber{
	public function new():Void;
	public function getConnection():Dynamic;
	public function getControls():Dynamic;
	public function getOptions():Dynamic;
	public function getPlayer():Element;
	public function getType():String;
	public function init(options:HLSConfigurationProperties):Promise<EitherType<Void, Dynamic>>;
	public function subscribe():Promise<EitherType<Void, Dynamic>>;
	public function unsubscribe():Promise<EitherType<Void, Dynamic>>;
}
