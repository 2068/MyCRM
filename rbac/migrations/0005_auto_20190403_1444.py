# -*- coding: utf-8 -*-
# Generated by Django 1.11.18 on 2019-04-03 06:44
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rbac', '0004_auto_20190402_2018'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='pwd',
            field=models.CharField(max_length=64),
        ),
    ]
