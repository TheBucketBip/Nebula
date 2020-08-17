/mob/living/simple_animal/hostile/livinghusk
	name = "\improper Abomination"
	desc = "A horribly deformed humanoid creature."
	icon_state = "livinghusk"
	icon_living = "livinghusk"
	icon_dead = "livinghusk_dead"
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
	unsuitable_atmos_damage = 15
	environment_smash = 1
	status_flags = CANPUSH

/mob/living/simple_animal/hostile/livinghusk/armor
	name = "\improper Abomination"
	desc = "It's wearing armor, but it seems too animalistic to know how to put it on. Was this thing human?"
	icon_state = "livinghusk_armor"
	icon_living = "livinghusk_armor"
	speed = 3
	maxHealth = 150
	health = 150

/mob/living/simple_animal/hostile/livinghusk/hive
	desc = "A vaguely humanoid beast covered in tumors with sagging flesh, their general form distorted as if losing cohesion."
	icon_state = "livinghusk_hive"
	icon_living = "livinghusk_hive"
	icon_dead = "livinghuskhive_dead"
	speed = 2.5
	maxHealth = 215
	health = 215
	flash_vulnerability = 0