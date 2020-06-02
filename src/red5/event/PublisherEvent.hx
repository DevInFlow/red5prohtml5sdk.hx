package red5.event;

import red5.base.IPublisher;

@:native("window.red5prosdk.PublisherEvent") extern class PublisherEvent extends Event{
    public var publisher:IPublisher;
}