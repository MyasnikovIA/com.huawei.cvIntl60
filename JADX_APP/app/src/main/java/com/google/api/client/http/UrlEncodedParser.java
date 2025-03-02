package com.google.api.client.http;

import com.google.api.client.util.Charsets;
import com.google.api.client.util.Data;
import com.google.api.client.util.ObjectParser;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Throwables;
import com.google.api.client.util.Types;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.List;

/* loaded from: classes.dex */
public class UrlEncodedParser implements ObjectParser {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    public static final String MEDIA_TYPE = new HttpMediaType(CONTENT_TYPE).setCharsetParameter(Charsets.UTF_8).build();

    public static void parse(String str, Object obj) {
        if (str != null) {
            try {
                parse(new StringReader(str), obj);
            } catch (IOException e) {
                throw Throwables.propagate(e);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
    
        r6 = com.google.api.client.util.escape.CharEscapers.decodeUri(r6.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
    
        if (r6.length() == 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005a, code lost:
    
        r12 = com.google.api.client.util.escape.CharEscapers.decodeUri(r5.toString());
        r5 = r8.getFieldInfo(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0066, code lost:
    
        if (r5 == null) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0068, code lost:
    
        r6 = com.google.api.client.util.Data.resolveWildcardTypeOrTypeVariable(r9, r5.getGenericType());
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
    
        if (com.google.api.client.util.Types.isArray(r6) == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0076, code lost:
    
        r0 = com.google.api.client.util.Types.getRawArrayComponentType(r9, com.google.api.client.util.Types.getArrayComponentType(r6));
        r10.put(r5.getField(), r0, parseValue(r0, r9, r12));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a4, code lost:
    
        if (com.google.api.client.util.Types.isAssignableToOrFrom(com.google.api.client.util.Types.getRawArrayComponentType(r9, r6), java.lang.Iterable.class) == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a6, code lost:
    
        r0 = (java.util.Collection) r5.getValue(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ac, code lost:
    
        if (r0 != null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ae, code lost:
    
        r0 = com.google.api.client.util.Data.newCollectionInstance(r6);
        r5.setValue(r15, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b7, code lost:
    
        if (r6 != java.lang.Object.class) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b9, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ba, code lost:
    
        r0.add(parseValue(r5, r9, r12));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c2, code lost:
    
        r5 = com.google.api.client.util.Types.getIterableParameter(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c7, code lost:
    
        r5.setValue(r15, parseValue(r6, r9, r12));
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cf, code lost:
    
        if (r3 == null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d1, code lost:
    
        r0 = (java.util.ArrayList) r3.get(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d7, code lost:
    
        if (r0 != null) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d9, code lost:
    
        r0 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00de, code lost:
    
        if (r1 == null) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e0, code lost:
    
        r1.set(r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e7, code lost:
    
        r3.put(r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e3, code lost:
    
        r0.add(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0089, code lost:
    
        r6 = new java.io.StringWriter();
        r5 = new java.io.StringWriter();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0094, code lost:
    
        if (r11 != (-1)) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f3, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0096, code lost:
    
        r10.setValues();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0099, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void parse(java.io.Reader r14, java.lang.Object r15) {
        /*
            r7 = 0
            r2 = 0
            r4 = 1
            java.lang.Class r3 = r15.getClass()
            com.google.api.client.util.ClassInfo r8 = com.google.api.client.util.ClassInfo.m6680of(r3)
            java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r4]
            r0[r7] = r3
            java.util.List r9 = java.util.Arrays.asList(r0)
            java.lang.Class<com.google.api.client.util.GenericData> r0 = com.google.api.client.util.GenericData.class
            boolean r0 = r0.isAssignableFrom(r3)
            if (r0 == 0) goto L48
            r0 = r15
            com.google.api.client.util.GenericData r0 = (com.google.api.client.util.GenericData) r0
            r1 = r0
        L1f:
            java.lang.Class<java.util.Map> r0 = java.util.Map.class
            boolean r0 = r0.isAssignableFrom(r3)
            if (r0 == 0) goto L4a
            r0 = r15
            java.util.Map r0 = (java.util.Map) r0
            r3 = r0
        L2b:
            com.google.api.client.util.ArrayValueMap r10 = new com.google.api.client.util.ArrayValueMap
            r10.<init>(r15)
            java.io.StringWriter r6 = new java.io.StringWriter
            r6.<init>()
            java.io.StringWriter r5 = new java.io.StringWriter
            r5.<init>()
            r0 = r4
        L3b:
            int r11 = r14.read()
            switch(r11) {
                case -1: goto L4c;
                case 38: goto L4c;
                case 61: goto Leb;
                default: goto L42;
            }
        L42:
            if (r0 == 0) goto Lee
            r6.write(r11)
            goto L3b
        L48:
            r1 = r2
            goto L1f
        L4a:
            r3 = r2
            goto L2b
        L4c:
            java.lang.String r0 = r6.toString()
            java.lang.String r6 = com.google.api.client.util.escape.CharEscapers.decodeUri(r0)
            int r0 = r6.length()
            if (r0 == 0) goto L89
            java.lang.String r0 = r5.toString()
            java.lang.String r12 = com.google.api.client.util.escape.CharEscapers.decodeUri(r0)
            com.google.api.client.util.FieldInfo r5 = r8.getFieldInfo(r6)
            if (r5 == 0) goto Lcf
            java.lang.reflect.Type r0 = r5.getGenericType()
            java.lang.reflect.Type r6 = com.google.api.client.util.Data.resolveWildcardTypeOrTypeVariable(r9, r0)
            boolean r0 = com.google.api.client.util.Types.isArray(r6)
            if (r0 == 0) goto L9a
            java.lang.reflect.Type r0 = com.google.api.client.util.Types.getArrayComponentType(r6)
            java.lang.Class r0 = com.google.api.client.util.Types.getRawArrayComponentType(r9, r0)
            java.lang.reflect.Field r5 = r5.getField()
            java.lang.Object r6 = parseValue(r0, r9, r12)
            r10.put(r5, r0, r6)
        L89:
            java.io.StringWriter r6 = new java.io.StringWriter
            r6.<init>()
            java.io.StringWriter r5 = new java.io.StringWriter
            r5.<init>()
            r0 = -1
            if (r11 != r0) goto Lf3
            r10.setValues()
            return
        L9a:
            java.lang.Class r0 = com.google.api.client.util.Types.getRawArrayComponentType(r9, r6)
            java.lang.Class<java.lang.Iterable> r13 = java.lang.Iterable.class
            boolean r0 = com.google.api.client.util.Types.isAssignableToOrFrom(r0, r13)
            if (r0 == 0) goto Lc7
            java.lang.Object r0 = r5.getValue(r15)
            java.util.Collection r0 = (java.util.Collection) r0
            if (r0 != 0) goto Lb5
            java.util.Collection r0 = com.google.api.client.util.Data.newCollectionInstance(r6)
            r5.setValue(r15, r0)
        Lb5:
            java.lang.Class<java.lang.Object> r5 = java.lang.Object.class
            if (r6 != r5) goto Lc2
            r5 = r2
        Lba:
            java.lang.Object r5 = parseValue(r5, r9, r12)
            r0.add(r5)
            goto L89
        Lc2:
            java.lang.reflect.Type r5 = com.google.api.client.util.Types.getIterableParameter(r6)
            goto Lba
        Lc7:
            java.lang.Object r0 = parseValue(r6, r9, r12)
            r5.setValue(r15, r0)
            goto L89
        Lcf:
            if (r3 == 0) goto L89
            java.lang.Object r0 = r3.get(r6)
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            if (r0 != 0) goto Le3
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            if (r1 == 0) goto Le7
            r1.set(r6, r0)
        Le3:
            r0.add(r12)
            goto L89
        Le7:
            r3.put(r6, r0)
            goto Le3
        Leb:
            r0 = r7
            goto L3b
        Lee:
            r5.write(r11)
            goto L3b
        Lf3:
            r0 = r4
            goto L3b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.http.UrlEncodedParser.parse(java.io.Reader, java.lang.Object):void");
    }

    private static Object parseValue(Type type, List<Type> list, String str) {
        return Data.parsePrimitiveValue(Data.resolveWildcardTypeOrTypeVariable(list, type), str);
    }

    @Override // com.google.api.client.util.ObjectParser
    public <T> T parseAndClose(InputStream inputStream, Charset charset, Class<T> cls) {
        return (T) parseAndClose((Reader) new InputStreamReader(inputStream, charset), (Class) cls);
    }

    @Override // com.google.api.client.util.ObjectParser
    public Object parseAndClose(InputStream inputStream, Charset charset, Type type) {
        return parseAndClose(new InputStreamReader(inputStream, charset), type);
    }

    @Override // com.google.api.client.util.ObjectParser
    public <T> T parseAndClose(Reader reader, Class<T> cls) {
        return (T) parseAndClose(reader, (Type) cls);
    }

    @Override // com.google.api.client.util.ObjectParser
    public Object parseAndClose(Reader reader, Type type) {
        Preconditions.checkArgument(type instanceof Class, "dataType has to be of type Class<?>");
        Object newInstance = Types.newInstance((Class) type);
        parse(new BufferedReader(reader), newInstance);
        return newInstance;
    }
}
