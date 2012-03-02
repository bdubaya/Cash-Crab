package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Bennie Waters
	 */
	public class Player extends Entity 
	{
		[Embed(source = "../assets/graphics/zoidberg-right.png")] private const PLAYER_GRAPHIC:Class;
		//TODO create spritemap. delete background
		public var image:Image;
		private var speed:int;
		public function Player() 
		{
			image = new Image(PLAYER_GRAPHIC);
			graphic = image;
			setHitbox(76, 81, 0, 0);
			type = "player";
			x = 320;
			y = 400;
			speed = 200;
			
			Input.define("runRight", Key.RIGHT, Key.D);
			Input.define("runLeft", Key.LEFT, Key.A);
			Input.define("runDown", Key.DOWN, Key.S);
			Input.define("runUp", Key.UP, Key.W);
		}
		
		override public function update():void 
		{
			
			
			if (Input.check("runRight"))
			{
				x += speed * FP.elapsed;
			}
			if (Input.check("runLeft"))
			{
				x -= speed * FP.elapsed;
			}
			if (Input.check("runUp"))
			{
				y -= speed * FP.elapsed;
			}
			if (Input.check("runDown"))
			{
				y += speed * FP.elapsed;
			}
			if (collide("coin", x, y))
			{
				image.color = 0xff0000;
			}
			else
			{
				image.color = 0xffffff;
			}
			super.update();
		}
		
	}

}