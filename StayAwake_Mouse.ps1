write-host "Press CTRL + C to stop"
Add-Type -AssemblyName System.Windows.Forms

$sleepDurationSeconds = 10
$minimum = -1
$maxnum = 1

while ($true) {
    $currentCursorPosition = [Windows.Forms.Cursor]::Position
    $randomXDistance = (Get-Random -Minimum $minimum -Maximum $maxnum)  # X
    $randomYDistance = (Get-Random -Minimum $minimum -Maximum $maxnum)  # Y
    $randomValue = (Get-Random -Minimum 0 -Maximum 101)

    for ($iteration = 0; $iteration -lt $randomValue; $iteration += 1) {
        $currentCursorPosition.x += $randomXDistance
        $currentCursorPosition.y += $randomYDistance
        [Windows.Forms.Cursor]::Position = $currentCursorPosition
        Start-Sleep -Milliseconds 100
    }

    Start-Sleep -Seconds $sleepDurationSeconds
}