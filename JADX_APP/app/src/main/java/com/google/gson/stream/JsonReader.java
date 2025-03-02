package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

/* loaded from: classes.dex */
public class JsonReader implements Closeable {
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;

    /* renamed from: in */
    private final Reader f7030in;
    private int[] pathIndices;
    private String[] pathNames;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int stackSize;
    private boolean lenient = false;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    private int peeked = 0;
    private int[] stack = new int[32];

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() { // from class: com.google.gson.stream.JsonReader.1
            C15401() {
            }

            @Override // com.google.gson.internal.JsonReaderInternalAccess
            public void promoteNameToValue(JsonReader jsonReader) {
                if (!(jsonReader instanceof JsonTreeReader)) {
                    int i = jsonReader.peeked;
                    if (i == 0) {
                        i = jsonReader.doPeek();
                    }
                    if (i == 13) {
                        jsonReader.peeked = 9;
                        return;
                    } else if (i == 12) {
                        jsonReader.peeked = 8;
                        return;
                    } else {
                        if (i == 14) {
                            jsonReader.peeked = 10;
                            return;
                        }
                        throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + "  at line " + jsonReader.getLineNumber() + " column " + jsonReader.getColumnNumber() + " path " + jsonReader.getPath());
                    }
                }
                ((JsonTreeReader) jsonReader).promoteNameToValue();
            }
        };
    }

    public JsonReader(Reader reader) {
        this.stackSize = 0;
        int[] iArr = this.stack;
        int i = this.stackSize;
        this.stackSize = i + 1;
        iArr[i] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.f7030in = reader;
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    public void beginArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }

    public void endArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 4) {
            this.stackSize--;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }

    public void beginObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 1) {
            push(3);
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }

    public void endObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 2) {
            this.stackSize--;
            this.pathNames[this.stackSize] = null;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }

    public boolean hasNext() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        return (i == 2 || i == 4) ? false : true;
    }

    public JsonToken peek() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        switch (i) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public int doPeek() {
        int i = this.stack[this.stackSize - 1];
        if (i == 1) {
            this.stack[this.stackSize - 1] = 2;
        } else if (i == 2) {
            switch (nextNonWhitespace(true)) {
                case 44:
                    break;
                case 59:
                    checkLenient();
                    break;
                case 93:
                    this.peeked = 4;
                    return 4;
                default:
                    throw syntaxError("Unterminated array");
            }
        } else {
            if (i == 3 || i == 5) {
                this.stack[this.stackSize - 1] = 4;
                if (i == 5) {
                    switch (nextNonWhitespace(true)) {
                        case 44:
                            break;
                        case 59:
                            checkLenient();
                            break;
                        case 125:
                            this.peeked = 2;
                            return 2;
                        default:
                            throw syntaxError("Unterminated object");
                    }
                }
                int nextNonWhitespace = nextNonWhitespace(true);
                switch (nextNonWhitespace) {
                    case 34:
                        this.peeked = 13;
                        return 13;
                    case 39:
                        checkLenient();
                        this.peeked = 12;
                        return 12;
                    case 125:
                        if (i != 5) {
                            this.peeked = 2;
                            return 2;
                        }
                        throw syntaxError("Expected name");
                    default:
                        checkLenient();
                        this.pos--;
                        if (isLiteral((char) nextNonWhitespace)) {
                            this.peeked = 14;
                            return 14;
                        }
                        throw syntaxError("Expected name");
                }
            }
            if (i == 4) {
                this.stack[this.stackSize - 1] = 5;
                switch (nextNonWhitespace(true)) {
                    case 58:
                        break;
                    case 59:
                    case 60:
                    default:
                        throw syntaxError("Expected ':'");
                    case 61:
                        checkLenient();
                        if ((this.pos < this.limit || fillBuffer(1)) && this.buffer[this.pos] == '>') {
                            this.pos++;
                            break;
                        }
                        break;
                }
            } else if (i == 6) {
                if (this.lenient) {
                    consumeNonExecutePrefix();
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (i == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                checkLenient();
                this.pos--;
            } else if (i == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        switch (nextNonWhitespace(true)) {
            case 34:
                if (this.stackSize == 1) {
                    checkLenient();
                }
                this.peeked = 9;
                return 9;
            case 39:
                checkLenient();
                this.peeked = 8;
                return 8;
            case 44:
            case 59:
                break;
            case 91:
                this.peeked = 3;
                return 3;
            case 93:
                if (i == 1) {
                    this.peeked = 4;
                    return 4;
                }
                break;
            case 123:
                this.peeked = 1;
                return 1;
            default:
                this.pos--;
                if (this.stackSize == 1) {
                    checkLenient();
                }
                int peekKeyword = peekKeyword();
                if (peekKeyword == 0) {
                    int peekNumber = peekNumber();
                    if (peekNumber == 0) {
                        if (!isLiteral(this.buffer[this.pos])) {
                            throw syntaxError("Expected value");
                        }
                        checkLenient();
                        this.peeked = 10;
                        return 10;
                    }
                    return peekNumber;
                }
                return peekKeyword;
        }
        if (i == 1 || i == 2) {
            checkLenient();
            this.pos--;
            this.peeked = 7;
            return 7;
        }
        throw syntaxError("Unexpected value");
    }

    private int peekKeyword() {
        String str;
        String str2;
        int i;
        char c = this.buffer[this.pos];
        if (c == 't' || c == 'T') {
            str = "true";
            str2 = "TRUE";
            i = 5;
        } else if (c == 'f' || c == 'F') {
            str = "false";
            str2 = "FALSE";
            i = 6;
        } else {
            if (c != 'n' && c != 'N') {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i = 7;
        }
        int length = str.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.pos + i2 >= this.limit && !fillBuffer(i2 + 1)) {
                return 0;
            }
            char c2 = this.buffer[this.pos + i2];
            if (c2 != str.charAt(i2) && c2 != str2.charAt(i2)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
    
        if (r3 != 2) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        if (r4 == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
    
        if (r6 != Long.MIN_VALUE) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
    
        if (r5 == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        if (r5 == false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
    
        r14.peekedLong = r6;
        r14.pos += r10;
        r14.peeked = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c4, code lost:
    
        r6 = -r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c8, code lost:
    
        if (r3 == 2) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00cb, code lost:
    
        if (r3 == 4) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ce, code lost:
    
        if (r3 != 7) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d8, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d0, code lost:
    
        r14.peekedNumberLength = r10;
        r14.peeked = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0050, code lost:
    
        if (isLiteral(r2) == false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0052, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int peekNumber() {
        /*
            Method dump skipped, instructions count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.peekNumber():int");
    }

    private boolean isLiteral(char c) {
        switch (c) {
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                checkLenient();
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
            case ',':
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                return false;
            default:
                return true;
        }
    }

    public String nextName() {
        String nextQuotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 14) {
            nextQuotedValue = nextUnquotedValue();
        } else if (i == 12) {
            nextQuotedValue = nextQuotedValue('\'');
        } else if (i == 13) {
            nextQuotedValue = nextQuotedValue('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = nextQuotedValue;
        return nextQuotedValue;
    }

    public String nextString() {
        String str;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 10) {
            str = nextUnquotedValue();
        } else if (i == 8) {
            str = nextQuotedValue('\'');
        } else if (i == 9) {
            str = nextQuotedValue('\"');
        } else if (i == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (i == 15) {
            str = Long.toString(this.peekedLong);
        } else if (i == 16) {
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            throw new IllegalStateException("Expected a string but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    public boolean nextBoolean() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (i == 6) {
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }

    public void nextNull() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 7) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }

    public double nextDouble() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.peekedLong;
        }
        if (i == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i == 8 || i == 9) {
            this.peekedString = nextQuotedValue(i == 8 ? '\'' : '\"');
        } else if (i == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (i != 11) {
            throw new IllegalStateException("Expected a double but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        if (!this.lenient && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + parseDouble + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return parseDouble;
    }

    public long nextLong() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.peekedLong;
        }
        if (i == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i == 8 || i == 9) {
            this.peekedString = nextQuotedValue(i == 8 ? '\'' : '\"');
            try {
                long parseLong = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i3 = this.stackSize - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        long j = (long) parseDouble;
        if (j != parseDouble) {
            throw new NumberFormatException("Expected a long but was " + this.peekedString + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i4 = this.stackSize - 1;
        iArr3[i4] = iArr3[i4] + 1;
        return j;
    }

    private String nextQuotedValue(char c) {
        int i;
        char[] cArr = this.buffer;
        StringBuilder sb = new StringBuilder();
        do {
            int i2 = this.pos;
            int i3 = this.limit;
            int i4 = i2;
            int i5 = i2;
            while (i5 < i3) {
                int i6 = i5 + 1;
                char c2 = cArr[i5];
                if (c2 == c) {
                    this.pos = i6;
                    sb.append(cArr, i4, (i6 - i4) - 1);
                    return sb.toString();
                }
                if (c2 == '\\') {
                    this.pos = i6;
                    sb.append(cArr, i4, (i6 - i4) - 1);
                    sb.append(readEscapeCharacter());
                    int i7 = this.pos;
                    i = this.limit;
                    i4 = i7;
                    i6 = i7;
                } else {
                    if (c2 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i6;
                    }
                    i = i3;
                }
                i3 = i;
                i5 = i6;
            }
            sb.append(cArr, i4, i5 - i4);
            this.pos = i5;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private String nextUnquotedValue() {
        String sb;
        StringBuilder sb2 = null;
        int i = 0;
        while (true) {
            if (this.pos + i < this.limit) {
                switch (this.buffer[this.pos + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        checkLenient();
                        break;
                    default:
                        i++;
                        continue;
                }
            } else if (i < this.buffer.length) {
                if (fillBuffer(i + 1)) {
                }
            } else {
                if (sb2 == null) {
                    sb2 = new StringBuilder();
                }
                sb2.append(this.buffer, this.pos, i);
                this.pos = i + this.pos;
                if (fillBuffer(1)) {
                    i = 0;
                } else {
                    i = 0;
                }
            }
        }
        if (sb2 == null) {
            sb = new String(this.buffer, this.pos, i);
        } else {
            sb2.append(this.buffer, this.pos, i);
            sb = sb2.toString();
        }
        this.pos = i + this.pos;
        return sb;
    }

    private void skipQuotedValue(char c) {
        char[] cArr = this.buffer;
        do {
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.pos = i4;
                    return;
                }
                if (c2 == '\\') {
                    this.pos = i4;
                    readEscapeCharacter();
                    i4 = this.pos;
                    i2 = this.limit;
                } else if (c2 == '\n') {
                    this.lineNumber++;
                    this.lineStart = i4;
                }
                i3 = i4;
            }
            this.pos = i3;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private void skipUnquotedValue() {
        do {
            int i = 0;
            while (this.pos + i < this.limit) {
                switch (this.buffer[this.pos + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        checkLenient();
                        break;
                    default:
                        i++;
                }
                this.pos = i + this.pos;
                return;
            }
            this.pos = i + this.pos;
        } while (fillBuffer(1));
    }

    public int nextInt() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            int i2 = (int) this.peekedLong;
            if (this.peekedLong != i2) {
                throw new NumberFormatException("Expected an int but was " + this.peekedLong + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
            }
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr[i3] = iArr[i3] + 1;
            return i2;
        }
        if (i == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i == 8 || i == 9) {
            this.peekedString = nextQuotedValue(i == 8 ? '\'' : '\"');
            try {
                int parseInt = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i4 = this.stackSize - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + peek() + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        int i5 = (int) parseDouble;
        if (i5 != parseDouble) {
            throw new NumberFormatException("Expected an int but was " + this.peekedString + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i6 = this.stackSize - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.f7030in.close();
    }

    public void skipValue() {
        int i = 0;
        do {
            int i2 = this.peeked;
            if (i2 == 0) {
                i2 = doPeek();
            }
            if (i2 == 3) {
                push(1);
                i++;
            } else if (i2 == 1) {
                push(3);
                i++;
            } else if (i2 == 4) {
                this.stackSize--;
                i--;
            } else if (i2 == 2) {
                this.stackSize--;
                i--;
            } else if (i2 == 14 || i2 == 10) {
                skipUnquotedValue();
            } else if (i2 == 8 || i2 == 12) {
                skipQuotedValue('\'');
            } else if (i2 == 9 || i2 == 13) {
                skipQuotedValue('\"');
            } else if (i2 == 16) {
                this.pos += this.peekedNumberLength;
            }
            this.peeked = 0;
        } while (i != 0);
        int[] iArr = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr[i3] = iArr[i3] + 1;
        this.pathNames[this.stackSize - 1] = "null";
    }

    private void push(int i) {
        if (this.stackSize == this.stack.length) {
            int[] iArr = new int[this.stackSize * 2];
            int[] iArr2 = new int[this.stackSize * 2];
            String[] strArr = new String[this.stackSize * 2];
            System.arraycopy(this.stack, 0, iArr, 0, this.stackSize);
            System.arraycopy(this.pathIndices, 0, iArr2, 0, this.stackSize);
            System.arraycopy(this.pathNames, 0, strArr, 0, this.stackSize);
            this.stack = iArr;
            this.pathIndices = iArr2;
            this.pathNames = strArr;
        }
        int[] iArr3 = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr3[i2] = i;
    }

    private boolean fillBuffer(int i) {
        char[] cArr = this.buffer;
        this.lineStart -= this.pos;
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(cArr, this.pos, cArr, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            int read = this.f7030in.read(cArr, this.limit, cArr.length - this.limit);
            if (read == -1) {
                return false;
            }
            this.limit = read + this.limit;
            if (this.lineNumber == 0 && this.lineStart == 0 && this.limit > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart++;
                i++;
            }
        } while (this.limit < i);
        return true;
    }

    public int getLineNumber() {
        return this.lineNumber + 1;
    }

    public int getColumnNumber() {
        return (this.pos - this.lineStart) + 1;
    }

    private int nextNonWhitespace(boolean z) {
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            if (i == i2) {
                this.pos = i;
                if (fillBuffer(1)) {
                    i = this.pos;
                    i2 = this.limit;
                } else {
                    if (z) {
                        throw new EOFException("End of input at line " + getLineNumber() + " column " + getColumnNumber());
                    }
                    return -1;
                }
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = i3;
                i = i3;
            } else if (c == ' ' || c == '\r') {
                i = i3;
            } else if (c == '\t') {
                i = i3;
            } else if (c == '/') {
                this.pos = i3;
                if (i3 == i2) {
                    this.pos--;
                    boolean fillBuffer = fillBuffer(2);
                    this.pos++;
                    if (!fillBuffer) {
                        return c;
                    }
                }
                checkLenient();
                switch (cArr[this.pos]) {
                    case '*':
                        this.pos++;
                        if (!skipTo("*/")) {
                            throw syntaxError("Unterminated comment");
                        }
                        i = this.pos + 2;
                        i2 = this.limit;
                        break;
                    case '/':
                        this.pos++;
                        skipToEndOfLine();
                        i = this.pos;
                        i2 = this.limit;
                        break;
                    default:
                        return c;
                }
            } else if (c == '#') {
                this.pos = i3;
                checkLenient();
                skipToEndOfLine();
                i = this.pos;
                i2 = this.limit;
            } else {
                this.pos = i3;
                return c;
            }
        }
    }

    private void checkLenient() {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void skipToEndOfLine() {
        char c;
        do {
            if (this.pos < this.limit || fillBuffer(1)) {
                char[] cArr = this.buffer;
                int i = this.pos;
                this.pos = i + 1;
                c = cArr[i];
                if (c == '\n') {
                    this.lineNumber++;
                    this.lineStart = this.pos;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    private boolean skipTo(String str) {
        int i;
        while (true) {
            if (this.pos + str.length() > this.limit && !fillBuffer(str.length())) {
                return false;
            }
            if (this.buffer[this.pos] == '\n') {
                this.lineNumber++;
                this.lineStart = this.pos + 1;
            } else {
                for (0; i < str.length(); i + 1) {
                    i = this.buffer[this.pos + i] == str.charAt(i) ? i + 1 : 0;
                }
                return true;
            }
            this.pos++;
        }
    }

    public String toString() {
        return getClass().getSimpleName() + " at line " + getLineNumber() + " column " + getColumnNumber();
    }

    public String getPath() {
        StringBuilder append = new StringBuilder().append('$');
        int i = this.stackSize;
        for (int i2 = 0; i2 < i; i2++) {
            switch (this.stack[i2]) {
                case 1:
                case 2:
                    append.append('[').append(this.pathIndices[i2]).append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    append.append('.');
                    if (this.pathNames[i2] != null) {
                        append.append(this.pathNames[i2]);
                        break;
                    } else {
                        break;
                    }
            }
        }
        return append.toString();
    }

    private char readEscapeCharacter() {
        int i;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int i2 = this.pos;
        this.pos = i2 + 1;
        char c = cArr[i2];
        switch (c) {
            case '\n':
                this.lineNumber++;
                this.lineStart = this.pos;
                return c;
            case 'b':
                return '\b';
            case 'f':
                return '\f';
            case 'n':
                return '\n';
            case 'r':
                return '\r';
            case 't':
                return '\t';
            case 'u':
                if (this.pos + 4 > this.limit && !fillBuffer(4)) {
                    throw syntaxError("Unterminated escape sequence");
                }
                char c2 = 0;
                int i3 = this.pos;
                int i4 = i3 + 4;
                while (i3 < i4) {
                    char c3 = this.buffer[i3];
                    char c4 = (char) (c2 << 4);
                    if (c3 >= '0' && c3 <= '9') {
                        i = c3 - '0';
                    } else if (c3 >= 'a' && c3 <= 'f') {
                        i = (c3 - 'a') + 10;
                    } else if (c3 >= 'A' && c3 <= 'F') {
                        i = (c3 - 'A') + 10;
                    } else {
                        throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, 4));
                    }
                    c2 = (char) (c4 + i);
                    i3++;
                }
                this.pos += 4;
                return c2;
            default:
                return c;
        }
    }

    private IOException syntaxError(String str) {
        throw new MalformedJsonException(str + " at line " + getLineNumber() + " column " + getColumnNumber() + " path " + getPath());
    }

    private void consumeNonExecutePrefix() {
        nextNonWhitespace(true);
        this.pos--;
        if (this.pos + NON_EXECUTE_PREFIX.length <= this.limit || fillBuffer(NON_EXECUTE_PREFIX.length)) {
            for (int i = 0; i < NON_EXECUTE_PREFIX.length; i++) {
                if (this.buffer[this.pos + i] != NON_EXECUTE_PREFIX[i]) {
                    return;
                }
            }
            this.pos += NON_EXECUTE_PREFIX.length;
        }
    }

    /* renamed from: com.google.gson.stream.JsonReader$1 */
    static class C15401 extends JsonReaderInternalAccess {
        C15401() {
        }

        @Override // com.google.gson.internal.JsonReaderInternalAccess
        public void promoteNameToValue(JsonReader jsonReader) {
            if (!(jsonReader instanceof JsonTreeReader)) {
                int i = jsonReader.peeked;
                if (i == 0) {
                    i = jsonReader.doPeek();
                }
                if (i == 13) {
                    jsonReader.peeked = 9;
                    return;
                } else if (i == 12) {
                    jsonReader.peeked = 8;
                    return;
                } else {
                    if (i == 14) {
                        jsonReader.peeked = 10;
                        return;
                    }
                    throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + "  at line " + jsonReader.getLineNumber() + " column " + jsonReader.getColumnNumber() + " path " + jsonReader.getPath());
                }
            }
            ((JsonTreeReader) jsonReader).promoteNameToValue();
        }
    }
}
