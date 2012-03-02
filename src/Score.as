package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	
	/**
	 * ...
	 * @author Bennie Waters
	 */
	public class Score extends Entity 
	{
		
		public var score:Text = new Text("", 0, 0, 320, 240);
		private var scoreTotal:int;
		public function Score() 
		{
			scoreTotal = 0;
			score.text = String(scoreTotal);
			score.x = 0;
			score.y = 0;
			
			super(x, y, score);
			
		}
		public function addScore(amt:int):void {
			this.scoreTotal += amt;
		}
		
		override public function update():void 
		{
			
			score.text = String(scoreTotal);
			
		}
	}

}