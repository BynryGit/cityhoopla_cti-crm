# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('digispaceapp', '0008_callerdetails'),
    ]

    operations = [
        migrations.CreateModel(
            name='EnquiryDetails',
            fields=[
                ('EnquiryID', models.AutoField(serialize=False, editable=False, primary_key=True)),
                ('enquiryFor', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('SelectedArea', models.CharField(default=None, max_length=100, null=True, blank=True)),
                ('created_date', models.DateTimeField(null=True, blank=True)),
                ('created_by', models.CharField(max_length=100, null=True, blank=True)),
                ('updated_by', models.CharField(max_length=100, null=True, blank=True)),
                ('updated_date', models.DateTimeField(null=True, blank=True)),
                ('CallerID', models.ForeignKey(blank=True, to='digispaceapp.CallerDetails', null=True)),
                ('SelectedCity', models.ForeignKey(blank=True, to='digispaceapp.City', null=True)),
                ('SelectedPincode', models.ForeignKey(blank=True, to='digispaceapp.Pincode', null=True)),
                ('category_id', models.ForeignKey(blank=True, to='digispaceapp.Category', null=True)),
                ('subcategory_id1', models.ForeignKey(blank=True, to='digispaceapp.CategoryLevel1', null=True)),
                ('subcategory_id2', models.ForeignKey(blank=True, to='digispaceapp.CategoryLevel2', null=True)),
            ],
        ),
    ]
