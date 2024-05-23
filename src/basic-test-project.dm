/*
	These are simple defaults for your project.
 */

/world
	fps = 60		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 6		// show up to 6 tiles outward from center (13x13 view)


// Make objects move 8 pixels per tick when walking

mob
	step_size = 8

obj
	step_size = 8

var/global/client_count = 0

/world/New()
	..()
	TgsNew()
	TgsInitializationComplete()

	while(TRUE)
		sleep(1) // Keep at least one thread spinning so the debug server stays happy.

/world/Reboot()
	TgsReboot()
	..()

/world/Topic()
	TGS_TOPIC
	..()

/client/New()
	..()
	++global.client_count

/client/Del()
	..()
	--global.client_count