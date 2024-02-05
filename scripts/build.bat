@echo off

cd /d %~dp0\..\frontend
if not exist node_modules (
  call npm install
)
call npm run build

cd /d %~dp0\..\backend
call mvn -DskipTests clean package