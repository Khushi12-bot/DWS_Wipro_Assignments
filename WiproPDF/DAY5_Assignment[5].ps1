Get-Process
#i want this information in the notepad 
#with the outfile we can give this out pipleline | means two acticity should perform together
Get-Process | Out-File E:\aa\wiprofiledwc\processfile
Get-Command | Out-File E:\Wiprofiles\datafiles.txt
Get-PSDrive -PSProvider FileSystem | Out-File E:\Wiprofiles\datafiles.txt -Append

Get-NetIPConfiguration | Out-File E:\Wiprofiles\datafiles.txt -Append
Get-ChildItem | Out-File E:\Wiprofiles\datafiles.txt -Append

Get-Service | Out-File E:\Wiprofiles\datafiles.txt -Append

$name = Read-Host "please enter name"
Write-Output "Heelo, Lets welcome$name"

$data = Get-Content -path "E:\wiprofiles\datafiles.txt"

$fruits = "banana","apple"
$fruits[0]
$fruits+="kiwi"

#Get-Process | Out-File E:\aa\wiprofiledwc\processfile

$age = 20
if($age -ge 10){
Write-Host "Age is greater"
}


$age = 25
if($age -ge 18){
Write-Host "Adult"
}
elseif ($age -ge 13){
Write-Host "Teenager"
}
else{
Write-Host "child"
}


Get-Process | Where-Object {$_.CPU -gt 1} | Sort-Object CPU -Descending | Select-Object Name, CPU

#---------Sum---------
[int]$num1= Read-Host "number 1"
[int]$num2= Read-Host "number 2"
$sum=$num1+$num2
Write-Host "sum is $sum"

#-------------------Array---------------
$arr=@(1,"khushi" , 3,4,5,6,7,8,9)
$n= $arr[1]
Write-Host "array second element $n"
write-Host "entire array $arr"

#----------For Loop------------------

for($i=-5; $i -le 0 ; $i++)
{

Write-Host "$i"
}

#------------switch-----------
$day="sun"
switch($day)
{
"mon" {Write-Host "start week"}
"sun" {Write-Host "holi day"}
"fri" {Write-Host "end week"}
"mon" {Write-Host "nothing....."}
}

#------------function-------------

function greet {
param($name)
Write-Host "Hello, $name"
}

greet -name "khushi"
greet -name "hyya"

#Take 3 inputs and print

$tparr = @()

for($i=0; $i -lt 3; $i++){
$a = Read-Host "enter everything"
$tparr += $a
}
write-Host "entire array $tparr"

#--------Access element & print all------

Write-Host "$($tparr[3])"

foreach($ele in $tparr){
Write-Host "$ele"
}

#---------Formatting-------------
#Format-Table
Get-Process | Format-Table -Property Name, CPU

Get-Process | Format-Table -Property Name, CPU, StartTime

#Format-List
Get-Process | Format-Table -Property Name , Status , DisplayName

#Format-Wide
Get-ChildItem | Format-Wide -Column 3

#----------------get content---------------------
$con=Get-Content -Path "E:\Wiprofiles\datafiles.txt"
Write-Host "$con"

$valid = $true

Write-Host "$valid"
