# ansible-role-venom-certificates #

[![GitHub Build Status](https://github.com/cisagov/ansible-role-venom-certificates/workflows/build/badge.svg)](https://github.com/cisagov/ansible-role-venom-certificates/actions)
[![Total alerts](https://img.shields.io/lgtm/alerts/g/cisagov/ansible-role-venom-certificates.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/cisagov/ansible-role-venom-certificates/alerts/)
[![Language grade: Python](https://img.shields.io/lgtm/grade/python/g/cisagov/ansible-role-venom-certificates.svg?logo=lgtm&logoWidth=18)](https://lgtm.com/projects/g/cisagov/ansible-role-venom-certificates/context:python)

This Ansible role installs some CA certificates that are required for
the VENOM (Virtual Enterprise Network Operations Manager) agents to
talk back to the VENOM mothership.  It also instructs the system to
trust these certificates.

## Requirements ##

None.

## Role Variables ##

None.

## Dependencies ##

None.

## Example Playbook ##

Here's how to use it in a playbook:

```yaml
- hosts: all
  become: yes
  become_method: sudo
  roles:
    - venom_certificates
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
