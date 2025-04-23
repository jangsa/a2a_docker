#!/bin/bash

cd /home/root/A2A/samples/python/agents/langgraph/

# if there's not a .venv file, create a virtual environment
if [ ! -d ".venv" ]; then
    echo "Creating virtual environment..."
    uv venv
else
    echo "Virtual environment already exists."
fi

source .venv/bin/activate

uv run . --host 0.0.0.0 --port 8080
