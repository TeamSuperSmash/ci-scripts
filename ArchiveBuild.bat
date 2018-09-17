if not exist "%cd%\Artifacts" mkdir %cd%\Artifacts
del %cd%\Artifacts\*-Build.zip /S /Q
SET ORIG_PATH=%cd%
cd %cd%\Artifacts
"C:\Program Files\7-Zip\7z.exe" a "%CI_PROJECT_NAME%-%CI_COMMIT_REF_NAME%-Build.zip" %ORIG_PATH%\Release\*