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
		}*/
		
	}
	
	
}