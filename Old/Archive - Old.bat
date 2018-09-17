if not exist "%CI_PROJECT_DIR%\Artifacts" mkdir %CI_PROJECT_DIR%\Artifacts
del %CI_PROJECT_DIR%\Artifacts\* /S /Q
"C:\Program Files\7-Zip\7z.exe" a "%CI_PROJECT_DIR%\Artifacts\%CI_PROJECT_NAME%_%CI_COMMIT_REF_NAME%.zip" %CI_PROJECT_DIR%\Release\*