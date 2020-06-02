package red5.pro;

import js.lib.Promise;


@:native("window.red5prosdk.Red5ProSharedObjectSocket") extern class Red5ProSharedObjectSocket {
    public function close():Void;
    public function init(configuration:Dynamic,?id:String):Promise<Dynamic>;
}