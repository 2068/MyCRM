from stark.service.stark import site, ModelStark
from rbac.models import *


class PerConfig(ModelStark):
    list_display = ['id','title', 'url', 'group', 'action']


site.register(User)
site.register(Role)
site.register(Permission,PerConfig)
site.register(PermissionGroup)
