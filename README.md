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
| [`lidawake`](Formula/lidawake.rb) | [lidawake](https://github.com/mikey-relevanceai/lidawake) — keep a Mac awake with the lid closed, with a guaranteed auto-off |

## Generated and hand-written formulae

### `mailbox` is generated

`Formula/mailbox.rb` is written by agent-mailbox's release workflow,
[`.github/workflows/release.yml`](https://github.com/mikey-relevanceai/agent-mailbox/blob/main/.github/workflows/release.yml),
which renders it with
[`scripts/render-formula.sh`](https://github.com/mikey-relevanceai/agent-mailbox/blob/main/scripts/render-formula.sh)
from the checksums of the release it just published.

**Edits made to it here are overwritten by the next release.** Fix the generator
in agent-mailbox instead.

### `lidawake` is hand-written

lidawake has no release workflow, so `Formula/lidawake.rb` is maintained here. For
each new lidawake release, bump `url` to the new tag's tarball and `sha256` to its
checksum:

```bash
curl -sL https://github.com/mikey-relevanceai/lidawake/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256
```
