package tmTest.controllers
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.display.Sprite;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	import tmTest.assets.HomeObject;

	public class LoadObject extends Sprite
	{
		private var _load:Loader;
		public var initSec:Function;
		public var endSec:Function;
		
		public function LoadObject()
		{
			super();
		}
		
		public function init(obj:String):void
		{
			_load = new Loader();
			_load.load(new URLRequest(obj));
			_load.contentLoaderInfo.addEventListener(Event.INIT, onInit);
			_load.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
			_load.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, onProgress);
			
			addChild(_load);
			HomeObject.internViews.lv.show();
		}
		
		private function onInit(e:Event):void
		{
			initSec = e.target.content.init; 	
			endSec  = e.target.content.dispose;
			
			initSec();
			dispose();
		}
		
		private function onComplete(e:Event):void
		{
			trace("Complete - " +e.target);
		}
		
		private function onProgress(e:ProgressEvent):void
		{
			var c:Number = e.bytesLoaded;
			var t:Number = e.bytesTotal;
			var p:Number = int(c/t*100);
			
			HomeObject.internViews.lv.showPercent(p);
			//trace("loaded - "+ p);
		}
		
		private function dispose():void
		{
			_load.contentLoaderInfo.removeEventListener(Event.INIT, onInit);
			_load.contentLoaderInfo.removeEventListener(Event.COMPLETE, onComplete);
			_load.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS, onProgress);
		}
	}
}