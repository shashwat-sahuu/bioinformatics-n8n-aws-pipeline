# End-to-End Bioinformatics Variant Calling Pipeline (AWS + Docker + n8n)

 Project Overview
 
This project implements an end-to-end automated variant calling pipeline using
AWS cloud infrastructure, Docker containers, and n8n workflow automation.

The pipeline performs:
- Raw sequencing data processing
- Quality control
- Alignment
- Variant calling
- Automated execution and monitoring

Tech Stack
- **AWS**: EC2, S3
- **Docker**: Containerized bioinformatics tools
- **n8n**: Workflow orchestration
- **Linux Bash**: Automation scripts
- **GitHub**: Version control

 Project Structure

 Pipeline Flow
1. Upload FASTQ files to S3
2. EC2 pulls data from S3
3. Docker container runs variant calling
4. Results stored back in S3
5. n8n monitors and triggers pipeline
 
  Learning Outcomes
- Cloud-based bioinformatics pipelines
- DevOps practices in genomics
- Workflow automation
- Scalable data processing

  Future Enhancements
  
- CI/CD using GitHub Actions
- Kubernetes deployment
- Multi-sample parallel processing
- Annotation using VEP/ANNOVAR





# How to Run

1. Clone the repo:
   git clone <repo_link>
2. Install dependencies:
   pip install -r requirements.txt
3. Run pipeline:
   python main.py --input sample_data/ --output results/


Author 
Shashwat sahu
