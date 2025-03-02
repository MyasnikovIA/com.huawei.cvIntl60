package com.google.api.client.testing.json;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import com.google.api.client.util.Beta;
import java.math.BigDecimal;
import java.math.BigInteger;

@Beta
/* loaded from: classes.dex */
public class MockJsonGenerator extends JsonGenerator {
    private final JsonFactory factory;

    MockJsonGenerator(JsonFactory jsonFactory) {
        this.factory = jsonFactory;
    }

    @Override // com.google.api.client.json.JsonGenerator
    public JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void flush() {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void close() {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeStartArray() {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeEndArray() {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeStartObject() {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeEndObject() {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeFieldName(String str) {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNull() {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeString(String str) {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeBoolean(boolean z) {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(int i) {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(long j) {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(BigInteger bigInteger) {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(float f) {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(double d) {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) {
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(String str) {
    }
}
