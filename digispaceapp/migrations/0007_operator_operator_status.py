# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('digispaceapp', '0006_operator'),
    ]

    operations = [
        migrations.AddField(
            model_name='operator',
            name='operator_status',
            field=models.CharField(default=b'1', max_length=100, null=True, choices=[(b'1', b'1'), (b'0', b'0')]),
        ),
    ]
