# `cvideo`

Quickly compress a video using `ffmpeg`.

## Usage

```bash
cvideo <video-file>
```

## Requires

- `ffmpeg`

If you have https://github.com/aubreypwd/zsh-plugin-require and [homebrew](https://brew.sh) installed, we'll take care of installing dependancies.

## Install

Using [antigen](https://github.com/zsh-users/antigen):

```bash
antigen bundle aubreypwd/zsh-plugin-cvideo@1.0.0
```

## Development

Install the package on `master`:

```bash
antigen bundle ssh://git@github.com/aubreypwd/zsh-plugin-cvideo
```

...and contribute upstream by working in `$HOME/.antigen/bundles/aubreypwd/zsh-plugin-video`.

---

## Changelog

Releases beyond these were moved to Github releases.

### 1.0.2

- Don't bail if, ultimately, `ffmpeg` is not found

### 1.0.1

- Tries to automatically install `ffmpeg` for you if you are using `antigen` method using `brew`

### 1.0.0

- First version
