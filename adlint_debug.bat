set CURRENT_DIR=%~dp0
cd %CURRENT_DIR%
call adlint_1_adlintize.bat
cd %CURRENT_DIR%
call adlint_2_adlint.bat
cd %CURRENT_DIR%
call adlint_3_result.bat
cd %CURRENT_DIR%
