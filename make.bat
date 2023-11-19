cd build
mingw32-make
copy ..\SDL2.dll .\ 
copy ..\SDL2_image.dll .\ 
xcopy ..\assets .\assets /Y /E /C /I