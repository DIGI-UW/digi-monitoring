# DIGI Monitoring System

This repository contains the monitoring stack used by the [DIGI Project](https://github.com/DIGI-UW). It includes configurations and tooling to deploy observability services such as Prometheus, Grafana, and NGINX reverse proxy, as well as other exporters and components for monitoring

## Table of Contents

- [Overview](#overview)
- [Requirements](#requirements)
- [Setup](#setup)
- [Running the Services](#running-the-services)
- [Service Management](#service-management)
- [License](#license)

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
- [Docker Compose](https://docs.docker.com/compose/)
- `bash` (for script execution)
- `instant` CLI (DIGI-specific packaging tool)
- `.env` file with required environment variables

---

## Setup

Clone the repository:

```bash
git clone https://github.com/DIGI-UW/digi-monitoring.git
cd digi-monitoring
