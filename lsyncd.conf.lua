settings {
 logfile = "/var/log/lsyncd/lsyncd.log", -- Sets the log file
 statusFile = "/var/log/lsyncd/lsyncd.status" -- Sets the status log file
 }
sync{
 default.rsync, -- uses the rsyncssh defaults Take a look here: https://github.com/axkibe/lsyncd/blob/master/default-rsyncssh.lua
 delete = true, -- Doesn't delete files on the remote host eventho they're deleted at the source. This might be beneficial for some not for others
 source="/home/denis/FOLDER", -- Your source directory to watch
 target="/mnt/FOLDER", -- the target dir on remote host, keep in mind this is absolute path
 rsync = {
 archive = true, -- use the archive flag in rsync
 perms = true, -- Keep the permissions
 owner = true, -- Keep the owner
 _extra = {"-a"}, -- Sometimes permissions and owners isn't copied correctly so the _extra can be used for any flag in rsync
 },
 delay = 1, -- We want to delay the syncing for 5 seconds so we queue up the events
 maxProcesses = 4, -- We only want to use a maximum of 4 rsync processes at same time
 }
 sync{
 default.rsync, -- uses the rsyncssh defaults Take a look here: https://github.com/axkibe/lsyncd/blob/master/default-rsyncssh.lua
 delete = true, -- Doesn't delete files on the remote host eventho they're deleted at the source. This might be beneficial for some not for others
 source="/home/denis/FOLDER", -- Your source directory to watch
 target="/mnt/FOLDER", -- the target dir on remote host, keep in mind this is absolute path
 rsync = {
 archive = true, -- use the archive flag in rsync
 perms = true, -- Keep the permissions
 owner = true, -- Keep the owner
 _extra = {"-a"}, -- Sometimes permissions and owners isn't copied correctly so the _extra can be used for any flag in rsync
 },
 delay = 1, -- We want to delay the syncing for 5 seconds so we queue up the events
 maxProcesses = 4, -- We only want to use a maximum of 4 rsync processes at same time
 }

