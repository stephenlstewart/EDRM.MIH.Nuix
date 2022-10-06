##### Insert the EDRM MIH Hash value onto each item as custom metadata.

begin
	require 'digest'
	
	metadata_profile_name = "RFC5322 Message ID"
	metadata_profile = $utilities.getMetadataProfileStore.getMetadataProfile(metadata_profile_name)

	$currentSelectedItems.each do |item|
		edrm_mih_hash = ""
		edrm_spec_first_value = ""
		metadata_profile.getMetadata.each do |field|
			field_value = field.evaluate(item)
			if field_value == ""
				edrm_mih_hash = "null"
			else
				edrm_spec_first_value = field_value.match /^(.*?\>)/
				edrm_mih_hash = Digest::MD5.hexdigest edrm_spec_first_value.to_s
				edrm_mih_hash = edrm_mih_hash.upcase
			end 
		end
		puts edrm_mih_hash
		item_custom_metadata = item.getCustomMetadata
		item_custom_metadata["EDRM MIH Hash"] = edrm_mih_hash
	end
rescue
	""
end
