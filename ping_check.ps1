Add-Type -AssemblyName System.Media

function Play-Alert {
    while (-not (Test-Connection 8.8.8.8 -Count 1 -Quiet)) {
        [console]::beep(882, 200)   # 882 Hz, 200 ms
    }
}

while ($true) {
    if (-not (Test-Connection 8.8.8.8 -Count 1 -Quiet)) {
        Play-Alert
    }
    Start-Sleep -Seconds 15
}
