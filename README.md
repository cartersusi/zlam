
## Setup
```
git clone https://github.com/cartersusi/zlam.git
cd zlam
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
git remote add hf https://huggingface.co/cartersusi/zig-LLaMa
chmod +x run_peft.sh
./run_peft.sh
```

It might ask to sign in to huggingface cli