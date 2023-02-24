"""A fresh new FastAPI app."""
import sys
import fastapi
import uvicorn
import art

app = fastapi.FastAPI(title="asciinator")

@app.get("/")
def home():
    return art.randart() 

if __name__ == "__main__":
    print("\n".join(sys.path))
    uvicorn.run("asciinator.app:app", host = "0.0.0.0", port = 8000)
