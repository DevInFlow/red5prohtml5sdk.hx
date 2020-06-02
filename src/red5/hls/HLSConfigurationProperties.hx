package red5.hls;

typedef HLSConfigurationProperties = {
	protocol:String,
	?port:Int,
	app:String,
	host:String,
	streamName:String,
	?mediaElementId:String,
	mimeType:String,
	?autoLayoutOrientation:Bool,
	?muteOnAutoplayRestriction:Bool,
	?socketParams:Dynamic,
	?connectionParams:Dynamic
}
