package com.p052a.p053a.p057d.p060b;

import com.p052a.p053a.p057d.EnumC0741a;
import com.p052a.p053a.p057d.EnumC0809c;

/* renamed from: com.a.a.d.b.h */
/* loaded from: classes.dex */
public abstract class AbstractC0793h {

    /* renamed from: a */
    public static final AbstractC0793h f4382a = new AbstractC0793h() { // from class: com.a.a.d.b.h.1
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4845a(EnumC0741a enumC0741a) {
            return enumC0741a == EnumC0741a.REMOTE;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c) {
            return (enumC0741a == EnumC0741a.RESOURCE_DISK_CACHE || enumC0741a == EnumC0741a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4844a() {
            return true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: b */
        public boolean mo4847b() {
            return true;
        }
    };

    /* renamed from: b */
    public static final AbstractC0793h f4383b = new AbstractC0793h() { // from class: com.a.a.d.b.h.2
        AnonymousClass2() {
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4845a(EnumC0741a enumC0741a) {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c) {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4844a() {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: b */
        public boolean mo4847b() {
            return false;
        }
    };

    /* renamed from: c */
    public static final AbstractC0793h f4384c = new AbstractC0793h() { // from class: com.a.a.d.b.h.3
        AnonymousClass3() {
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4845a(EnumC0741a enumC0741a) {
            return (enumC0741a == EnumC0741a.DATA_DISK_CACHE || enumC0741a == EnumC0741a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c) {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4844a() {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: b */
        public boolean mo4847b() {
            return true;
        }
    };

    /* renamed from: d */
    public static final AbstractC0793h f4385d = new AbstractC0793h() { // from class: com.a.a.d.b.h.4
        AnonymousClass4() {
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4845a(EnumC0741a enumC0741a) {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c) {
            return (enumC0741a == EnumC0741a.RESOURCE_DISK_CACHE || enumC0741a == EnumC0741a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4844a() {
            return true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: b */
        public boolean mo4847b() {
            return false;
        }
    };

    /* renamed from: e */
    public static final AbstractC0793h f4386e = new AbstractC0793h() { // from class: com.a.a.d.b.h.5
        AnonymousClass5() {
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4845a(EnumC0741a enumC0741a) {
            return enumC0741a == EnumC0741a.REMOTE;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c) {
            return ((z && enumC0741a == EnumC0741a.DATA_DISK_CACHE) || enumC0741a == EnumC0741a.LOCAL) && enumC0809c == EnumC0809c.TRANSFORMED;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4844a() {
            return true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: b */
        public boolean mo4847b() {
            return true;
        }
    };

    /* renamed from: a */
    public abstract boolean mo4844a();

    /* renamed from: a */
    public abstract boolean mo4845a(EnumC0741a enumC0741a);

    /* renamed from: a */
    public abstract boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c);

    /* renamed from: b */
    public abstract boolean mo4847b();

    /* renamed from: com.a.a.d.b.h$1 */
    static class AnonymousClass1 extends AbstractC0793h {
        AnonymousClass1() {
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4845a(EnumC0741a enumC0741a) {
            return enumC0741a == EnumC0741a.REMOTE;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c) {
            return (enumC0741a == EnumC0741a.RESOURCE_DISK_CACHE || enumC0741a == EnumC0741a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4844a() {
            return true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: b */
        public boolean mo4847b() {
            return true;
        }
    }

    /* renamed from: com.a.a.d.b.h$2 */
    static class AnonymousClass2 extends AbstractC0793h {
        AnonymousClass2() {
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4845a(EnumC0741a enumC0741a) {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c) {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4844a() {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: b */
        public boolean mo4847b() {
            return false;
        }
    }

    /* renamed from: com.a.a.d.b.h$3 */
    static class AnonymousClass3 extends AbstractC0793h {
        AnonymousClass3() {
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4845a(EnumC0741a enumC0741a) {
            return (enumC0741a == EnumC0741a.DATA_DISK_CACHE || enumC0741a == EnumC0741a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c) {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4844a() {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: b */
        public boolean mo4847b() {
            return true;
        }
    }

    /* renamed from: com.a.a.d.b.h$4 */
    static class AnonymousClass4 extends AbstractC0793h {
        AnonymousClass4() {
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4845a(EnumC0741a enumC0741a) {
            return false;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c) {
            return (enumC0741a == EnumC0741a.RESOURCE_DISK_CACHE || enumC0741a == EnumC0741a.MEMORY_CACHE) ? false : true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4844a() {
            return true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: b */
        public boolean mo4847b() {
            return false;
        }
    }

    /* renamed from: com.a.a.d.b.h$5 */
    static class AnonymousClass5 extends AbstractC0793h {
        AnonymousClass5() {
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4845a(EnumC0741a enumC0741a) {
            return enumC0741a == EnumC0741a.REMOTE;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4846a(boolean z, EnumC0741a enumC0741a, EnumC0809c enumC0809c) {
            return ((z && enumC0741a == EnumC0741a.DATA_DISK_CACHE) || enumC0741a == EnumC0741a.LOCAL) && enumC0809c == EnumC0809c.TRANSFORMED;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: a */
        public boolean mo4844a() {
            return true;
        }

        @Override // com.p052a.p053a.p057d.p060b.AbstractC0793h
        /* renamed from: b */
        public boolean mo4847b() {
            return true;
        }
    }
}
