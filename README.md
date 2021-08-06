# ansible-role-cdm-certificates #

[![GitHub Build Status](https://github.com/cisagov/ansible-role-cdm-certificates/workflows/build/badge.svg)](https://github.com/cisagov/ansible-role-cdm-certificates/actions)
[![Total alerts](https://img.shields.io/lgtm/alerts/g/cisagov/ansible-role-cdm-certificates.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/cisagov/ansible-role-cdm-certificates/alerts/)
[![Language grade: Python](https://img.shields.io/lgtm/grade/python/g/cisagov/ansible-role-cdm-certificates.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/cisagov/ansible-role-cdm-certificates/context:python)

This Ansible role installs some CA certificates that are required for
the CISA CDM (Continuous Diagnostics and Mitigation) agents to talk
back to the CISA CDM mothership.  It also instructs the system to
trust these certificates.

## Pre-requisites ##

In order to execute the Molecule tests for this Ansible role in GitHub
Actions, a build user must exist in AWS. The accompanying Terraform
code will create the user with the appropriate name and
permissions. This only needs to be run once per project, per AWS
account. This user can also be used to run the Molecule tests on your
local machine.

Before the build user can be created, the following profile must exist in
your AWS credentials file:

- `cool-terraform-backend`

The easiest way to set up that profile is to use our
[`aws-profile-sync`](https://github.com/cisagov/aws-profile-sync)
utility. Follow the usage instructions in that repository before
continuing with the next steps. Note that you will need to know where
your team stores their remote profile data in order to use
[`aws-profile-sync`](https://github.com/cisagov/aws-profile-sync).

To create the build user, follow these instructions:

```console
cd terraform
terraform init --upgrade=true
terraform apply
```

Once the user is created you will need to update the [repository's
secrets](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets)
with the new encrypted environment variables. This should be done
using the
[`terraform-to-secrets`](https://github.com/cisagov/development-guide/tree/develop/project_setup#terraform-iam-credentials-to-github-secrets-)
tool available in the [development
guide](https://github.com/cisagov/development-guide). Instructions for
how to use this tool can be found in the ["Terraform IAM Credentials
to GitHub Secrets"
section](https://github.com/cisagov/development-guide/tree/develop/project_setup#terraform-iam-credentials-to-github-secrets-).
of the Project Setup README.

If you have appropriate permissions for the repository you can view
existing secrets on the [appropriate
page](https://github.com/cisagov/ansible-role-cdm-certificates/settings/secrets)
in the repository's settings.

## Requirements ##

None.

## Role Variables ##

- `certificate_object_names` - a list of S3 objects corresponding to
  the CDM certificates.  Defaults to ["cert_US_CISA_0_Root_CA.crt",
  "cert_US_CISA_1_Issuing_CA_reissued.crt"].
- `third_party_bucket_name` - the name of the AWS S3 bucket where
  third-party software is located.  Defaults to
  "cisa-cool-third-party-production".

## Dependencies ##

None.

## Example Playbook ##

Here's how to use it in a playbook:

```yaml
- hosts: all
  become: yes
  become_method: sudo
  roles:
    - cdm_certificates
```

## Contributing ##

We welcome contributions!  Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for
details.

## License ##

This project is in the worldwide [public domain](LICENSE).

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.

## Author Information ##

Shane Frasier - <jeremy.frasier@trio.dhs.gov>
