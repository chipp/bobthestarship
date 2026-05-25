# bobthestarship: an Oh My Fish plugin that loads a bobthefish-inspired Starship prompt.

if command -q starship
    set -l plugin_dir (dirname (status --current-filename))
    set -gx STARSHIP_CONFIG "$plugin_dir/starship.toml"

    function starship_transient_prompt_func
        starship module character
    end

    function starship_transient_rprompt_func
        starship module time
    end

    function fish_title
        prompt_pwd
    end

    starship init fish | source

    # Uncomment if you want Starship's Fish transient prompt behavior.
    # This replaces completed command prompts with the character module, and keeps
    # only the time on the transient right prompt.
    # enable_transience
else
    if status is-interactive
        echo "bobthestarship: starship is not installed or not on PATH. Please install it to use this theme." >&2
    end
end
