REM == deploy a test tenant. 
REM == the github bearer should be set in env variable GITHUB_BEARER (format ghp_XXXXXXXX )

SET TENANT_ID=dev

curl -X POST -H "Accept: application/vnd.github+json" -H "Authorization: Bearer %GITHUB_BEARER%" https://api.github.com/repos/flyingoverclouds/Todo-SaaS-Tenant-Deploy/dispatches -d  "{\"event_type\": \"%TENANT_ID%\"}"
