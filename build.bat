@echo off

IF /I "%1"=="-a" (
  FOR %%f IN (*.tex) DO (
    pdflatex "%%~nf.tex" -output-directory docs
  )
) ELSE (
  pdflatex %1 -output-directory docs
)

cd docs
del *.aux
del *.log
cd ..
