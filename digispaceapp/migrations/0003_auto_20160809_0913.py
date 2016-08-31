# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('digispaceapp', '0002_consumerprofile_no_of_login'),
    ]

    operations = [
        migrations.AlterField(
            model_name='consumerprofile',
            name='latitude',
            field=models.FloatField(max_length=20, null=True, blank=True),
        ),
        migrations.AlterField(
            model_name='consumerprofile',
            name='longitude',
            field=models.FloatField(max_length=20, null=True, blank=True),
        ),
    ]
