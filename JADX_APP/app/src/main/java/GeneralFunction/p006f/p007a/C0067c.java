package GeneralFunction.p006f.p007a;

import GeneralFunction.p006f.p007a.C0066b;
import java.util.ArrayList;

/* renamed from: GeneralFunction.f.a.c */
/* loaded from: classes.dex */
public class C0067c {

    /* renamed from: a */
    private C0066b f551a = new C0066b();

    /* renamed from: b */
    private C0065a f552b = new C0065a();

    /* renamed from: GeneralFunction.f.a.c$a */
    public interface a {
        /* renamed from: a */
        void mo629a(int i);
    }

    /* renamed from: a */
    public void m628a(String str, String str2, int i, int i2, a aVar) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(str);
        this.f551a.m597a(arrayList, str2, new C0066b.b() { // from class: GeneralFunction.f.a.c.1

            /* renamed from: a */
            final /* synthetic */ a f553a;

            AnonymousClass1(a aVar2) {
                aVar = aVar2;
            }

            @Override // GeneralFunction.p006f.p007a.C0066b.b
            /* renamed from: a */
            public void mo598a(int i3) {
                aVar.mo629a(i3);
            }
        }, i, i2);
    }

    /* renamed from: GeneralFunction.f.a.c$1 */
    class AnonymousClass1 implements C0066b.b {

        /* renamed from: a */
        final /* synthetic */ a f553a;

        AnonymousClass1(a aVar2) {
            aVar = aVar2;
        }

        @Override // GeneralFunction.p006f.p007a.C0066b.b
        /* renamed from: a */
        public void mo598a(int i3) {
            aVar.mo629a(i3);
        }
    }

    /* renamed from: a */
    public void m627a() {
        this.f551a.m595a();
        this.f552b.m588a();
    }
}
