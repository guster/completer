local f = CreateFrame("Frame")
f:RegisterEvent("QUEST_PROGRESS")
f:RegisterEvent("QUEST_COMPLETE")
f:SetScript("OnEvent", function (frame, event)
  if event == "QUEST_PROGRESS" and IsQuestCompletable() then
    CompleteQuest()
  elseif event == "QUEST_COMPLETE" and GetNumQuestChoices() == 0 then
    GetQuestReward(QuestFrameRewardPanel.itemChoice)
  end
end)
