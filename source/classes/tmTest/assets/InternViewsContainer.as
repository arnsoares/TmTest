package tmTest.assets
{
import flash.display.Sprite;
import flash.events.Event;
import tmTest.assets.LoaderView;
import tmTest.assets.HomeObject;
import tmTest.controllers.LoadObject;

	public class InternViewsContainer extends Sprite
	{
		public var currentView:* = null;
		public var previousView:* = null;
		public var lv:LoaderView;
		private var _lo:LoadObject;
	
		public function InternViewsContainer()
		{
			super();
			
			addEventListener(Event.COMPLETE, clearCurrentSection);
		}
		
		public function init():void
		{
			lv = new LoaderView();
			lv.x = (stage.stageWidth/2)-(lv.width/2);
			lv.y = (stage.stageHeight/2)-(lv.height/2);
			addChild(lv);
			lv.init();
		}
		
		public function removeCurrentSection():void
		{
			if(currentView != null)
			{
				currentView.endSec();
			}
		}
		
		public function clearCurrentSection():void
		{
			removeChild(currentView);
			currentView = null;
			trace("currentView Removido!");
		}
		
		public function changeSection(url:String):void
		{	
			_lo = new LoadObject();
			removeCurrentSection();
			currentView = _lo;
			_lo.init(url);
			addChild(_lo);
		}
	}
}