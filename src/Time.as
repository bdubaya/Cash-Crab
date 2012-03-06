package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	
	/**
	 * ...
	 * @author Bennie Waters
	 */
	public class Time extends Entity 
	{
	
		private var time:Text = new Text("00:00", 550,0,320,240);
		public var timeTotal:int;
		public function Time() 
		{
			timeTotal = 0;
			//time.text = convert(time);
			super(x, y, time);
		}
		
		private function convert(time:int):String {
			//TODO actually convert the time into minutes/seconds
			return String(time);
		}
		
		override public function update():void
		{
			timeTotal++;
			time.text = "Time: " + convert(timeTotal);
		}
	}

}