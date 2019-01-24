# gh-pages-action

## usage

```hcl
workflow "Deploy" {
  on = "push"
  resolves = ["publish"]
}

action "publish" {
  uses = "xiaoxiangmoe/gh-pages-action@master"
  needs = ["Filters for GitHub Actions"]
  secrets = ["GITHUB_TOKEN"]
  args = "--dist=dist --user=\"Your Name <your@email.com>\""
}
```