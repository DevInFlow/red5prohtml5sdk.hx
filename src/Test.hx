package;

import js.lib.Promise;
import haxe.Json;
import js.Browser;
import red5.event.PublisherEventTypes;
import red5.rtc.RTCSubscriber;
import red5.rtc.RTCPublisher;

class Test {
	public static function main()
		new Test();

	private var rtcPublisher:RTCPublisher;
	private var rtcSubscriber:RTCSubscriber;
	private var config:Dynamic;

	public function new():Void {
		// Browser.document.onload = this.initialize;
		// Browser.window.addEventListener("deviceReady",this.initialize);

		initialize();
	}

	private function initialize():Void {
		this.rtcPublisher = new RTCPublisher();
		this.rtcSubscriber = new RTCSubscriber();

		this.config = {
			protocol: 'ws',
			host: 'localhost',
			port: 5080,
			app: 'live',
			streamName: 'mystream',
			rtcConfiguration: {
				iceServers: [{urls: 'stun:stun2.l.google.com:19302'}],
				iceCandidatePoolSize: 2,
				bundlePolicy: 'max-bundle'
			} 
		};

		rtcPublisher.init(config).then((data) -> {
			rtcPublisher.on(PublisherEventTypes.PUBLISH_START, subscribe);
			return rtcPublisher.publish();
		}).then((data) -> {
			trace("Publishing!");
		}).catchError((err) -> {
			trace('Could not publish: ' + Json.stringify(err));
		});
	}

	
	public function subscribe():Void {
		rtcSubscriber.init(config).then((data) -> {
			return rtcSubscriber.subscribe();
		}).then((data) -> {
			trace("Playing!");
		}).catchError((err) -> {
			trace('Could not play: ' + err);
		});
	}
}
