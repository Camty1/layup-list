# -*- coding: utf-8 -*-
# Generated by Django 1.10.4 on 2017-08-29 04:37
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0021_allow_null_course_registration_number'),
    ]

    operations = [
        migrations.AlterField(
            model_name='courseoffering',
            name='period',
            field=models.CharField(db_index=True, max_length=128),
        ),
    ]