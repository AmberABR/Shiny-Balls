package;

import flixel.FlxSprite;

class Background extends FlxSprite
{
	public function new()
	{
		super();

		loadGraphic("assets/images/background.png", true, 1280, 720);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
