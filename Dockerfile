FROM archlinux/base
RUN pacman -Syu --noconfirm && pacman -S --noconfirm \
      bash-completion \
      docker \
      gawk \
      git \
      lsb-release \
      man \
      openssh \
      sudo \
      tar \
      vim \
      wget \
      which \
    && pacman -Scc --noconfirm

## Configure default user
ADD wsl.conf /etc/wsl.conf

## If Setting up user in advance.
# RUN useradd -m foo -p changeme123
# RUN usermod -aG adm,log,wheel foo
# USER foo

CMD /bin/bash