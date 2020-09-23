file_pattern="pascal-00000-of-00100.tfrecord"
model_name="efficientdet-d0"
backbone_name="efficientnet-b0"

python main.py --mode=train \
               --training_file_pattern=../tfrecord/$file_pattern \
               --validation_file_pattern=../tfrecord/$file_pattern \
               --model_name=$model_name \
               --model_dir=../models/$model_name-scratch \
               --backbone_ckpt=../models/$backbone_name \
               --train_batch_size=16 \
               --num_epochs=12 \
    --hparams="num_classes=20,moving_average_decay=0,mixed_precision=true"


