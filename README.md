# Blog Post Summarizer

A Jupyter notebook that uses Facebook's BART model to automatically generate 
structured summaries of blog posts using paragraph-based chunking.

## What This Project Does

- Loads a blog post from a plain text file
- Demonstrates why naive truncation fails for long-form content
- Implements paragraph-based chunking to handle posts that exceed BART's 
  token limit
- Generates a structured section-by-section summary report

## Key Findings

- BART was fine-tuned on news articles — naive truncation only summarizes 
  the introduction, producing misleading results for blog content
- Paragraph-based chunking preserves complete thoughts and produces 
  significantly better summaries than character-based chunking
- Section-by-section output outperforms forced single-paragraph compression

## Tech Stack

- Python
- Jupyter Lab
- Hugging Face Transformers (facebook/bart-large-cnn)
- PyTorch
- Docker / Docker Compose

## Running This Project

1. Clone this repo
2. Build the Docker image:
```bash
   docker build -t blog-summarizer-jupyter:latest .
```
3. Start the container:
```bash
   docker compose up -d
```
4. Access Jupyter at `http://your-server-address:8888`
5. Save your blog post as a `.txt` file in the `notebooks/` folder
6. Open `blog_summarizer.ipynb` and run all cells

## Project Structure
blog-summarizer/
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── notebooks/
├── blog_summarizer.ipynb      ← main notebook
└── exploration/
└── blog_summarizer_dev.ipynb  ← development history

## Project Status
✅ Complete
