package GeneralFunction;

import GeneralFunction.C0064f;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.google.android.gms.plus.PlusShare;
import com.huawei.cvIntl60.R;
import ui_Controller.ui_Setting.UI_SettingInformation;

/* renamed from: GeneralFunction.h */
/* loaded from: classes.dex */
public class DialogFragmentC0071h extends DialogFragment {

    /* renamed from: a */
    private b f559a;

    /* renamed from: b */
    private View f560b;

    /* renamed from: a */
    public void m654a(b bVar) {
        this.f559a = bVar;
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_launch, viewGroup, false);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onStart() {
        super.onStart();
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        WindowManager.LayoutParams attributes = getDialog().getWindow().getAttributes();
        attributes.gravity = 80;
        attributes.width = -1;
        attributes.height = -1;
        getDialog().getWindow().setAttributes(attributes);
    }

    @Override // android.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        if (this.f559a != null) {
            this.f560b = view.findViewById(R.id.content);
            ((Button) view.findViewById(R.id.positive_button)).setText(this.f559a.f572a);
            view.findViewById(R.id.positive_button).setOnClickListener(new View.OnClickListener() { // from class: GeneralFunction.h.1
                AnonymousClass1() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DialogFragmentC0071h.this.f559a.f575d.onClick(null, -1);
                    DialogFragmentC0071h.this.dismiss();
                }
            });
            ((Button) view.findViewById(R.id.negative_button)).setText(this.f559a.f573b);
            view.findViewById(R.id.negative_button).setOnClickListener(new View.OnClickListener() { // from class: GeneralFunction.h.2
                AnonymousClass2() {
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    DialogFragmentC0071h.this.f559a.f576e.onClick(null, -1);
                    DialogFragmentC0071h.this.dismiss();
                }
            });
            if (this.f559a.f574c) {
                ((TextView) view.findViewById(R.id.hyper_text)).setText(m653a());
                ((TextView) view.findViewById(R.id.hyper_text)).setMovementMethod(LinkMovementMethod.getInstance());
            } else {
                view.findViewById(R.id.hyper_text).setVisibility(4);
            }
            setCancelable(false);
        }
    }

    /* renamed from: GeneralFunction.h$1 */
    class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view2) {
            DialogFragmentC0071h.this.f559a.f575d.onClick(null, -1);
            DialogFragmentC0071h.this.dismiss();
        }
    }

    /* renamed from: GeneralFunction.h$2 */
    class AnonymousClass2 implements View.OnClickListener {
        AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view2) {
            DialogFragmentC0071h.this.f559a.f576e.onClick(null, -1);
            DialogFragmentC0071h.this.dismiss();
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onDetach() {
        super.onDetach();
    }

    /* renamed from: a */
    private CharSequence m653a() {
        return C0064f.m584a(getContext()).m585a(R.string.launch_hypertext).m586a(new C0064f.b() { // from class: GeneralFunction.h.3
            AnonymousClass3() {
            }

            @Override // GeneralFunction.C0064f.b
            /* renamed from: a */
            public void mo630a(String str) {
                switch (str) {
                    case "aaa":
                        Intent intent = new Intent(DialogFragmentC0071h.this.getContext(), (Class<?>) UI_SettingInformation.class);
                        intent.putExtra("url", DialogFragmentC0071h.this.getString(R.string.user_agreement_url));
                        intent.putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, DialogFragmentC0071h.this.getString(R.string.agreement_page_title));
                        DialogFragmentC0071h.this.startActivity(intent);
                        break;
                }
            }
        }).m587a(false);
    }

    /* renamed from: GeneralFunction.h$3 */
    class AnonymousClass3 implements C0064f.b {
        AnonymousClass3() {
        }

        @Override // GeneralFunction.C0064f.b
        /* renamed from: a */
        public void mo630a(String str) {
            switch (str) {
                case "aaa":
                    Intent intent = new Intent(DialogFragmentC0071h.this.getContext(), (Class<?>) UI_SettingInformation.class);
                    intent.putExtra("url", DialogFragmentC0071h.this.getString(R.string.user_agreement_url));
                    intent.putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, DialogFragmentC0071h.this.getString(R.string.agreement_page_title));
                    DialogFragmentC0071h.this.startActivity(intent);
                    break;
            }
        }
    }

    /* renamed from: GeneralFunction.h$b */
    private static class b {

        /* renamed from: a */
        private CharSequence f572a;

        /* renamed from: b */
        private CharSequence f573b;

        /* renamed from: c */
        private boolean f574c;

        /* renamed from: d */
        private DialogInterface.OnClickListener f575d;

        /* renamed from: e */
        private DialogInterface.OnClickListener f576e;

        private b() {
            this.f574c = true;
        }

        /* synthetic */ b(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    /* renamed from: GeneralFunction.h$a */
    public static class a {

        /* renamed from: a */
        private b f564a = new b();

        /* renamed from: b */
        private Context f565b;

        public a(Context context) {
            this.f565b = context;
        }

        /* renamed from: a */
        public a m656a(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            this.f564a.f575d = onClickListener;
            this.f564a.f572a = this.f565b.getString(i);
            return this;
        }

        /* renamed from: b */
        public a m658b(@StringRes int i, DialogInterface.OnClickListener onClickListener) {
            this.f564a.f573b = this.f565b.getString(i);
            this.f564a.f576e = onClickListener;
            return this;
        }

        /* renamed from: a */
        public DialogFragmentC0071h m657a() {
            DialogFragmentC0071h dialogFragmentC0071h = new DialogFragmentC0071h();
            dialogFragmentC0071h.m654a(this.f564a);
            return dialogFragmentC0071h;
        }
    }
}
