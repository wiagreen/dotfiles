{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # java
    openjdk8-bootstrap

    # rust
    cargo
    
    # c++
    clang
    clang-tools

    #js
    nodejs
  ];
}
