class Zombie extends MovieClip
{
	var speed;
	
	function onLoad()
	{
		_x = 700;
		_y = 245
		speed = Math.random()*2 + 5;
	}

	function onEnterFrame()
	{
		_x -= speed;
		if(_x < -100)
		{
			this.removeMovieClip();
		}
		
		if(_root.background(_x < -15))
		{
			_x = _x
		}
		
		if( Key.isDown(Key.LEFT))
		{
			_x = _x + 10
		}
		
		if( Key.isDown(Key.RIGHT))
		{
			_x = _x - 10
		}
		
		
		//change next part to weapon
		
		if(this.hitTest(_root.hero))
		{
			explode();
		}
	}
	
	function explode()
	{
		this.removeMovieClip();
		_root.hero.updateScore(50);
		_root.hero.updateHealth(-10);
	}
}