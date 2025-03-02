package GeneralFunction.p009h;

import GeneralFunction.C0052d;
import GeneralFunction.p005e.C0060d;
import GeneralFunction.p008g.C0069a;
import GeneralFunction.p016m.C0088a;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;
import p026a.p032c.C0121a;
import ui_Controller.p110b.C1659a;
import ui_Controller.p110b.C1660b;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* renamed from: GeneralFunction.h.b */
/* loaded from: classes.dex */
public class C0073b {

    /* renamed from: d */
    private UI_ModeMain f580d;

    /* renamed from: a */
    private HandlerThread f577a = null;

    /* renamed from: b */
    private Handler f578b = null;

    /* renamed from: c */
    private C0072a f579c = null;

    /* renamed from: e */
    private C0060d f581e = null;

    /* renamed from: f */
    private C0060d f582f = null;

    /* renamed from: g */
    private int f583g = 0;

    /* renamed from: a */
    public void m675a(String str, int i) {
        C0052d.m465a("UI_FileControl", str, i);
    }

    public C0073b(UI_ModeMain uI_ModeMain) {
        this.f580d = null;
        this.f580d = uI_ModeMain;
    }

    /* renamed from: a */
    public void m682a(C1660b c1660b) {
        this.f579c = new C0072a();
        this.f579c.f567b = 0;
        this.f579c.f569d = new ArrayBlockingQueue(20);
        this.f579c.f570e = c1660b;
        this.f577a = new HandlerThread("FileControlServer");
        this.f577a.start();
        this.f578b = m669a(this.f577a);
        this.f581e = c1660b.f7478b.f7526a;
        this.f582f = c1660b.f7477a.f7786a;
    }

    /* renamed from: a */
    public void m678a(C0121a c0121a, long j) {
        m680a(c0121a.m1208b(), j);
    }

    /* renamed from: a */
    public void m680a(Message message, long j) {
        this.f579c.f567b++;
        this.f578b.sendMessageDelayed(message, j);
    }

    /* renamed from: a */
    public boolean m683a() {
        return this.f579c.f567b == 0;
    }

    /* renamed from: b */
    public void m685b() {
        this.f579c.f568c = true;
        this.f580d.m7998d(new C0121a(12291));
    }

    /* renamed from: c */
    public void m686c() {
        this.f583g = 0;
    }

    /* renamed from: d */
    public int m687d() {
        return this.f583g;
    }

    /* renamed from: a */
    public void m681a(ArrayList<C1659a> arrayList) {
        if (arrayList.size() == 0) {
            m675a("UI_ExcuteAction no get data", 4);
            return;
        }
        C0121a c0121a = new C0121a(12290);
        c0121a.m1202a("ActionList", new C0121a.a(arrayList));
        this.f580d.m7998d(c0121a);
    }

    /* renamed from: a */
    public boolean m684a(String str) {
        return new File(str).exists();
    }

    /* renamed from: GeneralFunction.h.b$1 */
    class AnonymousClass1 extends Handler {
        AnonymousClass1(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i;
            super.handleMessage(message);
            C0121a c0121a = new C0121a(message);
            new ArrayList();
            C0073b.this.m675a("File Server HandleMessage: 0x" + Integer.toHexString(message.what), 3);
            switch (message.what) {
                case 12290:
                    if (!C0073b.this.f579c.f568c) {
                        C0073b.this.f579c.f566a = 5;
                        ArrayList arrayList = (ArrayList) c0121a.m1213f("ActionList").m1214a();
                        int i2 = 0;
                        while (true) {
                            int i3 = i2;
                            if (i3 < arrayList.size()) {
                                C0073b.this.m675a("======================", 4);
                                C0073b.this.m675a(((C1659a) arrayList.get(i3)).m7079a(), 4);
                                i2 = i3 + 1;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                ArrayList arrayList3 = new ArrayList();
                                int i4 = 0;
                                while (true) {
                                    int i5 = i4;
                                    if (i5 < arrayList.size()) {
                                        if (C0073b.this.f579c.f568c) {
                                            C0073b.this.m675a("Delete Cancel", 4);
                                        } else {
                                            C1659a c1659a = (C1659a) arrayList.get(i5);
                                            ArrayList<Integer> arrayList4 = c1659a.f7474b;
                                            boolean z = false;
                                            if (arrayList4.size() == 0) {
                                                i = 1;
                                            } else {
                                                int size = arrayList4.size();
                                                C0073b.this.m675a("ulRunCount " + size, 4);
                                                i = size;
                                            }
                                            int i6 = 0;
                                            while (true) {
                                                if (i6 >= i) {
                                                    break;
                                                }
                                                if (C0073b.this.f579c.f568c) {
                                                    C0073b.this.m675a("Delete Cancel", 4);
                                                } else {
                                                    int i7 = c1659a.f7473a;
                                                    int intValue = arrayList4.get(i6).intValue();
                                                    int m505a = C0073b.this.f581e.m505a(i7, intValue);
                                                    arrayList2.add(C0073b.this.f581e.m528h(i7, intValue));
                                                    arrayList3.add(Integer.valueOf(m505a));
                                                    boolean z2 = C0073b.this.f581e.m538q(C0073b.this.f581e.m542u(i7)) <= 1 ? true : z;
                                                    C0073b.this.m670a(i7, intValue);
                                                    C0121a c0121a2 = new C0121a(12323);
                                                    c0121a2.m1200a("parent index", i7);
                                                    c0121a2.m1200a("child index", intValue);
                                                    c0121a2.m1204a("delete group", z2);
                                                    C0073b.this.f580d.m7980a(c0121a2);
                                                    i6++;
                                                    z = z2;
                                                }
                                            }
                                            i4 = i5 + 1;
                                        }
                                    }
                                }
                                C0073b.this.f580d.m7980a(new C0121a(12324));
                                int i8 = 0;
                                while (true) {
                                    int i9 = i8;
                                    if (i9 >= arrayList3.size()) {
                                        break;
                                    } else {
                                        C0073b.this.m671a(((Integer) arrayList3.get(i9)).intValue(), (String) arrayList2.get(i9));
                                        i8 = i9 + 1;
                                    }
                                }
                            }
                        }
                    }
                    break;
                case 12291:
                    C0073b.this.m675a("File server cancel complete", 4);
                    C0073b.this.f579c.f568c = false;
                    C0073b.this.f579c.f566a = 0;
                    break;
            }
            C0072a c0072a = C0073b.this.f579c;
            c0072a.f567b--;
            C0073b.this.m675a("IsFileControllerIdle:" + C0073b.this.m683a(), 3);
            C0073b.this.f579c.f566a = 0;
        }
    }

    /* renamed from: a */
    private Handler m669a(HandlerThread handlerThread) {
        return new Handler(handlerThread.getLooper()) { // from class: GeneralFunction.h.b.1
            AnonymousClass1(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i;
                super.handleMessage(message);
                C0121a c0121a = new C0121a(message);
                new ArrayList();
                C0073b.this.m675a("File Server HandleMessage: 0x" + Integer.toHexString(message.what), 3);
                switch (message.what) {
                    case 12290:
                        if (!C0073b.this.f579c.f568c) {
                            C0073b.this.f579c.f566a = 5;
                            ArrayList arrayList = (ArrayList) c0121a.m1213f("ActionList").m1214a();
                            int i2 = 0;
                            while (true) {
                                int i3 = i2;
                                if (i3 < arrayList.size()) {
                                    C0073b.this.m675a("======================", 4);
                                    C0073b.this.m675a(((C1659a) arrayList.get(i3)).m7079a(), 4);
                                    i2 = i3 + 1;
                                } else {
                                    ArrayList arrayList2 = new ArrayList();
                                    ArrayList arrayList3 = new ArrayList();
                                    int i4 = 0;
                                    while (true) {
                                        int i5 = i4;
                                        if (i5 < arrayList.size()) {
                                            if (C0073b.this.f579c.f568c) {
                                                C0073b.this.m675a("Delete Cancel", 4);
                                            } else {
                                                C1659a c1659a = (C1659a) arrayList.get(i5);
                                                ArrayList<Integer> arrayList4 = c1659a.f7474b;
                                                boolean z = false;
                                                if (arrayList4.size() == 0) {
                                                    i = 1;
                                                } else {
                                                    int size = arrayList4.size();
                                                    C0073b.this.m675a("ulRunCount " + size, 4);
                                                    i = size;
                                                }
                                                int i6 = 0;
                                                while (true) {
                                                    if (i6 >= i) {
                                                        break;
                                                    }
                                                    if (C0073b.this.f579c.f568c) {
                                                        C0073b.this.m675a("Delete Cancel", 4);
                                                    } else {
                                                        int i7 = c1659a.f7473a;
                                                        int intValue = arrayList4.get(i6).intValue();
                                                        int m505a = C0073b.this.f581e.m505a(i7, intValue);
                                                        arrayList2.add(C0073b.this.f581e.m528h(i7, intValue));
                                                        arrayList3.add(Integer.valueOf(m505a));
                                                        boolean z2 = C0073b.this.f581e.m538q(C0073b.this.f581e.m542u(i7)) <= 1 ? true : z;
                                                        C0073b.this.m670a(i7, intValue);
                                                        C0121a c0121a2 = new C0121a(12323);
                                                        c0121a2.m1200a("parent index", i7);
                                                        c0121a2.m1200a("child index", intValue);
                                                        c0121a2.m1204a("delete group", z2);
                                                        C0073b.this.f580d.m7980a(c0121a2);
                                                        i6++;
                                                        z = z2;
                                                    }
                                                }
                                                i4 = i5 + 1;
                                            }
                                        }
                                    }
                                    C0073b.this.f580d.m7980a(new C0121a(12324));
                                    int i8 = 0;
                                    while (true) {
                                        int i9 = i8;
                                        if (i9 >= arrayList3.size()) {
                                            break;
                                        } else {
                                            C0073b.this.m671a(((Integer) arrayList3.get(i9)).intValue(), (String) arrayList2.get(i9));
                                            i8 = i9 + 1;
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    case 12291:
                        C0073b.this.m675a("File server cancel complete", 4);
                        C0073b.this.f579c.f568c = false;
                        C0073b.this.f579c.f566a = 0;
                        break;
                }
                C0072a c0072a = C0073b.this.f579c;
                c0072a.f567b--;
                C0073b.this.m675a("IsFileControllerIdle:" + C0073b.this.m683a(), 3);
                C0073b.this.f579c.f566a = 0;
            }
        };
    }

    /* renamed from: a */
    public void m670a(int i, int i2) {
        this.f581e.m506a();
        this.f581e.m511b();
        this.f581e.m514c();
        this.f579c.f570e.f7481e.m553a(i, i2);
        this.f580d.m8018x();
        switch (this.f579c.f570e.f7478b.f7542d) {
            case 1:
                this.f581e.m507a(this.f579c.f570e.f7481e.m550a(), this.f579c.f570e.f7482f);
                break;
            case 2:
                this.f581e.m507a(this.f579c.f570e.f7481e.m550a(), this.f579c.f570e.f7483g);
                break;
            case 3:
                this.f581e.m507a(this.f579c.f570e.f7481e.m550a(), this.f579c.f570e.f7484h);
                break;
        }
        m675a("Delete Update", 4);
        this.f581e.m506a();
        this.f581e.m511b();
        this.f581e.m514c();
    }

    /* renamed from: a */
    public void m671a(int i, String str) {
        C0069a.m642a(str, this.f580d);
        if (i == 1 || i == 5) {
            String m649d = C0069a.m649d(str);
            m675a("Delete File " + m649d, 4);
            C0069a.m642a(m649d, this.f580d);
        }
    }

    /* renamed from: a */
    public void m679a(Message message) {
        switch (message.what) {
            case 17924:
                m675a("MSG_REMOTE_EVENT_CAPTURE_DONE2", 4);
                if (this.f583g == 0) {
                    m675a("[CaptureDBG] NeedDLMainPicNum = 0, Start download the new captured pic", 2);
                    C0121a c0121a = new C0121a(18465);
                    c0121a.m1200a("IsMiddleData", 0);
                    this.f580d.m7995c(c0121a);
                }
                this.f583g++;
                break;
            case 18185:
                C0121a c0121a2 = new C0121a(message);
                int m874x = C0088a.m874x();
                int m876y = C0088a.m876y();
                int m561c = this.f579c.f570e.f7481e.m561c() + 1;
                File file = new File(c0121a2.m1211d("storage_path") + c0121a2.m1211d("storage_name"));
                int m470c = C0052d.m470c(file.getAbsolutePath());
                if (C0088a.m820a() == 1) {
                    this.f579c.f570e.f7481e.m558a(c0121a2.m1211d("storage_name"), c0121a2.m1211d("storage_path"), file.length(), 0, m470c, m874x, m876y, 0, c0121a2.m1209c("current_time"), c0121a2.m1209c("current_time"), m561c, 0, true, false, false, true, false, true, true, true, false);
                } else {
                    this.f579c.f570e.f7481e.m557a(c0121a2.m1211d("storage_name"), c0121a2.m1211d("storage_path"), file.length(), 0, m470c, m874x, m876y, 0, c0121a2.m1209c("current_time"), c0121a2.m1209c("current_time"), m561c, 0, true, false, false, true, false, true, true);
                }
                this.f581e.m506a();
                this.f580d.m8018x();
                if (C0088a.m820a() == 1) {
                    this.f581e.m507a(this.f579c.f570e.f7481e.m550a(), this.f579c.f570e.f7483g);
                } else {
                    this.f581e.m507a(this.f579c.f570e.f7481e.m550a(), this.f579c.f570e.f7482f);
                }
                this.f583g--;
                m675a("[CaptureDBG] NeedDLMainPicNum: " + this.f583g, 2);
                if (this.f583g > 0) {
                    C0121a c0121a3 = new C0121a(18465);
                    c0121a3.m1200a("IsMiddleData", 0);
                    this.f580d.m7995c(c0121a3);
                    break;
                } else {
                    this.f580d.m7976a(8730, 0L);
                    break;
                }
        }
    }
}
