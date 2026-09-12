# 1. Ensure python3-venv is installed on Ubuntu
sudo apt update && sudo apt install -y python3-venv python3-pip

# 2. Create the virtual environment named .venv
python3 -m venv .venv

# 3. Activate the virtual environment
source .venv/bin/activate

# 4. Upgrade pip inside the virtual environment
pip install --upgrade pip

# 5. Install dependencies from requirements.txt
pip install -r requirements.txt