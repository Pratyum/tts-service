#!/bin/bash

# Create checkpoints directory if it doesn't exist
mkdir -p checkpoints

# Download model weights using huggingface-cli
# You might need to install huggingface-cli: pip install -U "huggingface_hub[cli]"

echo "Downloading Fish Audio model weights..."

# Download OpenAudio-S1-mini (example, adjust as needed based on specific model requirements)
# Note: The documentation mentions downloading weights to ./checkpoints
# We will use huggingface-cli to download the model to the checkpoints directory.

if ! command -v huggingface-cli &> /dev/null; then
    echo "huggingface-cli could not be found. Please install it with: pip install -U \"huggingface_hub[cli]\""
    exit 1
fi

huggingface-cli download fishaudio/fish-speech-1.4 --local-dir checkpoints

echo "Download complete."
