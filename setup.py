from setuptools import setup

setup(
    name='random_flavorpack',
    version='0.2.0',
    packages=['', 'api', 'tests', 'generators', 'migrations'],
    package_dir={'': 'random_flavorpack'},
    url='https://gitlab.com/serial-lab/random-flavorpack',
    license='GPLv3',
    author='Rob Magee',
    author_email='slab@serial-lab.com',
    description='Randomized Number Flavorpack Plugin for SerialBox'
)
