set "INCLUDE=%INCLUDE%;%LIBRARY_INC%\OpenEXR;%LIBRARY_INC%\Imath"
%PYTHON% -m pip install . -vv
if errorlevel 1 exit 1
