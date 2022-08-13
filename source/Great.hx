package;

import flixel.FlxG;
import flixel.FlxSprite;

class Great extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		// Animaciones
		loadGraphic("assets/images/logos.png", true, 638, 214);
		animation.add("great", [0], 1, false);
		animation.play("great");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
