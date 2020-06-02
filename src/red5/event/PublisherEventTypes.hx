package red5.event;

@:enum abstract PublisherEventTypes(String) to String {
    var CONNECT_SUCCESS="Connect.Success";
    var CONNECT_FAILURE="Connect.Failure";
    var PUBLISH_START="Publish.Start";
    var PUBLISH_FAIL="Publish.Fail";
    var PUBLISH_INVALID_NAME="Publish.InvalidName";
    var UNPUBLISH_SUCCESS="Unpublish.Success";
    var PUBLISH_METADATA="Publish.Metadata";
    var PUBLISH_SEND_INVOKE="Publish.Send.Invoke";
    var CONNECTION_CLOSED="Publisher.Connection.Closed";
    var DIMENSION_CHANGE="Publisher.Video.DimensionChange";

    
}