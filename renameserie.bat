for %%1 in ("*.pdf") do (
SANITYFILE.exe --file="%%1"
)

@echo off
set i=1
SET /P j=Entrez AAMMJJ comme  num‚ro de d‚part :
for %%i in (*.pdf) do call :renameit %%i
goto done

:renameit
echo "hhh"
echo %1
::ren %i%.pdf CurDt_1_S%i%.pdf
echo %j:~0,3%

echo %j%

set ext=000000000000000000000%j%
echo %ext%
echo %ext:~6%
echo %ext:~-6%
rename %1 %ext:~-6%_%1
set /a j+=1
:done
::pause