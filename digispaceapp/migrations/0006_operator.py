# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings
import django.contrib.auth.models


class Migration(migrations.Migration):

    dependencies = [
        ('auth', '0006_require_contenttypes_0002'),
        ('digispaceapp', '0005_advert_keywords'),
    ]

    operations = [
        migrations.CreateModel(
            name='Operator',
            fields=[
                ('user_ptr', models.OneToOneField(parent_link=True, auto_created=True, to=settings.AUTH_USER_MODEL)),
                ('operator_id', models.AutoField(serialize=False, editable=False, primary_key=True)),
                ('operator_name', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('operator_email_id', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('user_created_date', models.DateTimeField(null=True, blank=True)),
                ('user_created_by', models.CharField(max_length=100, null=True, blank=True)),
                ('user_updated_by', models.CharField(max_length=100, null=True, blank=True)),
                ('user_updated_date', models.DateTimeField(null=True, blank=True)),
            ],
            options={
                'abstract': False,
                'verbose_name': 'user',
                'verbose_name_plural': 'users',
            },
            bases=('auth.user',),
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
    ]
