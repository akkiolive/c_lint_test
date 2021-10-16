cd adlint

del adlint.csv
copy nul adlint.csv

for %%c in (*adlint.msg.csv) do if not %%c==adlint.csv (echo =============%%c============= >> adlint.csv) & (type %%c >> adlint.csv)
for %%c in (*.c.msg.csv) do if not %%c==adlint.csv (echo =============%%c============= >> adlint.csv) & (type %%c >> adlint.csv)
for %%c in (*adlint.met.csv) do if not %%c==adlint.csv (echo =============%%c============= >> adlint.csv) & (type %%c >> adlint.csv)
for %%c in (*.c.met.csv) do if not %%c==adlint.csv (echo =============%%c============= >> adlint.csv) & (type %%c >> adlint.csv)

echo; >> adlint.csv
echo [=============csv files=============] >> adlint.csv
dir /b *.csv >> adlint.csv

echo; >> adlint.csv
echo [=============c files=============] >> adlint.csv
dir /b *.c >> adlint.csv


copy /Y adlint.csv ..\
cd ..\