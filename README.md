# EDRM.MIH.Nuix


Nuix Custom Metadata Profiles to create EDRM MIH values

Import the both metadata profiles into Nuix Workstation to test the EDRM MIH value.

1. EDRM.MIH.Nuix.update.custom.metadata.rb: Script will apply the EDRM MIH value to each item as piece of metadata.  Once it is appplied, it can then used as part of any metadata profile.  This can then be used in conjunction with (https://github.com/Nuix/Deduplicate-By-Profile) to create an Item Set based on this hash.
2. EDRM.MIH.profile: A Metadata profile that will dynamically calculate the EDRM MIH value using a scripted metadata profile.  NOTE: This is not super performant but can be used for testing.  If you are looking to use Item Sets or export this values, it is recommended that you run the 
3. RFC5322 Message ID.profile
