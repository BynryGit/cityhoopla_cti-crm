# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('digispaceapp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='consumerprofile',
            name='no_of_login',
            field=models.CharField(default=None, max_length=100, null=True, blank=True),
        ),
    ]
