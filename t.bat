@echo off
echo ===================================
echo          SYSTEM INFORMATION       
echo ===================================
echo Date: %DATE%
echo Time: %TIME%
echo Username: %USERNAME%
echo Computer Name: %COMPUTERNAME%
echo OS Version: %OS%
echo Processor: %PROCESSOR_IDENTIFIER%
echo Architecture: %PROCESSOR_ARCHITECTURE%
echo Free Memory:
wmic OS get FreePhysicalMemory /Value
echo Disk Space:
wmic logicaldisk get name, freespace, size
echo ===================================
