# Homebrew Tap for Timeout Command

A Homebrew tap for the C# implementation of the GNU timeout command.

## Installation

First, tap this repository:
```bash
brew tap spgennard/timeout
```

Then install the timeout command:
```bash
brew install timeout
```

Or install directly:
```bash
brew install spgennard/timeout/timeout
```

## Usage

The timeout command works identically to the GNU timeout utility:

```bash
# Run a command with 10 second timeout
timeout 10s ping google.com

# Use minutes
timeout 5m long-running-script.sh

# Kill with specific signal after timeout
timeout -s KILL 30s some-command

# Show help
timeout --help
```

## About

This is a C# implementation of the GNU timeout command that provides:

- Cross-platform compatibility (macOS, Linux, Windows)
- Full GNU timeout command interface compatibility
- Support for various time units (s, m, h, d, ms)
- Signal handling on Unix systems
- Proper exit codes matching GNU timeout behavior

## Support

For issues or feature requests, please visit the [GitHub repository](https://github.com/spgennard/homebrew-timeout/issues).

## License

This project is licensed under the MIT License.
