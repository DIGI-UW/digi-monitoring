# DIGI Monitoring System

This repository contains the monitoring stack used by [DIGI](https://digi.uw.edu/). It includes configurations and tooling to deploy services such as Prometheus, Grafana, and an NGINX reverse proxy, as well as other exporters and components for monitoring.

---

## Table of Contents

- [Overview](#overview)
- [Requirements](#requirements)
- [Setup](#setup)
- [Managing the Services](#managing-the-services)

---

## Overview

The `digi-monitoring` stack provides a modular monitoring solution leveraging containerized services. It is managed using the `instant` CLI tool, which abstracts Docker Compose deployments with reusable packages.

**Key components:**

- **Prometheus** (monitoring)
- **Grafana**
- **NGINX reverse proxy**
- **Blackbox Exporter**

---

## Requirements

Before proceeding, ensure you have the following installed:

- [Docker](https://www.docker.com/)
- [Docker Swarm](https://docs.docker.com/engine/swarm/)
- `bash` (for script execution)
- `instant` CLI (DIGI-specific packaging tool)
- A `.env` file with the required environment variables

---

## Setup

Clone the repository:

```bash
git clone https://github.com/DIGI-UW/digi-monitoring.git
cd digi-monitoring
```

---

## Managing the Services

1. Open the `mk.sh` script.
2. Uncomment the service lines you'd like to (re)deploy.

For example:

```bash
./instant package remove -n reverse-proxy-nginx --env-file .env
./instant package init -n reverse-proxy-nginx --env-file .env
```

3. Run the script:

```bash
sh mk.sh
```

---
