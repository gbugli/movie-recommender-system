#!/bin/bash

export HADOOP_EXE='/usr/bin/hadoop'
export HADOOP_LIBPATH='/opt/cloudera/parcels/CDH/lib'
export HADOOP_STREAMING='hadoop-mapreduce/hadoop-streaming.jar'

alias hfs="$HADOOP_EXE fs"
alias hjs="$HADOOP_EXE jar $HADOOP_LIBPATH/$HADOOP_STREAMING"
alias spark-submit='PYSPARK_PYTHON=$(which python) spark-submit --py-files dist/Group26_MovieLens-0.1.0-py3-none-any.zip main.py'

module purge

module load python/gcc/3.7.9
module load spark/3.0.1

python build.py
# spark-submit

#cp -r /scratch/work/courses/DSGA1004-2021/movielens/ml-latest .
#cp -r /scratch/work/courses/DSGA1004-2021/movielens/ml-latest-small .
#hfs -put ml-latest
#hfs -put ml-latest-small
#rm -r ml-latest ml-latest-small
