$users = Import-Csv -path "C:\Users\absolute.networks\Desktop\staff.csv"
foreach ($user in $users)
{
   $userstring = ($user.Name).ToString()
   $temp = get-aduser -filter {Name -like $userstring}
   Set-ADUser $temp -Title $user.'Job Title'
}