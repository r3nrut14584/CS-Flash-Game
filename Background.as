class Background extends MovieClip
{
	var velocity;
	
	function onLoad()
	{
		velocity = 10;
	}
	
	function onEnterFrame()
	{
	
		
		if(Key.isDown(Key.RIGHT)) 
		{
			_x = _x - velocity;
		}
				
		
		if(_x > -10)
		{
				_x = _x;
		}
		
		else
		{
			if( Key.isDown(Key.LEFT) )
			{
				_x = _x + velocity;
			}
		}
		
	}
}