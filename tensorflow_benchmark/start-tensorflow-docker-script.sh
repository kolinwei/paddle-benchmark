#!/bin/bash

#export CUDA_SO="$(\ls /usr/lib64/libcuda* | xargs -I{} echo '-v {}:{}') $(\ls /usr/lib64/libnvidia* | xargs -I{} echo '-v {}:{}')"
#export DEVICES=$(\ls /dev/nvidia* | xargs -I{} echo '--device {}:{}')
nvidia-docker run ${CUDA_SO} ${DEVICES} \
--name tensorflow-weike \
-v $(pwd):/work \
-v /usr/bin/nvidia-smi:/usr/bin/nvidia-smi \
-it tensorflow/tensorflow:1.8.0-gpu \
/bin/bash \
-c 'export LD_LIBRARY_PATH=/work/qa_test/lib/:$LD_LIBRARY_PATH; export PYTHONPATH=/work/qa_test/pythonpath:$PYTHONPATH; bash'
