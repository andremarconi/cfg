#!/usr/bin/env bash
cd ~/Library
rm -rf .localized Accounts Application\ Scripts Application\ Support Assistant Assistants Autosave\ Information \
Caches Calendars CallServices Compositions ContainerManager Containers Cookies CoreFollowUp \
DataDeliveryServices Dictionaries Dropbox Favorites FrontBoard Google Group\ Containers \
HTTPStorages HomeKit IdentityServices Internet\ Plug-Ins Keyboard Keyboard\ Layouts KeyboardServices Input\ Methods Keychains LanguageModeling LaunchAgents \
Logs Mail Maps Messages Metadata Mobile\ Documents NGL Passes PersonalizationPortrait PhotoshopCrashes \
PreferencePanes Preferences QuickLook Reminders Safari SafariSafeBrowsing SafariSandboxBroker \
Saved\ Application\ State Screen\ Savers Services Spelling Staging Suggestions SyncedPreferences Translation \
Trial WebKit com.apple.icloud.searchpartyd com.apple.internal.ck studentd
rm -rf /Library/Caches /System/Library/Caches
cd /var/log
rm -rf wi* install.log system.log fsck_apfs.log fsck_apfs_error.log
cd
rm -rf .dropbox
