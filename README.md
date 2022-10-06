# EDRM.MIH.Nuix

The EDRM MIH is an email message ID that can be used for convienence for cross vendor deduplication of emails.  For additional details, [EDRM.Net Emerging Projects - DedupeID Project](https://edrm.net/active-projects/#1598305251397-89bd62e4-e5ad)

## Metadata Profiles
1. EDRM.MIH.profile: A Metadata profile that will dynamically calculate the EDRM MIH value using a scripted metadata profile.  NOTE: This is not super performant but can be used for testing.  If you are looking to use Item Sets or export this values, it is recommended that you run the [EDRM.MIH.Nuix.update.custom.metadata.rb](https://github.com/stephenlstewart/EDRM.MIH.Nuix/blob/f143d66590936edbf2e1fc26e58ded908151d7ce/EDRM.MIH.Nuix.update.custom.metadata.rb) script to memorialize EDRM MIH as a piece of custom metadata.
2. RFC5322 Message ID.profile: This is a simple metadata profile that pulls the Message-ID for each of the email items in accordance with the EDRM MIH specifciation.

## Script to persist EDRM MIH to custom metadata.
1. EDRM.MIH.Nuix.update.custom.metadata.rb: Script will apply the EDRM MIH value to each item as piece of metadata.  Once it is appplied, it can then used as part of any metadata profile.  This can then be used in conjunction with (https://github.com/Nuix/Deduplicate-By-Profile) to create an Item Set based on this hash.
