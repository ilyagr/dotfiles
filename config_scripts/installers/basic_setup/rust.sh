curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain nightly
. "$HOME/.cargo/env"
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash
# On Apple Silicon, it's improtant to install Rosetta first
# softwareupdate --install-rosetta
GITHUB_TOKEN= cargo binstall -y --disable-strategies compile jj-cli cargo-insta hwatch ouch cargo-nextest
