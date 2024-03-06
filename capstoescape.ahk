#Requires AutoHotkey v2.0
#SingleInstance force


hotif "not filters()"
CapsLock::Escape
hotif

exclusions := ["csgo.exe", "cs2.exe", "overwatch.exe", "payday2_win32_release.exe", "Borderlands2.exe", "hl2.exe", "Discovery.exe", "r5apex.exe", "FortniteClient-Win64-Shipping.exe", "BH6.exe", "cod.exe"]

#hotif not filters()

filters() {
    if (exclusions.Has(WinGetProcessName("A")))
        return true
    return false
}
