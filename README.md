# go-report-card-action

Github action calling goreportcard-cli and refresh your card on https://goreportcard.com

## Inputs

### `threshold`

**Required** Threshold of failure command. Default `75`.

## Example usage

```
uses: afarbos/go-report-card-action@v1
with:
  threshold: '100'
```

## Note

inspired by https://github.com/creekorful/goreportcard-action
