package com.google.android.gms.internal;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;

/* loaded from: classes.dex */
public final class zzaqn {
    public static final zzapk<Class> bqj = new zzapk<Class>() { // from class: com.google.android.gms.internal.zzaqn.1
        C13271() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Class cls) {
            if (cls == null) {
                zzaqrVar.mo6622bA();
            } else {
                String valueOf = String.valueOf(cls.getName());
                throw new UnsupportedOperationException(new StringBuilder(String.valueOf(valueOf).length() + 76).append("Attempted to serialize java.lang.Class: ").append(valueOf).append(". Forgot to register a type adapter?").toString());
            }
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzo */
        public Class zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }
            zzaqpVar.nextNull();
            return null;
        }
    };
    public static final zzapl bqk = zza(Class.class, bqj);
    public static final zzapk<BitSet> bql = new zzapk<BitSet>() { // from class: com.google.android.gms.internal.zzaqn.12
        C133012() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, BitSet bitSet) {
            if (bitSet == null) {
                zzaqrVar.mo6622bA();
                return;
            }
            zzaqrVar.mo6624bw();
            for (int i = 0; i < bitSet.length(); i++) {
                zzaqrVar.zzcs(bitSet.get(i) ? 1 : 0);
            }
            zzaqrVar.mo6625bx();
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzx */
        public BitSet zzb(zzaqp zzaqpVar) {
            boolean z;
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            BitSet bitSet = new BitSet();
            zzaqpVar.beginArray();
            zzaqq mo6619bq = zzaqpVar.mo6619bq();
            int i = 0;
            while (mo6619bq != zzaqq.END_ARRAY) {
                switch (C134526.bpW[mo6619bq.ordinal()]) {
                    case 1:
                        if (zzaqpVar.nextInt() == 0) {
                            z = false;
                            break;
                        } else {
                            z = true;
                            break;
                        }
                    case 2:
                        z = zzaqpVar.nextBoolean();
                        break;
                    case 3:
                        String nextString = zzaqpVar.nextString();
                        try {
                            if (Integer.parseInt(nextString) == 0) {
                                z = false;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                        } catch (NumberFormatException e) {
                            String valueOf = String.valueOf(nextString);
                            throw new zzaph(valueOf.length() != 0 ? "Error: Expecting: bitset number value (1, 0), Found: ".concat(valueOf) : new String("Error: Expecting: bitset number value (1, 0), Found: "));
                        }
                    default:
                        String valueOf2 = String.valueOf(mo6619bq);
                        throw new zzaph(new StringBuilder(String.valueOf(valueOf2).length() + 27).append("Invalid bitset value type: ").append(valueOf2).toString());
                }
                if (z) {
                    bitSet.set(i);
                }
                i++;
                mo6619bq = zzaqpVar.mo6619bq();
            }
            zzaqpVar.endArray();
            return bitSet;
        }
    };
    public static final zzapl bqm = zza(BitSet.class, bql);
    public static final zzapk<Boolean> bqn = new zzapk<Boolean>() { // from class: com.google.android.gms.internal.zzaqn.23
        C134223() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Boolean bool) {
            if (bool == null) {
                zzaqrVar.mo6622bA();
            } else {
                zzaqrVar.zzdh(bool.booleanValue());
            }
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzae */
        public Boolean zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return zzaqpVar.mo6619bq() == zzaqq.STRING ? Boolean.valueOf(Boolean.parseBoolean(zzaqpVar.nextString())) : Boolean.valueOf(zzaqpVar.nextBoolean());
            }
            zzaqpVar.nextNull();
            return null;
        }
    };
    public static final zzapk<Boolean> bqo = new zzapk<Boolean>() { // from class: com.google.android.gms.internal.zzaqn.27
        C134627() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Boolean bool) {
            zzaqrVar.zzut(bool == null ? "null" : bool.toString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzae */
        public Boolean zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return Boolean.valueOf(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    };
    public static final zzapl bqp = zza(Boolean.TYPE, Boolean.class, bqn);
    public static final zzapk<Number> bqq = new zzapk<Number>() { // from class: com.google.android.gms.internal.zzaqn.28
        C134728() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return Byte.valueOf((byte) zzaqpVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    };
    public static final zzapl bqr = zza(Byte.TYPE, Byte.class, bqq);
    public static final zzapk<Number> bqs = new zzapk<Number>() { // from class: com.google.android.gms.internal.zzaqn.29
        C134829() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return Short.valueOf((short) zzaqpVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    };
    public static final zzapl bqt = zza(Short.TYPE, Short.class, bqs);
    public static final zzapk<Number> bqu = new zzapk<Number>() { // from class: com.google.android.gms.internal.zzaqn.30
        C135030() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return Integer.valueOf(zzaqpVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    };
    public static final zzapl bqv = zza(Integer.TYPE, Integer.class, bqu);
    public static final zzapk<Number> bqw = new zzapk<Number>() { // from class: com.google.android.gms.internal.zzaqn.31
        C135131() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return Long.valueOf(zzaqpVar.nextLong());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    };
    public static final zzapk<Number> bqx = new zzapk<Number>() { // from class: com.google.android.gms.internal.zzaqn.32
        C135232() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return Float.valueOf((float) zzaqpVar.nextDouble());
            }
            zzaqpVar.nextNull();
            return null;
        }
    };
    public static final zzapk<Number> bqy = new zzapk<Number>() { // from class: com.google.android.gms.internal.zzaqn.2
        C13382() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return Double.valueOf(zzaqpVar.nextDouble());
            }
            zzaqpVar.nextNull();
            return null;
        }
    };
    public static final zzapk<Number> bqz = new zzapk<Number>() { // from class: com.google.android.gms.internal.zzaqn.3
        C13493() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            zzaqq mo6619bq = zzaqpVar.mo6619bq();
            switch (mo6619bq) {
                case NUMBER:
                    return new zzapv(zzaqpVar.nextString());
                case BOOLEAN:
                case STRING:
                default:
                    String valueOf = String.valueOf(mo6619bq);
                    throw new zzaph(new StringBuilder(String.valueOf(valueOf).length() + 23).append("Expecting number, got: ").append(valueOf).toString());
                case NULL:
                    zzaqpVar.nextNull();
                    return null;
            }
        }
    };
    public static final zzapl bqA = zza(Number.class, bqz);
    public static final zzapk<Character> bqB = new zzapk<Character>() { // from class: com.google.android.gms.internal.zzaqn.4
        C13534() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Character ch) {
            zzaqrVar.zzut(ch == null ? null : String.valueOf(ch));
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzp */
        public Character zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            String nextString = zzaqpVar.nextString();
            if (nextString.length() == 1) {
                return Character.valueOf(nextString.charAt(0));
            }
            String valueOf = String.valueOf(nextString);
            throw new zzaph(valueOf.length() != 0 ? "Expecting character, got: ".concat(valueOf) : new String("Expecting character, got: "));
        }
    };
    public static final zzapl bqC = zza(Character.TYPE, Character.class, bqB);
    public static final zzapk<String> bqD = new zzapk<String>() { // from class: com.google.android.gms.internal.zzaqn.5
        C13545() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, String str) {
            zzaqrVar.zzut(str);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzq */
        public String zzb(zzaqp zzaqpVar) {
            zzaqq mo6619bq = zzaqpVar.mo6619bq();
            if (mo6619bq != zzaqq.NULL) {
                return mo6619bq == zzaqq.BOOLEAN ? Boolean.toString(zzaqpVar.nextBoolean()) : zzaqpVar.nextString();
            }
            zzaqpVar.nextNull();
            return null;
        }
    };
    public static final zzapk<BigDecimal> bqE = new zzapk<BigDecimal>() { // from class: com.google.android.gms.internal.zzaqn.6
        C13556() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, BigDecimal bigDecimal) {
            zzaqrVar.zza(bigDecimal);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzr */
        public BigDecimal zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return new BigDecimal(zzaqpVar.nextString());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    };
    public static final zzapk<BigInteger> bqF = new zzapk<BigInteger>() { // from class: com.google.android.gms.internal.zzaqn.7
        C13567() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, BigInteger bigInteger) {
            zzaqrVar.zza(bigInteger);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzs */
        public BigInteger zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return new BigInteger(zzaqpVar.nextString());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    };
    public static final zzapl bqG = zza(String.class, bqD);
    public static final zzapk<StringBuilder> bqH = new zzapk<StringBuilder>() { // from class: com.google.android.gms.internal.zzaqn.8
        C13578() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, StringBuilder sb) {
            zzaqrVar.zzut(sb == null ? null : sb.toString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzt */
        public StringBuilder zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return new StringBuilder(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    };
    public static final zzapl bqI = zza(StringBuilder.class, bqH);
    public static final zzapk<StringBuffer> bqJ = new zzapk<StringBuffer>() { // from class: com.google.android.gms.internal.zzaqn.9
        C13589() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, StringBuffer stringBuffer) {
            zzaqrVar.zzut(stringBuffer == null ? null : stringBuffer.toString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzu */
        public StringBuffer zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return new StringBuffer(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    };
    public static final zzapl bqK = zza(StringBuffer.class, bqJ);
    public static final zzapk<URL> bqL = new zzapk<URL>() { // from class: com.google.android.gms.internal.zzaqn.10
        C132810() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, URL url) {
            zzaqrVar.zzut(url == null ? null : url.toExternalForm());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzv */
        public URL zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            String nextString = zzaqpVar.nextString();
            if ("null".equals(nextString)) {
                return null;
            }
            return new URL(nextString);
        }
    };
    public static final zzapl bqM = zza(URL.class, bqL);
    public static final zzapk<URI> bqN = new zzapk<URI>() { // from class: com.google.android.gms.internal.zzaqn.11
        C132911() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, URI uri) {
            zzaqrVar.zzut(uri == null ? null : uri.toASCIIString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzw */
        public URI zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                String nextString = zzaqpVar.nextString();
                if ("null".equals(nextString)) {
                    return null;
                }
                return new URI(nextString);
            } catch (URISyntaxException e) {
                throw new zzaoz(e);
            }
        }
    };
    public static final zzapl bqO = zza(URI.class, bqN);
    public static final zzapk<InetAddress> bqP = new zzapk<InetAddress>() { // from class: com.google.android.gms.internal.zzaqn.13
        C133113() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, InetAddress inetAddress) {
            zzaqrVar.zzut(inetAddress == null ? null : inetAddress.getHostAddress());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzy */
        public InetAddress zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return InetAddress.getByName(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    };
    public static final zzapl bqQ = zzb(InetAddress.class, bqP);
    public static final zzapk<UUID> bqR = new zzapk<UUID>() { // from class: com.google.android.gms.internal.zzaqn.14
        C133214() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, UUID uuid) {
            zzaqrVar.zzut(uuid == null ? null : uuid.toString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzz */
        public UUID zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return UUID.fromString(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    };
    public static final zzapl bqS = zza(UUID.class, bqR);
    public static final zzapl bqT = new zzapl() { // from class: com.google.android.gms.internal.zzaqn.15

        /* renamed from: com.google.android.gms.internal.zzaqn$15$1 */
        class AnonymousClass1 extends zzapk<Timestamp> {
            final /* synthetic */ zzapk brb;

            AnonymousClass1(zzapk zzapkVar) {
                zzk = zzapkVar;
            }

            @Override // com.google.android.gms.internal.zzapk
            public void zza(zzaqr zzaqrVar, Timestamp timestamp) {
                zzk.zza(zzaqrVar, timestamp);
            }

            @Override // com.google.android.gms.internal.zzapk
            /* renamed from: zzaa */
            public Timestamp zzb(zzaqp zzaqpVar) {
                Date date = (Date) zzk.zzb(zzaqpVar);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
            }
        }

        C133315() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (zzaqoVar.m6628bB() != Timestamp.class) {
                return null;
            }
            return new zzapk<Timestamp>() { // from class: com.google.android.gms.internal.zzaqn.15.1
                final /* synthetic */ zzapk brb;

                AnonymousClass1(zzapk zzapkVar) {
                    zzk = zzapkVar;
                }

                @Override // com.google.android.gms.internal.zzapk
                public void zza(zzaqr zzaqrVar, Timestamp timestamp) {
                    zzk.zza(zzaqrVar, timestamp);
                }

                @Override // com.google.android.gms.internal.zzapk
                /* renamed from: zzaa */
                public Timestamp zzb(zzaqp zzaqpVar) {
                    Date date = (Date) zzk.zzb(zzaqpVar);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }
            };
        }
    };
    public static final zzapk<Calendar> bqU = new zzapk<Calendar>() { // from class: com.google.android.gms.internal.zzaqn.16
        C133416() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Calendar calendar) {
            if (calendar == null) {
                zzaqrVar.mo6622bA();
                return;
            }
            zzaqrVar.mo6626by();
            zzaqrVar.zzus("year");
            zzaqrVar.zzcs(calendar.get(1));
            zzaqrVar.zzus("month");
            zzaqrVar.zzcs(calendar.get(2));
            zzaqrVar.zzus("dayOfMonth");
            zzaqrVar.zzcs(calendar.get(5));
            zzaqrVar.zzus("hourOfDay");
            zzaqrVar.zzcs(calendar.get(11));
            zzaqrVar.zzus("minute");
            zzaqrVar.zzcs(calendar.get(12));
            zzaqrVar.zzus("second");
            zzaqrVar.zzcs(calendar.get(13));
            zzaqrVar.mo6627bz();
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzab */
        public Calendar zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            zzaqpVar.beginObject();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (zzaqpVar.mo6619bq() != zzaqq.END_OBJECT) {
                String nextName = zzaqpVar.nextName();
                int nextInt = zzaqpVar.nextInt();
                if ("year".equals(nextName)) {
                    i6 = nextInt;
                } else if ("month".equals(nextName)) {
                    i5 = nextInt;
                } else if ("dayOfMonth".equals(nextName)) {
                    i4 = nextInt;
                } else if ("hourOfDay".equals(nextName)) {
                    i3 = nextInt;
                } else if ("minute".equals(nextName)) {
                    i2 = nextInt;
                } else if ("second".equals(nextName)) {
                    i = nextInt;
                }
            }
            zzaqpVar.endObject();
            return new GregorianCalendar(i6, i5, i4, i3, i2, i);
        }
    };
    public static final zzapl bqV = zzb(Calendar.class, GregorianCalendar.class, bqU);
    public static final zzapk<Locale> bqW = new zzapk<Locale>() { // from class: com.google.android.gms.internal.zzaqn.17
        C133517() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Locale locale) {
            zzaqrVar.zzut(locale == null ? null : locale.toString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzac */
        public Locale zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(zzaqpVar.nextString(), "_");
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            return (nextToken2 == null && nextToken3 == null) ? new Locale(nextToken) : nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
        }
    };
    public static final zzapl bqX = zza(Locale.class, bqW);
    public static final zzapk<zzaoy> bqY = new zzapk<zzaoy>() { // from class: com.google.android.gms.internal.zzaqn.18
        C133618() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, zzaoy zzaoyVar) {
            if (zzaoyVar == null || zzaoyVar.m6597aY()) {
                zzaqrVar.mo6622bA();
                return;
            }
            if (zzaoyVar.m6596aX()) {
                zzape m6600bb = zzaoyVar.m6600bb();
                if (m6600bb.m6603be()) {
                    zzaqrVar.zza(m6600bb.mo6592aT());
                    return;
                } else if (m6600bb.m6602bd()) {
                    zzaqrVar.zzdh(m6600bb.getAsBoolean());
                    return;
                } else {
                    zzaqrVar.zzut(m6600bb.mo6593aU());
                    return;
                }
            }
            if (zzaoyVar.m6594aV()) {
                zzaqrVar.mo6624bw();
                Iterator<zzaoy> it = zzaoyVar.m6599ba().iterator();
                while (it.hasNext()) {
                    zza(zzaqrVar, it.next());
                }
                zzaqrVar.mo6625bx();
                return;
            }
            if (!zzaoyVar.m6595aW()) {
                String valueOf = String.valueOf(zzaoyVar.getClass());
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 15).append("Couldn't write ").append(valueOf).toString());
            }
            zzaqrVar.mo6626by();
            for (Map.Entry<String, zzaoy> entry : zzaoyVar.m6598aZ().entrySet()) {
                zzaqrVar.zzus(entry.getKey());
                zza(zzaqrVar, entry.getValue());
            }
            zzaqrVar.mo6627bz();
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzad */
        public zzaoy zzb(zzaqp zzaqpVar) {
            switch (C134526.bpW[zzaqpVar.mo6619bq().ordinal()]) {
                case 1:
                    return new zzape((Number) new zzapv(zzaqpVar.nextString()));
                case 2:
                    return new zzape(Boolean.valueOf(zzaqpVar.nextBoolean()));
                case 3:
                    return new zzape(zzaqpVar.nextString());
                case 4:
                    zzaqpVar.nextNull();
                    return zzapa.bou;
                case 5:
                    zzaov zzaovVar = new zzaov();
                    zzaqpVar.beginArray();
                    while (zzaqpVar.hasNext()) {
                        zzaovVar.zzc((zzaoy) zzb(zzaqpVar));
                    }
                    zzaqpVar.endArray();
                    return zzaovVar;
                case 6:
                    zzapb zzapbVar = new zzapb();
                    zzaqpVar.beginObject();
                    while (zzaqpVar.hasNext()) {
                        zzapbVar.zza(zzaqpVar.nextName(), (zzaoy) zzb(zzaqpVar));
                    }
                    zzaqpVar.endObject();
                    return zzapbVar;
                default:
                    throw new IllegalArgumentException();
            }
        }
    };
    public static final zzapl bqZ = zzb(zzaoy.class, bqY);
    public static final zzapl bra = new zzapl() { // from class: com.google.android.gms.internal.zzaqn.19
        C133719() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            Class<? super T> m6628bB = zzaqoVar.m6628bB();
            if (!Enum.class.isAssignableFrom(m6628bB) || m6628bB == Enum.class) {
                return null;
            }
            if (!m6628bB.isEnum()) {
                m6628bB = m6628bB.getSuperclass();
            }
            return new zza(m6628bB);
        }
    };

    /* renamed from: com.google.android.gms.internal.zzaqn$1 */
    static class C13271 extends zzapk<Class> {
        C13271() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Class cls) {
            if (cls == null) {
                zzaqrVar.mo6622bA();
            } else {
                String valueOf = String.valueOf(cls.getName());
                throw new UnsupportedOperationException(new StringBuilder(String.valueOf(valueOf).length() + 76).append("Attempted to serialize java.lang.Class: ").append(valueOf).append(". Forgot to register a type adapter?").toString());
            }
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzo */
        public Class zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$10 */
    static class C132810 extends zzapk<URL> {
        C132810() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, URL url) {
            zzaqrVar.zzut(url == null ? null : url.toExternalForm());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzv */
        public URL zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            String nextString = zzaqpVar.nextString();
            if ("null".equals(nextString)) {
                return null;
            }
            return new URL(nextString);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$11 */
    static class C132911 extends zzapk<URI> {
        C132911() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, URI uri) {
            zzaqrVar.zzut(uri == null ? null : uri.toASCIIString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzw */
        public URI zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                String nextString = zzaqpVar.nextString();
                if ("null".equals(nextString)) {
                    return null;
                }
                return new URI(nextString);
            } catch (URISyntaxException e) {
                throw new zzaoz(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$12 */
    static class C133012 extends zzapk<BitSet> {
        C133012() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, BitSet bitSet) {
            if (bitSet == null) {
                zzaqrVar.mo6622bA();
                return;
            }
            zzaqrVar.mo6624bw();
            for (int i = 0; i < bitSet.length(); i++) {
                zzaqrVar.zzcs(bitSet.get(i) ? 1 : 0);
            }
            zzaqrVar.mo6625bx();
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzx */
        public BitSet zzb(zzaqp zzaqpVar) {
            boolean z;
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            BitSet bitSet = new BitSet();
            zzaqpVar.beginArray();
            zzaqq mo6619bq = zzaqpVar.mo6619bq();
            int i = 0;
            while (mo6619bq != zzaqq.END_ARRAY) {
                switch (C134526.bpW[mo6619bq.ordinal()]) {
                    case 1:
                        if (zzaqpVar.nextInt() == 0) {
                            z = false;
                            break;
                        } else {
                            z = true;
                            break;
                        }
                    case 2:
                        z = zzaqpVar.nextBoolean();
                        break;
                    case 3:
                        String nextString = zzaqpVar.nextString();
                        try {
                            if (Integer.parseInt(nextString) == 0) {
                                z = false;
                                break;
                            } else {
                                z = true;
                                break;
                            }
                        } catch (NumberFormatException e) {
                            String valueOf = String.valueOf(nextString);
                            throw new zzaph(valueOf.length() != 0 ? "Error: Expecting: bitset number value (1, 0), Found: ".concat(valueOf) : new String("Error: Expecting: bitset number value (1, 0), Found: "));
                        }
                    default:
                        String valueOf2 = String.valueOf(mo6619bq);
                        throw new zzaph(new StringBuilder(String.valueOf(valueOf2).length() + 27).append("Invalid bitset value type: ").append(valueOf2).toString());
                }
                if (z) {
                    bitSet.set(i);
                }
                i++;
                mo6619bq = zzaqpVar.mo6619bq();
            }
            zzaqpVar.endArray();
            return bitSet;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$13 */
    static class C133113 extends zzapk<InetAddress> {
        C133113() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, InetAddress inetAddress) {
            zzaqrVar.zzut(inetAddress == null ? null : inetAddress.getHostAddress());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzy */
        public InetAddress zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return InetAddress.getByName(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$14 */
    static class C133214 extends zzapk<UUID> {
        C133214() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, UUID uuid) {
            zzaqrVar.zzut(uuid == null ? null : uuid.toString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzz */
        public UUID zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return UUID.fromString(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$15 */
    static class C133315 implements zzapl {

        /* renamed from: com.google.android.gms.internal.zzaqn$15$1 */
        class AnonymousClass1 extends zzapk<Timestamp> {
            final /* synthetic */ zzapk brb;

            AnonymousClass1(zzapk zzapkVar) {
                zzk = zzapkVar;
            }

            @Override // com.google.android.gms.internal.zzapk
            public void zza(zzaqr zzaqrVar, Timestamp timestamp) {
                zzk.zza(zzaqrVar, timestamp);
            }

            @Override // com.google.android.gms.internal.zzapk
            /* renamed from: zzaa */
            public Timestamp zzb(zzaqp zzaqpVar) {
                Date date = (Date) zzk.zzb(zzaqpVar);
                if (date != null) {
                    return new Timestamp(date.getTime());
                }
                return null;
            }
        }

        C133315() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (zzaqoVar.m6628bB() != Timestamp.class) {
                return null;
            }
            return new zzapk<Timestamp>() { // from class: com.google.android.gms.internal.zzaqn.15.1
                final /* synthetic */ zzapk brb;

                AnonymousClass1(zzapk zzapkVar) {
                    zzk = zzapkVar;
                }

                @Override // com.google.android.gms.internal.zzapk
                public void zza(zzaqr zzaqrVar, Timestamp timestamp) {
                    zzk.zza(zzaqrVar, timestamp);
                }

                @Override // com.google.android.gms.internal.zzapk
                /* renamed from: zzaa */
                public Timestamp zzb(zzaqp zzaqpVar) {
                    Date date = (Date) zzk.zzb(zzaqpVar);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }
            };
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$16 */
    static class C133416 extends zzapk<Calendar> {
        C133416() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Calendar calendar) {
            if (calendar == null) {
                zzaqrVar.mo6622bA();
                return;
            }
            zzaqrVar.mo6626by();
            zzaqrVar.zzus("year");
            zzaqrVar.zzcs(calendar.get(1));
            zzaqrVar.zzus("month");
            zzaqrVar.zzcs(calendar.get(2));
            zzaqrVar.zzus("dayOfMonth");
            zzaqrVar.zzcs(calendar.get(5));
            zzaqrVar.zzus("hourOfDay");
            zzaqrVar.zzcs(calendar.get(11));
            zzaqrVar.zzus("minute");
            zzaqrVar.zzcs(calendar.get(12));
            zzaqrVar.zzus("second");
            zzaqrVar.zzcs(calendar.get(13));
            zzaqrVar.mo6627bz();
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzab */
        public Calendar zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            zzaqpVar.beginObject();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (zzaqpVar.mo6619bq() != zzaqq.END_OBJECT) {
                String nextName = zzaqpVar.nextName();
                int nextInt = zzaqpVar.nextInt();
                if ("year".equals(nextName)) {
                    i6 = nextInt;
                } else if ("month".equals(nextName)) {
                    i5 = nextInt;
                } else if ("dayOfMonth".equals(nextName)) {
                    i4 = nextInt;
                } else if ("hourOfDay".equals(nextName)) {
                    i3 = nextInt;
                } else if ("minute".equals(nextName)) {
                    i2 = nextInt;
                } else if ("second".equals(nextName)) {
                    i = nextInt;
                }
            }
            zzaqpVar.endObject();
            return new GregorianCalendar(i6, i5, i4, i3, i2, i);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$17 */
    static class C133517 extends zzapk<Locale> {
        C133517() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Locale locale) {
            zzaqrVar.zzut(locale == null ? null : locale.toString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzac */
        public Locale zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(zzaqpVar.nextString(), "_");
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            return (nextToken2 == null && nextToken3 == null) ? new Locale(nextToken) : nextToken3 == null ? new Locale(nextToken, nextToken2) : new Locale(nextToken, nextToken2, nextToken3);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$18 */
    static class C133618 extends zzapk<zzaoy> {
        C133618() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, zzaoy zzaoyVar) {
            if (zzaoyVar == null || zzaoyVar.m6597aY()) {
                zzaqrVar.mo6622bA();
                return;
            }
            if (zzaoyVar.m6596aX()) {
                zzape m6600bb = zzaoyVar.m6600bb();
                if (m6600bb.m6603be()) {
                    zzaqrVar.zza(m6600bb.mo6592aT());
                    return;
                } else if (m6600bb.m6602bd()) {
                    zzaqrVar.zzdh(m6600bb.getAsBoolean());
                    return;
                } else {
                    zzaqrVar.zzut(m6600bb.mo6593aU());
                    return;
                }
            }
            if (zzaoyVar.m6594aV()) {
                zzaqrVar.mo6624bw();
                Iterator<zzaoy> it = zzaoyVar.m6599ba().iterator();
                while (it.hasNext()) {
                    zza(zzaqrVar, it.next());
                }
                zzaqrVar.mo6625bx();
                return;
            }
            if (!zzaoyVar.m6595aW()) {
                String valueOf = String.valueOf(zzaoyVar.getClass());
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 15).append("Couldn't write ").append(valueOf).toString());
            }
            zzaqrVar.mo6626by();
            for (Map.Entry<String, zzaoy> entry : zzaoyVar.m6598aZ().entrySet()) {
                zzaqrVar.zzus(entry.getKey());
                zza(zzaqrVar, entry.getValue());
            }
            zzaqrVar.mo6627bz();
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzad */
        public zzaoy zzb(zzaqp zzaqpVar) {
            switch (C134526.bpW[zzaqpVar.mo6619bq().ordinal()]) {
                case 1:
                    return new zzape((Number) new zzapv(zzaqpVar.nextString()));
                case 2:
                    return new zzape(Boolean.valueOf(zzaqpVar.nextBoolean()));
                case 3:
                    return new zzape(zzaqpVar.nextString());
                case 4:
                    zzaqpVar.nextNull();
                    return zzapa.bou;
                case 5:
                    zzaov zzaovVar = new zzaov();
                    zzaqpVar.beginArray();
                    while (zzaqpVar.hasNext()) {
                        zzaovVar.zzc((zzaoy) zzb(zzaqpVar));
                    }
                    zzaqpVar.endArray();
                    return zzaovVar;
                case 6:
                    zzapb zzapbVar = new zzapb();
                    zzaqpVar.beginObject();
                    while (zzaqpVar.hasNext()) {
                        zzapbVar.zza(zzaqpVar.nextName(), (zzaoy) zzb(zzaqpVar));
                    }
                    zzaqpVar.endObject();
                    return zzapbVar;
                default:
                    throw new IllegalArgumentException();
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$19 */
    static class C133719 implements zzapl {
        C133719() {
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            Class<? super T> m6628bB = zzaqoVar.m6628bB();
            if (!Enum.class.isAssignableFrom(m6628bB) || m6628bB == Enum.class) {
                return null;
            }
            if (!m6628bB.isEnum()) {
                m6628bB = m6628bB.getSuperclass();
            }
            return new zza(m6628bB);
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$2 */
    static class C13382 extends zzapk<Number> {
        C13382() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return Double.valueOf(zzaqpVar.nextDouble());
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$20 */
    static class C133920 implements zzapl {
        final /* synthetic */ zzapk brd;

        C133920(zzapk zzapkVar) {
            zzapkVar = zzapkVar;
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (zzaqoVar.equals(zzaqo.this)) {
                return zzapkVar;
            }
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$21 */
    static class C134021 implements zzapl {
        final /* synthetic */ zzapk brd;
        final /* synthetic */ Class bre;

        C134021(Class cls, zzapk zzapkVar) {
            cls = cls;
            zzapkVar = zzapkVar;
        }

        public String toString() {
            String valueOf = String.valueOf(cls.getName());
            String valueOf2 = String.valueOf(zzapkVar);
            return new StringBuilder(String.valueOf(valueOf).length() + 23 + String.valueOf(valueOf2).length()).append("Factory[type=").append(valueOf).append(",adapter=").append(valueOf2).append("]").toString();
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (zzaqoVar.m6628bB() == cls) {
                return zzapkVar;
            }
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$22 */
    static class C134122 implements zzapl {
        final /* synthetic */ zzapk brd;
        final /* synthetic */ Class brf;
        final /* synthetic */ Class brg;

        C134122(Class cls, Class cls2, zzapk zzapkVar) {
            cls = cls;
            cls2 = cls2;
            zzapkVar = zzapkVar;
        }

        public String toString() {
            String valueOf = String.valueOf(cls2.getName());
            String valueOf2 = String.valueOf(cls.getName());
            String valueOf3 = String.valueOf(zzapkVar);
            return new StringBuilder(String.valueOf(valueOf).length() + 24 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("Factory[type=").append(valueOf).append("+").append(valueOf2).append(",adapter=").append(valueOf3).append("]").toString();
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            Class<? super T> m6628bB = zzaqoVar.m6628bB();
            if (m6628bB == cls || m6628bB == cls2) {
                return zzapkVar;
            }
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$23 */
    static class C134223 extends zzapk<Boolean> {
        C134223() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Boolean bool) {
            if (bool == null) {
                zzaqrVar.mo6622bA();
            } else {
                zzaqrVar.zzdh(bool.booleanValue());
            }
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzae */
        public Boolean zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return zzaqpVar.mo6619bq() == zzaqq.STRING ? Boolean.valueOf(Boolean.parseBoolean(zzaqpVar.nextString())) : Boolean.valueOf(zzaqpVar.nextBoolean());
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$24 */
    static class C134324 implements zzapl {
        final /* synthetic */ zzapk brd;
        final /* synthetic */ Class brh;
        final /* synthetic */ Class bri;

        C134324(Class cls, Class cls2, zzapk zzapkVar) {
            cls = cls;
            cls2 = cls2;
            zzapkVar = zzapkVar;
        }

        public String toString() {
            String valueOf = String.valueOf(cls.getName());
            String valueOf2 = String.valueOf(cls2.getName());
            String valueOf3 = String.valueOf(zzapkVar);
            return new StringBuilder(String.valueOf(valueOf).length() + 24 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("Factory[type=").append(valueOf).append("+").append(valueOf2).append(",adapter=").append(valueOf3).append("]").toString();
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            Class<? super T> m6628bB = zzaqoVar.m6628bB();
            if (m6628bB == cls || m6628bB == cls2) {
                return zzapkVar;
            }
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$25 */
    static class C134425 implements zzapl {
        final /* synthetic */ zzapk brd;
        final /* synthetic */ Class brj;

        C134425(Class cls, zzapk zzapkVar) {
            cls = cls;
            zzapkVar = zzapkVar;
        }

        public String toString() {
            String valueOf = String.valueOf(cls.getName());
            String valueOf2 = String.valueOf(zzapkVar);
            return new StringBuilder(String.valueOf(valueOf).length() + 32 + String.valueOf(valueOf2).length()).append("Factory[typeHierarchy=").append(valueOf).append(",adapter=").append(valueOf2).append("]").toString();
        }

        @Override // com.google.android.gms.internal.zzapl
        public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
            if (cls.isAssignableFrom(zzaqoVar.m6628bB())) {
                return zzapkVar;
            }
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$27 */
    static class C134627 extends zzapk<Boolean> {
        C134627() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Boolean bool) {
            zzaqrVar.zzut(bool == null ? "null" : bool.toString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzae */
        public Boolean zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return Boolean.valueOf(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$28 */
    static class C134728 extends zzapk<Number> {
        C134728() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return Byte.valueOf((byte) zzaqpVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$29 */
    static class C134829 extends zzapk<Number> {
        C134829() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return Short.valueOf((short) zzaqpVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$3 */
    static class C13493 extends zzapk<Number> {
        C13493() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            zzaqq mo6619bq = zzaqpVar.mo6619bq();
            switch (mo6619bq) {
                case NUMBER:
                    return new zzapv(zzaqpVar.nextString());
                case BOOLEAN:
                case STRING:
                default:
                    String valueOf = String.valueOf(mo6619bq);
                    throw new zzaph(new StringBuilder(String.valueOf(valueOf).length() + 23).append("Expecting number, got: ").append(valueOf).toString());
                case NULL:
                    zzaqpVar.nextNull();
                    return null;
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$30 */
    static class C135030 extends zzapk<Number> {
        C135030() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return Integer.valueOf(zzaqpVar.nextInt());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$31 */
    static class C135131 extends zzapk<Number> {
        C135131() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return Long.valueOf(zzaqpVar.nextLong());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$32 */
    static class C135232 extends zzapk<Number> {
        C135232() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Number number) {
            zzaqrVar.zza(number);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzg */
        public Number zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return Float.valueOf((float) zzaqpVar.nextDouble());
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$4 */
    static class C13534 extends zzapk<Character> {
        C13534() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, Character ch) {
            zzaqrVar.zzut(ch == null ? null : String.valueOf(ch));
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzp */
        public Character zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            String nextString = zzaqpVar.nextString();
            if (nextString.length() == 1) {
                return Character.valueOf(nextString.charAt(0));
            }
            String valueOf = String.valueOf(nextString);
            throw new zzaph(valueOf.length() != 0 ? "Expecting character, got: ".concat(valueOf) : new String("Expecting character, got: "));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$5 */
    static class C13545 extends zzapk<String> {
        C13545() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, String str) {
            zzaqrVar.zzut(str);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzq */
        public String zzb(zzaqp zzaqpVar) {
            zzaqq mo6619bq = zzaqpVar.mo6619bq();
            if (mo6619bq != zzaqq.NULL) {
                return mo6619bq == zzaqq.BOOLEAN ? Boolean.toString(zzaqpVar.nextBoolean()) : zzaqpVar.nextString();
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$6 */
    static class C13556 extends zzapk<BigDecimal> {
        C13556() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, BigDecimal bigDecimal) {
            zzaqrVar.zza(bigDecimal);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzr */
        public BigDecimal zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return new BigDecimal(zzaqpVar.nextString());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$7 */
    static class C13567 extends zzapk<BigInteger> {
        C13567() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, BigInteger bigInteger) {
            zzaqrVar.zza(bigInteger);
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzs */
        public BigInteger zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() == zzaqq.NULL) {
                zzaqpVar.nextNull();
                return null;
            }
            try {
                return new BigInteger(zzaqpVar.nextString());
            } catch (NumberFormatException e) {
                throw new zzaph(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$8 */
    static class C13578 extends zzapk<StringBuilder> {
        C13578() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, StringBuilder sb) {
            zzaqrVar.zzut(sb == null ? null : sb.toString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzt */
        public StringBuilder zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return new StringBuilder(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    /* renamed from: com.google.android.gms.internal.zzaqn$9 */
    static class C13589 extends zzapk<StringBuffer> {
        C13589() {
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, StringBuffer stringBuffer) {
            zzaqrVar.zzut(stringBuffer == null ? null : stringBuffer.toString());
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzu */
        public StringBuffer zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return new StringBuffer(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    private static final class zza<T extends Enum<T>> extends zzapk<T> {
        private final Map<String, T> brk = new HashMap();
        private final Map<T, String> brl = new HashMap();

        public zza(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    zzapn zzapnVar = (zzapn) cls.getField(name).getAnnotation(zzapn.class);
                    if (zzapnVar != null) {
                        name = zzapnVar.value();
                        String[] m6606bh = zzapnVar.m6606bh();
                        for (String str : m6606bh) {
                            this.brk.put(str, t);
                        }
                    }
                    String str2 = name;
                    this.brk.put(str2, t);
                    this.brl.put(t, str2);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError();
            }
        }

        @Override // com.google.android.gms.internal.zzapk
        public void zza(zzaqr zzaqrVar, T t) {
            zzaqrVar.zzut(t == null ? null : this.brl.get(t));
        }

        @Override // com.google.android.gms.internal.zzapk
        /* renamed from: zzaf */
        public T zzb(zzaqp zzaqpVar) {
            if (zzaqpVar.mo6619bq() != zzaqq.NULL) {
                return this.brk.get(zzaqpVar.nextString());
            }
            zzaqpVar.nextNull();
            return null;
        }
    }

    public static <TT> zzapl zza(zzaqo<TT> zzaqoVar, zzapk<TT> zzapkVar) {
        return new zzapl() { // from class: com.google.android.gms.internal.zzaqn.20
            final /* synthetic */ zzapk brd;

            C133920(zzapk zzapkVar2) {
                zzapkVar = zzapkVar2;
            }

            @Override // com.google.android.gms.internal.zzapl
            public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar2) {
                if (zzaqoVar2.equals(zzaqo.this)) {
                    return zzapkVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzapl zza(Class<TT> cls, zzapk<TT> zzapkVar) {
        return new zzapl() { // from class: com.google.android.gms.internal.zzaqn.21
            final /* synthetic */ zzapk brd;
            final /* synthetic */ Class bre;

            C134021(Class cls2, zzapk zzapkVar2) {
                cls = cls2;
                zzapkVar = zzapkVar2;
            }

            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(zzapkVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 23 + String.valueOf(valueOf2).length()).append("Factory[type=").append(valueOf).append(",adapter=").append(valueOf2).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzapl
            public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
                if (zzaqoVar.m6628bB() == cls) {
                    return zzapkVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzapl zza(Class<TT> cls, Class<TT> cls2, zzapk<? super TT> zzapkVar) {
        return new zzapl() { // from class: com.google.android.gms.internal.zzaqn.22
            final /* synthetic */ zzapk brd;
            final /* synthetic */ Class brf;
            final /* synthetic */ Class brg;

            C134122(Class cls3, Class cls22, zzapk zzapkVar2) {
                cls = cls3;
                cls2 = cls22;
                zzapkVar = zzapkVar2;
            }

            public String toString() {
                String valueOf = String.valueOf(cls2.getName());
                String valueOf2 = String.valueOf(cls.getName());
                String valueOf3 = String.valueOf(zzapkVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 24 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("Factory[type=").append(valueOf).append("+").append(valueOf2).append(",adapter=").append(valueOf3).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzapl
            public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
                Class<? super T> m6628bB = zzaqoVar.m6628bB();
                if (m6628bB == cls || m6628bB == cls2) {
                    return zzapkVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzapl zzb(Class<TT> cls, zzapk<TT> zzapkVar) {
        return new zzapl() { // from class: com.google.android.gms.internal.zzaqn.25
            final /* synthetic */ zzapk brd;
            final /* synthetic */ Class brj;

            C134425(Class cls2, zzapk zzapkVar2) {
                cls = cls2;
                zzapkVar = zzapkVar2;
            }

            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(zzapkVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 32 + String.valueOf(valueOf2).length()).append("Factory[typeHierarchy=").append(valueOf).append(",adapter=").append(valueOf2).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzapl
            public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
                if (cls.isAssignableFrom(zzaqoVar.m6628bB())) {
                    return zzapkVar;
                }
                return null;
            }
        };
    }

    public static <TT> zzapl zzb(Class<TT> cls, Class<? extends TT> cls2, zzapk<? super TT> zzapkVar) {
        return new zzapl() { // from class: com.google.android.gms.internal.zzaqn.24
            final /* synthetic */ zzapk brd;
            final /* synthetic */ Class brh;
            final /* synthetic */ Class bri;

            C134324(Class cls3, Class cls22, zzapk zzapkVar2) {
                cls = cls3;
                cls2 = cls22;
                zzapkVar = zzapkVar2;
            }

            public String toString() {
                String valueOf = String.valueOf(cls.getName());
                String valueOf2 = String.valueOf(cls2.getName());
                String valueOf3 = String.valueOf(zzapkVar);
                return new StringBuilder(String.valueOf(valueOf).length() + 24 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("Factory[type=").append(valueOf).append("+").append(valueOf2).append(",adapter=").append(valueOf3).append("]").toString();
            }

            @Override // com.google.android.gms.internal.zzapl
            public <T> zzapk<T> zza(zzaos zzaosVar, zzaqo<T> zzaqoVar) {
                Class<? super T> m6628bB = zzaqoVar.m6628bB();
                if (m6628bB == cls || m6628bB == cls2) {
                    return zzapkVar;
                }
                return null;
            }
        };
    }
}
