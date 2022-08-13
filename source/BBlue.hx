package;

import flixel.FlxG;
import flixel.FlxSprite;

class BBlue extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		// Animaciones
		loadGraphic("assets/images/buttons.png", true, 805, 720);
		animation.add("blue", [6], 1, false);
		animation.play("blue");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
