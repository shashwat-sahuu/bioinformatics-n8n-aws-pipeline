# Automated Cloud-Based Bioinformatics Pipeline using n8n & AWS

## Overview
This project implements an end-to-end automated bioinformatics pipeline using **n8n** for workflow orchestration, **Docker** for reproducible execution, and **AWS** for scalable cloud infrastructure.

The pipeline automatically processes sequencing data (FASTQ), performs alignment and variant calling, stores results in cloud storage, and sends notifications upon completion.

---

## Architecture
User Upload → n8n Webhook → AWS S3 → EC2 (Docker) → Variant Calling → S3 → Notification

---

## Tech Stack
- n8n (Workflow Automation)
- AWS S3, EC2, IAM
- Docker
- Linux & Bash
- Bioinformatics tools (BWA, SAMtools, FreeBayes)

---

## Workflow Steps
1. Webhook triggers pipeline
2. FASTQ uploaded to S3
3. EC2 instance runs Dockerized bioinformatics pipeline
4. Variant calling generates VCF
5. Results stored in S3
6. Email/Slack notification sent

---

## Key Features
- Fully automated pipeline
- Cloud-native execution
- Dockerized bioinformatics workflow
- Error handling and conditional logic
- Production-style orchestration

---

## Use Cases
- Variant calling automation
- Cloud bioinformatics workflows
- Research and production pipelines

---

## Author
Shashwat Sahu
