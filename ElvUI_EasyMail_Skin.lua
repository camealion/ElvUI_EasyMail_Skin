-- EasyMail From Cosmos - Added by Camealion - Start
local SkinEasyMail = CreateFrame("Frame")
	SkinEasyMail:RegisterEvent("MAIL_SHOW")
	SkinEasyMail:SetScript("OnEvent", function(self, event, addon)
	if IsAddOnLoaded("Skinner") or IsAddOnLoaded("Aurora") then return end
	if not IsAddOnLoaded("EasyMail") then return end
	
	-- Skin Buttons
		cSkinButton(EasyMail_CheckAllButton)
		cSkinButton(EasyMail_GetAllButton)
		cSkinButton(EasyMail_AttButton)
		cSkinButton(EasyMail_ForwardButton)
	
	-- Skin Checkboxes

		for i = 1, 7 do
			cSkinCheckBox(_G["EasyMail_CheckButton"..i])
		end

	-- Move Positions
		EasyMail_ForwardButton:Point("RIGHT", OpenMailReplyButton, "LEFT", -2, 0)
		InboxTooMuchMail:Point("TOPLEFT", MailFrame, "TOPLEFT", 4, -10)
		OpenMailCancelButton:Point("BOTTOMRIGHT", OpenMailFrame, "BOTTOMRIGHT", -12, 80)
		InboxCloseButton:Point("TOPRIGHT", MailFrame, "TOPRIGHT", 4, 5)
		OpenMailCloseButton:Point("TOPRIGHT", OpenMailFrame, "TOPRIGHT", 4, 5)
		
	-- Move Expire Time	
		for i = 1, 7 do	
			local t = _G["MailItem"..i.."ExpireTime"]
				if t then
					t:ClearAllPoints()
					t:Point("TOPRIGHT", -10, -4)
					t:Point("TOPRIGHT", -10, -4)
				end				
		end
-- EasyMail From Cosmos - Added by Camealion - End
end)