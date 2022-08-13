package;

import flixel.FlxG;
import flixel.FlxSprite;

class Lose extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		// Animaciones
		loadGraphic("assets/images/logos.png", true, 638, 214);
		animation.add("lose", [1], 1, false);
		animation.play("lose");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
