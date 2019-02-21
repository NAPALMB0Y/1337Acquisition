@echo off
color 02

type banner.txt
pause

echo 1337Inquisition v1.0 beta> report.txt
echo. >> report.txt
echo Starting Acquisition
echo. >> report.txt
echo Current time is: >> report.txt
date /t >> report.txt
time /t >> report.txt
echo. >> report.txt

echo Checking for Encyrpted Drives
EDD /accepteula >> report.txt
echo. >> report.txt
echo. >> report.txt

echo Currently logged in as: >> report.txt
whoami >> report.txt
echo. >> report.txt
echo. >> report.txt

echo ---- User Info ---- >> report.txt
net user >> report.txt
echo. >> report.txt
echo. >> report.txt

echo ---- System Info: ---- >> report.txt
systeminfo >> report.txt
echo. >> report.txt

echo ---- Serial Number ---- >> report.txt
echo. >> report.txt
wmic bios get serialnumber >> report.txt
echo. >> report.txt
echo. >> report.txt

echo ---- PATH ---- >> report.txt
echo %path% >> report.txt
echo. >> report.txt
echo. >> report.txt

echo ---- Open Processes ---- >> report.txt
pslist64.exe >> report.txt
echo. >> report.txt
echo. >> report.txt

echo ---- Running Services ---- >> report.txt
psservice64 -accepteula |more >> report.txt
echo. >> report.txt
echo. >> report.txt

echo ---- DLL Info ---- >> report.txt
listdlls64 -accepteula >> report.txt
echo. >> report.txt
echo. >> report.txt

echo ---- Scheduled Tasks ---- >> report.txt
schtasks >> report.txt
echo. >> report.txt
echo. >> report.txt

echo ---- Volume Information ---- >> report.txt
vol >> report.txt
echo. >> report.txt
echo. >> report.txt
echo. >> report.txt



echo ---- Drive Shares ---- >> report.txt
net share >> report.txt
echo. >> report.txt
echo. >> report.txt

netstat -an |more >> report.txt
echo. >> report.txt
echo. >> report.txt

echo ---- ARP CACHE ---- >> report.txt
arp -a >> report.txt
echo. >> report.txt
echo. >> report.txt


echo ---- NetBios Info ---- >> report.txt
nbtstat -n >> report.txt
echo. >> report.txt
echo. >> report.txt

echo Dump Memory? (y/n)
set /p dump=
if %dump%==y DumpIt.exe


echo Acquisition Completed!
echo Report saved as report.txt
echo. >> report.txt
echo Current time is: >> report.txt
date /t >> report.txt
time /t >> report.txt
echo. >> report.txt
pause
