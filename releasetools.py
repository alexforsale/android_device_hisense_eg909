# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Add backup for efs during flashing of ota-zip"""

import common

def RunEFSBackup(self):
    self.script.AppendExtra('ui_print("Backing Up EFS Partitions to /sdcard/EFS_BACKUPS/");')
    self.script.AppendExtra('package_extract_file("system/bin/efsbackup.sh", "/tmp/efsbackup.sh");')
    self.script.AppendExtra('set_perm(0, 0, 0777, "/tmp/efsbackup.sh");')
    self.script.AppendExtra('run_program("/tmp/efsbackup.sh");')
    self.script.AppendExtra('ui_print("      Finished Backing Up EFS Partitions            ");')
    self.script.AppendExtra('ui_print("        in case something went wrong                ");')
    self.script.AppendExtra('ui_print("          use dd to restore them                    ");')

def FixInitd(self):
    self.script.AppendExtra('ui_print("set permission for init.d");')
    self.script.AppendExtra('mount("ext4", "EMMC", "/dev/block/mmcblk0p12", "/system");')
    self.script.AppendExtra('set_perm_recursive(0, 2000, 0755, 0755, "/system/etc/init.d");')
    self.script.AppendExtra('ui_print("done!");')
    self.script.AppendExtra('unmount("/system");')

def SigBanner(self):
    self.script.AppendExtra('ui_print("            this is an AOSP build                     ");')
    self.script.AppendExtra('ui_print("                 based on                           ");')
    self.script.AppendExtra('ui_print("          alexforsale device tree                   ");')
    self.script.AppendExtra('ui_print("        at github.com/alexforsale/                  ");')

def FullOTA_Assertions(self):
   RunEFSBackup(self)

def IncrementalOTA_Assertions(self):
   RunEFSBackup(self)

def FullOTA_InstallEnd(self):
   FixInitd(self)
   SigBanner(self)
def IncrementalOTA_InstallEnd(self):
   FixInitd(self)
   SigBanner(self)

