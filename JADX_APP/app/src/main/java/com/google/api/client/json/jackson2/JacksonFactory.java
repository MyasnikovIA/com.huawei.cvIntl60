package com.google.api.client.json.jackson2;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonGenerator;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.api.client.util.Preconditions;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class JacksonFactory extends JsonFactory {
    private final com.fasterxml.jackson.core.JsonFactory factory = new com.fasterxml.jackson.core.JsonFactory();

    public JacksonFactory() {
        this.factory.configure(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT, false);
    }

    public static JacksonFactory getDefaultInstance() {
        return InstanceHolder.INSTANCE;
    }

    static class InstanceHolder {
        static final JacksonFactory INSTANCE = new JacksonFactory();

        InstanceHolder() {
        }
    }

    @Override // com.google.api.client.json.JsonFactory
    public com.google.api.client.json.JsonGenerator createJsonGenerator(OutputStream outputStream, Charset charset) {
        return new JacksonGenerator(this, this.factory.createJsonGenerator(outputStream, JsonEncoding.UTF8));
    }

    @Override // com.google.api.client.json.JsonFactory
    public com.google.api.client.json.JsonGenerator createJsonGenerator(Writer writer) {
        return new JacksonGenerator(this, this.factory.createJsonGenerator(writer));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(Reader reader) {
        Preconditions.checkNotNull(reader);
        return new JacksonParser(this, this.factory.createJsonParser(reader));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(InputStream inputStream) {
        Preconditions.checkNotNull(inputStream);
        return new JacksonParser(this, this.factory.createJsonParser(inputStream));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(InputStream inputStream, Charset charset) {
        Preconditions.checkNotNull(inputStream);
        return new JacksonParser(this, this.factory.createJsonParser(inputStream));
    }

    @Override // com.google.api.client.json.JsonFactory
    public JsonParser createJsonParser(String str) {
        Preconditions.checkNotNull(str);
        return new JacksonParser(this, this.factory.createJsonParser(str));
    }

    static JsonToken convert(com.fasterxml.jackson.core.JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (C14451.$SwitchMap$com$fasterxml$jackson$core$JsonToken[jsonToken.ordinal()]) {
            case 1:
                return JsonToken.END_ARRAY;
            case 2:
                return JsonToken.START_ARRAY;
            case 3:
                return JsonToken.END_OBJECT;
            case 4:
                return JsonToken.START_OBJECT;
            case 5:
                return JsonToken.VALUE_FALSE;
            case 6:
                return JsonToken.VALUE_TRUE;
            case 7:
                return JsonToken.VALUE_NULL;
            case 8:
                return JsonToken.VALUE_STRING;
            case 9:
                return JsonToken.VALUE_NUMBER_FLOAT;
            case 10:
                return JsonToken.VALUE_NUMBER_INT;
            case 11:
                return JsonToken.FIELD_NAME;
            default:
                return JsonToken.NOT_AVAILABLE;
        }
    }

    /* renamed from: com.google.api.client.json.jackson2.JacksonFactory$1 */
    static /* synthetic */ class C14451 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[com.fasterxml.jackson.core.JsonToken.values().length];

        static {
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.END_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.START_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.END_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.START_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.VALUE_FALSE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.VALUE_TRUE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.VALUE_NULL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.VALUE_STRING.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.VALUE_NUMBER_INT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[com.fasterxml.jackson.core.JsonToken.FIELD_NAME.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
        }
    }
}
