#!/bin/sh

export NSEL=$1;
export YEAR=$2;

if [ $NSEL == 1 ]; then
  root -q -l -b MitAnalysisRunII/panda/macros/9x/fakeRateAnalysis.C+
  nohup time root -q -l -b MitAnalysisRunII/panda/macros/9x/fakeRateAnalysis.C+'('${YEAR}')' >& log_fake_${YEAR} &
  
elif [ $NSEL == 2 ]; then
  root -q -l -b MitAnalysisRunII/panda/macros/9x/zAnalysis.C+
  root -q -l -b MitAnalysisRunII/panda/macros/9x/wwAnalysis.C+
  root -q -l -b MitAnalysisRunII/panda/macros/9x/sswwAnalysis.C+
  root -q -l -b MitAnalysisRunII/panda/macros/9x/wzAnalysis.C+
  root -q -l -b MitAnalysisRunII/panda/macros/9x/zzAnalysis.C+
  root -q -l -b MitAnalysisRunII/panda/macros/9x/zhAnalysis.C+
  root -q -l -b MitAnalysisRunII/panda/macros/9x/zhgAnalysis.C+
  nohup time root -q -l -b MitAnalysisRunII/panda/macros/9x/zAnalysis.C+'('${YEAR}')'    >& log_z_${YEAR} &
  nohup time root -q -l -b MitAnalysisRunII/panda/macros/9x/wwAnalysis.C+'('${YEAR}')'   >& log_ww_${YEAR} &
  nohup time root -q -l -b MitAnalysisRunII/panda/macros/9x/sswwAnalysis.C+'('${YEAR}')' >& log_ssww_${YEAR} &
  nohup time root -q -l -b MitAnalysisRunII/panda/macros/9x/wzAnalysis.C+'('${YEAR}')'   >& log_wz_${YEAR} &
  nohup time root -q -l -b MitAnalysisRunII/panda/macros/9x/zzAnalysis.C+'('${YEAR}')'   >& log_zz_${YEAR} &
  nohup time root -q -l -b MitAnalysisRunII/panda/macros/9x/zhAnalysis.C+'('${YEAR}')'   >& log_zh_${YEAR} &
  nohup time root -q -l -b MitAnalysisRunII/panda/macros/9x/zhgAnalysis.C+'('${YEAR}')'  >& log_zhg_${YEAR} &

fi
