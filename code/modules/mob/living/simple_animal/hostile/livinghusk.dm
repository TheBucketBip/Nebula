/mob/living/simple_animal/hostile/livinghusk
	name = "\improper Abomination"
	desc = "Nuke the planet from orbit, just to be sure."
	icon_state = "livinghusk"
	icon_living = "livinghusk"
	icon_dead = "syndicate_dead"
	icon_gib = "syndicate_gib"
	speak_chance = 0
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 4
	stop_automated_movement_when_pulled = 0
	maxHealth = 100
	health = 100
	natural_weapon = /obj/item/natural_weapon/claws/strong
	can_escape = TRUE
	bleed_colour = COLOR_BLOOD_HUMAN
	can_bleed = TRUE
	flash_vulnerability = 1
	a_intent = I_HURT
	var/corpse
	var/weapon1
	var/weapon2
	unsuitable_atmos_damage = 15
	environment_smash = 1
	status_flags = CANPUSH

/mob/living/simple_animal/hostile/livinghusk/death(gibbed, deathmessage, show_dead_message)
	..(gibbed, deathmessage, show_dead_message)
	if(corpse)
		new corpse (src.loc)
	if(weapon1)
		new weapon1 (src.loc)
	if(weapon2)
		new weapon2 (src.loc)
	qdel(src)
	return