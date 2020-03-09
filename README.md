# release-creator  
<img src="https://github.com/alice-biometrics/custom-emojis/blob/master/images/alice_header.png" width=auto>

This action allows you to create a Github release dynamically. 

## Usage

```yml
name: Release Creator

on:
  push:
    branches:
      - master

jobs:
  update:
    runs-on: ubuntu-latest
    name: Create a release
    steps:
      - uses: alice-biometrics/release-creator/@v1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          version: 'v2.0.0'
          description: 'This is an awesome version :ok_hand:'
```


## Parameters

You can configure additional info with the following parameters:


| Param.                     | Definition                                                    | 
| ------------------------   |:--------------------------------------------------------------| 
| `GITHUB_TOKEN` (required)  | GitHub token                                                  | 
| `version`      (required)  | New release version                                           | 
| `description`  (optional)  | New release description. 
                               * default 'inherit':
                                  - Get                                                       |   


example:

```yml
name: Release Creator

on:
  push:
    branches:
      - master

jobs:
  update:
    runs-on: ubuntu-latest
    name: Create a release
    steps:
      - uses: alice-biometrics/release-creator/@v1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          version: 'v1.0.0'
          description: 'This is an awesome version :ok_hand:'
          repo: 'alice-biometrics/github-releaser'
          branch: 'master'
          draft: 'false'
          prerelease: 'false'
```


## Use Cases

#### Duplicate Releases Notes 

Image you have a private repo where you develop your SDK. Additionally, you've made publicly available a Repo with some documentation about your SDK module.

* private repo: 
* public repo:

Use `release-creator` if you want to copy releases notes from one repo to another with:


```yml
name: Release Creator

on:
  push:
    branches:
      - master

jobs:
  update:
    runs-on: ubuntu-latest
    name: Create a release
    steps:
      - uses: alice-biometrics/release-creator/@v1
        with:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          version: 'inherit'
          description: 'inherit'
          repo: 'acostapazo/dummy-project'
```



## License 

[MIT](LICENSE)

