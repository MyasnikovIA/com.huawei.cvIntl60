package com.facebook.login;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.facebook.AccessToken;
import com.facebook.AsyncTaskC1109n;
import com.facebook.C1048h;
import com.facebook.C1074k;
import com.facebook.C1111p;
import com.facebook.EnumC1043c;
import com.facebook.EnumC1112q;
import com.facebook.FacebookActivity;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.internal.C1061l;
import com.facebook.internal.C1070u;
import com.facebook.internal.C1071v;
import com.facebook.internal.EnumC1069t;
import com.facebook.login.LoginClient;
import com.facebook.p089a.C1032g;
import com.facebook.p093b.p094a.C1042a;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DeviceAuthDialog extends DialogFragment {

    /* renamed from: a */
    private View f5624a;

    /* renamed from: b */
    private TextView f5625b;

    /* renamed from: c */
    private TextView f5626c;

    /* renamed from: d */
    private DeviceAuthMethodHandler f5627d;

    /* renamed from: f */
    private volatile AsyncTaskC1109n f5629f;

    /* renamed from: g */
    private volatile ScheduledFuture f5630g;

    /* renamed from: h */
    private volatile RequestState f5631h;

    /* renamed from: i */
    private Dialog f5632i;

    /* renamed from: e */
    private AtomicBoolean f5628e = new AtomicBoolean();

    /* renamed from: j */
    private boolean f5633j = false;

    /* renamed from: k */
    private boolean f5634k = false;

    /* renamed from: l */
    private LoginClient.Request f5635l = null;

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f5627d = (DeviceAuthMethodHandler) ((C1103d) ((FacebookActivity) getActivity()).m5525b()).m6357c().m6288g();
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable("request_state")) != null) {
            m6210a(requestState);
        }
        return onCreateView;
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        this.f5632i = new Dialog(getActivity(), com.facebook.common.R.style.com_facebook_auth_dialog);
        this.f5632i.setContentView(m6230a(C1042a.m5910b() && !this.f5634k));
        return this.f5632i;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (!this.f5633j) {
            m6231a();
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f5631h != null) {
            bundle.putParcelable("request_state", this.f5631h);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.f5633j = true;
        this.f5628e.set(true);
        super.onDestroy();
        if (this.f5629f != null) {
            this.f5629f.cancel(true);
        }
        if (this.f5630g != null) {
            this.f5630g.cancel(true);
        }
    }

    /* renamed from: a */
    public void m6233a(LoginClient.Request request) {
        this.f5635l = request;
        Bundle bundle = new Bundle();
        bundle.putString("scope", TextUtils.join(",", request.m6296a()));
        String m6304g = request.m6304g();
        if (m6304g != null) {
            bundle.putString("redirect_uri", m6304g);
        }
        String m6305h = request.m6305h();
        if (m6305h != null) {
            bundle.putString("target_user_id", m6305h);
        }
        bundle.putString("access_token", C1071v.m6129b() + "|" + C1071v.m6132c());
        bundle.putString("device_info", C1042a.m5907a());
        new GraphRequest(null, "device/login", bundle, EnumC1112q.POST, new GraphRequest.InterfaceC0995b() { // from class: com.facebook.login.DeviceAuthDialog.1
            C10771() {
            }

            @Override // com.facebook.GraphRequest.InterfaceC0995b
            /* renamed from: a */
            public void mo777a(C1111p c1111p) {
                if (!DeviceAuthDialog.this.f5633j) {
                    if (c1111p.m6419a() != null) {
                        DeviceAuthDialog.this.m6232a(c1111p.m6419a().m5533f());
                        return;
                    }
                    JSONObject m6420b = c1111p.m6420b();
                    RequestState requestState = new RequestState();
                    try {
                        requestState.m6237a(m6420b.getString("user_code"));
                        requestState.m6240b(m6420b.getString("code"));
                        requestState.m6236a(m6420b.getLong("interval"));
                        DeviceAuthDialog.this.m6210a(requestState);
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.m6232a(new C1048h(e));
                    }
                }
            }
        }).m5591j();
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$1 */
    class C10771 implements GraphRequest.InterfaceC0995b {
        C10771() {
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            if (!DeviceAuthDialog.this.f5633j) {
                if (c1111p.m6419a() != null) {
                    DeviceAuthDialog.this.m6232a(c1111p.m6419a().m5533f());
                    return;
                }
                JSONObject m6420b = c1111p.m6420b();
                RequestState requestState = new RequestState();
                try {
                    requestState.m6237a(m6420b.getString("user_code"));
                    requestState.m6240b(m6420b.getString("code"));
                    requestState.m6236a(m6420b.getLong("interval"));
                    DeviceAuthDialog.this.m6210a(requestState);
                } catch (JSONException e) {
                    DeviceAuthDialog.this.m6232a(new C1048h(e));
                }
            }
        }
    }

    /* renamed from: a */
    public void m6210a(RequestState requestState) {
        this.f5631h = requestState;
        this.f5625b.setText(requestState.m6238b());
        this.f5626c.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, new BitmapDrawable(getResources(), C1042a.m5909b(requestState.m6235a())), (Drawable) null, (Drawable) null);
        this.f5625b.setVisibility(0);
        this.f5624a.setVisibility(8);
        if (!this.f5634k && C1042a.m5908a(requestState.m6238b())) {
            C1032g.m5838a(getContext()).m5856a("fb_smart_login_service", (Double) null, (Bundle) null);
        }
        if (requestState.m6243e()) {
            m6223c();
        } else {
            m6220b();
        }
    }

    /* renamed from: a */
    protected View m6230a(boolean z) {
        View inflate = getActivity().getLayoutInflater().inflate(m6234b(z), (ViewGroup) null);
        this.f5624a = inflate.findViewById(com.facebook.common.R.id.progress_bar);
        this.f5625b = (TextView) inflate.findViewById(com.facebook.common.R.id.confirmation_code);
        ((Button) inflate.findViewById(com.facebook.common.R.id.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.2
            ViewOnClickListenerC10782() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DeviceAuthDialog.this.m6231a();
            }
        });
        this.f5626c = (TextView) inflate.findViewById(com.facebook.common.R.id.com_facebook_device_auth_instructions);
        this.f5626c.setText(Html.fromHtml(getString(com.facebook.common.R.string.com_facebook_device_auth_instructions)));
        return inflate;
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$2 */
    class ViewOnClickListenerC10782 implements View.OnClickListener {
        ViewOnClickListenerC10782() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeviceAuthDialog.this.m6231a();
        }
    }

    @LayoutRes
    /* renamed from: b */
    protected int m6234b(boolean z) {
        return z ? com.facebook.common.R.layout.com_facebook_smart_device_dialog_fragment : com.facebook.common.R.layout.com_facebook_device_auth_dialog_fragment;
    }

    /* renamed from: b */
    public void m6220b() {
        this.f5631h.m6239b(new Date().getTime());
        this.f5629f = m6224d().m5591j();
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$3 */
    class RunnableC10793 implements Runnable {
        RunnableC10793() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DeviceAuthDialog.this.m6220b();
        }
    }

    /* renamed from: c */
    public void m6223c() {
        this.f5630g = DeviceAuthMethodHandler.m6247d().schedule(new Runnable() { // from class: com.facebook.login.DeviceAuthDialog.3
            RunnableC10793() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DeviceAuthDialog.this.m6220b();
            }
        }, this.f5631h.m6242d(), TimeUnit.SECONDS);
    }

    /* renamed from: d */
    private GraphRequest m6224d() {
        Bundle bundle = new Bundle();
        bundle.putString("code", this.f5631h.m6241c());
        return new GraphRequest(null, "device/login_status", bundle, EnumC1112q.POST, new GraphRequest.InterfaceC0995b() { // from class: com.facebook.login.DeviceAuthDialog.4
            C10804() {
            }

            @Override // com.facebook.GraphRequest.InterfaceC0995b
            /* renamed from: a */
            public void mo777a(C1111p c1111p) {
                if (!DeviceAuthDialog.this.f5628e.get()) {
                    FacebookRequestError m6419a = c1111p.m6419a();
                    if (m6419a != null) {
                        switch (m6419a.m5530c()) {
                            case 1349152:
                                if (DeviceAuthDialog.this.f5631h != null) {
                                    C1042a.m5911c(DeviceAuthDialog.this.f5631h.m6238b());
                                }
                                if (DeviceAuthDialog.this.f5635l != null) {
                                    DeviceAuthDialog.this.m6233a(DeviceAuthDialog.this.f5635l);
                                    break;
                                } else {
                                    DeviceAuthDialog.this.m6231a();
                                    break;
                                }
                            case 1349172:
                            case 1349174:
                                DeviceAuthDialog.this.m6223c();
                                break;
                            case 1349173:
                                DeviceAuthDialog.this.m6231a();
                                break;
                            default:
                                DeviceAuthDialog.this.m6232a(c1111p.m6419a().m5533f());
                                break;
                        }
                    }
                    try {
                        JSONObject m6420b = c1111p.m6420b();
                        DeviceAuthDialog.this.m6217a(m6420b.getString("access_token"), Long.valueOf(m6420b.getLong("expires_in")), Long.valueOf(m6420b.optLong("data_access_expiration_time")));
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.m6232a(new C1048h(e));
                    }
                }
            }
        });
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$4 */
    class C10804 implements GraphRequest.InterfaceC0995b {
        C10804() {
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            if (!DeviceAuthDialog.this.f5628e.get()) {
                FacebookRequestError m6419a = c1111p.m6419a();
                if (m6419a != null) {
                    switch (m6419a.m5530c()) {
                        case 1349152:
                            if (DeviceAuthDialog.this.f5631h != null) {
                                C1042a.m5911c(DeviceAuthDialog.this.f5631h.m6238b());
                            }
                            if (DeviceAuthDialog.this.f5635l != null) {
                                DeviceAuthDialog.this.m6233a(DeviceAuthDialog.this.f5635l);
                                break;
                            } else {
                                DeviceAuthDialog.this.m6231a();
                                break;
                            }
                        case 1349172:
                        case 1349174:
                            DeviceAuthDialog.this.m6223c();
                            break;
                        case 1349173:
                            DeviceAuthDialog.this.m6231a();
                            break;
                        default:
                            DeviceAuthDialog.this.m6232a(c1111p.m6419a().m5533f());
                            break;
                    }
                }
                try {
                    JSONObject m6420b = c1111p.m6420b();
                    DeviceAuthDialog.this.m6217a(m6420b.getString("access_token"), Long.valueOf(m6420b.getLong("expires_in")), Long.valueOf(m6420b.optLong("data_access_expiration_time")));
                } catch (JSONException e) {
                    DeviceAuthDialog.this.m6232a(new C1048h(e));
                }
            }
        }
    }

    /* renamed from: a */
    public void m6215a(String str, C1070u.b bVar, String str2, String str3, Date date, Date date2) {
        String string = getResources().getString(com.facebook.common.R.string.com_facebook_smart_login_confirmation_title);
        String string2 = getResources().getString(com.facebook.common.R.string.com_facebook_smart_login_confirmation_continue_as);
        String string3 = getResources().getString(com.facebook.common.R.string.com_facebook_smart_login_confirmation_cancel);
        String format = String.format(string2, str3);
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(string).setCancelable(true).setNegativeButton(format, new DialogInterface.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.6

            /* renamed from: a */
            final /* synthetic */ String f5641a;

            /* renamed from: b */
            final /* synthetic */ C1070u.b f5642b;

            /* renamed from: c */
            final /* synthetic */ String f5643c;

            /* renamed from: d */
            final /* synthetic */ Date f5644d;

            /* renamed from: e */
            final /* synthetic */ Date f5645e;

            DialogInterfaceOnClickListenerC10826(String str4, C1070u.b bVar2, String str22, Date date3, Date date22) {
                str = str4;
                bVar = bVar2;
                str2 = str22;
                date = date3;
                date2 = date22;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.this.m6216a(str, bVar, str2, date, date2);
            }
        }).setPositiveButton(string3, new DialogInterface.OnClickListener() { // from class: com.facebook.login.DeviceAuthDialog.5
            DialogInterfaceOnClickListenerC10815() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                DeviceAuthDialog.this.f5632i.setContentView(DeviceAuthDialog.this.m6230a(false));
                DeviceAuthDialog.this.m6233a(DeviceAuthDialog.this.f5635l);
            }
        });
        builder.create().show();
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$6 */
    class DialogInterfaceOnClickListenerC10826 implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ String f5641a;

        /* renamed from: b */
        final /* synthetic */ C1070u.b f5642b;

        /* renamed from: c */
        final /* synthetic */ String f5643c;

        /* renamed from: d */
        final /* synthetic */ Date f5644d;

        /* renamed from: e */
        final /* synthetic */ Date f5645e;

        DialogInterfaceOnClickListenerC10826(String str4, C1070u.b bVar2, String str22, Date date3, Date date22) {
            str = str4;
            bVar = bVar2;
            str2 = str22;
            date = date3;
            date2 = date22;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DeviceAuthDialog.this.m6216a(str, bVar, str2, date, date2);
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$5 */
    class DialogInterfaceOnClickListenerC10815 implements DialogInterface.OnClickListener {
        DialogInterfaceOnClickListenerC10815() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            DeviceAuthDialog.this.f5632i.setContentView(DeviceAuthDialog.this.m6230a(false));
            DeviceAuthDialog.this.m6233a(DeviceAuthDialog.this.f5635l);
        }
    }

    /* renamed from: a */
    public void m6217a(String str, Long l, Long l2) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,permissions,name");
        Date date = l.longValue() != 0 ? new Date(new Date().getTime() + (l.longValue() * 1000)) : null;
        Date date2 = (l2.longValue() == 0 || l2 == null) ? null : new Date(l2.longValue() * 1000);
        new GraphRequest(new AccessToken(str, C1074k.m6185j(), "0", null, null, null, date, null, date2), "me", bundle, EnumC1112q.GET, new GraphRequest.InterfaceC0995b() { // from class: com.facebook.login.DeviceAuthDialog.7

            /* renamed from: a */
            final /* synthetic */ String f5647a;

            /* renamed from: b */
            final /* synthetic */ Date f5648b;

            /* renamed from: c */
            final /* synthetic */ Date f5649c;

            C10837(String str2, Date date3, Date date22) {
                str = str2;
                date = date3;
                date2 = date22;
            }

            @Override // com.facebook.GraphRequest.InterfaceC0995b
            /* renamed from: a */
            public void mo777a(C1111p c1111p) {
                if (!DeviceAuthDialog.this.f5628e.get()) {
                    if (c1111p.m6419a() != null) {
                        DeviceAuthDialog.this.m6232a(c1111p.m6419a().m5533f());
                        return;
                    }
                    try {
                        JSONObject m6420b = c1111p.m6420b();
                        String string = m6420b.getString(TtmlNode.ATTR_ID);
                        C1070u.b m6066a = C1070u.m6066a(m6420b);
                        String string2 = m6420b.getString("name");
                        C1042a.m5911c(DeviceAuthDialog.this.f5631h.m6238b());
                        if (!C1061l.m5978a(C1074k.m6185j()).m5968e().contains(EnumC1069t.RequireConfirm) || DeviceAuthDialog.this.f5634k) {
                            DeviceAuthDialog.this.m6216a(string, m6066a, str, date, date2);
                        } else {
                            DeviceAuthDialog.this.f5634k = true;
                            DeviceAuthDialog.this.m6215a(string, m6066a, str, string2, date, date2);
                        }
                    } catch (JSONException e) {
                        DeviceAuthDialog.this.m6232a(new C1048h(e));
                    }
                }
            }
        }).m5591j();
    }

    /* renamed from: com.facebook.login.DeviceAuthDialog$7 */
    class C10837 implements GraphRequest.InterfaceC0995b {

        /* renamed from: a */
        final /* synthetic */ String f5647a;

        /* renamed from: b */
        final /* synthetic */ Date f5648b;

        /* renamed from: c */
        final /* synthetic */ Date f5649c;

        C10837(String str2, Date date3, Date date22) {
            str = str2;
            date = date3;
            date2 = date22;
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            if (!DeviceAuthDialog.this.f5628e.get()) {
                if (c1111p.m6419a() != null) {
                    DeviceAuthDialog.this.m6232a(c1111p.m6419a().m5533f());
                    return;
                }
                try {
                    JSONObject m6420b = c1111p.m6420b();
                    String string = m6420b.getString(TtmlNode.ATTR_ID);
                    C1070u.b m6066a = C1070u.m6066a(m6420b);
                    String string2 = m6420b.getString("name");
                    C1042a.m5911c(DeviceAuthDialog.this.f5631h.m6238b());
                    if (!C1061l.m5978a(C1074k.m6185j()).m5968e().contains(EnumC1069t.RequireConfirm) || DeviceAuthDialog.this.f5634k) {
                        DeviceAuthDialog.this.m6216a(string, m6066a, str, date, date2);
                    } else {
                        DeviceAuthDialog.this.f5634k = true;
                        DeviceAuthDialog.this.m6215a(string, m6066a, str, string2, date, date2);
                    }
                } catch (JSONException e) {
                    DeviceAuthDialog.this.m6232a(new C1048h(e));
                }
            }
        }
    }

    /* renamed from: a */
    public void m6216a(String str, C1070u.b bVar, String str2, Date date, Date date2) {
        this.f5627d.m6249a(str2, C1074k.m6185j(), str, bVar.m6121a(), bVar.m6122b(), EnumC1043c.DEVICE_AUTH, date, null, date2);
        this.f5632i.dismiss();
    }

    /* renamed from: a */
    protected void m6232a(C1048h c1048h) {
        if (this.f5628e.compareAndSet(false, true)) {
            if (this.f5631h != null) {
                C1042a.m5911c(this.f5631h.m6238b());
            }
            this.f5627d.m6248a(c1048h);
            this.f5632i.dismiss();
        }
    }

    /* renamed from: a */
    protected void m6231a() {
        if (this.f5628e.compareAndSet(false, true)) {
            if (this.f5631h != null) {
                C1042a.m5911c(this.f5631h.m6238b());
            }
            if (this.f5627d != null) {
                this.f5627d.m6250c();
            }
            this.f5632i.dismiss();
        }
    }

    private static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new Parcelable.Creator<RequestState>() { // from class: com.facebook.login.DeviceAuthDialog.RequestState.1
            C10841() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public RequestState createFromParcel(Parcel parcel) {
                return new RequestState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public RequestState[] newArray(int i) {
                return new RequestState[i];
            }
        };

        /* renamed from: a */
        private String f5651a;

        /* renamed from: b */
        private String f5652b;

        /* renamed from: c */
        private String f5653c;

        /* renamed from: d */
        private long f5654d;

        /* renamed from: e */
        private long f5655e;

        RequestState() {
        }

        /* renamed from: a */
        public String m6235a() {
            return this.f5651a;
        }

        /* renamed from: b */
        public String m6238b() {
            return this.f5652b;
        }

        /* renamed from: a */
        public void m6237a(String str) {
            this.f5652b = str;
            this.f5651a = String.format(Locale.ENGLISH, "https://facebook.com/device?user_code=%1$s&qr=1", str);
        }

        /* renamed from: c */
        public String m6241c() {
            return this.f5653c;
        }

        /* renamed from: b */
        public void m6240b(String str) {
            this.f5653c = str;
        }

        /* renamed from: d */
        public long m6242d() {
            return this.f5654d;
        }

        /* renamed from: a */
        public void m6236a(long j) {
            this.f5654d = j;
        }

        /* renamed from: b */
        public void m6239b(long j) {
            this.f5655e = j;
        }

        protected RequestState(Parcel parcel) {
            this.f5651a = parcel.readString();
            this.f5652b = parcel.readString();
            this.f5653c = parcel.readString();
            this.f5654d = parcel.readLong();
            this.f5655e = parcel.readLong();
        }

        /* renamed from: e */
        public boolean m6243e() {
            return this.f5655e != 0 && (new Date().getTime() - this.f5655e) - (this.f5654d * 1000) < 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f5651a);
            parcel.writeString(this.f5652b);
            parcel.writeString(this.f5653c);
            parcel.writeLong(this.f5654d);
            parcel.writeLong(this.f5655e);
        }

        /* renamed from: com.facebook.login.DeviceAuthDialog$RequestState$1 */
        static class C10841 implements Parcelable.Creator<RequestState> {
            C10841() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public RequestState createFromParcel(Parcel parcel) {
                return new RequestState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public RequestState[] newArray(int i) {
                return new RequestState[i];
            }
        }
    }
}
