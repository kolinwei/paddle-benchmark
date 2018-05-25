python tf_cnn_benchmarks.py --local_parameter_device=gpu --num_gpus=8 \
--batch_size=64 --model=resnet50 --variable_update=distributed_all_reduce \
--job_name=worker --ps_hosts=127.0.0.1:5000 \
--worker_hosts=127.0.0.1:5001,127.0.0.2:5001 \
--task_index=1
