# DIGI Monitoring System

This repository contains the monitoring stack used by the [DIGI](https://digi.uw.edu/). It includes configurations and tooling to deploy services such as Prometheus, Grafana, and NGINX reverse proxy, as well as other exporters and components for monitoring.

## Table of Contents

- [Overview](#overview)
- [Requirements](#requirements)
- [Setup](#setup)
- [Manage the services](#Manage-the-services)

---

## Overview

The `digi-monitoring` stack provides a modular monitoring solution leveraging containerized services. It is managed using the `instant` CLI tool, which abstracts Docker Compose deployments with reusable packages.

Key components:
- **Prometheus** (monitoring)
- **Grafana**
- **NGINX reverse proxy**
- **Blackbox Exporter**

---

## Requirements

Before proceeding, ensure you have the following installed:

- [Docker](https://www.docker.com/)
- [Docker swarm](https://docs.docker.com/engine/swarm/)
- `bash` (for script execution)
- `instant` CLI (DIGI-specific packaging tool)
- `.env` file with required environment variables

---

## Setup

Clone the repository:

```bash
git clone https://github.com/DIGI-UW/digi-monitoring.git
cd digi-monitoring

---

## Manage-the-services

Open the mk.sh script.

Uncomment the service lines you'd like to (re)deploy.

For example 
    ./instant package remove -n reverse-proxy-nginx --env-file .env

    ./instant package init -n reverse-proxy-nginx --env-file .env

Run the script: 
     
     sh mk.sh

