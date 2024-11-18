from ..app.main import admin_router
from backend.app.routers.admin import show_admins


def text_show_admins():
    assert admin_router.show_admins("DB").Admin_ID == 1
