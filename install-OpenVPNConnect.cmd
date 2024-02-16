@echo off
if not defined ROOT_INSTALLDIR set "ROOT_INSTALL_DIR=C:\Apps"
set "INSTALLDIR=%ROOT_INSTALLDIR%\openVPN\Connect"
if not exist "%INSTALLDIR%" mkdir "%INSTALLDIR%"
if not exist "%INSTALLDIR%" (
  echo I can't create "%INSTALLDIR%". I finish the installation
  TimeOut 20
  goto end
)
winget install -e --id OpenVPNTechnologies.OpenVPNConnect --override "REBOOT=ReallySuppress /qn ADDLOCAL=all INSTALLDIR='%INSTALLDIR%'" --accept-source-agreements
:end
