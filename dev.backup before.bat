@echo off

set database=flyway_payroll
set backupFile=dev.before.backup.sql

echo Backup %database% to %backupFile%
mysqldump -u dev %database% > %backupFile%