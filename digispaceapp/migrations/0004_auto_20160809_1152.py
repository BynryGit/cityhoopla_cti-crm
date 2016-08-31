# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('digispaceapp', '0003_auto_20160809_0913'),
    ]

    operations = [
        migrations.AlterField(
            model_name='consumerprofile',
            name='no_of_login',
            field=models.CharField(default=b'0', max_length=100, null=True, blank=True),
        ),
    ]
