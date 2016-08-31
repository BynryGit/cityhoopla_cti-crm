# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('digispaceapp', '0011_supplier_area'),
    ]

    operations = [
        migrations.CreateModel(
            name='CallInfo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('UCID', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('CallerID', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('CalledNo', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('CallStartTime', models.DateTimeField(null=True, blank=True)),
                ('DialStartTime', models.DateTimeField(null=True, blank=True)),
                ('DialEndTime', models.DateTimeField(null=True, blank=True)),
                ('DisconnectType', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('CallStatus', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('CallDuration', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('CallType', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('AudioRecordingURL', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('DialedNumber', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('Department', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('Extn', models.CharField(default=None, max_length=100, null=True, blank=True)),
            ],
        ),
    ]
