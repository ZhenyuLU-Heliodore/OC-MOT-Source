poetry run python -m ocl.cli.eval train_config_path=outputs/SAVi/cater/2022-08-12_08-04-09/config/config.yaml

HYDRA_FULL_ERROR=1 poetry run python -m ocl.cli.train +experiment=OC-MOT/cater

HYDRA_FULL_ERROR=1 poetry run python -m ocl.cli.eval +experiment=OC-MOT/cater_eval
poetry run python -m ocl.cli.train +experiment=projects/bridging/memory/kitti/kitti_yolox_slot_memory
poetry run python -m ocl.cli.train +experiment=memory/fishbowl/fishbowl_savi_detr8

poetry run python -u -m torch.distributed.run ocl/cli/train.py +experiment=SAVi_code/c1_exp2


# predict frame by frame, not seq by seq

aws s3 ls s3://object-centric-datasets-us-east-2

#tensorboard
ssh -NL 6006:127.0.0.1:6006 -i zhaozixu-useast.pem ubuntu@18.188.129.83
