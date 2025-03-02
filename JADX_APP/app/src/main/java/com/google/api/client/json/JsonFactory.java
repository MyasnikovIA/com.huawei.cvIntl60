package com.google.api.client.json;

import com.google.android.exoplayer.C1167C;
import com.google.api.client.util.Charsets;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public abstract class JsonFactory {
    public abstract JsonGenerator createJsonGenerator(OutputStream outputStream, Charset charset);

    public abstract JsonGenerator createJsonGenerator(Writer writer);

    public abstract JsonParser createJsonParser(InputStream inputStream);

    public abstract JsonParser createJsonParser(InputStream inputStream, Charset charset);

    public abstract JsonParser createJsonParser(Reader reader);

    public abstract JsonParser createJsonParser(String str);

    public final JsonObjectParser createJsonObjectParser() {
        return new JsonObjectParser(this);
    }

    public final String toString(Object obj) {
        return toString(obj, false);
    }

    public final String toPrettyString(Object obj) {
        return toString(obj, true);
    }

    public final byte[] toByteArray(Object obj) {
        return toByteStream(obj, false).toByteArray();
    }

    private String toString(Object obj, boolean z) {
        return toByteStream(obj, z).toString(C1167C.UTF8_NAME);
    }

    private ByteArrayOutputStream toByteStream(Object obj, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        JsonGenerator createJsonGenerator = createJsonGenerator(byteArrayOutputStream, Charsets.UTF_8);
        if (z) {
            createJsonGenerator.enablePrettyPrint();
        }
        createJsonGenerator.serialize(obj);
        createJsonGenerator.flush();
        return byteArrayOutputStream;
    }

    public final <T> T fromString(String str, Class<T> cls) {
        return (T) createJsonParser(str).parse((Class) cls);
    }

    public final <T> T fromInputStream(InputStream inputStream, Class<T> cls) {
        return (T) createJsonParser(inputStream).parseAndClose((Class) cls);
    }

    public final <T> T fromInputStream(InputStream inputStream, Charset charset, Class<T> cls) {
        return (T) createJsonParser(inputStream, charset).parseAndClose((Class) cls);
    }

    public final <T> T fromReader(Reader reader, Class<T> cls) {
        return (T) createJsonParser(reader).parseAndClose((Class) cls);
    }
}
