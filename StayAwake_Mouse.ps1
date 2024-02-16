Add-Type -AssemblyName System.Windows.Forms

$sleepDurationSeconds = 10
$minimum = -1
$maxnum = 1

$mode = Read-Host "Choose mode: wasd or mouse"
if ($mode -eq "wasd") {
    Write-Host "Activating wasd mode (Press CTRL + C to stop)"
    MoveWASD
}else{
    Write-Host "Activating mouse mode"
    MoveCursor
}

function MoveCursor() {
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
}

function MoveWASD() {
    while ($true) {
        $randomValue = (Get-Random -Minimum 0 -Maximum 101)
        $randomKey = (Get-Random -Minimum 0 -Maximum 4)

        for ($iteration = 0; $iteration -lt $randomValue; $iteration += 1) {
            if ($randomKey -eq 0) {
                [System.Windows.Forms.SendKeys]::SendWait("w")
            } elseif ($randomKey -eq 1) {
                [System.Windows.Forms.SendKeys]::SendWait("a")
            } elseif ($randomKey -eq 2) {
                [System.Windows.Forms.SendKeys]::SendWait("s")
            } elseif ($randomKey -eq 3) {
                [System.Windows.Forms.SendKeys]::SendWait("d")
            }
            Start-Sleep -Milliseconds 100
        }

        Start-Sleep -Seconds $sleepDurationSeconds
    }
}