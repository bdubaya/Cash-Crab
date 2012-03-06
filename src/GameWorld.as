package  
{
	import flash.display.BitmapData;
	import flash.errors.StackOverflowError;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Bennie Waters
	 */
	public class GameWorld extends World 
	{
		private var square:Entity;
		public var score:Score;
		public var pause:Boolean;
		private var time:Time;
		public function GameWorld() 
		{
			trace("World constructed.");
		}
		
		override public function begin():void 
		{
			pause = false;
			//time = 0;
			score = new Score;
			time = new Time;
			add(new Player);
			//add(new Coin);
			//add(new Coin);
			//add(new Coin);
			add(score);
			add(time);
			super.begin();
		}
		
		override public function update():void 
		{
			
			
			if (!pause) { 
				//time++;
				if (time.timeTotal % 50 == 0)
				add(new Coin);				
				super.update()
				
			}
			

			
			if (Input.pressed(Key.ESCAPE))  
			{
				trace("pause pressed");
				if (pause == false) pause = true;
				else if (pause == true) pause = false;
			}
		}
	}

}