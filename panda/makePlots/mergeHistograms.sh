#!/bin/sh

for i in `seq 0 100`;
do
  ls done_ana/histoZHG_2016_${i}.root done_ana/histoZHG_2017_${i}.root done_ana/histoZHG_2018_${i}.root >& /dev/null
  if [ $? -eq 0 ]; then
    hadd -f done_ana/histoZHG_2019_${i}.root done_ana/histoZHG_2016_${i}.root done_ana/histoZHG_2017_${i}.root done_ana/histoZHG_2018_${i}.root
  fi
done

for i in `seq 0 100`;
do
  ls done_ana/histoZH_2016_${i}.root done_ana/histoZH_2017_${i}.root done_ana/histoZH_2018_${i}.root >& /dev/null
  if [ $? -eq 0 ]; then
    hadd -f done_ana/histoZH_2019_${i}.root done_ana/histoZH_2016_${i}.root done_ana/histoZH_2017_${i}.root done_ana/histoZH_2018_${i}.root
  fi
done

for i in `seq 0 100`;
do
  ls done_ana/histoWZ_2016_${i}.root done_ana/histoWZ_2017_${i}.root done_ana/histoWZ_2018_${i}.root >& /dev/null
  if [ $? -eq 0 ]; then
    hadd -f done_ana/histoWZ_2019_${i}.root done_ana/histoWZ_2016_${i}.root done_ana/histoWZ_2017_${i}.root done_ana/histoWZ_2018_${i}.root
  fi
done

for i in `seq 0 100`;
do
  ls done_ana/histoZZ_2016_${i}.root done_ana/histoZZ_2017_${i}.root done_ana/histoZZ_2018_${i}.root >& /dev/null
  if [ $? -eq 0 ]; then
    hadd -f done_ana/histoZZ_2019_${i}.root done_ana/histoZZ_2016_${i}.root done_ana/histoZZ_2017_${i}.root done_ana/histoZZ_2018_${i}.root
  fi
done

for i in `seq 0 100`;
do
  ls done_ana/histossww_2016_${i}.root done_ana/histossww_2017_${i}.root done_ana/histossww_2018_${i}.root >& /dev/null
  if [ $? -eq 0 ]; then
    hadd -f done_ana/histossww_2019_${i}.root done_ana/histossww_2016_${i}.root done_ana/histossww_2017_${i}.root done_ana/histossww_2018_${i}.root
  fi
done
