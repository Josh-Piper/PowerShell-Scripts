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
    } elseif ($Additions.Equals("1")){

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


