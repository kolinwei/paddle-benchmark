PADDLE_PSERVER_PORT=7164 \
PADDLE_TRAINER_IPS=127.0.0.1,127.0.0.2,127.0.0.3,127.0.0.4 \
PADDLE_CURRENT_IP=127.0.0.4 \
PADDLE_TRAINER_ID=3 \
GLOG_v=3 python fluid_benchmark.py --model resnet  --data_set flowers \
--batch_size 512 --device GPU \
--gpus 8 --iterations 11 \
--update_method nccl2
