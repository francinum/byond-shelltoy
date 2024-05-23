/mob
    icon = 'icons/mobs.dmi'
    icon_state = "player"


/mob/verb/runshell(cmd as text)
    var/list/output = world.shelleo(cmd)
    usr << "-=-=-=-=-"
    usr << "ELEVEL: [output[SHELLEO_ERRORLEVEL]]\n"
    usr << "--"
    usr << "STDOUT: [output[SHELLEO_STDOUT]]\n"
    usr << "--"
    usr << "STDERR: [output[SHELLEO_STDERR]]\n"