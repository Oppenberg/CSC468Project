#!/bin/bash
echo "---------------- This Is The Demo Script For This Benchmark -------------"
echo "--- This Demo Will Create And Run A Docker Image Localy for One Socket --"
echo "--- This Demo Will Create And Run A Native Benchmark Localy One Socket --"
echo " "
echo " "
echo "-------------------Docker Image One Socket-------------------------------"
numsockets=1
time ./runDocker.sh $numsockets

echo "--------------------- Native One Socket ---------------------------------"
cd bin
time numactl --physcpubind=0-7,16-23 --localalloc ./stream.exe
echo "---------------------------  DONE ---------------------------------------"
