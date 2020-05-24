#Ask would you lik to change the links. Add the urls
#read from CSV file
cd 'C:\Users\Joshua\Desktop\Scripts PS'
$stayOpen = $false
while ($stayOpen -ne $true) {
    $Additions = Read-Host 'Type 1 to define new list, type 2 to open default urls, or anything else to open last list' 
    if ($Additions.Equals("1")) 
    {
        $url = ""
        $AmountOfUrl = Read-Host 'How many urls do you want to open'
        Clear-Content ".\writeTo.txt"
        $int = 1

        DO
    {
        $text = Read-Host 'Enter url'
        $url += $text + ", "
        $int++
        


         
    } while ($int -eq [int]$AmountOfUrl)
    #How many urls
    #Enter url'
    #Open url's
    } elseif ($Additions.Equals("2")){

    $url = Get-Content "./default.txt"
    $creativeCloud = Get-Process -name 'Creative Cloud'
    $WINWORD = Get-Process -name WINWORD 
    
    } else {
    $url = Get-Content ".\writeTo.txt"
    }
    #parametres
    if ($creativeCloud) 
    {
        $creativeCloud.CloseMainWindow()
    }

    if ($WINWORD) 
    {
        $WINWORD.CloseMainWindow()
    }
    $url | Add-Content -Path writeTo.txt
    Start-Process "chrome.exe" -ArgumentList $url

    $stayOpen = $true
}


