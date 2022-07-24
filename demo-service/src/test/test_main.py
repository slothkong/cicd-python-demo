import pytest
from main import app


@pytest.fixture
def client():
    app.testing = True
    return app.test_client()


def test_handler(client):
    r = client.get("/")

    assert r.data.decode() == "Hello, World!"
    assert r.status_code == 200
