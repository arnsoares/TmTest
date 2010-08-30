package tmTest.assets
{
	import tmTest.assets.AMenuAsset;
	import flash.events.MouseEvent;
	import tmTest.controllers.LoadObject;
	import tmTest.assets.HomeObject;

	public class MenuAsset extends AMenuAsset
	{
		
		public function MenuAsset()
		{
			super();
		}
		public function init():void
		{
			btOne.addEventListener(MouseEvent.CLICK, oneHandle);
			btOne.addEventListener(MouseEvent.ROLL_OVER, oneHandle);
			btOne.addEventListener(MouseEvent.ROLL_OUT, oneHandle);
			btOne.mouseChildren = false;
			btOne.mouseEnabled = true;
			btOne.buttonMode = true;
			btOne.useHandCursor = true;
		
			btTwo.addEventListener(MouseEvent.CLICK, twoHandle);
			btTwo.addEventListener(MouseEvent.ROLL_OVER, twoHandle);
			btTwo.addEventListener(MouseEvent.ROLL_OUT, twoHandle);
			btTwo.mouseChildren = false;
			btTwo.mouseEnabled = true;
			btTwo.buttonMode = true;
			btTwo.useHandCursor = true;
		}
		
		public function oneHandle(e:MouseEvent):void
		{
			switch(e.type)
			{
				case MouseEvent.CLICK:
					HomeObject.internViews.changeSection("sectionOne.swf");
					break;
					
				case MouseEvent.ROLL_OVER:
					e.target.scaleX = 1.05;
					e.target.scaleY = 1.05;
					break;
					
				case MouseEvent.ROLL_OUT:
					e.target.scaleX = 1;
					e.target.scaleY = 1;
					break;
			}
		}
		
		public function twoHandle(e:MouseEvent):void
		{
			switch(e.type)
			{
				case MouseEvent.CLICK:
					HomeObject.internViews.changeSection("sectionTwo.swf");
					break;
					
				case MouseEvent.ROLL_OVER:
					e.target.scaleX = 1.05;
					e.target.scaleY = 1.05;
					break;
					
				case MouseEvent.ROLL_OUT:
					e.target.scaleX = 1;
					e.target.scaleY = 1;
					break;
			}
		}
	}
}