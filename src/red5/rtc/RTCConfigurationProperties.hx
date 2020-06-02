package red5.rtc;

import js.html.MediaStreamConstraints;
import js.html.rtc.Configuration;

typedef Publisher = {
	protocol:String,
	port:Int,
	app:String,
	streamMode:Globals.StreamMode,
	?keyFramerate:Int,
	host:String,
	streamName:String,
	?mediaElementId:String,
	?rtcConfiguration:Configuration,
	?iceTransport:Globals.IceTransportType,
	?bandwidth:{?audio:Int, ?video:Int},
	?connectionParams:Dynamic,
	mediaContraints:MediaStreamConstraints,
	?onGetUserMedia:Void->Void
}

typedef Subscriber = {
	protocol:String,
	port:Int,
	app:String,
	host:String,
	streamName:String,
	?mediaElementId:String,
	?rtcConfiguration:Configuration,
	?iceTransport:Globals.IceTransportType,
	subscriptionId:String,
	?connectionParams:Dynamic,
	?videoEncoding:Globals.VideoEncodingType,
	?audioEncoding:Globals.AudioEncodingType,
	?autoLayoutOrientation:Bool,
	?muteOnAutoplayRestriction:Bool,
	?maintainConnectionOnSubscribeErrors:Bool
}
