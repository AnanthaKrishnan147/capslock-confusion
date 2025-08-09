Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class Keyboard {
    [DllImport("user32.dll")]
    public static extern void keybd_event(byte bVk, byte bScan, int dwFlags, int dwExtraInfo);
}
"@

while ($true) {
    Start-Sleep -Seconds (Get-Random -Minimum 5 -Maximum 15)
    [Keyboard]::keybd_event(0x14, 0x45, 0x1, 0)  # Caps Lock key down
    [Keyboard]::keybd_event(0x14, 0x45, 0x3, 0)  # Caps Lock key up
}
