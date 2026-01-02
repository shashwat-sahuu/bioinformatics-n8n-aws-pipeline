# Architecture Diagram

This project follows a cloud-native bioinformatics architecture using AWS.

- AWS S3 for storage
- AWS EC2 for compute
- Docker for reproducibility
- n8n for automation

Data flows from S3 → EC2 → Docker → S3.

