xhost +local:docker

docker run -it \
  -w /root \
  --privileged \
  --net=host \
  --env=NVIDIA_VISIBLE_DEVICES=all \
  --env=NVIDIA_DRIVER_CAPABILITIES=all \
  --env=DISPLAY \
  --env=QT_X11_NO_MITSHM=1 \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --gpus=all \
  --name=rgmn \
  audragony/amr:latest \
  /bin/bash
