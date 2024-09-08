# Auto Repo Sync

Git Repo Sync enables you to synchronize code to other code management platforms, such as GitLab, Gite, Bitbucket etc.

## Example

You can use the following example as a template to create a new file with any name under `.github/workflows/`.

```yaml
name: <action-name>

on: 
  - push
  - delete

jobs:
  sync:
    runs-on: ubuntu-latest
    name: Git Repo Sync
    steps:
    - uses: actions/checkout@v4
      with:
        fetch-depth: 0
    - uses: offensive-vk/auto-repo-sync@v9
      with:
        # Such as https://github.com/<user>/<repo>.git
        target-url: <target-url>
        # Such as offensive-vk
        target-username: <target-username>
        # You can store token in your project's 'Setting > Secrets' and reference the name here. Such as ${{ secrets.ACCESS_TOKEN }}
        target-token: <target-token>
```
