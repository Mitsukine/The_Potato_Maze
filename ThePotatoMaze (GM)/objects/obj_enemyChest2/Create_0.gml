//chasing the player?
alert = false;

//distance from where the player is getting chased
alert_dis = 100;

//speed while chasing player
move_speed = 1;

//distance where enemy stop from player
attack_dis = 2;



//create path resource
path = path_add();


//set delay for calculating path
calc_path_delay = 30;
//timer to calculate path
calc_path_timer = irandom(60);


facing = 1;