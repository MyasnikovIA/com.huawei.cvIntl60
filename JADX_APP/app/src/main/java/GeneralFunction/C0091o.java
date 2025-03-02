package GeneralFunction;

import GeneralFunction.p001a.ActivityC0044a;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.method.ScrollingMovementMethod;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.huawei.cvIntl60.R;
import java.util.ArrayList;

/* renamed from: GeneralFunction.o */
/* loaded from: classes.dex */
public class C0091o {

    /* renamed from: a */
    private static Dialog f691a = null;

    /* renamed from: b */
    private static ProgressDialog f692b = null;

    /* renamed from: c */
    private static ActivityC0044a f693c = null;

    /* renamed from: d */
    private static int f694d = 0;

    /* renamed from: a */
    public static void m888a() {
        if (f691a != null && f691a.isShowing()) {
            f691a.hide();
            f691a.show();
        }
    }

    /* renamed from: a */
    public static boolean m897a(Context context) {
        if (context.equals(f693c)) {
            if (f692b != null && f692b.isShowing()) {
                return true;
            }
            if (f691a != null && f691a.isShowing()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static int m898b() {
        return f694d;
    }

    /* renamed from: b */
    public static void m899b(Context context) {
        if (context.equals(f693c)) {
            if (f692b != null) {
                f692b.dismiss();
            }
            f692b = null;
            if (f691a != null) {
                f691a.dismiss();
            }
            f691a = null;
        }
    }

    /* renamed from: a */
    public static void m889a(Context context, boolean z, boolean z2, String str, String str2, String str3, int i) {
        m890a(context, z, z2, str, str2, str3, i, i, false, false);
    }

    /* renamed from: a */
    public static void m891a(Context context, boolean z, boolean z2, String str, String str2, String str3, int i, boolean z3) {
        m890a(context, z, z2, str, str2, str3, i, i, z3, false);
    }

    /* renamed from: a */
    public static void m890a(Context context, boolean z, boolean z2, String str, String str2, String str3, int i, int i2, boolean z3, boolean z4) {
        int m784a;
        Spanned fromHtml;
        f694d = 2;
        m899b(context);
        if (z) {
            View inflate = LayoutInflater.from(context).inflate(R.layout.style_dialog2_layout, (ViewGroup) null);
            f691a = new Dialog(context);
            f691a.setCancelable(z2);
            if (z2) {
                f691a.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: GeneralFunction.o.4

                    /* renamed from: a */
                    final /* synthetic */ Context f703a;

                    /* renamed from: b */
                    final /* synthetic */ int f704b;

                    AnonymousClass4(Context context2, int i22) {
                        context = context2;
                        i2 = i22;
                    }

                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        ((ActivityC0044a) context).mo408a(i2, 0L);
                    }
                });
                f691a.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: GeneralFunction.o.5

                    /* renamed from: a */
                    final /* synthetic */ Context f705a;

                    /* renamed from: b */
                    final /* synthetic */ int f706b;

                    AnonymousClass5(Context context2, int i22) {
                        context = context2;
                        i2 = i22;
                    }

                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i3, KeyEvent keyEvent) {
                        if (i3 != 4) {
                            return C0091o.f691a.onKeyUp(i3, keyEvent);
                        }
                        ((ActivityC0044a) context).mo408a(i2, 0L);
                        C0091o.f691a.dismiss();
                        return true;
                    }
                });
            }
            f691a.setContentView(inflate);
            f691a.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            TextView textView = (TextView) inflate.findViewById(R.id.TV_DialogTitle);
            TextView textView2 = (TextView) inflate.findViewById(R.id.TV_DialogDialog);
            Button button = (Button) inflate.findViewById(R.id.B_DialogSingleButton);
            DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
            int i3 = displayMetrics.widthPixels;
            int i4 = displayMetrics.heightPixels;
            int max = Math.max(i3, i4);
            int min = Math.min(i3, i4);
            if (i4 > i3) {
                m784a = C0079k.m784a(context2, i4 / 35);
            } else {
                m784a = C0079k.m784a(context2, i4 / 20);
            }
            int i5 = (((int) (min * 0.95d)) / 2) * 2;
            textView.setTextSize(m784a);
            textView2.setTextSize(m784a);
            button.setTextSize(m784a);
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            layoutParams.height = max / 16;
            layoutParams.width = i5;
            int m467b = C0052d.m467b();
            if (m467b == 15 || m467b == 17) {
                layoutParams.height = max / 12;
                layoutParams.width = i5;
                textView.setPadding(i5 / 18, 0, i5 / 18, 0);
            }
            textView.setText(str);
            ViewGroup.LayoutParams layoutParams2 = textView2.getLayoutParams();
            layoutParams2.height = max / 5;
            layoutParams2.width = i5;
            if (m467b == 16) {
                layoutParams2.height = (int) (max / 4.5d);
                layoutParams2.width = i5;
            }
            textView2.setPadding(i5 / 14, 0, i5 / 14, 0);
            if (z4) {
                if (Build.VERSION.SDK_INT >= 24) {
                    fromHtml = Html.fromHtml(str2, 0);
                } else {
                    fromHtml = Html.fromHtml(str2);
                }
                textView2.setText(fromHtml);
                textView2.setMovementMethod(LinkMovementMethod.getInstance());
            } else {
                textView2.setText(str2);
            }
            if (z3) {
                textView2.setGravity(17);
            }
            ViewGroup.LayoutParams layoutParams3 = button.getLayoutParams();
            layoutParams3.height = max / 15;
            layoutParams3.width = i5;
            button.setLayoutParams(layoutParams3);
            button.setText(str3);
            button.setOnClickListener(new View.OnClickListener() { // from class: GeneralFunction.o.6

                /* renamed from: a */
                final /* synthetic */ Context f707a;

                /* renamed from: b */
                final /* synthetic */ int f708b;

                AnonymousClass6(Context context2, int i6) {
                    context = context2;
                    i = i6;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ((ActivityC0044a) context).mo408a(i, 0L);
                    C0091o.f691a.dismiss();
                }
            });
            f691a.show();
            f693c = (ActivityC0044a) context2;
        }
    }

    /* renamed from: GeneralFunction.o$4 */
    static class AnonymousClass4 implements DialogInterface.OnCancelListener {

        /* renamed from: a */
        final /* synthetic */ Context f703a;

        /* renamed from: b */
        final /* synthetic */ int f704b;

        AnonymousClass4(Context context2, int i22) {
            context = context2;
            i2 = i22;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ((ActivityC0044a) context).mo408a(i2, 0L);
        }
    }

    /* renamed from: GeneralFunction.o$5 */
    static class AnonymousClass5 implements DialogInterface.OnKeyListener {

        /* renamed from: a */
        final /* synthetic */ Context f705a;

        /* renamed from: b */
        final /* synthetic */ int f706b;

        AnonymousClass5(Context context2, int i22) {
            context = context2;
            i2 = i22;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i3, KeyEvent keyEvent) {
            if (i3 != 4) {
                return C0091o.f691a.onKeyUp(i3, keyEvent);
            }
            ((ActivityC0044a) context).mo408a(i2, 0L);
            C0091o.f691a.dismiss();
            return true;
        }
    }

    /* renamed from: GeneralFunction.o$6 */
    static class AnonymousClass6 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ Context f707a;

        /* renamed from: b */
        final /* synthetic */ int f708b;

        AnonymousClass6(Context context2, int i6) {
            context = context2;
            i = i6;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ActivityC0044a) context).mo408a(i, 0L);
            C0091o.f691a.dismiss();
        }
    }

    /* renamed from: a */
    public static void m895a(Context context, boolean z, boolean z2, String str, ArrayList<String> arrayList, String str2, int i) {
        m896a(context, z, z2, str, arrayList, str2, i, i, false);
    }

    /* renamed from: a */
    public static void m896a(Context context, boolean z, boolean z2, String str, ArrayList<String> arrayList, String str2, int i, int i2, boolean z3) {
        View inflate;
        f694d = 3;
        m899b(context);
        if (z) {
            int i3 = context.getResources().getConfiguration().orientation;
            if (i3 == 1) {
                inflate = LayoutInflater.from(context).inflate(R.layout.style_dialog_info_layout, (ViewGroup) null);
            } else {
                inflate = LayoutInflater.from(context).inflate(R.layout.style_dialog_info_land_layout, (ViewGroup) null);
            }
            if (inflate == null) {
                Log.e("UiDialog", "DialogWithSingleButtonInformation can't find view");
                return;
            }
            f691a = new Dialog(context);
            f691a.setCancelable(z2);
            if (z2) {
                f691a.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: GeneralFunction.o.7

                    /* renamed from: a */
                    final /* synthetic */ Context f709a;

                    /* renamed from: b */
                    final /* synthetic */ int f710b;

                    AnonymousClass7(Context context2, int i22) {
                        context = context2;
                        i2 = i22;
                    }

                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        ((ActivityC0044a) context).mo408a(i2, 0L);
                    }
                });
                f691a.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: GeneralFunction.o.8

                    /* renamed from: a */
                    final /* synthetic */ Context f711a;

                    /* renamed from: b */
                    final /* synthetic */ int f712b;

                    AnonymousClass8(Context context2, int i22) {
                        context = context2;
                        i2 = i22;
                    }

                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i4, KeyEvent keyEvent) {
                        if (i4 != 4) {
                            return C0091o.f691a.onKeyUp(i4, keyEvent);
                        }
                        ((ActivityC0044a) context).mo408a(i2, 0L);
                        C0091o.f691a.dismiss();
                        return true;
                    }
                });
            }
            f691a.setContentView(inflate);
            f691a.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            TextView textView = (TextView) inflate.findViewById(R.id.TV_DialogTitle);
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.TV_DialogDialogLayout);
            TextView textView2 = (TextView) inflate.findViewById(R.id.TV_DialogDialog_Name);
            TextView textView3 = (TextView) inflate.findViewById(R.id.TV_DialogDialog_Date);
            TextView textView4 = (TextView) inflate.findViewById(R.id.TV_DialogDialog_Wide);
            TextView textView5 = (TextView) inflate.findViewById(R.id.TV_DialogDialog_Height);
            TextView textView6 = (TextView) inflate.findViewById(R.id.TV_DialogDialog_Size);
            TextView textView7 = (TextView) inflate.findViewById(R.id.TV_DialogDialog_Path);
            TextView textView8 = (TextView) inflate.findViewById(R.id.TV_DialogDialog_EVorType);
            TextView textView9 = (TextView) inflate.findViewById(R.id.TV_DialogDialog_WBorDuration);
            TextView textView10 = (TextView) inflate.findViewById(R.id.TV_DialogDialog_ISOorNull);
            Button button = (Button) inflate.findViewById(R.id.B_DialogSingleButton);
            DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
            int i4 = displayMetrics.widthPixels;
            int i5 = displayMetrics.heightPixels;
            int m784a = C0079k.m784a(context2, Math.max(i4, i5) / 36);
            int m784a2 = C0079k.m784a(context2, Math.max(i4, i5) / 40);
            int i6 = (((int) (i4 * 0.95d)) / 2) * 2;
            textView.setTextSize(m784a);
            textView2.setTextSize(m784a2);
            textView3.setTextSize(m784a2);
            textView4.setTextSize(m784a2);
            textView5.setTextSize(m784a2);
            textView6.setTextSize(m784a2);
            textView7.setTextSize(m784a2);
            textView8.setTextSize(m784a2);
            textView9.setTextSize(m784a2);
            textView10.setTextSize(m784a2);
            button.setTextSize(m784a);
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            layoutParams.height = Math.max(i4, i5) / 16;
            layoutParams.width = i6;
            textView.setText(str);
            ViewGroup.LayoutParams layoutParams2 = linearLayout.getLayoutParams();
            if (i3 == 1) {
                if (arrayList.size() > 6) {
                    if (arrayList.size() <= 8) {
                        layoutParams2.height = (int) (i5 / 2.5d);
                    } else {
                        layoutParams2.height = (int) (i5 / 2.3d);
                    }
                } else {
                    layoutParams2.height = (int) (i5 / 3.1d);
                }
            } else if (i3 == 2) {
                layoutParams2.height = (int) (i5 / 2.1d);
            }
            layoutParams2.width = i6;
            int i7 = i6 / 140;
            int min = Math.min(i4, i5) / 27;
            if (i3 == 1) {
                textView2.setPadding(i6 / 14, min, i6 / 14, 0);
                textView3.setPadding(i6 / 14, i7, i6 / 14, 0);
                textView8.setPadding(i6 / 14, i7, i6 / 14, 0);
                textView9.setPadding(i6 / 14, i7, i6 / 14, 0);
                textView10.setPadding(i6 / 14, i7, i6 / 14, 0);
            } else if (i3 == 2) {
                textView2.setPadding(i6 / 14, min, 0, 0);
                textView3.setPadding(0, min, i6 / 14, 0);
                textView8.setPadding(0, i7, i6 / 14, 0);
                textView9.setPadding(0, i7, i6 / 14, 0);
                textView10.setPadding(0, i7, i6 / 14, 0);
            }
            textView4.setPadding(i6 / 14, i7, i6 / 14, 0);
            textView5.setPadding(i6 / 14, i7, i6 / 14, 0);
            textView6.setPadding(i6 / 14, i7, i6 / 14, 0);
            textView7.setPadding(i6 / 14, i7, i6 / 14, 0);
            textView2.setText(arrayList.get(0));
            textView3.setText(arrayList.get(1));
            textView4.setText(arrayList.get(2));
            textView5.setText(arrayList.get(3));
            textView6.setText(arrayList.get(4));
            textView7.setText(arrayList.get(5));
            if (arrayList.size() > 6) {
                textView8.setText(arrayList.get(6));
                textView9.setText(arrayList.get(7));
                if (arrayList.size() <= 8) {
                    textView10.setText("");
                } else {
                    textView10.setText(arrayList.get(8));
                }
            } else {
                textView8.setVisibility(8);
                textView9.setVisibility(8);
                textView10.setVisibility(8);
            }
            if (z3) {
                textView2.setGravity(17);
                textView3.setGravity(17);
                textView4.setGravity(17);
                textView5.setGravity(17);
                textView6.setGravity(17);
                textView7.setGravity(17);
                textView8.setGravity(17);
                textView9.setGravity(17);
                textView10.setGravity(17);
            }
            ViewGroup.LayoutParams layoutParams3 = button.getLayoutParams();
            layoutParams3.height = Math.max(i4, i5) / 15;
            layoutParams3.width = i6;
            button.setLayoutParams(layoutParams3);
            button.setText(str2);
            button.setOnClickListener(new View.OnClickListener() { // from class: GeneralFunction.o.9

                /* renamed from: a */
                final /* synthetic */ Context f713a;

                /* renamed from: b */
                final /* synthetic */ int f714b;

                AnonymousClass9(Context context2, int i8) {
                    context = context2;
                    i = i8;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ((ActivityC0044a) context).mo408a(i, 0L);
                    C0091o.f691a.dismiss();
                }
            });
            f691a.show();
            f693c = (ActivityC0044a) context2;
        }
    }

    /* renamed from: GeneralFunction.o$7 */
    static class AnonymousClass7 implements DialogInterface.OnCancelListener {

        /* renamed from: a */
        final /* synthetic */ Context f709a;

        /* renamed from: b */
        final /* synthetic */ int f710b;

        AnonymousClass7(Context context2, int i22) {
            context = context2;
            i2 = i22;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ((ActivityC0044a) context).mo408a(i2, 0L);
        }
    }

    /* renamed from: GeneralFunction.o$8 */
    static class AnonymousClass8 implements DialogInterface.OnKeyListener {

        /* renamed from: a */
        final /* synthetic */ Context f711a;

        /* renamed from: b */
        final /* synthetic */ int f712b;

        AnonymousClass8(Context context2, int i22) {
            context = context2;
            i2 = i22;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i4, KeyEvent keyEvent) {
            if (i4 != 4) {
                return C0091o.f691a.onKeyUp(i4, keyEvent);
            }
            ((ActivityC0044a) context).mo408a(i2, 0L);
            C0091o.f691a.dismiss();
            return true;
        }
    }

    /* renamed from: GeneralFunction.o$9 */
    static class AnonymousClass9 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ Context f713a;

        /* renamed from: b */
        final /* synthetic */ int f714b;

        AnonymousClass9(Context context2, int i8) {
            context = context2;
            i = i8;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ActivityC0044a) context).mo408a(i, 0L);
            C0091o.f691a.dismiss();
        }
    }

    /* renamed from: a */
    public static void m892a(Context context, boolean z, boolean z2, String str, String str2, String[] strArr, int[] iArr) {
        m894a(context, z, z2, str, str2, strArr, iArr, false, R.color.black);
    }

    /* renamed from: a */
    public static void m893a(Context context, boolean z, boolean z2, String str, String str2, String[] strArr, int[] iArr, boolean z3) {
        m894a(context, z, z2, str, str2, strArr, iArr, z3, R.color.black);
    }

    /* renamed from: a */
    public static void m894a(Context context, boolean z, boolean z2, String str, String str2, String[] strArr, int[] iArr, boolean z3, int i) {
        f694d = 4;
        m899b(context);
        if (z) {
            View inflate = LayoutInflater.from(context).inflate(R.layout.style_dialog_layout, (ViewGroup) null);
            f691a = new Dialog(context);
            f691a.setCancelable(z2);
            if (z2) {
                f691a.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: GeneralFunction.o.10

                    /* renamed from: a */
                    final /* synthetic */ Context f697a;

                    /* renamed from: b */
                    final /* synthetic */ int[] f698b;

                    AnonymousClass10(Context context2, int[] iArr2) {
                        context = context2;
                        iArr = iArr2;
                    }

                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        ((ActivityC0044a) context).mo408a(iArr[0], 0L);
                    }
                });
                f691a.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: GeneralFunction.o.1

                    /* renamed from: a */
                    final /* synthetic */ Context f695a;

                    /* renamed from: b */
                    final /* synthetic */ int[] f696b;

                    AnonymousClass1(Context context2, int[] iArr2) {
                        context = context2;
                        iArr = iArr2;
                    }

                    @Override // android.content.DialogInterface.OnKeyListener
                    public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                        if (i2 != 4) {
                            return C0091o.f691a.onKeyUp(i2, keyEvent);
                        }
                        ((ActivityC0044a) context).mo408a(iArr[0], 0L);
                        C0091o.f691a.dismiss();
                        return true;
                    }
                });
            }
            f691a.setContentView(inflate);
            f691a.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            TextView textView = (TextView) inflate.findViewById(R.id.TV_DialogTitle);
            TextView textView2 = (TextView) inflate.findViewById(R.id.TV_DialogDialog);
            Button button = (Button) inflate.findViewById(R.id.B_DialogLeftButton);
            Button button2 = (Button) inflate.findViewById(R.id.B_DialogRightButton);
            DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
            int i2 = displayMetrics.widthPixels;
            int i3 = displayMetrics.heightPixels;
            int max = Math.max(i2, i3);
            int min = Math.min(i2, i3);
            int m784a = C0079k.m784a(context2, min / 21);
            int i4 = (((int) (min * 0.95d)) / 2) * 2;
            textView.setTextSize(m784a);
            textView2.setTextSize(m784a);
            button.setTextSize(m784a);
            button2.setTextSize(m784a);
            ViewGroup.LayoutParams layoutParams = textView.getLayoutParams();
            layoutParams.height = max / 16;
            layoutParams.width = i4;
            textView.setText(str);
            ViewGroup.LayoutParams layoutParams2 = textView2.getLayoutParams();
            layoutParams2.height = max / 5;
            layoutParams2.width = i4;
            if (z3) {
                textView2.setGravity(17);
            } else {
                textView2.setPadding(i4 / 14, 0, i4 / 14, 0);
            }
            textView2.setText(str2);
            textView2.setMovementMethod(new ScrollingMovementMethod());
            ViewGroup.LayoutParams layoutParams3 = button.getLayoutParams();
            layoutParams3.height = max / 15;
            layoutParams3.width = i4 / 2;
            ViewGroup.LayoutParams layoutParams4 = button2.getLayoutParams();
            layoutParams4.height = max / 15;
            layoutParams4.width = i4 / 2;
            button.setLayoutParams(layoutParams4);
            button.setText(strArr[0]);
            button.setOnClickListener(new View.OnClickListener() { // from class: GeneralFunction.o.2

                /* renamed from: a */
                final /* synthetic */ Context f699a;

                /* renamed from: b */
                final /* synthetic */ int[] f700b;

                AnonymousClass2(Context context2, int[] iArr2) {
                    context = context2;
                    iArr = iArr2;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ((ActivityC0044a) context).mo408a(iArr[0], 0L);
                    C0091o.f691a.dismiss();
                }
            });
            button2.setLayoutParams(layoutParams4);
            button2.setText(strArr[1]);
            button2.setTextColor(context2.getColor(i));
            button2.setOnClickListener(new View.OnClickListener() { // from class: GeneralFunction.o.3

                /* renamed from: a */
                final /* synthetic */ Context f701a;

                /* renamed from: b */
                final /* synthetic */ int[] f702b;

                AnonymousClass3(Context context2, int[] iArr2) {
                    context = context2;
                    iArr = iArr2;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ((ActivityC0044a) context).mo408a(iArr[1], 0L);
                    C0091o.f691a.dismiss();
                }
            });
            f691a.show();
            f693c = (ActivityC0044a) context2;
        }
    }

    /* renamed from: GeneralFunction.o$10 */
    static class AnonymousClass10 implements DialogInterface.OnCancelListener {

        /* renamed from: a */
        final /* synthetic */ Context f697a;

        /* renamed from: b */
        final /* synthetic */ int[] f698b;

        AnonymousClass10(Context context2, int[] iArr2) {
            context = context2;
            iArr = iArr2;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
            ((ActivityC0044a) context).mo408a(iArr[0], 0L);
        }
    }

    /* renamed from: GeneralFunction.o$1 */
    static class AnonymousClass1 implements DialogInterface.OnKeyListener {

        /* renamed from: a */
        final /* synthetic */ Context f695a;

        /* renamed from: b */
        final /* synthetic */ int[] f696b;

        AnonymousClass1(Context context2, int[] iArr2) {
            context = context2;
            iArr = iArr2;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
            if (i2 != 4) {
                return C0091o.f691a.onKeyUp(i2, keyEvent);
            }
            ((ActivityC0044a) context).mo408a(iArr[0], 0L);
            C0091o.f691a.dismiss();
            return true;
        }
    }

    /* renamed from: GeneralFunction.o$2 */
    static class AnonymousClass2 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ Context f699a;

        /* renamed from: b */
        final /* synthetic */ int[] f700b;

        AnonymousClass2(Context context2, int[] iArr2) {
            context = context2;
            iArr = iArr2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ActivityC0044a) context).mo408a(iArr[0], 0L);
            C0091o.f691a.dismiss();
        }
    }

    /* renamed from: GeneralFunction.o$3 */
    static class AnonymousClass3 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ Context f701a;

        /* renamed from: b */
        final /* synthetic */ int[] f702b;

        AnonymousClass3(Context context2, int[] iArr2) {
            context = context2;
            iArr = iArr2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((ActivityC0044a) context).mo408a(iArr[1], 0L);
            C0091o.f691a.dismiss();
        }
    }
}
