# this is a test
import pytest
<<<<<<< Updated upstream
from ..app import app
=======
from microservices.service1.app import app

>>>>>>> Stashed changes

@pytest.fixture
def client():
    app.testing = True
    return app.test_client()

def test_home(client):
    response = client.get('/')
    assert response.status_code == 200
    assert b"Hello" in response.data
