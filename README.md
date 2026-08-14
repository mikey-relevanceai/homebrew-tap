# homebrew-tap

Homebrew formulae for [@mikey-relevanceai](https://github.com/mikey-relevanceai)'s
tools.

```bash
brew install mikey-relevanceai/tap/mailbox
```

`brew` expands `mikey-relevanceai/tap` to this repository, so there is no separate
`brew tap` step.

## Formulae

| Formula | What it is |
|---|---|
| [`mailbox`](Formula/mailbox.rb) | [agent-mailbox](https://github.com/mikey-relevanceai/agent-mailbox) — wake idle coding agents on real-world events instead of polling |

## These formulae are generated

`Formula/*.rb` is written by the release workflow of the project it packages, not
by hand. For `mailbox` that is
[`.github/workflows/release.yml`](https://github.com/mikey-relevanceai/agent-mailbox/blob/main/.github/workflows/release.yml),
which renders it with
[`scripts/render-formula.sh`](https://github.com/mikey-relevanceai/agent-mailbox/blob/main/scripts/render-formula.sh)
from the checksums of the release it just published.

**Edits made here are overwritten by the next release.** Fix the generator in the
source repository instead.
