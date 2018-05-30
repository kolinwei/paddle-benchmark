#!/bin/bash

#export CUDA_SO="$(\ls /usr/lib64/libcuda* | xargs -I{} echo '-v {}:{}') $(\ls /usr/lib64/libnvidia* | xargs -I{} echo '-v {}:{}')"
#export DEVICES=$(\ls /dev/nvidia* | xargs -I{} echo '--device {}:{}')
nvidia-docker run ${CUDA_SO} ${DEVICES} \
--name paddle-cuda8-weike-host \
-v $(pwd):/work \
--net=host \
--privileged \
-v /usr/bin/nvidia-smi:/usr/bin/nvidia-smi \
-v /usr/bin/ibdev2netdev:/usr/bin/ibdev2netdev \
-v /usr/bin/ib_write_bw:/usr/bin/ib_write_bw \
-v /usr/bin/ofed_info:/usr/bin/ofed_info \
-v /etc/libibverbs.d:/etc/libibverbs.d \
-v /usr/lib64/mlnx_ofed/valgrind:/usr/lib64/mlnx_ofed/valgrind \
-it paddlepaddle/paddle:latest-gpu \
/bin/bash \
-c 'LD_LIBRARY_PATH=/usr/lib64/mlnx_ofed/valgrind:$LD_LIBRARY_PATH; export LD_LIBRARY_PATH=/work/qa_test/lib/:$LD_LIBRARY_PATH; export PYTHONPATH=/work/qa_test/pythonpath:$PYTHONPATH; bash'
