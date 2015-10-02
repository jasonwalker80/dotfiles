# If envs are present, and we turned them on, load them.
PLENV_PATH="$HOME/.plenv/bin"
if [ "$PLENV_ENABLED" = "true" -a -d "$PLENV_PATH" ]; then
  eval "$(plenv init -)"
fi
PYENV_PATH="$HOME/.pyenv/bin"
if [ "$PYENV_ENABLED" = "true" -a -d "$PYENV_PATH" ]; then
  eval "$(pyenv init -)"
fi
RBENV_PATH="$HOME/.rbenv/bin"
if [ "$RBENV_ENABLED" = "true" -a -d "$RBENV_PATH" ]; then
  eval "$(rbenv init -)"
fi
RENV_PATH="$HOME/.renv/bin"
if [ "$RENV_ENABLED" = "true" -a -d "$RENV_PATH" ]; then
  eval "$(renv init -)"
fi