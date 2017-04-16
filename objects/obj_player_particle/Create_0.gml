particleDirectionFree = 90;
Lifetime = random_range(2,5);
action_set_alarm(Lifetime, 0);
///SetAlpha
var rand = random_range(20,80);
image_alpha = rand;

action_set_motion(particleDirectionFree, 20);
