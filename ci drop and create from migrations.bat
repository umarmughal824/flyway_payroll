@echo off

set database=flyway_payroll_ci
set dropAndCreate="DROP DATABASE IF EXISTS %database%;CREATE DATABASE %database%;"

echo %dropAndCreate%
mysql -u dev -e %dropAndCreate%

flyway migrate -url=jdbc:mysql://localhost/%database%