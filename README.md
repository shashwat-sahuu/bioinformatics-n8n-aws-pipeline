# bioinformatics-n8n-aws-pipeline
Architecture  The workflow follows a cloud-native, event-driven architecture:  User Upload → n8n Webhook → AWS S3 → EC2 (Dockerized Pipeline) → Variant Calling → AWS S3 → Notification  n8n acts as the central orchestrator, coordinating data movement, computation, and status monitoring across services.
