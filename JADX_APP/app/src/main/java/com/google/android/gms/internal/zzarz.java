package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: classes.dex */
public class zzarz extends IOException {
    public zzarz(String str) {
        super(str);
    }

    /* renamed from: cr */
    static zzarz m6668cr() {
        return new zzarz("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: cs */
    static zzarz m6669cs() {
        return new zzarz("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: ct */
    static zzarz m6670ct() {
        return new zzarz("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: cu */
    static zzarz m6671cu() {
        return new zzarz("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: cv */
    static zzarz m6672cv() {
        return new zzarz("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: cw */
    static zzarz m6673cw() {
        return new zzarz("Protocol message tag had invalid wire type.");
    }

    /* renamed from: cx */
    static zzarz m6674cx() {
        return new zzarz("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }
}
