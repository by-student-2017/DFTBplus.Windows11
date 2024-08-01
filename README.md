# DFTBplus.Windows11

## Tutorials
- DFTB+ recipes: https://dftbplus-recipes.readthedocs.io/en/latest/linresp/relax.html
- DFTB+ school in Daresbury: https://awvwgk.github.io/daresbury/
- Movies: https://www.youtube.com/playlist?list=PL6dY4yCeDg1PV-cLmtvhqjdvzcnNBoB8m

## Parameter files
- dftb.org: https://dftb.org/parameters/download

## Youtube
- https://www.youtube.com/@dftbplus

## Related information
- [1] A. A. Rudnick et al., J. Chem. Phys. 144, 214906 (2016) (https://doi.org/10.1063/1.4953102)(Gaussian 09 program)
- [2] G. Sun et al., Sci Rep 11, 17686 (2021) (https://doi.org/10.1038/s41598-021-97229-z)(Gaussian 16 program) (Open Access)
- [3] D. Maftei et al., J. Phys. Chem. A 2013, 117, 15, 3165-3175 (https://doi.org/10.1021/jp311396m)(Gaussian 09 program)
- [4] L. Paul et al., J. Phys. Chem. Lett. 2017, 8, 19, 4893-4897 (https://doi.org/10.1021/acs.jpclett.7b02148)(Gaussian 09 program)
- [5] L. Lv et al., Phys. Chem. Chem. Phys., 2018, 20, 6548-6561 (10.1039/C7CP08264A)(the ORCA software package)
- [6] X.-W. Sun et al., J. Phys. Chem. A 2022, 126, 26, 4176-4184 (https://doi.org/10.1021/acs.jpca.2c02145)(Gaussian 16 program)
- [7] Z. C. Wong et al., RSC Adv., 2016, 6, 87237-87245 (https://doi.org/10.1039/C6RA11495D)(Gaussian 09 program)
- [8] B. de Souza et al., J. Chem. Theory Comput. 2019, 15, 1896-1904 (https://doi.org/10.1021/acs.jctc.8b00841)(the ORCA software package)
- [9] S.-J. Woo et al., ChemRxiv. (https://doi.org/10.26434/chemrxiv.13338986.v1)(Gaussian09 software)
- [10] A. K. Pal et al., J. Phys. Chem. A 2020, 124, 11025-11037 (https://pubs.acs.org/doi/10.1021/acs.jpca.0c10203)(Gaussian 16 and an open source exatomic program)
- [11] A. Steffen et al., Inorg. Chem. 2014, 53, 7055-7069 (https://pubs.acs.org/doi/10.1021/ic501115k)(Gaussian 09 program)
- [12] H. Ma et al., J. Am. Chem. Soc. 2019, 141, 1010-1015 (https://doi.org/10.1021/jacs.8b11224)(QM/MM model, QM=Turbomole 6.5, MM=GAFF)
- [13] W. Qiu et al., J. Phys. Chem. Lett. 2022, 13, 4971-4980 (https://doi.org/10.1021/acs.jpclett.2c01205)(the ORCA software package)
- [14] S. Hirata et al., J. Phys. Chem. Lett. 2016, 7, 8, 1539-1545 (https://doi.org/10.1021/acs.jpclett.6b00554)(Gaussian 09 program)

# Important tools

## Avogadro
- Avogadro2: https://www.openchemistry.org/projects/avogadro2/
- Avogadro: https://avogadro.cc/, Github: https://github.com/avogadro
- Avogadro 1.95.1 (Ubuntu 22.04 LTS, WSL): sudo apt -y install avogadro

## VESTA
- VESTA: http://www.jp-minerals.org/vesta/jp/download.html

## Ovito
- Ovito Basic: https://www.ovito.org/

## OpenBabel
- OpenBabel: https://open-babel.readthedocs.io/en/latest/Installation/install.html
- Github: https://github.com/openbabel/openbabel
- OpenBabel (Ubuntu 22.04 LTS, WSL): sudo apt -y install openbabel

## MolCalc2012
- MoCalc2012-setup4203-win64.exe: https://sourceforge.net/projects/mocalc2012/files/

## MolCalc
- Github: https://github.com/jensengroup/molcalc

## Jmol
- Jmol (Ubuntu 22.04 LTS, WSL): sudo apt -y install jmol

## pymol
- PyMol (Ubuntu 22.04 LTS, WSL): sudo apt -y install pymol

## Packmol
- Packmol (Ubuntu 22.04 LTS, WSL): sudo apt -y install packmol

## Ubuntu Packages Search
- Ubuntu Packages Search (English): https://packages.ubuntu.com/en/
- Ubuntu Packages Search (Japanese): https://packages.ubuntu.com/


# Installation note
## dftb+ (cygwin on windows11 (64 bit)) (Edit: 30/Jul/2024): xTB, TD-DFTB, DFT-D3

## install (version 24.1) (gfortran + Netlib + OpenMP)
1. select version (View [Full])
```
  gcc-g++
  gcc-fortran
  libopenblas
  liblapack-devel
  libarpack-devel
  libfftw3-devel
  make
  cmake
  python3
  python3-devel
  wget
  git
```
2. wget https://github.com/dftbplus/dftbplus/releases/download/24.1/dftbplus-24.1.tar.xz
3. tar xvf dftbplus-24.1.tar.xz
4. cd dftbplus-24.1
5. ./utils/get_opt_externals ALL
6. vim config.cmake
```
----------before
option(WITH_TRANSPORT "Whether transport via libNEGF should be included." FALSE)
option(WITH_TBLITE "Whether xTB support should be included via tblite." FALSE)
option(WITH_ARPACK "Whether the ARPACK library should be included (needed for TD-DFTB)" FALSE)
option(WITH_DFTD3 "Whether the DFTD3 library should be included" FALSE)
----------
----------after
option(WITH_TRANSPORT "Whether transport via libNEGF should be included." TRUE)
option(WITH_TBLITE "Whether xTB support should be included via tblite." TRUE)
option(WITH_ARPACK "Whether the ARPACK library should be included (needed for TD-DFTB)" TRUE)
option(WITH_DFTD3 "Whether the DFTD3 library should be included" TRUE)
----------
```
7. mkdir _build
8. FC=gfortran CC=gcc cmake -DCMAKE_INSTALL_PREFIX=$HOME/dftbplus-24.1/dftb+ -B _build ./
9. cmake --build _build -- -j
10. cmake -B _build -DTEST_OMP_THREADS=1 ./
11. pushd _build; ctest; popd
12. cmake --install _build

## Test results
```
100% tests passed, 0 tests failed out of 412

Label Time Summary:
phonons/C-chain         =   1.42 sec*proc (1 test)
phonons/C-chain-proj    =   0.66 sec*proc (1 test)
phonons/Si              =   0.59 sec*proc (1 test)

Total Test time (real) = 1130.10 sec
```