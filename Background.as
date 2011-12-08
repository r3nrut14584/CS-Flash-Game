class Background extends MovieClip
{
	var velocity;
	var moveback:Boolean;
	
	function onLoad()
	{
		velocity = 10;
		moveback = false;
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
		}*/
		
	}
	
	//These *should* work for moving the frame around
	function moveFrame()
	{
		_x += 600;
		//Calling the function in Hero should make it execute for the background
	}

	function moveFrameBack()
	{
		if(canMoveBack())
		{
			_x -= 600;
		}
	}

	function canMoveBack()
	{
		if(_x >= 600)
		{
			moveback = true;
		}
		else
		{
			moveback = false;
		}
	}
	
}