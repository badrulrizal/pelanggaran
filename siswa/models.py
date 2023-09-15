from django.db import models
import datetime


class Siswa(models.Model):
    JENIS_KELAMIN_CHOICES = [
        ("L", "Laki-laki"),
        ("P", "Perempuan"),
    ]

    KELAS_CHOICES = [
        ("X", "X SEPULUH"),
        ("XI", "XI SEBELAS"),
        ("XII", "XII DUA BELAS"),
    ]

    id_siswa = models.AutoField(primary_key=True)
    nama_lengkap = models.CharField(max_length=100, default="")
    tempat_lahir = models.CharField(max_length=100, default="")
    tanggal_lahir = models.DateField(default=datetime.date.today)
    jenis_kelamin = models.CharField(
        max_length=1, choices=JENIS_KELAMIN_CHOICES, default=""
    )
    alamat = models.CharField(max_length=255, blank=True)
    lembaga = models.CharField(max_length=100, default="")
    nomor_induk = models.CharField(max_length=20, default="")
    jurusan = models.CharField(max_length=100, default="")
    kelas = models.CharField(max_length=100, choices=KELAS_CHOICES, default="")
    rombel = models.CharField(max_length=10, default="")
   
    qr_code = models.FileField(upload_to="", blank=True)

    def __str__(self):
        return self.id_siswa


class Guru(models.Model):
    id_guru = models.AutoField(primary_key=True)
    nama_lengkap = models.CharField(max_length=100)
    tanggal_lahir = models.DateField()
    nuptk = models.CharField(max_length=100)
    nomer_hp = models.CharField(max_length=13)
    username = models.CharField(max_length=100, blank=True, null=True)
    password = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.id_guru


class Tindakan(models.Model):
    id_tindakan = models.AutoField(primary_key=True)
    range_point = models.IntegerField()
    tindakan = models.CharField(max_length=100)

    def __str__(self):
        return self.id_tindakan


class Pelanggaran(models.Model):
    KATEGORI = [
        ("ringan", "Ringan"),
        ("sedang", "Sedang"),
        ("berat", "Berat"),
    ]
    id_pelanggaran = models.AutoField(primary_key=True)
    nama_pelanggaran = models.CharField(max_length=255)
    kategori = models.CharField(max_length=15, choices=KATEGORI, default="")
    point_pelanggaran = models.IntegerField()

    def __str__(self):
        return self.id_pelanggaran


class SiswaPelanggaran(models.Model):
    id_pelanggaran = models.AutoField(primary_key=True)
    pelanggaran_id = models.IntegerField()
    siswa_id = models.IntegerField()
    tanggal_pelanggaran = models.DateTimeField(blank=True)

    def __str__(self):
        return self.id_pelanggaran
