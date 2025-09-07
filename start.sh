#!/bin/bash
pip install -r requirements.txt
python -c "from app.database import Base, engine; Base.metadata.create_all(bind=engine)"
uvicorn app.main:app --reload --host 0.0.0.0 --port 8000
