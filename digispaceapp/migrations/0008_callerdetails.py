# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('digispaceapp', '0007_operator_operator_status'),
    ]

    operations = [
        migrations.CreateModel(
            name='CallerDetails',
            fields=[
                ('CallerID', models.AutoField(serialize=False, editable=False, primary_key=True)),
                ('first_name', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('last_name', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('IncomingTelNo', models.CharField(default=None, max_length=200, null=True, blank=True)),
                ('CallerArea', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('caller_created_date', models.DateTimeField(null=True, blank=True)),
                ('caller_created_by', models.CharField(max_length=100, null=True, blank=True)),
                ('caller_updated_by', models.CharField(max_length=100, null=True, blank=True)),
                ('caller_updated_date', models.DateTimeField(null=True, blank=True)),
                ('CallerCity', models.ForeignKey(blank=True, to='digispaceapp.City', null=True)),
                ('CallerPincode', models.ForeignKey(blank=True, to='digispaceapp.Pincode', null=True)),
            ],
        ),
    ]
