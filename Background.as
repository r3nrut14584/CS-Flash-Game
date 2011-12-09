class Background extends MovieClip
{
	var velocity;
	
	function onLoad()
	{
		velocity = 10;
	}
	
	function onEnterFrame()
	{
	//Need to figure out how to call in hero.s so that when he hits 600 _x also moves 600
		/*if(Key.isDown(Key.RIGHT)) 
		{
			_x = _x - velocity;
		}
		if(Key.isDown(Key.LEFT))
		{
			_x = _x + velocity;
		}
		HOPEFULLY this will work
		if(_root.Hero._x > 600)
		{
			_x += 600;
		}
		if(_root.Hero._x < 0 && _x >= 600)
		{
			_x -= 600;
		}*/
		
	}
	
	
}