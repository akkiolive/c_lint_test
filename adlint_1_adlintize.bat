mkdir adlint
del /Q adlint\*
copy *.c adlint
cd adlint

adlintize

cd ..\
