package;

import flixel.FlxSprite;

class Numbergo extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		// Animaciones
		loadGraphic("assets/images/numbers.png", true, 352, 431);
		animation.add("123", [0, 1, 2, 3], 1.5, false);
		animation.play("123");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
