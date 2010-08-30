package
{
	import flash.events.Event;
	import flash.display.Sprite;
	import tmTest.views.Main;
	import flash.display.Loader;
	import flash.net.URLRequest;

	/**
	 * Application entry point for tmTest.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 10.0
	 * 
	 * @author Arn
	 * @since 29.07.2010
	 */
	
	[SWF(width='1000', height='400', backgroundColor='#FFFFFF', frameRate='60')]
	
	public class TmTest extends Sprite
	{
		public var l:Loader;
		//public var main:Main;

		/**
		 * @constructor
		 */
		public function TmTest()
		{
			if(stage)
				init();
			else
				stage.addEventListener( Event.ADDED_TO_STAGE, init );
		}

		/**
		 * Initialize stub.
		 */
		private function init(event:Event=null):void
		{
			stage.scaleMode = "noScale";
			stage.align = "LT";
			
			stage.removeEventListener( Event.ADDED_TO_STAGE, init );
			
			l = new Loader();
			//var req:URLRequest = new URLRequest("main.swf")
			l.load(new URLRequest("main.swf"));
			l.contentLoaderInfo.addEventListener(Event.INIT, addMain);
		}

		public function addMain(e:Event):void
		{
			addChild(l);
			e.target.content.init();
		}
	}
}