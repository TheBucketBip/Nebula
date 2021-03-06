
/obj/item/gun/projectile/pistol
	name = "pistol"
	desc = "The Lumoco Arms P15 Echo. A compact 10mm handgun."
	icon = 'icons/obj/guns/pistol.dmi'
	icon_state = ICON_STATE_WORLD
	load_method = MAGAZINE
	caliber = CALIBER_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_magazine/pistol
	accuracy_power = 7
	safety_icon = "safety"
	ammo_indicator = TRUE

/obj/item/gun/projectile/pistol/update_base_icon()
	var/base_state = get_world_inventory_state()
	if(!length(ammo_magazine?.stored_ammo) && check_state_in_icon("[base_state]-e", icon))
		icon_state = "[base_state]-e"
	else
		icon_state = base_state

/obj/item/gun/projectile/pistol/holdout
	name = "holdout pistol"
	desc = "The Lumoco Arms P3 Whisper. A small, easily concealable gun."
	icon = 'icons/obj/guns/holdout_pistol.dmi'
	icon_state = ICON_STATE_WORLD
	item_state = null
	ammo_indicator = FALSE
	w_class = ITEM_SIZE_SMALL
	caliber = CALIBER_PISTOL_SMALL
	silenced = 0
	fire_delay = 4
	origin_tech = "{'combat':2,'materials':2,'esoteric':8}"
	magazine_type = /obj/item/ammo_magazine/pistol/small
	allowed_magazines = /obj/item/ammo_magazine/pistol/small

/obj/item/gun/projectile/pistol/holdout/attack_hand(mob/user)
	if(silenced && user.is_holding_offhand(src))
		to_chat(user, SPAN_NOTICE("You unscrew \the [silenced] from \the [src]."))
		user.put_in_hands(silenced)
		silenced = initial(silenced)
		w_class = initial(w_class)
		update_icon()
		return
	..()

/obj/item/gun/projectile/pistol/holdout/attackby(obj/item/I, mob/user)
	if(istype(I, /obj/item/silencer))
		if(src in user.get_held_items())	//if we're not in his hands
			to_chat(user, SPAN_WARNING("You'll need [src] in your hands to do that."))
			return TRUE
		if(user.unEquip(I, src))
			to_chat(user, SPAN_NOTICE("You screw [I] onto [src]."))
			silenced = I	//dodgy?
			w_class = ITEM_SIZE_NORMAL
			update_icon()
		return TRUE
	. = ..()

/obj/item/gun/projectile/pistol/holdout/update_base_icon()
	..()
	if(silenced)
		overlays += get_mutable_overlay(icon, "[get_world_inventory_state()]-silencer")

/obj/item/gun/projectile/pistol/holdout/get_on_belt_overlay()
	if(silenced && check_state_in_icon("on_belt_silenced", icon))
		return overlay_image(icon, "on_belt_silenced", color)
	return ..()

/obj/item/silencer
	name = "silencer"
	desc = "A silencer."
	icon = 'icons/obj/guns/holdout_pistol_silencer.dmi'
	icon_state = ICON_STATE_WORLD
	w_class = ITEM_SIZE_SMALL

/obj/item/gun/projectile/magnum
	name = "magnum pistol"
	desc = "A large handgun with a large caliber. It's bulky and has a fair bit of recoil."
	icon = 'icons/obj/guns/magnum_pistol.dmi'
	icon_state = ICON_STATE_WORLD
	load_method = MAGAZINE
	caliber = CALIBER_PISTOL_MAGNUM
	force = 10
	fire_delay = 8
	magazine_type = /obj/item/ammo_magazine/magnum
	allowed_magazines = /obj/item/ammo_magazine/magnum
	accuracy_power = 5
	safety_icon = null
	ammo_indicator = FALSE

/obj/item/gun/projectile/magnum/update_base_icon()
	var/base_state = get_world_inventory_state()
	if(!length(ammo_magazine?.stored_ammo) && check_state_in_icon("[base_state]-e", icon))
		icon_state = "[base_state]-e"
	else
		icon_state = base_state


/obj/item/gun/projectile/pistol/military
	name = "military pistol"
	desc = "The Lumoco Arms P17 Bull. A military grade handgun known for it's simple and effective design."
	icon = 'icons/obj/guns/military_pistol.dmi'
	icon_state = ICON_STATE_WORLD
	load_method = MAGAZINE
	caliber = CALIBER_PISTOL
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_magazine/pistol
	accuracy = 1
	burst_delay = 2
	accuracy_power = 8
	waterproof = TRUE
	safety_icon = "safety"
	ammo_indicator = TRUE

	firemodes = list(
		list(mode_name="semi auto",      burst=1, fire_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
		list(mode_name="2-round bursts", burst=2, fire_delay=null, one_hand_penalty=4, burst_accuracy=list(-2,-3),       dispersion=list(0.0, 0.6, 1.0))
		)

