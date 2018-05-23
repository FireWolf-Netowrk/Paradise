
/mob/living/simple_animal/hostile/retaliate/carp
	name = "sea carp"
	desc = "A large fish bearing similarities to a certain space-faring menace."
	icon_state = "carp"
	icon_living = "carp"
	icon_dead = "carp_dead"
	icon_gib = "carp_gib"
	speak_chance = 0
	turns_per_move = 5
	butcher_results = list(/obj/item/reagent_containers/food/snacks/carpmeat = 1)
	response_help = "pets the"
	response_disarm = "gently pushes aside the"
	response_harm = "hits the"
	speed = 0
	maxHealth = 25
	health = 25

	retreat_distance = 6
	vision_range = 5

	harm_intent_damage = 8
	melee_damage_lower = 15
	melee_damage_upper = 15
	attacktext = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	speak_emote = list("gnashes")

	faction = list("carp")
	flying = 1


/mob/living/simple_animal/hostile/retaliate/carp/koi
	name = "space koi"
	desc = "a gentle space faring koi."
	icon = 'icons/obj/fish_items.dmi'
	icon_state = "koi1"
	icon_living = "koi1"
	icon_dead = "koi1-dead"
	icon_gib = "carp_gib"

	harm_intent_damage = 1
	melee_damage_lower = 2
	melee_damage_upper = 2
	attacktext = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	speak_emote = list("blurps")

	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	maxbodytemp = 1500

	faction = list("carp")
	flying = 1

/mob/living/simple_animal/hostile/retaliate/carp/koi/New()
	..()
	var/koinum = rand(1,4)
	icon_state = "koi[koinum]"
	icon_living = "koi[koinum]"
	icon_dead = "koi[koinum]-dead"
	if(prob(1))
		icon_state = "koi5"


/mob/living/simple_animal/hostile/retaliate/carp/koi/Process_Spacemove(var/movement_dir = 0)
	return 1