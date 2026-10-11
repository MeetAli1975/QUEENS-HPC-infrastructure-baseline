# QUEENS-HPC Infrastructure

A self-hosted, three-node High-Performance Computing (HPC) cluster deployed on Proxmox VE using Red Hat Enterprise Linux 10.2.

## Technology Stack

- Proxmox VE virtualization
- Red Hat Enterprise Linux 10.2
- Slurm 26.05.4 workload management
- MUNGE authentication
- NFS 4.2 shared storage
- Linux cgroups for resource management
- Git for infrastructure configuration version control

## Infrastructure

| Node | Role |
|---|---|
| hpc-controller | Slurm controller and NFS server |
| hpc-compute-01 | Compute node |
| hpc-compute-02 | Compute node |

## Repository Structure

- `config/slurm/` — Slurm scheduler and cgroup configuration
- `config/nfs/` — NFS export configuration
- `jobs/` — Distributed workload definitions
- `docs/` — Infrastructure architecture and operational documentation

## Validated Capabilities

- Three-node Slurm cluster communication
- MUNGE authentication between nodes
- Two-node distributed job execution
- Eight scheduled tasks across compute nodes
- Centralized NFS job output
- Persistent NFS mounts

## Submit a Workload

```bash
sbatch jobs/distributed-compute.sbatch
```

## Documentation

See [Infrastructure Architecture](docs/architecture.md).

## Operational Status

Distributed workloads have executed successfully. Slurm accounting, high availability, and additional security hardening remain future enhancements.

## Security

Authentication secrets and private keys must never be committed. Review all configurations before public distribution.
