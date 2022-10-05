<?xml version="1.0" encoding="UTF-8"?>
<metadata-profile xmlns="http://nuix.com/fbi/metadata-profile">
  <metadata-list>
    <metadata type="SPECIAL" name="Name" />
    <metadata type="SPECIAL" name="MIME Type" />
    <metadata type="SPECIAL" name="Path Name" />
    <metadata type="DERIVED" name="RFC5322 Message ID">
      <first-non-blank>
        <metadata type="PROPERTY" name="Mapi-Smtp-Message-Id" />
        <metadata type="PROPERTY" name="Message-ID" />
        <metadata type="PROPERTY" name="Transport Headers Message-ID" />
      </first-non-blank>
    </metadata>
    <metadata type="SPECIAL" name="EDRM MIH Hash">
      <scripted-expression>
        <type>ruby</type>
        <script><![CDATA[begin
	item = $current_item
	require 'digest'
	
	metadata_profile_name = "RFC5322 Message ID"
	metadata_profile = $utilities.getMetadataProfileStore.getMetadataProfile(metadata_profile_name)
	
	edrm_mih_hash = ""
	
	metadata_profile.getMetadata.each do |field|
		field_value = field.evaluate(item)
		if field_value == ""
			edrm_mih_hash = "null"
		else
			edrm_mih_hash = Digest::MD5.hexdigest field_value
			edrm_mih_hash = edrm_mih_hash.upcase
		end 
	end
	edrm_mih_hash
rescue
	""
end]]></script>
      </scripted-expression>
    </metadata>
  </metadata-list>
</metadata-profile>
