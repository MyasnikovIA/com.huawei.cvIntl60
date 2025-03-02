package com.google.api.client.util.escape;

/* loaded from: classes.dex */
public abstract class UnicodeEscaper extends Escaper {
    private static final int DEST_PAD = 32;

    @Override // com.google.api.client.util.escape.Escaper
    public abstract String escape(String str);

    protected abstract char[] escape(int i);

    protected abstract int nextEscapeIndex(CharSequence charSequence, int i, int i2);

    protected final String escapeSlow(String str, int i) {
        int length = str.length();
        char[] charBufferFromThreadLocal = Platform.charBufferFromThreadLocal();
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int codePointAt = codePointAt(str, i, length);
            if (codePointAt < 0) {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
            char[] escape = escape(codePointAt);
            int i4 = (Character.isSupplementaryCodePoint(codePointAt) ? 2 : 1) + i;
            if (escape != null) {
                int i5 = i - i2;
                int length2 = i3 + i5 + escape.length;
                if (charBufferFromThreadLocal.length < length2) {
                    charBufferFromThreadLocal = growBuffer(charBufferFromThreadLocal, i3, ((length2 + length) - i) + 32);
                }
                if (i5 > 0) {
                    str.getChars(i2, i, charBufferFromThreadLocal, i3);
                    i3 += i5;
                }
                if (escape.length > 0) {
                    System.arraycopy(escape, 0, charBufferFromThreadLocal, i3, escape.length);
                    i3 += escape.length;
                }
                i2 = i4;
            }
            i = nextEscapeIndex(str, i4, length);
        }
        int i6 = length - i2;
        if (i6 > 0) {
            int i7 = i6 + i3;
            if (charBufferFromThreadLocal.length < i7) {
                charBufferFromThreadLocal = growBuffer(charBufferFromThreadLocal, i3, i7);
            }
            str.getChars(i2, length, charBufferFromThreadLocal, i3);
            i3 = i7;
        }
        return new String(charBufferFromThreadLocal, 0, i3);
    }

    protected static int codePointAt(CharSequence charSequence, int i, int i2) {
        if (i < i2) {
            int i3 = i + 1;
            char charAt = charSequence.charAt(i);
            if (charAt >= 55296 && charAt <= 57343) {
                if (charAt <= 56319) {
                    if (i3 == i2) {
                        return -charAt;
                    }
                    char charAt2 = charSequence.charAt(i3);
                    if (Character.isLowSurrogate(charAt2)) {
                        return Character.toCodePoint(charAt, charAt2);
                    }
                    throw new IllegalArgumentException(new StringBuilder(83).append("Expected low surrogate but got char '").append(charAt2).append("' with value ").append((int) charAt2).append(" at index ").append(i3).toString());
                }
                throw new IllegalArgumentException(new StringBuilder(82).append("Unexpected low surrogate character '").append(charAt).append("' with value ").append((int) charAt).append(" at index ").append(i3 - 1).toString());
            }
            return charAt;
        }
        throw new IndexOutOfBoundsException("Index exceeds specified range");
    }

    private static char[] growBuffer(char[] cArr, int i, int i2) {
        char[] cArr2 = new char[i2];
        if (i > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i);
        }
        return cArr2;
    }
}
