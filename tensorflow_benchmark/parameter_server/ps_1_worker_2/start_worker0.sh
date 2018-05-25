python tf_cnn_benchmarks.py --local_parameter_device=gpu --num_gpus=8 \
--batch_size=64 --model=resnet50 --variable_update=parameter_server \
--job_name=worker --ps_hosts=10.255.118.26:5000 \
--worker_hosts=10.255.118.26:5001,10.255.120.16:5001 \
--task_index=0
