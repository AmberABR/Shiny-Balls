package;

import flixel.FlxG;
import flixel.FlxSprite;

class BRed extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		// Animaciones
		loadGraphic("assets/images/buttons.png", true, 805, 720);
		animation.add("red", [4], 1, false);
		animation.play("red");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
