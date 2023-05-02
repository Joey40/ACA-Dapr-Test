"""FastAPI Test."""
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}


@app.post("/groupme")
def receive_groupme():
    return {"Hello": "World"}
