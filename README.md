![Logo](isa-api_logo.png)

# ISA-JSON Validator
Version: 0.8.3

## Short Description

A container image definition for the ISA-JSON validator from the [ISA-API](http://github.com/ISA-tools/isa-api).

## Description

The ISA API is a Python 3 library that can create, manipulate, and convert ISA formatted content. The ISA-JSON
validator produces a validation report on a ISA-JSON formatted document.

## Key features

- Validates ISA-JSON documents and produces a report of warnings and errors on metadata contained in the document.

## Functionality

- Other Tools

## Tool Authors

- [ISA Team](http://isa-tools.org)

## Container Contributors

- [David Johnson](https://github.com/djcomlab) (University of Oxford)

## Website

- https://github.com/ISA-tools/isa-api


## Git Repository

- https://github.com/phnmnl/container-isajson-validator.git

## Installation 

For local individual installation:

```bash
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/isajson-validator
```

## Usage Instructions

For direct docker usage:

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/isajson-validator <path_to_isajson_file>
```

## Publications

- Sansone, Susanna-Assunta, Rocca-Serra, Philippe, Gonzalez-Beltran, Alejandra, Johnson, David, &amp; ISA Community. (2016, October 28). ISA Model and Serialization Specifications 1.0. Zenodo. http://doi.org/10.5281/zenodo.163640
- Sansone, Susanna-Assunta, et al. (2012, January 27). Towards interoperable bioscience data. Nature Genetics 44, 121–126. http://doi.org/10.1038/ng.1054
