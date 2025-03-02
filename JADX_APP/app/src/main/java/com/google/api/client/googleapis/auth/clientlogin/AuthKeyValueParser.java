package com.google.api.client.googleapis.auth.clientlogin;

import com.google.api.client.http.HttpResponse;
import com.google.api.client.util.Beta;
import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.ObjectParser;
import com.google.api.client.util.Types;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.Map;

@Beta
/* loaded from: classes.dex */
final class AuthKeyValueParser implements ObjectParser {
    public static final AuthKeyValueParser INSTANCE = new AuthKeyValueParser();

    public String getContentType() {
        return "text/plain";
    }

    public <T> T parse(HttpResponse httpResponse, Class<T> cls) {
        httpResponse.setContentLoggingLimit(0);
        InputStream content = httpResponse.getContent();
        try {
            return (T) parse(content, cls);
        } finally {
            content.close();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T parse(InputStream inputStream, Class<T> cls) {
        ClassInfo m6680of = ClassInfo.m6680of(cls);
        T t = (T) Types.newInstance(cls);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                int indexOf = readLine.indexOf(61);
                String substring = readLine.substring(0, indexOf);
                String substring2 = readLine.substring(indexOf + 1);
                Field field = m6680of.getField(substring);
                if (field != null) {
                    Class<?> type = field.getType();
                    FieldInfo.setFieldValue(field, t, (type == Boolean.TYPE || type == Boolean.class) ? Boolean.valueOf(substring2) : substring2);
                } else if (GenericData.class.isAssignableFrom(cls)) {
                    ((GenericData) t).set(substring, substring2);
                } else if (Map.class.isAssignableFrom(cls)) {
                    ((Map) t).put(substring, substring2);
                }
            } else {
                return t;
            }
        }
    }

    private AuthKeyValueParser() {
    }

    @Override // com.google.api.client.util.ObjectParser
    public <T> T parseAndClose(InputStream inputStream, Charset charset, Class<T> cls) {
        return (T) parseAndClose((Reader) new InputStreamReader(inputStream, charset), (Class) cls);
    }

    @Override // com.google.api.client.util.ObjectParser
    public Object parseAndClose(InputStream inputStream, Charset charset, Type type) {
        throw new UnsupportedOperationException("Type-based parsing is not yet supported -- use Class<T> instead");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.api.client.util.ObjectParser
    public <T> T parseAndClose(Reader reader, Class<T> cls) {
        try {
            ClassInfo m6680of = ClassInfo.m6680of(cls);
            T t = (T) Types.newInstance(cls);
            BufferedReader bufferedReader = new BufferedReader(reader);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return t;
                }
                int indexOf = readLine.indexOf(61);
                String substring = readLine.substring(0, indexOf);
                String substring2 = readLine.substring(indexOf + 1);
                Field field = m6680of.getField(substring);
                if (field != null) {
                    Class<?> type = field.getType();
                    FieldInfo.setFieldValue(field, t, (type == Boolean.TYPE || type == Boolean.class) ? Boolean.valueOf(substring2) : substring2);
                } else if (GenericData.class.isAssignableFrom(cls)) {
                    ((GenericData) t).set(substring, substring2);
                } else if (Map.class.isAssignableFrom(cls)) {
                    ((Map) t).put(substring, substring2);
                }
            }
        } finally {
            reader.close();
        }
    }

    @Override // com.google.api.client.util.ObjectParser
    public Object parseAndClose(Reader reader, Type type) {
        throw new UnsupportedOperationException("Type-based parsing is not yet supported -- use Class<T> instead");
    }
}
