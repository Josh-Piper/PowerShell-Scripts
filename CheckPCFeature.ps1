Write-Host "1: Wireless 2: Network Information"
$DoSomething = Read-Host "Type something"
if ($DoSomething.Equals("1")) {
    
$output = netsh.exe wlan show interfaces
$output
} elseif ($DoSomething.Equals("2"))
{
    Get-NetAdapter
  
} else {

}




 #ctrl + ` => Hides Console
 #ctrl + , => Settings