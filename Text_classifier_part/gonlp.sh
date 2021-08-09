export BERT_BASE_DIR=/home/ubuntu/Downloads/processed_bert_model_data/chinese_L-12_H-768_A-12
export GLUE_DIR=/home/ubuntu/Downloads/processed_bert_model_data
export TRAINED_CLASSIFIER=/home/ubuntu/Downloads/processed_bert_model_data/chinese_L-12_H-768_A-12/bert_model.ckpt

python run_classifier.py \
  --task_name=mytask \
  --do_predict=true \
  --data_dir=$GLUE_DIR/cnews-tab \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$TRAINED_CLASSIFIER \
  --max_seq_length=128 \
  --output_dir=/tmp/mytask_output/
