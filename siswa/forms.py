from django import forms
from .models import Siswa, Guru, Pelanggaran, SiswaPelanggaran, Tindakan
from django.contrib.auth.forms import AuthenticationForm


class SiswaForm(forms.ModelForm):
    class Meta:
        model = Siswa
        fields = "__all__"


class GuruForm(forms.ModelForm):
    class Meta:
        model = Guru
        fields = "__all__"


class PelanggaranForm(forms.ModelForm):
    class Meta:
        model = Pelanggaran
        fields = "__all__"


class TindakanForm(forms.ModelForm):
    class Meta:
        model = Tindakan
        fields = "__all__"


class LoginForm(AuthenticationForm):
    username = forms.CharField(widget=forms.TextInput(attrs={"class": "form-control"}))
    password = forms.CharField(
        widget=forms.PasswordInput(attrs={"class": "form-control"})
    )


class SiswaPelanggaranForm(forms.ModelForm):
    class Meta:
        model = SiswaPelanggaran
        fields = "__all__"
