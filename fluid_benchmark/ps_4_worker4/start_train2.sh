PADDLE_TRAINING_ROLE=TRAINER \
PADDLE_PSERVER_PORT=5002 \
PADDLE_PSERVER_IPS=127.0.0.1,127.0.0.2,127.0.0.3,127.0.0.4 \
PADDLE_TRAINERS=4 \
PADDLE_CURRENT_IP=127.0.0.3 \
PADDLE_TRAINER_ID=2 \
python fluid_benchmark.py --model resnet  --data_set flowers \
--batch_size 512 --device GPU \
--gpus 8 --iterations 11 \
--update_method pserver
