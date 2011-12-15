class Hero extends MovieClip
{
	
	var velocity;
	var mainSpeed:Number = 7;
	var enemyTimer;
	var enemies;
	var score;
	var health;
	
	function onLoad()
	{
		velocity = 10;
		enemyTimer = 0;
		enemies = [];
		resetHealth();
		resetScore();
	}
	
	function onEnterFrame()
	{
		if(!Key.isDown(Key.LEFT) && !Key.isDown(Key.RIGHT))
		{
			gotoAndStop(1);
		}
		
		
		enemyTimer += 1;
		
		if(enemyTimer > Math.random()*8000)
		{
			enemyTimer = 0;
			_root.attachMovie("Zombie", "Zombie"+_root.getNextHighestDepth(), _root.getNextHighestDepth());
		}

		if(health <= 0)
		{
			die();
		}
	}
	
	function updateScore(points)
	{
		score += points;
		_root.scoreText.text = score;
	}
	
	function resetScore()
	{
		score = 0;
		_root.scoreText.text = score;
	}
	
	function updateHealth(points)
	{
		health += points;
		_root.healthMeter.bar._xscale = health;
	}
	
	function resetHealth()
	{
		health = 100;
		_root.healthMeter.bar._xscale = 100;
	}
	
	function die()
	{
		resetHealth();
		resetScore();
		_x = 0;
	}
}