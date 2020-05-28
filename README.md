# S4TF-CUDA-Dockerized
Dockerfile for creating a container with Swift for TensorfFlow and CUDA installed.

# System requirements
* Cuda capable NVIDIA GPU
* Latest GPU drivers
* Docker >=19.03

## Libraries installed
* CUDA v10.2
* cuDNN v7.6.5.32
* Swift for TensorFlow v0.9.0

## TODO
- [ ] CUDA tests

## Build
`docker build -t pohjao/s4tf .`

## Run Swift Testfile
`docker run -v $PWD/tests/:/tests/ --name s4tf_test pohjao/s4tf swift /tests/test.swift`

Should print `Success!`
