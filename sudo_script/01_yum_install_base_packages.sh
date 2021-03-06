#!/usr/bin/env bash

if [ -n "$EXTENDED_BOOTSTRAP" ]; then
  yum_cmd=`\which yum 2> /dev/null`;
  if [ -n "$yum_cmd" ]; then
    $yum_cmd groupinstall -y "Development Tools";

    $yum_cmd install -y \
      apg \
      automake \
      bash \
      bash-completion \
      bash-doc \
      bzip2 \
      colordiff \
      ctags-etags \
      curl \
      dkms \
      freetds \
      freetds-devel \
      gcc \
      git \
      htop \
      kernel-devel-$(uname -r) \
      libntlm \
      libntlm-devel \
      libyaml \
      libyaml-devel \
      ncurses-devel \
      net-tools \
      screen \
      tmux \
      unixODBC \
      unixODBC-devel \
      unzip \
      uuid \
      uuid-devel \
      vim-enhanced \
      wget \
      zsh;
  fi
fi
