#!/bin/bash

# Define the directory to start from
start_dir="ai-agents-mvp"

# Check if the directory exists
if [ ! -d "$start_dir" ]; then
    echo "Error: Directory $start_dir does not exist."
    exit 1

ai-agents-mvp/
├── .github/workflows/ci.yml
├── docker-compose.yml
├── .env.sample
├── Makefile
├── scripts/
│   ├── backup_pg.sh
│   └── crontab
├── tests/
│   └── k6/loadtest.js
├── traefik/
│   ├── traefik.yml
│   └── dynamic/conf.yml
├── script_install.sh
├── n8n/
│   └── workflows/
│       └── hello-world.json
├── postgres/
│   └── init.sql
├── prometheus/
│   └── prometheus.yml
└── grafana/
    └── provisioning/
        ├── datasources/
        │   └── datasource.yml
        └── dashboards/
            └── docker-overview.json
    

