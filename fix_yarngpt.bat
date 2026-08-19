@echo off
echo Fixing YarnGPT corrupted model files...
echo.

echo Step 1: Deleting corrupted files...
del "C:\Users\HP\.yarngpt\models\wavtokenizer_large_speech_320_24k.ckpt"
del "C:\Users\HP\.yarngpt\models\wavtokenizer_mediumdata_frame75_3s_nq1_code4096_dim512_kmeans200_attn.yaml"
echo Done.
echo.

echo Step 2: Re-downloading model (this may take a few minutes)...
python -c "from huggingface_hub import hf_hub_download; hf_hub_download(repo_id='novateur/WavTokenizer-large-speech-75token', filename='wavtokenizer_large_speech_320_24k.ckpt', local_dir=r'C:\Users\HP\.yarngpt\models')"
echo Done.
echo.

echo Step 3: Verifying download...
python -c "import torch; d = torch.load(r'C:\Users\HP\.yarngpt\models\wavtokenizer_large_speech_320_24k.ckpt', map_location='cpu'); print('SUCCESS - file is valid:', type(d))"
echo.

echo All done. Now run: python app.py
pause
