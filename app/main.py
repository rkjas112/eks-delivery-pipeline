import os
import json

from flask import Flask, jsonify


def create_app() -> Flask:
    app = Flask(__name__)

    @app.get("/")
    def index():
        return jsonify(
            service="actions-lab",
            environment=os.getenv("APP_ENV", "local"),
            version=os.getenv("APP_VERSION", "dev"),
        )

    @app.get("/healthz")
    def health():
        return jsonify(status="healthy"), 200

    @app.get("/readyz")
    def readiness():
        return jsonify(status="ready"), 200

    return app

