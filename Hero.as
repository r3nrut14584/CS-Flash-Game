class Hero extends MovieClip
{
	
	var velocity;
	var mainSpeed:Number = 7;
	var enemyTimer;
	
	function onLoad()
	{
		velocity = 10;
		enemyTimer = 0;
	}
	
	function onEnterFrame()
	{
		
		

		if( Key.isDown(Key.RIGHT) )
		{
			_x = _x + velocity;
		} 
		
		if( Key.isDown(Key.LEFT) )
		{
			_x = _x - velocity;
		}
		
		if(_x > 600)
		{
			_x = -100;
			Background.moveFrame();
		}
		
		if(_x < 0)
		{
			_x = 500;
			Background.moveFrameBack();
		}
	
		enemyTimer += 1;
		
		if(enemyTimer > Math.random()*8000)
		{
			enemyTimer = 0;
			_root.attachMovie("Zombie", "Zombie"+_root.getNextHighestDepth(), _root.getNextHighestDepth());
		}
	
	}
}