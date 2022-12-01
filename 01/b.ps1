$lines = Get-Content ./input.txt
$i = 0
$elfs = ForEach ($line in $lines) {
    if ($line) {
        $i += [int]$line
    } else {
        $i
        $i = 0
    }
}
($elfs | sort | select -Last 3 | measure-object -sum).sum
