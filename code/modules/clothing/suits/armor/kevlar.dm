/obj/item/clothing/suit/armor/kevlar
	name = "RNI security vest"
	desc = "An advanced armor vest composed of a variety of synthetic metals and fibers, issued to RNI Security. Often stained with the blood."
	icon_state = ICON_STATE_WORLD
	icon = 'icons/clothing/suit/armor/kevlar.dmi'
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED
		)
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_ARMOR_S, ACCESSORY_SLOT_ARMOR_M)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L, ACCESSORY_SLOT_ARMOR_S)
