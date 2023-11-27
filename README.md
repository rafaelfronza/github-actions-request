# github-actions-request

To perform an example execution, just execute the following cURL command:
```
curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer <token>" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/rafaelfronza/github-actions-request/dispatches \
  -d '{"event_type":"registry-update","client_payload":{"module_name":"module_two"}}'
  ```
