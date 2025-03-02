package com.google.api.client.util;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class FieldInfo {
    private static final Map<Field, FieldInfo> CACHE = new WeakHashMap();
    private final Field field;
    private final boolean isPrimitive;
    private final String name;

    /* renamed from: of */
    public static FieldInfo m6682of(Enum<?> r5) {
        try {
            FieldInfo m6683of = m6683of(r5.getClass().getField(r5.name()));
            Preconditions.checkArgument(m6683of != null, "enum constant missing @Value or @NullValue annotation: %s", r5);
            return m6683of;
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0039 A[Catch: all -> 0x004b, TryCatch #0 {, blocks: (B:8:0x0007, B:11:0x0017, B:14:0x0023, B:16:0x002d, B:17:0x0031, B:19:0x0039, B:20:0x003e, B:21:0x0049, B:24:0x004e, B:27:0x005a, B:29:0x005c, B:31:0x0066, B:33:0x0068), top: B:7:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0071  */
    /* renamed from: of */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.api.client.util.FieldInfo m6683of(java.lang.reflect.Field r5) {
        /*
            r1 = 0
            if (r5 != 0) goto L4
        L3:
            return r1
        L4:
            java.util.Map<java.lang.reflect.Field, com.google.api.client.util.FieldInfo> r2 = com.google.api.client.util.FieldInfo.CACHE
            monitor-enter(r2)
            java.util.Map<java.lang.reflect.Field, com.google.api.client.util.FieldInfo> r0 = com.google.api.client.util.FieldInfo.CACHE     // Catch: java.lang.Throwable -> L4b
            java.lang.Object r0 = r0.get(r5)     // Catch: java.lang.Throwable -> L4b
            com.google.api.client.util.FieldInfo r0 = (com.google.api.client.util.FieldInfo) r0     // Catch: java.lang.Throwable -> L4b
            boolean r3 = r5.isEnumConstant()     // Catch: java.lang.Throwable -> L4b
            if (r0 != 0) goto L73
            if (r3 != 0) goto L21
            int r4 = r5.getModifiers()     // Catch: java.lang.Throwable -> L4b
            boolean r4 = java.lang.reflect.Modifier.isStatic(r4)     // Catch: java.lang.Throwable -> L4b
            if (r4 != 0) goto L73
        L21:
            if (r3 == 0) goto L5c
            java.lang.Class<com.google.api.client.util.Value> r0 = com.google.api.client.util.Value.class
            java.lang.annotation.Annotation r0 = r5.getAnnotation(r0)     // Catch: java.lang.Throwable -> L4b
            com.google.api.client.util.Value r0 = (com.google.api.client.util.Value) r0     // Catch: java.lang.Throwable -> L4b
            if (r0 == 0) goto L4e
            java.lang.String r0 = r0.value()     // Catch: java.lang.Throwable -> L4b
        L31:
            java.lang.String r1 = "##default"
            boolean r1 = r1.equals(r0)     // Catch: java.lang.Throwable -> L4b
            if (r1 == 0) goto L71
            java.lang.String r0 = r5.getName()     // Catch: java.lang.Throwable -> L4b
            r1 = r0
        L3e:
            com.google.api.client.util.FieldInfo r0 = new com.google.api.client.util.FieldInfo     // Catch: java.lang.Throwable -> L4b
            r0.<init>(r5, r1)     // Catch: java.lang.Throwable -> L4b
            java.util.Map<java.lang.reflect.Field, com.google.api.client.util.FieldInfo> r1 = com.google.api.client.util.FieldInfo.CACHE     // Catch: java.lang.Throwable -> L4b
            r1.put(r5, r0)     // Catch: java.lang.Throwable -> L4b
            r1 = r0
        L49:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4b
            goto L3
        L4b:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4b
            throw r0
        L4e:
            java.lang.Class<com.google.api.client.util.NullValue> r0 = com.google.api.client.util.NullValue.class
            java.lang.annotation.Annotation r0 = r5.getAnnotation(r0)     // Catch: java.lang.Throwable -> L4b
            com.google.api.client.util.NullValue r0 = (com.google.api.client.util.NullValue) r0     // Catch: java.lang.Throwable -> L4b
            if (r0 == 0) goto L5a
            r0 = r1
            goto L31
        L5a:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4b
            goto L3
        L5c:
            java.lang.Class<com.google.api.client.util.Key> r0 = com.google.api.client.util.Key.class
            java.lang.annotation.Annotation r0 = r5.getAnnotation(r0)     // Catch: java.lang.Throwable -> L4b
            com.google.api.client.util.Key r0 = (com.google.api.client.util.Key) r0     // Catch: java.lang.Throwable -> L4b
            if (r0 != 0) goto L68
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L4b
            goto L3
        L68:
            java.lang.String r0 = r0.value()     // Catch: java.lang.Throwable -> L4b
            r1 = 1
            r5.setAccessible(r1)     // Catch: java.lang.Throwable -> L4b
            goto L31
        L71:
            r1 = r0
            goto L3e
        L73:
            r1 = r0
            goto L49
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.util.FieldInfo.m6683of(java.lang.reflect.Field):com.google.api.client.util.FieldInfo");
    }

    FieldInfo(Field field, String str) {
        this.field = field;
        this.name = str == null ? null : str.intern();
        this.isPrimitive = Data.isPrimitive(getType());
    }

    public Field getField() {
        return this.field;
    }

    public String getName() {
        return this.name;
    }

    public Class<?> getType() {
        return this.field.getType();
    }

    public Type getGenericType() {
        return this.field.getGenericType();
    }

    public boolean isFinal() {
        return Modifier.isFinal(this.field.getModifiers());
    }

    public boolean isPrimitive() {
        return this.isPrimitive;
    }

    public Object getValue(Object obj) {
        return getFieldValue(this.field, obj);
    }

    public void setValue(Object obj, Object obj2) {
        setFieldValue(this.field, obj, obj2);
    }

    public ClassInfo getClassInfo() {
        return ClassInfo.m6680of(this.field.getDeclaringClass());
    }

    public <T extends Enum<T>> T enumValue() {
        return (T) Enum.valueOf(this.field.getDeclaringClass(), this.field.getName());
    }

    public static Object getFieldValue(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static void setFieldValue(Field field, Object obj, Object obj2) {
        if (Modifier.isFinal(field.getModifiers())) {
            Object fieldValue = getFieldValue(field, obj);
            if (obj2 == null) {
                if (fieldValue == null) {
                    return;
                }
            } else if (obj2.equals(fieldValue)) {
                return;
            }
            String valueOf = String.valueOf(String.valueOf(fieldValue));
            String valueOf2 = String.valueOf(String.valueOf(obj2));
            String valueOf3 = String.valueOf(String.valueOf(field.getName()));
            String valueOf4 = String.valueOf(String.valueOf(obj.getClass().getName()));
            throw new IllegalArgumentException(new StringBuilder(valueOf.length() + 48 + valueOf2.length() + valueOf3.length() + valueOf4.length()).append("expected final value <").append(valueOf).append("> but was <").append(valueOf2).append("> on ").append(valueOf3).append(" field in ").append(valueOf4).toString());
        }
        try {
            field.set(obj, obj2);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(e);
        } catch (SecurityException e2) {
            throw new IllegalArgumentException(e2);
        }
    }
}
