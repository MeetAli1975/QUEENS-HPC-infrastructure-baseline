# QUEENS-HPC Infrastructure Architecture

## Platform
- Hypervisor: Proxmox VE
- Operating system: Red Hat Enterprise Linux 10.2
- Workload manager: Slurm 26.05.4

## Cluster Nodes
| Hostname | IP Address | Role |
|---|---|---|
| hpc-controller | 192.168.250.10 | Slurm controller and NFS server |
| hpc-compute-01 | 192.168.250.11 | Compute node |
| hpc-compute-02 | 192.168.250.12 | Compute node |

## Scheduling
- Cluster: queens-hpc
- Partition: compute
- Scheduler: backfill
- Compute resources: 4 CPUs and 3500 MB configured per node
- Resource management: Slurm cgroups

## Authentication
MUNGE provides authentication between Slurm cluster nodes.

## Shared Storage
The controller exports /shared through NFS.
Both compute nodes mount /shared for distributed workload access.

## Validated Workload
A Slurm batch job successfully executed eight tasks across both compute nodes, with output written to centralized NFS storage.

## Operational Scope
This document describes the deployed infrastructure. High availability, accounting, and additional production hardening are not yet implemented.
