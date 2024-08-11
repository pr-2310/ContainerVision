# Docker and Singularity MNIST Project

ContainerVision demonstrates MNIST model deployment using Docker and Singularity. It showcases containerization in machine learning, providing reproducible environments for local and HPC setups. The project includes Dockerfile, Python script, and instructions for building, running, and converting containers, offering hands-on experience with ML containerization.

## Prerequisites

Before starting, ensure Docker is installed on your local machine. You can download and install Docker from [Docker's official website](https://docs.docker.com/get-docker/). For the HPC environment, Singularity must be installed. Instructions for Singularity installation can be found at [Singularity's official guide](https://sylabs.io/guides/3.0/user-guide/installation.html).

## Project Structure

This project includes the following key files:
- `Dockerfile`: Contains all the Docker commands needed to set up the Docker environment.
- `mnist.py`: The Python script used to train and test the MNIST model.
- `README.md`: Provides the project documentation and setup instructions.

## Setup and Execution Instructions

### Docker Setup and Execution

1. **Building the Docker Image**
   - Open a terminal and navigate to the project directory containing the `Dockerfile`.
   - Build the Docker image with the following command:
     ```bash
     docker build -t hw4_mnist .
     ```
   This command creates a Docker image named `hw4_mnist` based on the instructions in the `Dockerfile`.

2. **Running the Docker Container**
   - Once the image build is complete, run the Docker container by executing:
     ```bash
     docker run hw4_mnist
     ```
   This command will start the container and execute the `mnist.py` script as specified in the Dockerfile's CMD instruction.

### Singularity Setup and Execution

1. **Converting Docker Image to Singularity Image File (SIF)**
   - In the HPC environment, convert the Docker image to a Singularity image file using:
     ```bash
     singularity pull hw3_mnist_singularity.sif docker://pytorch/pytorch
     ```

2. **Running the Singularity Container**
   - Run the Singularity container with the MNIST model by using:
     ```bash
     singularity run hw3_mnist_singularity.sif python mnist.py --batch-size 32 --test-batch-size 32 --epochs 14
     ```
   This command executes the `mnist.py` script inside the Singularity container with the specified model parameters.

## Conclusion

Follow these steps to successfully deploy and run the MNIST model in both Docker and Singularity containers. This setup ensures a consistent and reproducible environment for machine learning model training and evaluation.

