#!/bin/sh

cmake -DCMAKE_INSTALL_PREFIX=dist \
      -DENABLE_CRYPTO=ON \
      -DENABLE_TESTS=ON \
      -DWITH_LIBCUNIT=${DEPSDIR} \
      -DWITH_LIBSODIUM=${DEPSDIR} \
      -DLIBSODIUM_STATIC=ON \
      .. && \
        make && \
          make install

