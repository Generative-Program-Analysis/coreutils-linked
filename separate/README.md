This folder contains the IR files for the separate complilation of Coreutils in [GenSym](https://github.com/Generative-Program-Analysis/GenSym/tree/icse23). The following assumes that you have done the whole-program preparation steps ([here](https://github.com/Generative-Program-Analysis/coreutils-testing-instruction)) and thus mainly focuses on the different steps to take.

## Prepare an Empty Application

GenSym requires its input compilation unit to have an entry point, even in separate compilation mode. Thus, to prepare the library code, we need to supply a default `main` function, directly calling the application `main`, which will be renamed as `app_main` by GenSym's convention. The code (namely `app.c`) should look like this,

```c
int app_main(int argc, char** argv);

int main(int argc, char** argv) {
    return app_main(argc, argv);
}
```

We should then compile this empty application into LLVM bitcode,

    clang -c -emit-llvm -fno-discard-value-names -O0 -Xclang -disable-O0-optnone app.c -o app.bc

## Prepare the Library

We can then link the empty application with the prepared library files using `fs-linker`. However, as the empty application calls no library function, we must disable the DCE in `fs-linker` so that all library functions can be emitted. Note that this is `fs-linker`'s own DCE pass, other than the one from the LLVM toolchain. The following command should be used,

    fs-linker --posix-path=${POSIX_SOURCE_DIR}/build/runtime/lib/libgensymRuntimePOSIX64.bca \
              --uclibc-path=${UCLIBC_SOURCE_DIR}/lib/libc.a \
              --switch-type=simple --no-dce \
              ./app.bc -o libc_kl_posix.ll

    fs-linker --uclibc-path=${UCLIBC_SOURCE_DIR}/lib/libc.a \
              --switch-type=simple --no-dce \
              ./app.bc -o libc_gs_posix.ll

You can further translate the produced library LLVM file by GenSym, in `sbt`,

    runMain gensym.RunGenSym --engine=lib --use-argv libc_xxx.ll --output=...

which will result in a folder in `gs_gen` with a `Manifest` and a `Makefile`. Making it will produce an archive library (`.a`).

## Prepare the Applications

The individual `.bc` files obtained from Coreutils is no longer required to link with the libraries at this time. However, as there are some necessary transformations carried in `fs-linker`, it is still required to run `fs-linker` for every bitcode file produced.

    cd obj-llvm/src
    for item in *.bc; do
        fs-linker $item -o ${item/.bc/.ll}
    done

The produced textual LLVM applications are now ready to be processed by GenSym, in `sbt`,

    runMain gensym.RunGenSym --engine=app --use-argv --lib=gs_gen/libc_xxx <app.ll> --output=...

Note that you need to supply a processed library path to `--lib`, where the `Manifest` is required.