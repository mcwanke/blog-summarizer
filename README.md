# Blog Post Summarizer

A Jupyter notebook that uses a Hugging Face pre-trained NLP model to automatically 
generate summaries of blog posts.

## What This Project Does
- Loads blog post text files
- Runs them through a pre-trained BART summarization model
- Compares and evaluates the generated summaries
- Explores how well the model handles different writing styles and post lengths

## Tech Stack
- Python
- Jupyter Lab
- Hugging Face Transformers
- PyTorch
- Docker

## Running This Project
1. Clone this repo
2. Build the Docker image: `docker build -t blog-summarizer-jupyter:latest .`
3. Start the container using docker-compose
4. Access Jupyter at `https://your-server-address`
5. Open the notebook in the `notebooks/` folder

## Project Status
🚧 In progress
