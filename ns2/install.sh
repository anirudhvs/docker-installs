#!/bin/bash

sed -i -e 's/@CC@/gcc-4.8/' -e  's/@CXX@/g++-4.8/' ./ns-allinone-2.35/ns-2.35/Makefile.in 
sed -i -e 's/@CC@/gcc-4.8/' -e  's/@CXX@/g++-4.8/' ./ns-allinone-2.35/nam-1.15/Makefile.in
sed -i -e 's/@CC@/gcc-4.8/' -e  's/@CXX@/g++-4.8/' ./ns-allinone-2.35/otcl-1.14/Makefile.in
sed -i -e 's/@CC@/gcc-4.8/' -e  's/@CPP@/g++-4.8/' ./ns-allinone-2.35/xgraph-12.2/Makefile.in
sed -i -e 's/void eraseAll() { erase(baseMap::begin(), baseMap::end()); }/void eraseAll() { this->erase(baseMap::begin(), baseMap::end()); }/' ./ns-allinone-2.35/ns-2.35/linkstate/ls.h 
cd ./ns-allinone-2.35/
./install