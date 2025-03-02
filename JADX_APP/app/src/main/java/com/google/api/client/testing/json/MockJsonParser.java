package com.google.api.client.testing.json;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.api.client.util.Beta;
import java.math.BigDecimal;
import java.math.BigInteger;

@Beta
/* loaded from: classes.dex */
public class MockJsonParser extends JsonParser {
    private final JsonFactory factory;
    private boolean isClosed;

    MockJsonParser(JsonFactory jsonFactory) {
        this.factory = jsonFactory;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonParser
    public void close() {
        this.isClosed = true;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken nextToken() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken getCurrentToken() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public String getCurrentName() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonParser skipChildren() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public String getText() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public byte getByteValue() {
        return (byte) 0;
    }

    @Override // com.google.api.client.json.JsonParser
    public short getShortValue() {
        return (short) 0;
    }

    @Override // com.google.api.client.json.JsonParser
    public int getIntValue() {
        return 0;
    }

    @Override // com.google.api.client.json.JsonParser
    public float getFloatValue() {
        return 0.0f;
    }

    @Override // com.google.api.client.json.JsonParser
    public long getLongValue() {
        return 0L;
    }

    @Override // com.google.api.client.json.JsonParser
    public double getDoubleValue() {
        return 0.0d;
    }

    @Override // com.google.api.client.json.JsonParser
    public BigInteger getBigIntegerValue() {
        return null;
    }

    @Override // com.google.api.client.json.JsonParser
    public BigDecimal getDecimalValue() {
        return null;
    }

    public boolean isClosed() {
        return this.isClosed;
    }
}
