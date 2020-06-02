package red5.base;
import js.lib.Promise;
import haxe.extern.EitherType;
interface IPublisher{
    function getType():String;
    function getOptions():Dynamic;
    function send(methodName:String,data:Dynamic):Void;
    function publish(?streamName:String,?promise:Promise<Dynamic>):Promise<EitherType<Void,Dynamic> >;
    function unpublish():Promise<EitherType<Void,Dynamic> >;
}