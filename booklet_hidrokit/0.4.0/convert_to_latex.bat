@echo off

rem Laporan Implementasi
dir /b /s ipynb\laporan_implementasi\**.ipynb > ipynb_li.txt
for /f %%f in (ipynb_li.txt) do (
    echo processing %%~nf
    jupyter nbconvert %%f --to=latex --output-dir=".\tex\laporan_implementasi"
)

rem Manual
dir /b /s ipynb\manual\**.ipynb > ipynb_man.txt
for /f %%f in (ipynb_man.txt) do (
    echo processing %%~nf
    jupyter nbconvert %%f --to=latex --output-dir=".\tex\manual"
)