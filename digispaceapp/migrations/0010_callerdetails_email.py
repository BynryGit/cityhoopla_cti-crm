# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('digispaceapp', '0009_enquirydetails'),
    ]

    operations = [
        migrations.AddField(
            model_name='callerdetails',
            name='email',
            field=models.CharField(default=None, max_length=200, null=True, blank=True),
        ),
    ]
