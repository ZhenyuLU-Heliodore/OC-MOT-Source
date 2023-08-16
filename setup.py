from setuptools import setup, find_packages

setup(
    name="ocl",
    version="0.1",
    packages=find_packages(exclude="notebooks"),
    install_requires=[],
)