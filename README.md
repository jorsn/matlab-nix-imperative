# MATLAB-Nix-Imperative

A quick and dirty nix-shell wrapper for running an imperatively installed [MATLAB] (R) in
a nix FHS environment.

Why would one like to install MATLAB imperatively? Because it's easy if you are used
to using online activation and don't have the deep desire to really nixify something
like the totally impure MATLAB.

[MATLAB]: https://mathworks.com/products/matlab.html

## Installation

Link the script `matlab` to some location in your `PATH`.

You can enter a `nix-shell` with a MATLAB-compatible FHS environment by running `nix-shell`
in the project directory (using `shell.nix`). There you can do things like installing MATLAB.

## Configuration

There are two alternatives:

1. Set one of the environment variables `MATLAB_DIR` and `MATLAB_VERSION`.
2. Edit the first lines of the wrapper script `matlab` (`default_version`, `default_dir()`).


## Copyright

Copyright (c) 2019 Johannes Rosenberger

This code is released under the ISC License.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS
OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF
THIS SOFTWARE.

For more details please read the '[LICENSE](LICENSE)' file.
