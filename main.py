from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles
from pathlib import Path

app = FastAPI()

# Serve /video static files (e.g., video/video1.mp4)
app.mount("/video", StaticFiles(directory="html/video"), name="video")

# Serve HTML from / (root)
html_dir = Path(__file__).parent / "html"
app.mount("/", StaticFiles(directory=html_dir, html=True), name="html")
