@echo off
:loop
    echo testing IP address
    ping 141.11.241.25 >nul || (
       echo ping failure - disconnecting
       rasdial Mozfactor /disconnect
          timeout /t 10 /nobreak
       echo reconnecting
          rasdial Mozfactor
          timeout /t 10 /nobreak
   )
timeout /t 30 /nobreak
goto :loop