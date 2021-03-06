# Generated by Django 3.2.9 on 2021-12-15 21:55

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Seller',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=29)),
                ('password', models.CharField(max_length=20)),
                ('email', models.EmailField(max_length=100)),
                ('name', models.CharField(default='empty', max_length=100, null=True)),
                ('lastname', models.CharField(default='empty', max_length=100, null=True)),
                ('country', models.CharField(default='empty', max_length=25, null=True)),
                ('dateOfBirth', models.DateField(default='empty', null=True)),
                ('address', models.TextField(default='empty', max_length=254, null=True)),
                ('rfc', models.CharField(default='empty', max_length=20)),
                ('ine', models.CharField(default='empty', max_length=20)),
                ('CLABE', models.CharField(default='empty', max_length=30)),
            ],
        ),
    ]
