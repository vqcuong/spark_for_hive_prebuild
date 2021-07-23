#!/bin/bash

spark_version=2.4.8
wget https://archive.apache.org/dist/spark/spark-${spark_version}/spark-${spark_version}.tgz 
tar -xf spark-${spark_version}.tgz
cd spark-${spark_version}
./dev/make-distribution.sh --name hadoop3.3-without-hive --tgz -Pyarn -Phadoop-3.3 -Dhadoop.version=3.3.1 -Pparquet-provided -Porc-provided -Phadoop-provided

