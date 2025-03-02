package com.google.api.client.json;

import com.google.api.client.util.ClassInfo;
import com.google.api.client.util.Data;
import com.google.api.client.util.DateTime;
import com.google.api.client.util.FieldInfo;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Types;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class JsonGenerator {
    public abstract void close();

    public abstract void flush();

    public abstract JsonFactory getFactory();

    public abstract void writeBoolean(boolean z);

    public abstract void writeEndArray();

    public abstract void writeEndObject();

    public abstract void writeFieldName(String str);

    public abstract void writeNull();

    public abstract void writeNumber(double d);

    public abstract void writeNumber(float f);

    public abstract void writeNumber(int i);

    public abstract void writeNumber(long j);

    public abstract void writeNumber(String str);

    public abstract void writeNumber(BigDecimal bigDecimal);

    public abstract void writeNumber(BigInteger bigInteger);

    public abstract void writeStartArray();

    public abstract void writeStartObject();

    public abstract void writeString(String str);

    public final void serialize(Object obj) {
        serialize(false, obj);
    }

    private void serialize(boolean z, Object obj) {
        boolean z2;
        if (obj != null) {
            Class<?> cls = obj.getClass();
            if (Data.isNull(obj)) {
                writeNull();
                return;
            }
            if (obj instanceof String) {
                writeString((String) obj);
                return;
            }
            if (obj instanceof Number) {
                if (z) {
                    writeString(obj.toString());
                    return;
                }
                if (obj instanceof BigDecimal) {
                    writeNumber((BigDecimal) obj);
                    return;
                }
                if (obj instanceof BigInteger) {
                    writeNumber((BigInteger) obj);
                    return;
                }
                if (obj instanceof Long) {
                    writeNumber(((Long) obj).longValue());
                    return;
                }
                if (obj instanceof Float) {
                    float floatValue = ((Number) obj).floatValue();
                    Preconditions.checkArgument((Float.isInfinite(floatValue) || Float.isNaN(floatValue)) ? false : true);
                    writeNumber(floatValue);
                    return;
                } else {
                    if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
                        writeNumber(((Number) obj).intValue());
                        return;
                    }
                    double doubleValue = ((Number) obj).doubleValue();
                    Preconditions.checkArgument((Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) ? false : true);
                    writeNumber(doubleValue);
                    return;
                }
            }
            if (obj instanceof Boolean) {
                writeBoolean(((Boolean) obj).booleanValue());
                return;
            }
            if (obj instanceof DateTime) {
                writeString(((DateTime) obj).toStringRfc3339());
                return;
            }
            if ((obj instanceof Iterable) || cls.isArray()) {
                writeStartArray();
                Iterator it = Types.iterableOf(obj).iterator();
                while (it.hasNext()) {
                    serialize(z, it.next());
                }
                writeEndArray();
                return;
            }
            if (cls.isEnum()) {
                String name = FieldInfo.m6682of((Enum<?>) obj).getName();
                if (name == null) {
                    writeNull();
                    return;
                } else {
                    writeString(name);
                    return;
                }
            }
            writeStartObject();
            boolean z3 = (obj instanceof Map) && !(obj instanceof GenericData);
            ClassInfo m6680of = z3 ? null : ClassInfo.m6680of(cls);
            for (Map.Entry<String, Object> entry : Data.mapOf(obj).entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    String key = entry.getKey();
                    if (z3) {
                        z2 = z;
                    } else {
                        Field field = m6680of.getField(key);
                        z2 = (field == null || field.getAnnotation(JsonString.class) == null) ? false : true;
                    }
                    writeFieldName(key);
                    serialize(z2, value);
                }
            }
            writeEndObject();
        }
    }

    public void enablePrettyPrint() {
    }
}
