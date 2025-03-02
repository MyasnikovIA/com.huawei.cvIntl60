package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.Key;

/* loaded from: classes.dex */
public final class LiveChatMessageSnippet extends GenericJson {

    @Key
    private String authorChannelId;

    @Key
    private String displayMessage;

    @Key
    private LiveChatFanFundingEventDetails fanFundingEventDetails;

    @Key
    private Boolean hasDisplayContent;

    @Key
    private String liveChatId;

    @Key
    private LiveChatMessageDeletedDetails messageDeletedDetails;

    @Key
    private LiveChatMessageRetractedDetails messageRetractedDetails;

    @Key
    private LiveChatPollClosedDetails pollClosedDetails;

    @Key
    private LiveChatPollEditedDetails pollEditedDetails;

    @Key
    private LiveChatPollOpenedDetails pollOpenedDetails;

    @Key
    private LiveChatPollVotedDetails pollVotedDetails;

    @Key
    private DateTime publishedAt;

    @Key
    private LiveChatTextMessageDetails textMessageDetails;

    @Key
    private String type;

    @Key
    private LiveChatUserBannedMessageDetails userBannedDetails;

    public String getAuthorChannelId() {
        return this.authorChannelId;
    }

    public LiveChatMessageSnippet setAuthorChannelId(String str) {
        this.authorChannelId = str;
        return this;
    }

    public String getDisplayMessage() {
        return this.displayMessage;
    }

    public LiveChatMessageSnippet setDisplayMessage(String str) {
        this.displayMessage = str;
        return this;
    }

    public LiveChatFanFundingEventDetails getFanFundingEventDetails() {
        return this.fanFundingEventDetails;
    }

    public LiveChatMessageSnippet setFanFundingEventDetails(LiveChatFanFundingEventDetails liveChatFanFundingEventDetails) {
        this.fanFundingEventDetails = liveChatFanFundingEventDetails;
        return this;
    }

    public Boolean getHasDisplayContent() {
        return this.hasDisplayContent;
    }

    public LiveChatMessageSnippet setHasDisplayContent(Boolean bool) {
        this.hasDisplayContent = bool;
        return this;
    }

    public String getLiveChatId() {
        return this.liveChatId;
    }

    public LiveChatMessageSnippet setLiveChatId(String str) {
        this.liveChatId = str;
        return this;
    }

    public LiveChatMessageDeletedDetails getMessageDeletedDetails() {
        return this.messageDeletedDetails;
    }

    public LiveChatMessageSnippet setMessageDeletedDetails(LiveChatMessageDeletedDetails liveChatMessageDeletedDetails) {
        this.messageDeletedDetails = liveChatMessageDeletedDetails;
        return this;
    }

    public LiveChatMessageRetractedDetails getMessageRetractedDetails() {
        return this.messageRetractedDetails;
    }

    public LiveChatMessageSnippet setMessageRetractedDetails(LiveChatMessageRetractedDetails liveChatMessageRetractedDetails) {
        this.messageRetractedDetails = liveChatMessageRetractedDetails;
        return this;
    }

    public LiveChatPollClosedDetails getPollClosedDetails() {
        return this.pollClosedDetails;
    }

    public LiveChatMessageSnippet setPollClosedDetails(LiveChatPollClosedDetails liveChatPollClosedDetails) {
        this.pollClosedDetails = liveChatPollClosedDetails;
        return this;
    }

    public LiveChatPollEditedDetails getPollEditedDetails() {
        return this.pollEditedDetails;
    }

    public LiveChatMessageSnippet setPollEditedDetails(LiveChatPollEditedDetails liveChatPollEditedDetails) {
        this.pollEditedDetails = liveChatPollEditedDetails;
        return this;
    }

    public LiveChatPollOpenedDetails getPollOpenedDetails() {
        return this.pollOpenedDetails;
    }

    public LiveChatMessageSnippet setPollOpenedDetails(LiveChatPollOpenedDetails liveChatPollOpenedDetails) {
        this.pollOpenedDetails = liveChatPollOpenedDetails;
        return this;
    }

    public LiveChatPollVotedDetails getPollVotedDetails() {
        return this.pollVotedDetails;
    }

    public LiveChatMessageSnippet setPollVotedDetails(LiveChatPollVotedDetails liveChatPollVotedDetails) {
        this.pollVotedDetails = liveChatPollVotedDetails;
        return this;
    }

    public DateTime getPublishedAt() {
        return this.publishedAt;
    }

    public LiveChatMessageSnippet setPublishedAt(DateTime dateTime) {
        this.publishedAt = dateTime;
        return this;
    }

    public LiveChatTextMessageDetails getTextMessageDetails() {
        return this.textMessageDetails;
    }

    public LiveChatMessageSnippet setTextMessageDetails(LiveChatTextMessageDetails liveChatTextMessageDetails) {
        this.textMessageDetails = liveChatTextMessageDetails;
        return this;
    }

    public String getType() {
        return this.type;
    }

    public LiveChatMessageSnippet setType(String str) {
        this.type = str;
        return this;
    }

    public LiveChatUserBannedMessageDetails getUserBannedDetails() {
        return this.userBannedDetails;
    }

    public LiveChatMessageSnippet setUserBannedDetails(LiveChatUserBannedMessageDetails liveChatUserBannedMessageDetails) {
        this.userBannedDetails = liveChatUserBannedMessageDetails;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LiveChatMessageSnippet set(String str, Object obj) {
        return (LiveChatMessageSnippet) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LiveChatMessageSnippet clone() {
        return (LiveChatMessageSnippet) super.clone();
    }
}
