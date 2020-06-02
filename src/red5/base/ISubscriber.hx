package red5.base;
import js.html.Element;
import js.lib.Promise;
import haxe.extern.EitherType;

interface ISubscriber {
    function getControls():Dynamic;
    function getOptions():Dynamic;
    function getPlayer():Element;
    function getType():String;
    function subscribe():Promise<EitherType<Void, Dynamic>>;
    function unsubscribe():Promise<EitherType<Void, Dynamic>>;
}
