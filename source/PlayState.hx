package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxTimer;

class PlayState extends FlxState
{
	// var bg:Background;
	var bred:BRed;
	var bblue:BBlue;
	var bgreen:BGreen;
	var byellow:BYellow;
	var bredb:BRedb;
	var bblueb:BBlueb;
	var bgreenb:BGreenb;
	var byellowb:BYellowb;
	var _actred:Bool = false;
	var _actblue:Bool = false;
	var _actgreen:Bool = false;
	var _actyellow:Bool = false;
	var tiempo1:FlxTimer;
	var tiempo2:FlxTimer;
	var tiemporandom:FlxTimer;
	var great:Great;
	var lose:Lose;
	var _score:Int = 0;
	var score:FlxText;
	var num:Numbergo;
	var text1:FlxText;
	var text2:FlxText;
	var text3:FlxText;
	var text4:FlxText;
	var text5:FlxText;
	var text6:FlxText;

	override public function create()
	{
		super.create();

		FlxG.debugger.visible = true;
		FlxG.watch.add(this, "_score");
		FlxG.watch.add(this, "_actred");
		FlxG.watch.add(this, "_actblue");
		FlxG.watch.add(this, "_actgreen");
		FlxG.watch.add(this, "_actyellow");

		// Iniciar Los Bottones
		// bg = new Background();
		bred = new BRed(238, -100);
		bblue = new BBlue(-120, 215);
		bgreen = new BGreen(238, 215);
		byellow = new BYellow(600, 210);
		bredb = new BRedb(bred.x, bred.y);
		bblueb = new BBlueb(bblue.x, bblue.y);
		bgreenb = new BGreenb(bgreen.x, bgreen.y);
		byellowb = new BYellowb(byellow.x, byellow.y);
		great = new Great(1280 / 2, 720 / 2);
		lose = new Lose(1280 / 2, 720 / 2);
		num = new Numbergo(1280 / 2 - 176, 720 / 2 - 215);
		// add(bg);
		add(bred);
		add(bblue);
		add(bgreen);
		add(byellow);
		add(bredb);
		add(bblueb);
		add(bgreenb);
		add(byellowb);
		add(great);
		add(lose);
		add(num);
		// Visibilidad
		bredb.visible = false;
		bblueb.visible = false;
		bgreenb.visible = false;
		byellowb.visible = false;
		great.alpha = 0;
		lose.alpha = 0;

		// Iniciar Timepos
		tiempo1 = new FlxTimer();
		tiempo2 = new FlxTimer();
		tiemporandom = new FlxTimer();

		// Iniciar Texto
		score = new FlxText(5, 5, 0, "SCORE:", 40, true);
		text1 = new FlxText(5, 60, 0, "CONTROLS", 20, true);
		text2 = new FlxText(5, 85, 0, "RED = UP", 20, true);
		text3 = new FlxText(5, 110, 0, "BLUE = LEFT", 20, true);
		text4 = new FlxText(5, 135, 0, "GREEN = DOWN", 20, true);
		text5 = new FlxText(5, 160, 0, "YELLOW = RIGHT", 20, true);
		text6 = new FlxText(5, 700, 0, "by AmberABR-oficial", 15, true);
		score.borderColor.blue;
		add(score);
		add(text1);
		add(text2);
		add(text3);
		add(text4);
		add(text5);
		add(text6);

		// aray
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		// Activaciones De Los Botones
		if (_actred == true)
			/*/~~ RED ~~/*/
		{
			tiempo2.start(1, timer2);
			bredb.visible = true;
			bredb.scale.set(1.1, 1.1);

			// Teclas
			if (FlxG.keys.justPressed.UP)
			{
				bredb.visible = false;
				bredb.scale.set(0.8, 0.8);
				tiempo1.start(0.2, timer1);
				_score += 1;
				if (_actred == true)
				{
					tiemporandom.start(0.5, timer3);
					_actred = false;
				}
				great.alpha = 1;
			}
			// Teclas falsas
			if (FlxG.keys.justPressed.DOWN || FlxG.keys.justPressed.RIGHT || FlxG.keys.justPressed.LEFT)
			{
				bredb.visible = false;
				bredb.scale.set(0.8, 0.8);
				tiempo1.start(0.2, timer1);
				_score -= 1;
				if (_actred == true)
				{
					tiemporandom.start(0.5, timer3);
					_actred = false;
				}
				lose.alpha = 1;
			}
		}
		else if (_actblue == true)
			/*/~~ BLUE ~~/*/
		{
			bblueb.visible = true;
			tiempo2.start(1, timer2);
			bblueb.scale.set(1.1, 1.1);

			// Teclas
			if (FlxG.keys.justPressed.LEFT)
			{
				bblueb.visible = false;
				bblueb.scale.set(0.8, 0.8);
				tiempo1.start(0.2, timer1);
				_score += 1;
				if (_actblue == true)
				{
					tiemporandom.start(0.5, timer3);
				}
				_actblue = false;
				great.alpha = 1;
			}
			// Teclas falsas
			if (FlxG.keys.justPressed.DOWN || FlxG.keys.justPressed.RIGHT || FlxG.keys.justPressed.UP)
			{
				bblueb.visible = false;
				bblueb.scale.set(0.8, 0.8);
				tiempo1.start(0.2, timer1);
				_score -= 1;
				if (_actblue == true)
				{
					tiemporandom.start(0.5, timer3);
				}
				_actblue = false;
				lose.alpha = 1;
			}
		}
		else if (_actgreen == true)
			/*/~~ GREEN ~~/*/
		{
			bgreenb.visible = true;
			tiempo2.start(1, timer2);
			bgreenb.scale.set(1.1, 1.1);

			// Teclas
			if (FlxG.keys.justPressed.DOWN)
			{
				bgreenb.visible = false;
				bgreenb.scale.set(0.8, 0.8);
				tiempo1.start(0.2, timer1);
				_score += 1;
				if (_actgreen == true)
				{
					tiemporandom.start(0.5, timer3);
				}
				_actgreen = false;
				great.alpha = 1;
			}
			// Teclas falsas
			if (FlxG.keys.justPressed.LEFT || FlxG.keys.justPressed.RIGHT || FlxG.keys.justPressed.UP)
			{
				bgreenb.visible = false;
				bgreenb.scale.set(0.8, 0.8);
				tiempo1.start(0.2, timer1);
				_score -= 1;
				if (_actgreen == true)
				{
					tiemporandom.start(0.5, timer3);
				}
				_actgreen = false;
				lose.alpha = 1;
			}
		}
		else if (_actyellow == true)
			/*/~~ YELLOW ~~/*/
		{
			byellowb.visible = true;
			tiempo2.start(1, timer2);
			byellowb.scale.set(1.1, 1.1);

			// Teclas
			if (FlxG.keys.justPressed.RIGHT)
			{
				byellowb.visible = false;
				byellowb.scale.set(0.8, 0.8);
				tiempo1.start(0.2, timer1);
				_score += 1;
				if (_actyellow == true)
				{
					tiemporandom.start(0.5, timer3);
				}
				_actyellow = false;
				great.alpha = 1;
			}
			// Teclas falsas
			if (FlxG.keys.justPressed.DOWN || FlxG.keys.justPressed.LEFT || FlxG.keys.justPressed.UP)
			{
				byellowb.visible = false;
				byellowb.scale.set(0.8, 0.8);
				tiempo1.start(0.2, timer1);
				_score -= 1;
				if (_actyellow == true)
				{
					tiemporandom.start(0.5, timer3);
				}
				_actyellow = false;
				lose.alpha = 1;
			}
		}

		// Para probar
		if (_actblue == true)
		{
			if (FlxG.keys.justPressed.SPACE)
			{
				_actred = false;
			}
		}

		great.alpha -= 0.03;
		lose.alpha -= 0.03;

		// PlayGame
		if (num.animation.frameIndex == 3 && num.exists)
		{
			if (_actred == false)
			{
				_actred = true;
			}
			num.kill();
		}

		// Score
		if (_score <= 0)
			_score = 0;
	}

	public function timer1(delta_t:FlxTimer)
	{
		bredb.scale.set(1, 1);
		bblueb.scale.set(1, 1);
		bgreenb.scale.set(1, 1);
		byellowb.scale.set(1, 1);
	}

	public function timer2(delta_t2:FlxTimer)
	{
		if (_actred == true || _actblue == true || _actgreen == true || _actyellow == true)
		{
			_actred = false;
			_actblue = false;
			_actgreen = false;
			_actyellow = false;
			bredb.scale.set(1, 1);
			bblueb.scale.set(1, 1);
			bgreenb.scale.set(1, 1);
			byellowb.scale.set(1, 1);
			bredb.visible = false;
			bblueb.visible = false;
			bgreenb.visible = false;
			byellowb.visible = false;
			lose.alpha = 1;
			tiemporandom.start(0.5, timer3);
		}
	}

	public function timer3(delta_t3:FlxTimer)
	{
		var cbottons:Int = Std.random(4) + 1;
		FlxG.watch.add(this, "cbuttons");

		if (cbottons == 1)
		{
			_actred = true;
		}
		else if (cbottons == 2)
		{
			_actblue = true;
		}
		else if (cbottons == 3)
		{
			_actgreen = true;
		}
		else if (cbottons == 4)
		{
			_actyellow = true;
		}
	}
}
