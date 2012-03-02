package 
{
	import net.flashpunk.Engine;
		import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Bennie Waters
	 */
	public class Main extends Engine 
	{
		
		public function Main():void 
		{
			super(640, 480);
			//FP.console.enable()
		}
		
		override public function init():void 
		{
			trace("FlashPunk has initialized");
			FP.world = new GameWorld();
			super.init();
		}
		
	}
	
}