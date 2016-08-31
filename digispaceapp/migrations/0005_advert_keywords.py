# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('digispaceapp', '0004_auto_20160809_1152'),
    ]

    operations = [
        migrations.AddField(
            model_name='advert',
            name='keywords',
            field=models.CharField(max_length=1000, null=True, blank=True),
        ),
    ]
