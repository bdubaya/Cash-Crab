package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author Bennie Waters
	 */
	public class Coin extends Entity 
	{
		[Embed(source = "../assets/graphics/Retro Coin.png")] public const COIN_GRAPHIC:Class;
		public var image:Image;
		private var value:int;
		public function Coin() 
		{
			image = new Image(COIN_GRAPHIC);
			value = 5;
			graphic = image;
			x = FP.rand(FP.screen.width);
			y = 0;
			type = "coin";
			setHitbox(30,42,-9,-3);
		}
		
		override public function update():void 
		{
			var p:Player = collide("player", x, y) as Player;
			y+=2;
			if (p)
			{
				destroy();
				//FP.world..scoreTotal += value;
				GameWorld(world).score.addScore(value);
			}
			if (y >= FP.screen.height)
			{
				destroy();
			}
			//if (collide("player", x, y))
			//{
				//FP.world.remove(this);
			//}
			super.update();
		}
		public function destroy():void
		{
			FP.world.remove(this);
		}
		
	}

}