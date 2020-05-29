#Ask would you lik to change the links. Add the urls
#read from CSV file
$url 
$stayOpen = $false
while ($stayOpen -ne $true) {
    $Additions = Read-Host '1: PowerShell, 2: Linux, 3: Docker 4: Networking 5: DevTools: or type Escape to exit' 
    if ($Additions.Equals("1")) 
    {
        $url = Get-Content ".\powershellFile.txt"
    } elseif ($Additions.Equals("2")){

    $url = Get-Content ".\linuxFiles.txt"

    
    } elseif ($Additions.Equals("3")) {
    $url = Get-Content ".\DockerFiles.txt"
    } elseif ($Additions.Equals("4")) {
        $url = Get-Content ".\networkingFiles.txt"
    } elseif ($Additions.Equals("5")) {
        $url = Get-Content '.\devtoolsFiles.txt'
    } elseif ($Additions.Equals("Escape")) {
        exit
    }
    else {
        continue
    }
    #parametres
 
    Start-Process "chrome.exe" -ArgumentList $url

    $stayOpen = $true
}


