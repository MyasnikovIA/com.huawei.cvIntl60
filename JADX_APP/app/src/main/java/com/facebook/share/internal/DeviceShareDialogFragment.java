package com.facebook.share.internal;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.C1111p;
import com.facebook.EnumC1112q;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.common.R;
import com.facebook.internal.C1071v;
import com.facebook.p093b.p094a.C1042a;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes.dex */
public class DeviceShareDialogFragment extends DialogFragment {

    /* renamed from: f */
    private static ScheduledThreadPoolExecutor f5775f;

    /* renamed from: a */
    private ProgressBar f5776a;

    /* renamed from: b */
    private TextView f5777b;

    /* renamed from: c */
    private Dialog f5778c;

    /* renamed from: d */
    private volatile RequestState f5779d;

    /* renamed from: e */
    private volatile ScheduledFuture f5780e;

    /* renamed from: g */
    private ShareContent f5781g;

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RequestState requestState;
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (bundle != null && (requestState = (RequestState) bundle.getParcelable("request_state")) != null) {
            m6433a(requestState);
        }
        return onCreateView;
    }

    @Override // android.support.v4.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        this.f5778c = new Dialog(getActivity(), R.style.com_facebook_auth_dialog);
        View inflate = getActivity().getLayoutInflater().inflate(R.layout.com_facebook_device_auth_dialog_fragment, (ViewGroup) null);
        this.f5776a = (ProgressBar) inflate.findViewById(R.id.progress_bar);
        this.f5777b = (TextView) inflate.findViewById(R.id.confirmation_code);
        ((Button) inflate.findViewById(R.id.cancel_button)).setOnClickListener(new View.OnClickListener() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.1
            ViewOnClickListenerC11141() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DeviceShareDialogFragment.this.f5778c.dismiss();
            }
        });
        ((TextView) inflate.findViewById(R.id.com_facebook_device_auth_instructions)).setText(Html.fromHtml(getString(R.string.com_facebook_device_auth_instructions)));
        this.f5778c.setContentView(inflate);
        m6437c();
        return this.f5778c;
    }

    /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$1 */
    class ViewOnClickListenerC11141 implements View.OnClickListener {
        ViewOnClickListenerC11141() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeviceShareDialogFragment.this.f5778c.dismiss();
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        if (this.f5780e != null) {
            this.f5780e.cancel(true);
        }
        m6431a(-1, new Intent());
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.f5779d != null) {
            bundle.putParcelable("request_state", this.f5779d);
        }
    }

    /* renamed from: a */
    private void m6431a(int i, Intent intent) {
        if (this.f5779d != null) {
            C1042a.m5911c(this.f5779d.m6440a());
        }
        FacebookRequestError facebookRequestError = (FacebookRequestError) intent.getParcelableExtra(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR);
        if (facebookRequestError != null) {
            Toast.makeText(getContext(), facebookRequestError.m5532e(), 0).show();
        }
        if (isAdded()) {
            FragmentActivity activity = getActivity();
            activity.setResult(i, intent);
            activity.finish();
        }
    }

    /* renamed from: a */
    private void m6430a() {
        if (isAdded()) {
            getFragmentManager().beginTransaction().remove(this).commit();
        }
    }

    /* renamed from: a */
    public void m6439a(ShareContent shareContent) {
        this.f5781g = shareContent;
    }

    /* renamed from: b */
    private Bundle m6436b() {
        ShareContent shareContent = this.f5781g;
        if (shareContent == null) {
            return null;
        }
        if (shareContent instanceof ShareLinkContent) {
            return C1122c.m6462a((ShareLinkContent) shareContent);
        }
        if (shareContent instanceof ShareOpenGraphContent) {
            return C1122c.m6463a((ShareOpenGraphContent) shareContent);
        }
        return null;
    }

    /* renamed from: c */
    private void m6437c() {
        Bundle m6436b = m6436b();
        if (m6436b == null || m6436b.size() == 0) {
            m6432a(new FacebookRequestError(0, "", "Failed to get share content"));
        }
        m6436b.putString("access_token", C1071v.m6129b() + "|" + C1071v.m6132c());
        m6436b.putString("device_info", C1042a.m5907a());
        new GraphRequest(null, "device/share", m6436b, EnumC1112q.POST, new GraphRequest.InterfaceC0995b() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.2
            C11152() {
            }

            @Override // com.facebook.GraphRequest.InterfaceC0995b
            /* renamed from: a */
            public void mo777a(C1111p c1111p) {
                FacebookRequestError m6419a = c1111p.m6419a();
                if (m6419a != null) {
                    DeviceShareDialogFragment.this.m6432a(m6419a);
                    return;
                }
                JSONObject m6420b = c1111p.m6420b();
                RequestState requestState = new RequestState();
                try {
                    requestState.m6442a(m6420b.getString("user_code"));
                    requestState.m6441a(m6420b.getLong("expires_in"));
                    DeviceShareDialogFragment.this.m6433a(requestState);
                } catch (JSONException e) {
                    DeviceShareDialogFragment.this.m6432a(new FacebookRequestError(0, "", "Malformed server response"));
                }
            }
        }).m5591j();
    }

    /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$2 */
    class C11152 implements GraphRequest.InterfaceC0995b {
        C11152() {
        }

        @Override // com.facebook.GraphRequest.InterfaceC0995b
        /* renamed from: a */
        public void mo777a(C1111p c1111p) {
            FacebookRequestError m6419a = c1111p.m6419a();
            if (m6419a != null) {
                DeviceShareDialogFragment.this.m6432a(m6419a);
                return;
            }
            JSONObject m6420b = c1111p.m6420b();
            RequestState requestState = new RequestState();
            try {
                requestState.m6442a(m6420b.getString("user_code"));
                requestState.m6441a(m6420b.getLong("expires_in"));
                DeviceShareDialogFragment.this.m6433a(requestState);
            } catch (JSONException e) {
                DeviceShareDialogFragment.this.m6432a(new FacebookRequestError(0, "", "Malformed server response"));
            }
        }
    }

    /* renamed from: a */
    public void m6432a(FacebookRequestError facebookRequestError) {
        m6430a();
        Intent intent = new Intent();
        intent.putExtra(IjkMediaPlayer.OnNativeInvokeListener.ARG_ERROR, facebookRequestError);
        m6431a(-1, intent);
    }

    /* renamed from: d */
    private static synchronized ScheduledThreadPoolExecutor m6438d() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceShareDialogFragment.class) {
            if (f5775f == null) {
                f5775f = new ScheduledThreadPoolExecutor(1);
            }
            scheduledThreadPoolExecutor = f5775f;
        }
        return scheduledThreadPoolExecutor;
    }

    /* renamed from: a */
    public void m6433a(RequestState requestState) {
        this.f5779d = requestState;
        this.f5777b.setText(requestState.m6440a());
        this.f5777b.setVisibility(0);
        this.f5776a.setVisibility(8);
        this.f5780e = m6438d().schedule(new Runnable() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.3
            RunnableC11163() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DeviceShareDialogFragment.this.f5778c.dismiss();
            }
        }, requestState.m6443b(), TimeUnit.SECONDS);
    }

    /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$3 */
    class RunnableC11163 implements Runnable {
        RunnableC11163() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DeviceShareDialogFragment.this.f5778c.dismiss();
        }
    }

    private static class RequestState implements Parcelable {
        public static final Parcelable.Creator<RequestState> CREATOR = new Parcelable.Creator<RequestState>() { // from class: com.facebook.share.internal.DeviceShareDialogFragment.RequestState.1
            C11171() {
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
        private String f5785a;

        /* renamed from: b */
        private long f5786b;

        RequestState() {
        }

        /* renamed from: a */
        public String m6440a() {
            return this.f5785a;
        }

        /* renamed from: a */
        public void m6442a(String str) {
            this.f5785a = str;
        }

        /* renamed from: b */
        public long m6443b() {
            return this.f5786b;
        }

        /* renamed from: a */
        public void m6441a(long j) {
            this.f5786b = j;
        }

        protected RequestState(Parcel parcel) {
            this.f5785a = parcel.readString();
            this.f5786b = parcel.readLong();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f5785a);
            parcel.writeLong(this.f5786b);
        }

        /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$RequestState$1 */
        static class C11171 implements Parcelable.Creator<RequestState> {
            C11171() {
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
