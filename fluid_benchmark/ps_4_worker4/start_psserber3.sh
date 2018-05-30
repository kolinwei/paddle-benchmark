FLAGS_fraction_of_gpu_memory_to_use=0.0 \
PADDLE_TRAINING_ROLE=PSERVER \
PADDLE_PSERVER_PORT=5002 \
PADDLE_PSERVER_IPS=127.0.0.1,127.0.0.2,127.0.0.3,127.0.0.4 \
PADDLE_TRAINERS=4 \
PADDLE_CURRENT_IP=127.0.0.4 \
PADDLE_TRAINER_ID=3 \
python fluid_benchmark.py --model resnet  --data_set flowers \
--batch_size 512 --device GPU \
--gpus 8 --iterations 11 \
--update_method pserver
