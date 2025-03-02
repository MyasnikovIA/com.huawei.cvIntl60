package com.google.api.client.extensions.android.json;

import android.annotation.TargetApi;
import android.util.JsonWriter;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonGenerator;
import com.google.api.client.util.Beta;
import java.math.BigDecimal;
import java.math.BigInteger;

@Beta
@TargetApi(11)
/* loaded from: classes.dex */
class AndroidJsonGenerator extends JsonGenerator {
    private final AndroidJsonFactory factory;
    private final JsonWriter writer;

    AndroidJsonGenerator(AndroidJsonFactory androidJsonFactory, JsonWriter jsonWriter) {
        this.factory = androidJsonFactory;
        this.writer = jsonWriter;
        jsonWriter.setLenient(true);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void flush() {
        this.writer.flush();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void close() {
        this.writer.close();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeBoolean(boolean z) {
        this.writer.value(z);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeEndArray() {
        this.writer.endArray();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeEndObject() {
        this.writer.endObject();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeFieldName(String str) {
        this.writer.name(str);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNull() {
        this.writer.nullValue();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(int i) {
        this.writer.value(i);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(long j) {
        this.writer.value(j);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(BigInteger bigInteger) {
        this.writer.value(bigInteger);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(double d) {
        this.writer.value(d);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(float f) {
        this.writer.value(f);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(BigDecimal bigDecimal) {
        this.writer.value(bigDecimal);
    }

    static final class StringNumber extends Number {
        private static final long serialVersionUID = 1;
        private final String encodedValue;

        StringNumber(String str) {
            this.encodedValue = str;
        }

        @Override // java.lang.Number
        public double doubleValue() {
            return 0.0d;
        }

        @Override // java.lang.Number
        public float floatValue() {
            return 0.0f;
        }

        @Override // java.lang.Number
        public int intValue() {
            return 0;
        }

        @Override // java.lang.Number
        public long longValue() {
            return 0L;
        }

        public String toString() {
            return this.encodedValue;
        }
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeNumber(String str) {
        this.writer.value(new StringNumber(str));
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeStartArray() {
        this.writer.beginArray();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeStartObject() {
        this.writer.beginObject();
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void writeString(String str) {
        this.writer.value(str);
    }

    @Override // com.google.api.client.json.JsonGenerator
    public void enablePrettyPrint() {
        this.writer.setIndent("  ");
    }
}
