package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes.dex */
public final class LocalizedProperty extends GenericJson {

    @Key
    private LanguageTag defaultLanguage;

    @Key("default")
    private String default__;

    @Key
    private List<LocalizedString> localized;

    public String getDefault() {
        return this.default__;
    }

    public LocalizedProperty setDefault(String str) {
        this.default__ = str;
        return this;
    }

    public LanguageTag getDefaultLanguage() {
        return this.defaultLanguage;
    }

    public LocalizedProperty setDefaultLanguage(LanguageTag languageTag) {
        this.defaultLanguage = languageTag;
        return this;
    }

    public List<LocalizedString> getLocalized() {
        return this.localized;
    }

    public LocalizedProperty setLocalized(List<LocalizedString> list) {
        this.localized = list;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public LocalizedProperty set(String str, Object obj) {
        return (LocalizedProperty) super.set(str, obj);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public LocalizedProperty clone() {
        return (LocalizedProperty) super.clone();
    }
}
