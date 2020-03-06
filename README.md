# github-releaser  
<img src="https://github.com/alice-biometrics/custom-emojis/blob/master/images/alice_header.png" width=auto>


This action allows you to create a Github release dynamically. 

## Usage

```yml
name: Github Releaser

on: [pull_request]

jobs:
  github-releaser:
    runs-on: ubuntu-latest
    name: Create a release
    steps:
      - uses: alice-biometrics/github-releaser/@v1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          version: 'v1.0.0'
          description: 'This is an awesome version :ok_hand:'
```


You can configure additional info with 

```yml
name: Github Releaser

on: [pull_request]

jobs:
  github-releaser:
    runs-on: ubuntu-latest
    name: Create a release
    steps:
      - uses: alice-biometrics/github-releaser/@v1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          version: 'v1.0.0'
          description: 'This is an awesome version :ok_hand:'
          repo: 'alice-biometrics/github-releaser'
          branch: 'master'
          draft: 'false'
          prerelease: 'false'
```
