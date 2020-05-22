#Ask would you lik to change the links. Add the urls
#read from CSV file

$stayOpen = $false
while ($stayOpen -ne $true) {
    $Additions = Read-Host 'Type anything to add urls. Or enter to continue' 
    if ($Additions.length -gt 0) 
    {
        $url = ""
        $AmountOfUrl = Read-Host 'How many urls do you want to open'
        $int = 1
        DO
    {
        $text = Read-Host 'Enter url'
        $url += $text + ", "
        $int++
         
    } while ($int -le [int]$AmountOfUrl)
    #How many urls
    #Enter url'
    #Open url's
    } else {

    $url = 
    "https://docs.google.com/document/d/1mILlJMh5C0PDQKpf-h5V-VIMCME1rTkn9GFwPETcs2M/edit#",
    "https://networklessons.com/ospf/introduction-to-ospf",
    "https://console.aws.amazon.com/console/home?nc2=h_ct&src=header-signin&region=us-east-1",
    "https://pankajshah22.wordpress.com/2018/10/02/exercise-2-working-with-data-ontap-administrative-interfaces/",
    "https://www.udemy.com/course/learning-windows-powershell/learn/lecture/1848598#overview",
    "https://www.udemy.com/course/kubernetes-fast-track/learn/lecture/19158022#overview",
    "https://www.udemy.com/course/result-oriented-web-developer-course/",
    "https://docs.google.com/document/d/1mILlJMh5C0PDQKpf-h5V-VIMCME1rTkn9GFwPETcs2M/edit#",
    "https://www.udemy.com/course/aws-certified-solutions-architect-associate/learn/quiz/4664948#overview"
    $creativeCloud = Get-Process -name 'Creative Cloud'
    $WINWORD = Get-Process -name WINWORD 
    
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
    Start-Process "chrome.exe" -ArgumentList $url

    $stayOpen = $true
}

# Sort Desktop by name alphabetically?
# Popup to tell you what applications you want to close?
# for it to save to the file so it remembers that

