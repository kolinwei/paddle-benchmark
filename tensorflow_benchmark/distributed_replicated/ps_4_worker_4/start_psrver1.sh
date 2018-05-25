python tf_cnn_benchmarks.py --local_parameter_device=gpu --num_gpus=8 \
--batch_size=64 --model=resnet50 --variable_update=distributed_replicated \
--job_name=ps \
--ps_hosts=10.255.118.26:5000,10.255.120.16:5000,10.255.123.15:5000,10.255.123.16:5000 \
--worker_hosts=10.255.118.26:5001,10.255.120.16:5001,10.255.123.15:5001,10.255.123.16:5001 \
--task_index=1 \
--allow_growth
