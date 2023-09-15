"""app_siswa URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from siswa import views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    # path('admin/', admin.site.urls),
    path("", views.login, name="index"),
    path("login", views.login, name="login"),
    path("loginpelanggaran", views.loginpelanggaran, name="loginpelanggaran"),
    path("dashboard", views.dashboard, name="dashboard"),
    path("auth", views.auth),
    path("logout", views.logout),
    path("siswa", views.siswa, name="siswa"),
    path("svsiswa", views.svsiswa),
    path("dsiswa", views.dsiswa),
    path("hsiswa", views.hsiswa),
    path("vsiswa", views.vsiswa),
    path("petugas", views.petugas, name="petugas"),
    path("svpetugas", views.svpetugas),
    path("dpetugas", views.dpetugas),
    path("hpetugas", views.hpetugas),
    path("vpetugas", views.vpetugas),
    path("kategori", views.kategori, name="kategori"),
    path("svkategori", views.svkategori),
    path("dkategori", views.dkategori),
    path("hkategori", views.hkategori),
    path("vkategori", views.vkategori),
    path("sanksi", views.sanksi, name="sanksi"),
    path("svsanksi", views.svsanksi),
    path("dsanksi", views.dsanksi),
    path("hsanksi", views.hsanksi),
    path("vsanksi", views.vsanksi),
    path("pelanggaran", views.pelanggaran, name="pelanggaran"),
    path("addpelanggaran/<str:nomorinduk>", views.addpelanggaran, name="addpelanggaran"),
    path("svpelanggaran", views.svpelanggaran),
    path("dpelanggaran", views.dpelanggaran),
    path("hpelanggaran", views.hpelanggaran),
    path("vpelanggaran", views.vpelanggaran),
    path("dtlvpelanggaran", views.dtlvpelanggaran),
    path("listsiswa", views.listsiswa),
    path("listpelanggaran", views.listpelanggaran),
    path("pemanggilan", views.pemanggilan, name="pemanggilan"),
    path("pengeluaran", views.pengeluaran, name="pengeluaran"),
    path("rekapan", views.rekapan, name="rekapan"),
    path("vrekapan", views.vrekapan),
    path("impsiswa", views.impsiswa),
    path("export_laporan", views.export_laporan),
    path("chartpelanggaran", views.chartpelanggaran),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_DIR)
