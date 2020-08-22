/datum/species/moth
	name = SPECIES_MOTH
	name_plural = "U'quani"
	primitive_form = SPECIES_MONKEY
	unarmed_attacks = list(/decl/natural_attack/stomp, /decl/natural_attack/kick, /decl/natural_attack/punch, /decl/natural_attack/bite)
	description = "A race of mammals with an appearance resembling that of moths from earth. Often known for being highly bubbly and optimistic in nature with a nack for fixing and creating, most becoming tinkerers, mechanics, and engineers. Once brainless and bound by a hivemind, the species gained indepedence when their leader was killed during a war between humanity and the U'quani, severing their hivemind link."
	min_age = 30
	max_age = 250
	hidden_from_codex = FALSE
	bandages_icon = 'icons/mob/bandage.dmi'
	bodytype = BODYTYPE_HUMANOID
	limb_icon_intensity = 1
	flash_mod = 1.5
	radiation_mod = 0.5
	toxins_mod = 0.5

	icobase =      'icons/mob/human_races/species/moth/body.dmi'
	damage_overlays = 'icons/mob/human_races/species/moth/damage_overlay.dmi'
	damage_mask =     'icons/mob/human_races/species/moth/damage_mask.dmi'
	blood_mask =      'icons/mob/human_races/species/moth/blood_mask.dmi'

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR

	sexybits_location = BP_GROIN

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_OTHER
		)
	)

