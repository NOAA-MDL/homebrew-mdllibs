# homebrew-mdllibs
[Homebrew](https://brew.sh) Tap for [NOAA/NWS/MDL](https://vlab.noaa.gov/web/mdl) software.

Currently supported libraries *(as of 6/4/2026)*:
* [libtdlpack](https://github.com/NOAA-MDL/libtdlpack)
* [fortran-strings](https://github.com/NOAA-MDL/fortran-strings)

# Install into Homebrew
```
brew tap noaa-mdl/mdllibs
```
The above command uses shortened syntax since the tap is hosted on GitHub and the repository name is prefixed with "homebrew-".  See Homebrew Tap [documentation](https://docs.brew.sh/Taps) for full syntax.

Each  of MDLLIBS can be installed with the following command structure:
```
brew install <NAME>
```
where `<NAME>` is one of the above listed libraries.
