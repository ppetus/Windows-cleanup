# Run 'Get-AppxPackage | select Name' in powershell to list all installed apps.
# Add the name of the app into the list below to delete it.
# Only part of the name is enough. All apps with the substring in their name will be deleted.
# Example 'weather' -> all apps with "weather" in their name will be deleted.
# Casing doesn't matter, both ' and " can be used in the list.
# It's expected that removal of some apps will fail resulting in error messages.

$apps_to_delete = @('weather', '3dviewer', 'skype', 'spotify', 'onenote', 'Camera', 'xbox', 'quickstart',
                    'peopleexperience', 'alarm', 'zune', 'yourphone', 'maps', 'feedback', 'people',
                    'stickynotes', 'solitaire', 'officehub', 'getstarted', 'gethelp', 'disney',
                    'mixedreality')

foreach ($app in $apps_to_delete)
{
    Write-Output "Deleting $app"
    Get-AppxPackage *$app* | Remove-AppxPackage
}

Write-Output **********
Write-Output Done
Write-Output **********