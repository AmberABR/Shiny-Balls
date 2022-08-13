package;

import flixel.FlxG;
import flixel.FlxSprite;

class BYellowb extends FlxSprite
{
	public function new(x:Float, y:Float)
	{
		super(x, y);

		// Animaciones
		loadGraphic("assets/images/buttons.png", true, 805, 720);
		animation.add("yellow", [1], 1, false);
		animation.play("yellow");
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
