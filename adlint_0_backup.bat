set time2=%time: =0%
echo d | xcopy /Y adlint adlint_%date:~2,2%%date:~5,2%%date:~8,2%_%time2:~0,2%%time2:~3,2%%time2:~6,2%
