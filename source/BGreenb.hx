package;

import flixel.FlxG;
import flixel.FlxSprite;

class BGreenb extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		// Animaciones
		loadGraphic("assets/images/buttons.png", true, 805, 720);
		animation.add("green", [3], 1, false);
		animation.play("green");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
