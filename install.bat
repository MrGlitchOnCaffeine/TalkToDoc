@echo off
echo Installing TalkToDoc dependencies...
pip install -r requirements.txt
echo Installing yarngpt without C++ dependencies...
pip install yarngpt==0.2.0 --no-deps
pip install outetts==0.3.0 --no-deps
echo Done. Run: python app.py
