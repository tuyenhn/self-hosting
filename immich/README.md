Backup scheme:

- There are 2 main things to backup: (1) the Immich Postgres database, and (2) the assets or filesystem, i.e. the actual images and videos
- (1) Immich database:
    - Backed up by PVE VM snapshots everyday at 00:00, retaining the latest 3 daily and 1 weekly snapshots
    - Only backing up the VM, i.e. the Postgres database
- (2) The assets:
    - Backed up by `restic` to personal OneDrive through `rclone`
