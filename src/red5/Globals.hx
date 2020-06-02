package red5;

@:enum abstract AudioEncodingType(String) to String {
	var Opus = "Opus";
	var PCMU = "PCMU";
	var PCMA = "PCMA";
	var Speex = "Speex";
	var NONE = "NONE";
}

@:enum abstract VideoEncodingType(String) to String {
	var NONE = "NONE";
	var H264 = "H264";
	var VP8 = "VP8";
}

@:enum abstract StreamMode(String) to String {
	var live = "live";
	var record = "record";
	var append = "append";
}


@:enum abstract IceTransportType(String) to String {
	var UDP = "UDP";
	var TCP = "TCP";
}
