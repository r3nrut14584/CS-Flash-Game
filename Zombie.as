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
		
		//change next part to weapon
		
		if(this.hitTest(_root.hero))
		{
			explode();
		}
	}
	
	function explode()
	{
		this.removeMovieClip();
	}
}