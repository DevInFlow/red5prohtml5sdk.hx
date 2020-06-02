package red5.pro;

@:native("window.red5prosdk.Red5ProSharedObject") extern class Red5ProSharedObject extends EventEmitter {
    public function close():Void;
    public function getName():String;
    public function send(methodName:String,data:Dynamic):Void;
    public function setProperty(key:String,value:Dynamic):Void;
}