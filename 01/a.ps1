$lines = Get-Content ./input.txt
$i = 0
$max = 0
$ForEach ($line in $lines) {
    if ($line) {
        $i += [int]$line
    } else {
        if ($i -gt $max) {
            $max = $i
        }
        $i
        $i = 0
    }
}
$max
