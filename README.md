# Template for an Ansible project with Python's Virtualenv

A template of an Ansible project, which keeps its complete environment as Python's [VirtualEnv][virtualenv]

## Table of Contents

- [Before you start](#before-you-start)
- [TL;DR](#tldr)
- [What does it do](#what-does-it-do)
- [References](#references)

_(TOC generated by [markdown-toc](https://github.com/jonschlinkert/markdown-toc))

Before you start
----------------

This project requires Python's [virtualenv]. Please have it installed first.

TL;DR
-----

To run an [Ansible][ansible] playbook, just run the wrapper script:

```bash
./run-ansible.sh env/dev site.yml
```

What does it do
---------------

* FIXME: describe it

References
----------

* [Ansible][ansible] - see the [official documentation](http://docs.ansible.com/) and the [installation instructions](http://docs.ansible.com/ansible/intro_installation.html)
* [VirtualEnv][virtualenv] - see the [official documentation](https://virtualenv.pypa.io/en/latest/)

[ansible]: https://www.ansible.com/ "Ansible is a simple (well...) automation tool, adopted by the company for the deployment tasks"
[virtualenv]: https://virtualenv.pypa.io "a tool to create isolated Python environments"
