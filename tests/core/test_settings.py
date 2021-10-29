"""Test settings class."""
from package_name.core.config import Settings


def test_settings_loading():
    """Test settings loading."""
    settings = Settings()
    assert isinstance(settings.PROJECT_NAME, str)
