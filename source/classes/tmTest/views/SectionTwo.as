package tmTest.views
{
	import flash.display.Sprite;
	import tmTest.assets.FieldSection;
	import flash.display.MovieClip;
	import caurina.transitions.Tweener;
	import flash.events.Event;
	

	public class SectionTwo extends Sprite
	{
		private var _fieldSection:FieldSection;
	
		public function SectionTwo()
		{
			super();
		}
	
		public function init():void
		{
			trace("-- Init " + this.name );
			_fieldSection = new FieldSection();
			_fieldSection.field.text = "Section Two";
			_fieldSection.field.autoSize = "left";
			_fieldSection.y = 100;
			addChild(_fieldSection);
		}
	
		public function dispose():void
		{		
			Tweener.addTween(_fieldSection, {y:150, alpha:0, time:0.7, transition:"easeoutquart", onComplete:function():void { 
				Tweener.resumeAllTweens();
				removeChild(_fieldSection);
				_fieldSection = null;
				trace("-- Dispose " + this.name );
				dispatchEvent(new Event(Event.COMPLETE));
			} })
		}
	}
}