{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    extraConfig = ''
      # Opts
      set -g default-terminal "screen-256color"
      bind s choose-tree -sZ -O name
      set -g base-index 1
      setw -g pane-base-index 1
      set -g set-clipboard on
      set -g allow-rename on
      
      # Status line customisation
      set-option -g status-left-length 0
      set-option -g status-right-length 0
      set -g status-position bottom
      set -g status-justify centre
      set -g status-left "#[bg=#191919, fg=#8e8aa9]   #[bg=#191919, fg=#a38c8c]#{session_name} #[fg=#191919]#[fg=#131313]#[fg=#111111]"
      set -g status-style default
      set -g window-status-format "#[bg=#191919, fg=#736363] #I:#W "
      set -g window-status-current-format "#[bg=#191919, fg=#8e8aa9] #I·#W "
      set -g status-right "#[fg=#191919]#[fg=#131313]#[fg=#151515]#[bg=#191919, fg=#a38c8c] %a %h-%d #[bg=#191919, fg=#8e8aa9]"
      set -g window-status-activity-style none

      # binds
      unbind %
      bind | split-window -h

      unbind '"'
      bind - split-window -v

      bind -r j resize-pane -D 5
      bind -r k resize-pane -U 5
      bind -r l resize-pane -R 5
      bind -r h resize-pane -L 5
    
      bind -r m resize-pane -Z

      set -g mouse on

      bind-key -T copy-mode-vi 'v' send -X begin-selection
      bind-key -T copy-mode-vi 'y' send -X copy-selection

      # set -g @resurrect-capture-pane-contents 'on'
      # set -g @continuum-restore 'on'
    '';
    plugins = with pkgs.tmuxPlugins; [
      # vim-tmux-navigator
      # resurrect
      # continuum
      # sessionist
    ];
  };
}
