package tmTest.views
{
	import flash.display.Sprite;
	import tmTest.assets.MenuAsset;
	import tmTest.assets.HomeObject;
	import tmTest.assets.InternViewsContainer;
	import tmTest.assets.HomeButton;

	public class Main extends Sprite
	{
		HomeObject.internViews = new InternViewsContainer();
		
		private var _internViews:InternViewsContainer;
		private var _homeButton:HomeButton;
		
		public static var currentSection:* = null;
		private var _menu:MenuAsset;
        
		public function Main()
		{
			super();
		}

		public function init():void
		{
			trace("-- init Main");
			
			_homeButton = new HomeButton();
			_homeButton.x = 10;
			_homeButton.y = 10;
			addChild(_homeButton);
			
			_menu = new MenuAsset();
			_menu.x = _homeButton.x+_homeButton.width+1;
			_menu.y = 10;
			addChild(_menu);
			_menu.init();
			
			_internViews = HomeObject.internViews;
			addChild(_internViews);
			_internViews.init();
		}

		public function dispose():void
		{
			trace("-- dispose Main");
		}

	}

}