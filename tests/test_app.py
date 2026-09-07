from app import create_app


def test_index_reports_service_metadata(monkeypatch):
    monkeypatch.setenv("APP_ENV", "test")
    monkeypatch.setenv("APP_VERSION", "abc1234")
    client = create_app().test_client()

    response = client.get("/")

    assert response.status_code == 200
    assert response.get_json() == {
        "environment": "test",
        "service": "actions-lab",
        "version": "abc1234",
    }


def test_health_endpoint():
    response = create_app().test_client().get("/healthz")

    assert response.status_code == 200
    assert response.get_json() == {"status": "healthy"}


def test_unknown_route_returns_404():
    response = create_app().test_client().get("/not-a-route")

    assert response.status_code == 404

