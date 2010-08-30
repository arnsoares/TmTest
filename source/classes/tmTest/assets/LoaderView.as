package tmTest.assets
{
	import tmTest.assets.ALoaderView;

	public class LoaderView extends ALoaderView
	{
	
		public function LoaderView()
		{
			super();
		}
		
		public function init():void
		{ 
			hide();
		}
		
		public function show():void
		{
			visible = true;
		}
		
		public function hide():void
		{
			visible = false;
			bar.scaleX = 0;
		}
		
		public function showPercent(value:Number):void
		{
			bar.scaleX = (value/100);
			if(bar.scaleX > 0.99) hide();
		}
	}
}