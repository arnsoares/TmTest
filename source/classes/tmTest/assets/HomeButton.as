package tmTest.assets
{
import tmTest.assets.AHomeButton;
import flash.events.MouseEvent;
import tmTest.assets.HomeObject;

public class HomeButton extends AHomeButton
{
	
	public function HomeButton()
	{
		super();
		init();
	}
	
	public function init():void
	{
		this.addEventListener(MouseEvent.CLICK, homeHandle);
		this.addEventListener(MouseEvent.ROLL_OVER, homeHandle);
		this.addEventListener(MouseEvent.ROLL_OUT, homeHandle);
		this.mouseChildren = false;
		this.mouseEnabled = true;
		this.buttonMode = true;
		this.useHandCursor = true;
	}
	
	
	public function homeHandle(e:MouseEvent):void
	{
		switch(e.type)
		{
			case MouseEvent.CLICK:
				HomeObject.internViews.removeCurrentSection();
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