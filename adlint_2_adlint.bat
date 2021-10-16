cd adlint
adlint -v -t adlint_traits.yml -l adlint_files.txt
copy nul adlint.csv
for %%csv in (*.csv) do if not %%csv==adlint.csv type %%csv >> adlint.csv
cd ../