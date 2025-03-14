package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Data;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes.dex */
public final class CommentThreadReplies extends GenericJson {

    @Key
    private List<Comment> comments;

    static {
        Data.nullOf(Comment.class);
    }

    public List<Comment> getComments() {
        return this.comments;
    }

    public CommentThreadReplies setComments(List<Comment> list) {
        this.comments = list;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public CommentThreadReplies set(String str, Object obj) {
        return (CommentThreadReplies) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public CommentThreadReplies clone() {
        return (CommentThreadReplies) super.clone();
    }
}
