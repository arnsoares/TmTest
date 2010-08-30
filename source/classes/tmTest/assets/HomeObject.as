package tmTest.assets
{
	import flash.display.Sprite;
	import tmTest.assets.InternViewsContainer;

	public class HomeObject extends Sprite
	{
		public static var internViews:InternViewsContainer;
	
		public function HomeObject()
		{
			super();
			
			internViews = new InternViewsContainer();
		}
	}
}