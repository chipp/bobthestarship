# bobthestarship

A bobthefish-inspired [Starship](https://starship.rs/) prompt packaged as an [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish) plugin.

This is a Starship configuration, not a native Fish prompt rewrite. The OMF plugin loads Starship with the bundled `starship.toml`.

## Attribution

`bobthestarship` is inspired by [bobthefish](https://github.com/oh-my-fish/theme-bobthefish), the original Powerline-style Fish theme for Oh My Fish. This project is an independent Starship configuration and OMF plugin wrapper, not a fork or replacement of the original bobthefish theme.

## Requirements

- Fish shell
- Oh My Fish
- Starship available on `PATH`
- A Nerd Font-compatible terminal font

## Install

```fish
omf install https://github.com/chipp/bobthestarship
```

## Notes

`bobthestarship` lets Starship own `fish_prompt` and `fish_right_prompt`. Use a minimal OMF theme, or remove other prompt customizations that also define those functions.

Bobthefish behavior that Starship cannot reproduce exactly:

- fish private-mode prompt marker
- dynamic Git segment background switching for dirty/staged states
- bobthefish's project-root path splitting
- VM status probing for Vagrant

## License

MIT
