python tf_cnn_benchmarks.py --local_parameter_device=gpu --num_gpus=8 \
--batch_size=64 --model=resnet50 --variable_update=parameter_server \
--job_name=ps --ps_hosts=127.0.0.1:5000,127.0.0.2:5000 \
--worker_hosts=127.0.0.1:5001,127.0.0.2:5001,127.0.0.3:5001,127.0.0.4:5001 \
--task_index=0 \
--allow_growth
