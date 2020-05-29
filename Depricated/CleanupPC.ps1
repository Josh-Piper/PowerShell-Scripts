#Prompt Options so user chooses. unless wanting to do all

$ToDo = Read-Host 'Press 1 to clean cache: Press 2 to empty Recycle Bin, anything else to Quit'

if ($ToDo.Equals("1")) 
{
    Write-Host 'Cleaning up'
    Start-Process cleanmgr.exe /AUTOCLEAN
    Start-Process cleanmgr.exe /verylowdisk
} elseif ($ToDo.Equals("2")) 
{
    
    Write-Host 'Emptying Recycle Bin'
    Clear-RecycleBin
} else 
{
    exit
}