#!/bin/bash

gh completion -s $(basename $SHELL) > ~/.zsh/completions/_gh

terraform -install-autocomplete
