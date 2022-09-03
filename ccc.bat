 @echo off
 mode con cols=80 lines=25
 :1 
 set ver=1.8
 set licns=Freeware
 title Computer Command Center v%ver%
 color 0E
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo   1. Wy€Ґcz komputer
 echo   2. Uruchom ponownie komputer
 echo   3. Wy€acznik czasowy
 echo   4. Opcje diagnostyczne 
 echo   A. Aktualizacja
 echo   O. O programie
 echo   W. Wyjcie
 echo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo    Created by Daviox                                         v%ver% %licns%
 set /P cmd=
 if /i "%cmd%"=="1" goto 2
 if /i "%cmd%"=="2" goto 3
 if /i "%cmd%"=="3" goto 4
 if /i "%cmd%"=="4" goto diag
 if /i "%cmd%"=="o" goto 5
 if /i "%cmd%"=="w" goto 6
 if /i "%cmd%"=="~" goto console
 if /i "%cmd%"=="a" start www.dos-world.ugu.pl/update/18f.html
 goto 1

 :2 
 shutdown -s
 goto 4
 
 :3 
 shutdown -r 
 goto 1
 
 :4 
 cls
 color 0E
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo   Czas:
 echo   1. 5 minut
 echo   2. 30 minut
 echo   3. 1 godzina
 echo   4. 2 godziny
 echo   5. W€asne (podaj czas w sekundach)
 echo   X. Odwo€aj\Powrўt
 echo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo    Created by Daviox                                         v%ver% %licns%
 set /P cmd=
 if /i "%cmd%"=="1" goto 5min
 if /i "%cmd%"=="2" goto 30min
 if /i "%cmd%"=="3" goto 1godz
 if /i "%cmd%"=="4" goto 2godz
 if /i "%cmd%"=="5" goto wlasne
 if /i "%cmd%"=="x" goto odwolacz
 goto 4
 
 :5min 
 shutdown -r -t 300
 goto 4
 
 :30min
 shutdown -r -t 1800
 goto 4
 
 :1godz
 shutdown -r -t 3600
 goto 4
 
 :2godz
 shutdown -r -t 7200
 goto 4
 
 :odwolacz
 shutdown -a
 goto 1
 
 :wlasne
 color 4F
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                         COMPUTER COMMAND CENTER KONSOLA                         
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo W€asny czas:
 set /P time=Podaj czas (w sekundach): 
 set /P msg=Wpisz wyswietlonҐ wiadomo† (opcjonalne): 
 shutdown -r -c "%msg%" -t %time%
 goto 4
 
 :diag
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo   Opcje diagnostyczne:
 echo   1. Ping
 echo   2. IP
 echo   3. —led« tras© do serwera
 echo   X. Powrўt
 echo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo    Created by Daviox                                         v%ver% %licns%
 set /P cmd=
 if /i "%cmd%"=="1" goto ping-question
 if /i "%cmd%"=="2" goto ip-type
 if /i "%cmd%"=="3" goto tracert-question
 if /i "%cmd%"=="x" goto 1
 goto diag
 
 :ping-question
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 set /P cmd=Adres strony: 
 echo.
 echo Czy zapisa† wynik do pliku ping.log?
 echo.
 echo               [Y\N]                 
 echo.
 set /p quest=
 if /i "%quest%"=="n" goto ping
 if /i "%quest%"=="y" goto ping-save
 goto diag
 
 :ping
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo %date% %time%
 echo Adres strony: %cmd%
 ping %cmd%
 pause>nul
 goto diag
 
 :ping-save
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo Adres strony: %cmd%
 echo.
 echo Prosz© czeka†...
 echo %date% %time%>>ping.log
 echo Adres strony: %cmd%>>ping.log
 ping %cmd%>>ping.log
 echo.>>ping.log
 echo Wynik zosta€ zapisany w pliku ping.log
 echo Wywietli†? [Y\N]
 set /p view=
 if /i "%view%"=="y" start type ping.log | more
 if /i "%view%"=="n" goto diag
 goto diag
  
 :ip-type
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo   Wybierz tryb:
 echo   1. Normalny
 echo   2. Szczegў€owy
 echo   X. Powrot
 echo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo    Created by Daviox                                         v%ver% %licns%
 set /P cmd=
 if /i "%cmd%"=="1" goto ip
 if /i "%cmd%"=="2" goto ip-all
 if /i "%cmd%"=="x" goto diag
 goto ip-type
  
 :ip
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo %date% %time%>>ip.log
 echo Tryb: Normalny>>ip.log
 ipconfig>>ip.log
 echo.>>ip.log
 echo Wynik zosta€ zapisany w pliku ip.log
 echo Wywietli†? [Y\N]
 set /p view=
 if /i "%view%"=="y" start type ip.log | more
 if /i "%view%"=="n" goto diag
 goto diag
 
 :ip-all
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo %date% %time%>>ip.log
 echo Tryb: Szczegolowy>>ip.log
 ipconfig -all>>ip.log
 echo.>>ip.log
 echo Wynik zosta€ zapisany w pliku ip.log
 echo Wywietli†? [Y\N]
 set /p view=
 if /i "%view%"=="y" start type ip.log | more
 if /i "%view%"=="n" goto diag
 goto diag
 
 :tracert-question
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 set /P cmd=Adres strony: 
 echo.
 echo Czy zapisa† wynik do pliku tracert.log?
 echo.
 echo               [Y\N]                 
 echo.
 set /p quest=
 if /i "%quest%"=="n" goto tracert
 if /i "%quest%"=="y" goto tracert-save
 goto diag
 
 :tracert
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo %date% %time%
 echo Adres strony: %cmd%
 tracert %cmd%
 pause>nul
 goto diag
 
 :tracert-save
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo Adres strony: %cmd%
 echo.
 echo Prosz© czeka†...
 echo %date% %time%>>tracert.log
 echo Adres strony: %cmd%>>tracert.log
 tracert %cmd%>>tracert.log
 echo.>>tracert.log
 echo Wynik zosta€ zapisany w pliku tracert.log
 echo Wywietli†? [Y\N]
 set /p view=
 if /i "%view%"=="y" start type tracert.log | more
 if /i "%view%"=="n" goto diag
 goto diag
  
 :5 
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo      Computer Command Center v%ver% %licns%                                                
 echo  Program pozostanie w wesji freeware do osiҐgniecia werji "Final".
 echo  Potem b©dzie na licencji OpenSource.
 echo  Mam nadziej©, ze program "wyjdzie na prostҐ" i b©dzie dobrҐ aplikacjҐ.
 echo                                                                                  Podzi©kowania dla: ruter
 echo                                                                                                             NACI—NIJ DOWOLNY KLAWISZ
 echo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo    Created by Daviox                                         v%ver% %licns%
 pause>nul
 goto 1
 
 :6 
 cls
 echo                                                                                                                                                                                  ЙННННННННННННННННННННННННННННННННННННН»
 echo                                                                                                                                                                                  є    Czy napewno chcesz wyj†?  Y\N   є
 echo                                                                                                                                                                                  ИНННННННННННННННННННННННННННННННННННННј
 set /P cmd=
 if /i "%cmd%"=="y" exit
 if /i "%cmd%"=="n" goto 1
 goto 6
 
 :console
 color 4F
 cls
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 echo                             COMPUTER COMMAND CENTER                             
 echo ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫ
 ver
 set /P con=comand:
 if /i "%con%"=="quit" goto 1
 if /i "%con%"=="script:shutdown" goto scriptshutdown
 if /i "%con%"=="script:shutdownstop" goto scriptshutdownstop
 if /i "%con%"=="kill" exit
 if /i "%con%"=="ver" goto version
 if /i "%con%"=="system:cmd" cmd
 if /i "%con%"=="system:dos" COMMAND.COM
 if /i "%con%"=="help" goto help
 if /i "%con%"=="script:reboot" goto scriptreboot
 if /i "%con%"=="script:ping" goto scriptping
 if /i "%con%"=="script:ip" goto scriptip
 if /i "%con%"=="script:tracert" goto scripttracert
 goto conserror
 
 :scriptshutdown
 set /P time=Time:
 set /P mes=Message:
 shutdown -r -c "%mes%" -t "%time%"
 goto console
 
 :scriptshutdownstop
 shutdown -a
 goto console
 
 :scriptreboot
 shutdown -r
 
 :version
 echo ЙННННННННННННННННННННННННННННННН»
 echo є Program version: %ver% %licns% є
 echo є Console version:  1.3 beta    є
 echo МННННННННННННННННННННННННННННННН№
 echo є        Press any key          є
 echo ИНННННННННННННННННННННННННННННННј
 pause>nul
 goto console
 
 :help
 echo.
 echo HELP
 echo.
 echo quit                 -  Come back to CCC
 echo script:shutdown      -  Shutdown Timer
 echo script:shutdownstop  -  Shutdown Timer stop
 echo script:reboot        -  Reboot PC
 echo script:ping          -  Ping
 echo script:ip            -  IP Info
 echo script:tracert       -  Follow the path to the server
 echo system:cmd           -  Start CMD
 echo system:dos           -  Start DOS
 echo kill                 -  Kill CCC
 echo.
 pause>nul
 goto console
 
 :scriptping
 set /P ping=Adress: 
 ping %ping%
 pause>nul
 goto console
 
 :scriptip
 echo %date% %time%>>ip.log
 echo Type: Advanced>>ip.log
 ipconfig -all>>ip.log
 echo.>>ip.log
 echo The result is saved in a file ip.log
 goto console
 
 :scripttracert
 set /p cmd=Adress: 
 tracert %cmd%
 pause>nul
 goto console

  
 :conserror
 echo unknowon comand
 set /P con=comand:
 if /i "%con%"=="quit" goto 1
 if /i "%con%"=="script:shutdown" goto scriptshutdown
 if /i "%con%"=="script:shutdownstop" goto scriptshutdownstop
 if /i "%con%"=="kill" exit
 if /i "%con%"=="ver" goto version
 if /i "%con%"=="system:cmd" cmd
 if /i "%con%"=="system:dos" COMMAND.COM
 if /i "%con%"=="help" goto help
 if /i "%con%"=="script:reboot" goto scriptreboot
 if /i "%con%"=="script:ping" goto scriptping
 if /i "%con%"=="script:ip" goto scriptip
 if /i "%con%"=="script:tracert" goto scripttracert
 goto conserror
 