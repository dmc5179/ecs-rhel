# Ansible role 'ecs-rhel'

Ansible role to create and destroy and AWS ECS Cluster. Also covers preparing an EC2 instance to join an ECS cluster and joining a RHEL host to an ECS cluster.

## Requirements

Additional Ansible Roles required. To install these run the following command:
```
ansible-galaxy role install --role-file requirements.txt
```

- geerlingguy.docker
- community.aws

## Dependencies

- The additional ansible roles from the previous section are dependencies of this role

## Role Variables

| Variable          | Default  | Comments                         |
| :---              | :---     | :---                             |
| cluster_name      | "redhat" | ECS Cluster Name                 |
| profile_name      | "redhat" | ECS CLI profile name (unused)    |
| cluster_config    | "redhat" | ECS CLI cluster config (unused)  |
| keypair           | ""       | EC2 Instance Key Pair            |


## Example Playbook

There are 4 example playbooks to cover each of the capabilities of this ansible role. Make sure to update the defaults/main.yml with your variables
and update the test/inventory file with your host(s)

### Creating an ECS cluster

- To create an ECS cluster with 0 nodes attached to it

```
ansible-playbook -i tests/inventory tests/create_ecs_cluster.yml
```

- To destroy an ECS cluster

### Destroy an ECS cluster
```
ansible-playbook -i tests/inventory tests/destroy_ecs_cluster.yml
```

### Prepare a RHEL 7 host for ECS

- To prepare a RHEL 7 host to join 

```
ansible-playbook -i tests/inventory tests/prepare_ami.yml
```

### Add a RHEL 7 instance to an ECS cluster

- To add a RHEL 7 host to an existing ECS cluster run the command below. This will also run the prepare tasks above

```
ansible-playbook -i tests/inventory tests/add_host_to_ecs_cluster.yml
```

## License

2-clause BSD license, see [LICENSE.md](LICENSE.md)

## Contributors

- [Dan Clark](https://github.com/dmc5179/) (maintainer)

