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

@:enum abstract PublisherEventTypes(String) to String {
	var CONNECT_SUCCESS = "Connect.Success";
	var CONNECT_FAILURE = "Connect.Failure";
	var PUBLISH_START = "Publish.Start";
	var PUBLISH_FAIL = "Publish.Fail";
	var PUBLISH_INVALID_NAME = "Publish.InvalidName";
	var UNPUBLISH_SUCCESS = "Unpublish.Success";
	var PUBLISH_METADATA = "Publish.Metadata";
	var PUBLISH_SEND_INVOKE = "Publish.Send.Invoke";
	var CONNECTION_CLOSED = "Publisher.Connection.Closed";
	var DIMENSION_CHANGE = "Publisher.Video.DimensionChange";
}
