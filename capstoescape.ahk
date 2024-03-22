#Requires AutoHotkey v2.0
#SingleInstance force

exclusions := ["csgo.exe", "cs2.exe", "overwatch.exe", "payday2_win32_release.exe", "Borderlands2.exe", "hl2.exe", "Discovery.exe", "r5apex.exe", "FortniteClient-Win64-Shipping.exe", "BH6.exe", "cod.exe"]

HasVal(haystack, needle) {
    for index, value in haystack
        if (value = needle)
            return index
    return 0
}

#hotif not HasVal(exclusions, WinGetProcessName("A"))
CapsLock::Escape
#HotIf
