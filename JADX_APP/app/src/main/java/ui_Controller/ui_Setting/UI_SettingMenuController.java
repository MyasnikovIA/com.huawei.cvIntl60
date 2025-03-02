package ui_Controller.ui_Setting;

import GeneralFunction.C0043a;
import GeneralFunction.C0052d;
import GeneralFunction.C0079k;
import GeneralFunction.C0091o;
import GeneralFunction.p001a.ActivityC0044a;
import GeneralFunction.p016m.C0088a;
import GeneralFunction.p017n.C0090a;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.drawable.AnimationDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.os.PowerManager;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.gms.plus.PlusShare;
import com.huawei.cvIntl60.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p026a.p032c.C0121a;
import p026a.p032c.C0122b;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import ui_Controller.p110b.C1664f;
import ui_Controller.p110b.C1669k;
import ui_Controller.ui_StartMode.UI_ModeMain;

/* loaded from: classes.dex */
public class UI_SettingMenuController extends ActivityC0044a {

    /* renamed from: h */
    private int f8691h = 0;

    /* renamed from: i */
    private int f8692i = 0;

    /* renamed from: j */
    private int f8693j = -1;

    /* renamed from: b */
    public int f8685b = 11;

    /* renamed from: k */
    private C1854a f8694k = null;

    /* renamed from: c */
    protected UI_ModeMain f8686c = null;

    /* renamed from: d */
    protected C1664f f8687d = null;

    /* renamed from: e */
    protected C1669k f8688e = null;

    /* renamed from: l */
    private int f8695l = 0;

    /* renamed from: m */
    private TextView f8696m = null;

    /* renamed from: n */
    private TextView f8697n = null;

    /* renamed from: o */
    private TextView f8698o = null;

    /* renamed from: p */
    private TextView f8699p = null;

    /* renamed from: q */
    private C1844d f8700q = null;

    /* renamed from: r */
    private C1845e f8701r = null;

    /* renamed from: s */
    private C1843c f8702s = null;

    /* renamed from: t */
    private C1846f f8703t = null;

    /* renamed from: u */
    private C1842b f8704u = null;

    /* renamed from: v */
    private ArrayList<String> f8705v = null;

    /* renamed from: w */
    private ArrayList<String> f8706w = null;

    /* renamed from: x */
    private ArrayList<String> f8707x = null;

    /* renamed from: y */
    private ArrayList<String> f8708y = null;

    /* renamed from: z */
    private ArrayList<String> f8709z = null;

    /* renamed from: A */
    private ArrayList<String> f8611A = null;

    /* renamed from: B */
    private ArrayList<String> f8612B = null;

    /* renamed from: C */
    private ArrayList<String> f8613C = null;

    /* renamed from: D */
    private ArrayList<String> f8614D = null;

    /* renamed from: E */
    private ArrayList<String> f8615E = null;

    /* renamed from: F */
    private ArrayList<String> f8616F = null;

    /* renamed from: G */
    private ArrayList<String> f8617G = null;

    /* renamed from: H */
    private ArrayList<String> f8618H = null;

    /* renamed from: I */
    private ArrayList<String> f8619I = null;

    /* renamed from: J */
    private ImageButton f8620J = null;

    /* renamed from: K */
    private ImageButton f8621K = null;

    /* renamed from: L */
    private ImageButton f8622L = null;

    /* renamed from: M */
    private ImageButton f8623M = null;

    /* renamed from: N */
    private ImageButton f8624N = null;

    /* renamed from: O */
    private ImageButton f8625O = null;

    /* renamed from: P */
    private LinearLayout f8626P = null;

    /* renamed from: Q */
    private LinearLayout f8627Q = null;

    /* renamed from: R */
    private LinearLayout f8628R = null;

    /* renamed from: S */
    private LinearLayout f8629S = null;

    /* renamed from: T */
    private LinearLayout f8630T = null;

    /* renamed from: U */
    private LinearLayout f8631U = null;

    /* renamed from: V */
    private LinearLayout f8632V = null;

    /* renamed from: W */
    private ListView f8633W = null;

    /* renamed from: X */
    private ListView f8634X = null;

    /* renamed from: Y */
    private ListView f8635Y = null;

    /* renamed from: Z */
    private ListView f8636Z = null;

    /* renamed from: aa */
    private ListView f8659aa = null;

    /* renamed from: ab */
    private Boolean[] f8660ab = {true, true, true, true, true, true, false, false, false, false, false, false};

    /* renamed from: ac */
    private Boolean[] f8661ac = {false, false, false, false, false, false, false, false, false, true, false, true};

    /* renamed from: ad */
    private int[] f8662ad = null;

    /* renamed from: ae */
    private String[] f8663ae = null;

    /* renamed from: af */
    private ArrayList<Integer> f8664af = null;

    /* renamed from: ag */
    private int[] f8665ag = null;

    /* renamed from: ah */
    private int[] f8666ah = null;

    /* renamed from: ai */
    private int[] f8667ai = null;

    /* renamed from: aj */
    private int[] f8668aj = null;

    /* renamed from: ak */
    private int[] f8669ak = null;

    /* renamed from: al */
    private int[] f8670al = null;

    /* renamed from: am */
    private int[] f8671am = null;

    /* renamed from: an */
    private int[] f8672an = null;

    /* renamed from: ao */
    private int[] f8673ao = null;

    /* renamed from: ap */
    private LinearLayout f8674ap = null;

    /* renamed from: aq */
    private LinearLayout f8675aq = null;

    /* renamed from: ar */
    private ArrayList<Integer> f8676ar = null;

    /* renamed from: as */
    private Context f8677as = this;

    /* renamed from: at */
    private TextView f8678at = null;

    /* renamed from: au */
    private WebView f8679au = null;

    /* renamed from: av */
    private Spanned f8680av = null;

    /* renamed from: aw */
    private LinearLayout f8681aw = null;

    /* renamed from: ax */
    private ImageView f8682ax = null;

    /* renamed from: ay */
    private TextView f8683ay = null;

    /* renamed from: az */
    private LinearLayout f8684az = null;

    /* renamed from: aA */
    private ImageView f8637aA = null;

    /* renamed from: aB */
    private TextView f8638aB = null;

    /* renamed from: aC */
    private TextView f8639aC = null;

    /* renamed from: aD */
    private Button f8640aD = null;

    /* renamed from: aE */
    private Integer[] f8641aE = null;

    /* renamed from: aF */
    private Integer[] f8642aF = null;

    /* renamed from: aG */
    private Integer[] f8643aG = null;

    /* renamed from: aH */
    private Integer[] f8644aH = null;

    /* renamed from: aI */
    private Integer[] f8645aI = null;

    /* renamed from: aJ */
    private Integer[] f8646aJ = null;

    /* renamed from: aK */
    private Integer[] f8647aK = null;

    /* renamed from: aL */
    private Integer[] f8648aL = null;

    /* renamed from: aM */
    private Integer[] f8649aM = null;

    /* renamed from: aN */
    private Integer[] f8650aN = null;

    /* renamed from: aO */
    private Integer[] f8651aO = null;

    /* renamed from: aP */
    private Integer[] f8652aP = null;

    /* renamed from: aQ */
    private Integer[] f8653aQ = null;

    /* renamed from: aR */
    private LinearLayout f8654aR = null;

    /* renamed from: aS */
    private WebView f8655aS = null;

    /* renamed from: aT */
    private Button f8656aT = null;

    /* renamed from: f */
    protected PowerManager.WakeLock f8689f = null;

    /* renamed from: aU */
    private LinearLayout f8657aU = null;

    /* renamed from: g */
    protected boolean f8690g = false;

    /* renamed from: aV */
    private View.OnClickListener f8658aV = new View.OnClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.IB_ui_setting_menu_topBack /* 2131755863 */:
                    UI_SettingMenuController.this.f8686c.m7980a(new C0121a(8448));
                    break;
                case R.id.IB_ui_setting_submenu_topBack /* 2131755867 */:
                    UI_SettingMenuController.this.f8626P.setVisibility(0);
                    UI_SettingMenuController.this.f8627Q.setVisibility(4);
                    UI_SettingMenuController.this.f8630T.setVisibility(4);
                    break;
                case R.id.IB_ui_setting_about_topBack /* 2131755871 */:
                    UI_SettingMenuController.this.f8626P.setVisibility(0);
                    UI_SettingMenuController.this.f8628R.setVisibility(4);
                    UI_SettingMenuController.this.f8630T.setVisibility(4);
                    break;
                case R.id.IB_ui_setting_update_topBack /* 2131755879 */:
                    UI_SettingMenuController.this.f8626P.setVisibility(4);
                    UI_SettingMenuController.this.f8627Q.setVisibility(4);
                    UI_SettingMenuController.this.f8628R.setVisibility(0);
                    UI_SettingMenuController.this.f8631U.setVisibility(4);
                    UI_SettingMenuController.this.f8630T.setVisibility(4);
                    break;
                case R.id.IB_ui_setting_LegalInformation_sub_TopBack /* 2131755883 */:
                    UI_SettingMenuController.this.f8632V.setVisibility(4);
                    UI_SettingMenuController.this.f8628R.setVisibility(0);
                    break;
                case R.id.IB_ui_setting_OpensourceLicense_topBack /* 2131755887 */:
                    UI_SettingMenuController.this.f8626P.setVisibility(4);
                    UI_SettingMenuController.this.f8627Q.setVisibility(4);
                    UI_SettingMenuController.this.f8631U.setVisibility(4);
                    UI_SettingMenuController.this.f8630T.setVisibility(4);
                    UI_SettingMenuController.this.f8628R.setVisibility(0);
                    break;
            }
        }
    };

    /* renamed from: r */
    private void m7883r() {
        this.f8641aE = new Integer[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
        this.f8642aF = new Integer[]{0, 1};
        this.f8643aG = new Integer[]{0, 1};
        this.f8644aH = new Integer[]{0, 1};
        this.f8645aI = new Integer[]{0, 1};
        this.f8646aJ = new Integer[]{0, 1};
        this.f8647aK = new Integer[]{0, 1, 2, 3};
        this.f8648aL = new Integer[]{0, 1};
        this.f8649aM = new Integer[]{0, 1};
        this.f8650aN = new Integer[]{0, 1};
        this.f8651aO = new Integer[]{0, 1};
        this.f8652aP = new Integer[]{0};
        this.f8653aQ = new Integer[]{0, 1};
    }

    /* renamed from: s */
    private void m7884s() {
        this.f8705v = new ArrayList<>();
        this.f8705v.add(getResources().getString(R.string.store_location));
        this.f8705v.add(getResources().getString(R.string.video_resolution));
        this.f8705v.add(getResources().getString(R.string.photo_resolution));
        this.f8705v.add(getResources().getString(R.string.live_view_mode));
        this.f8705v.add(getResources().getString(R.string.recording_time));
        this.f8705v.add(getResources().getString(R.string.self_timer));
        this.f8705v.add(getResources().getString(R.string.pip_view));
        this.f8705v.add(getResources().getString(R.string.shutter_sound));
        this.f8705v.add(getResources().getString(R.string.water_mark));
        this.f8705v.add(getResources().getString(R.string.user_instructions));
        this.f8705v.add(getResources().getString(R.string.reset_all));
        this.f8705v.add(getResources().getString(R.string.about));
    }

    /* renamed from: c */
    public void m7899c() {
        this.f8662ad = new int[]{R.drawable.settings_arrow, R.drawable.settings_arrow, R.drawable.settings_arrow, R.drawable.settings_arrow, R.drawable.settings_arrow, R.drawable.settings_arrow, R.drawable.settings_toggle_on, R.drawable.settings_toggle_on, R.drawable.settings_toggle_on, 0, 0, 0};
        if (C0088a.m840g() == 1) {
            this.f8662ad[6] = R.drawable.settings_toggle_off;
        }
        if (C0088a.m842h() == 1) {
            this.f8662ad[7] = R.drawable.settings_toggle_off;
        }
        if (C0088a.m844i() == 0) {
            this.f8662ad[8] = R.drawable.settings_toggle_off;
        }
    }

    /* renamed from: t */
    private void m7885t() {
        m7884s();
        m7886u();
        m7888w();
        m7890y();
        m7844D();
        m7907j();
        m7899c();
        ((TextView) findViewById(R.id.TV_ui_setting_menu_title)).setText(getResources().getString(R.string.settings));
        this.f8620J = (ImageButton) findViewById(R.id.IB_ui_setting_menu_topBack);
        this.f8620J.setOnClickListener(this.f8658aV);
        this.f8626P = (LinearLayout) findViewById(R.id.LL_ui_setting_menu);
        this.f8633W = (ListView) findViewById(R.id.LV_ui_setting_menu);
        this.f8664af = new ArrayList<>();
        this.f8664af.addAll(Arrays.asList(this.f8641aE));
        this.f8687d.f7596ac = this.f8686c.f8783d.m1264b();
        this.f8700q = new C1844d(this, this.f8662ad, this.f8705v, this.f8663ae, this.f8664af, this.f8687d.f7596ac);
        this.f8633W.setAdapter((ListAdapter) this.f8700q);
        this.f8633W.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                UI_SettingMenuController.this.f8687d.f7586T = i;
                if (UI_SettingMenuController.this.f8687d.f7596ac && (UI_SettingMenuController.this.f8687d.f7586T == 6 || UI_SettingMenuController.this.f8687d.f7586T == 7)) {
                    if (UI_SettingMenuController.this.f8663ae[UI_SettingMenuController.this.f8687d.f7586T].equals(UI_SettingMenuController.this.getResources().getString(R.string.f7061on))) {
                        UI_SettingMenuController.this.f8687d.f7587U = 1;
                        UI_SettingMenuController.this.f8662ad[UI_SettingMenuController.this.f8687d.f7586T] = R.drawable.settings_toggle_off;
                    } else {
                        UI_SettingMenuController.this.f8687d.f7587U = 0;
                        UI_SettingMenuController.this.f8662ad[UI_SettingMenuController.this.f8687d.f7586T] = R.drawable.settings_toggle_on;
                    }
                    UI_SettingMenuController.this.f8700q.m7916a(i, view, UI_SettingMenuController.this.f8687d.f7587U);
                    UI_SettingMenuController.this.m7906i();
                    return;
                }
                if (UI_SettingMenuController.this.f8687d.f7596ac && UI_SettingMenuController.this.f8687d.f7586T == 8) {
                    if (UI_SettingMenuController.this.f8663ae[UI_SettingMenuController.this.f8687d.f7586T].equals(UI_SettingMenuController.this.getResources().getString(R.string.f7061on))) {
                        UI_SettingMenuController.this.f8687d.f7587U = 1;
                        UI_SettingMenuController.this.f8662ad[UI_SettingMenuController.this.f8687d.f7586T] = R.drawable.settings_toggle_on;
                    } else {
                        UI_SettingMenuController.this.f8687d.f7587U = 0;
                        UI_SettingMenuController.this.f8662ad[UI_SettingMenuController.this.f8687d.f7586T] = R.drawable.settings_toggle_off;
                    }
                    UI_SettingMenuController.this.f8700q.m7917a(i, view, UI_SettingMenuController.this.f8687d.f7587U, true);
                    UI_SettingMenuController.this.m7906i();
                    return;
                }
                if (UI_SettingMenuController.this.f8687d.f7596ac && (UI_SettingMenuController.this.f8687d.f7586T == 0 || UI_SettingMenuController.this.f8687d.f7586T == 1 || UI_SettingMenuController.this.f8687d.f7586T == 2 || UI_SettingMenuController.this.f8687d.f7586T == 3 || UI_SettingMenuController.this.f8687d.f7586T == 4 || UI_SettingMenuController.this.f8687d.f7586T == 5)) {
                    UI_SettingMenuController.this.m7868d(i);
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(UI_SettingMenuController.this.f8627Q, "translationX", 1600.0f, 0.0f);
                    ofFloat.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.1.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            UI_SettingMenuController.this.f8626P.setVisibility(4);
                            UI_SettingMenuController.this.m7866c(false);
                        }
                    });
                    ofFloat.setDuration(300L);
                    UI_SettingMenuController.this.m7866c(true);
                    ofFloat.start();
                    UI_SettingMenuController.this.f8627Q.setVisibility(0);
                    return;
                }
                if (i == 9) {
                    UI_SettingMenuController.this.f8686c.m7978a(4128, UI_SettingMenuController.this, new Intent(UI_SettingMenuController.this, (Class<?>) UI_SettingUserInstructions.class));
                    UI_SettingMenuController.this.f8686c.m7977a(0, (ActivityC0044a) null);
                    UI_SettingMenuController.this.finish();
                    return;
                }
                if (UI_SettingMenuController.this.f8687d.f7596ac && i == 10) {
                    UI_SettingMenuController.this.f8690g = true;
                    C0091o.m899b(UI_SettingMenuController.this);
                    C0091o.m892a((Context) UI_SettingMenuController.this, true, true, UI_SettingMenuController.this.getResources().getString(R.string.reset), UI_SettingMenuController.this.getResources().getString(R.string.reset_all_check), new String[]{UI_SettingMenuController.this.getResources().getString(R.string.dialog_option_cancel), UI_SettingMenuController.this.getResources().getString(R.string.dialog_option_ok_for_two_button)}, new int[]{12039, 9220});
                } else if (i == 11) {
                    UI_SettingMenuController.this.m7841A();
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(UI_SettingMenuController.this.f8628R, "translationX", 1600.0f, 0.0f);
                    ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.1.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            UI_SettingMenuController.this.f8626P.setVisibility(4);
                            UI_SettingMenuController.this.m7866c(false);
                        }
                    });
                    ofFloat2.setDuration(300L);
                    UI_SettingMenuController.this.m7866c(true);
                    ofFloat2.start();
                    UI_SettingMenuController.this.f8628R.setVisibility(0);
                }
            }
        });
    }

    /* renamed from: u */
    private void m7886u() {
        this.f8706w = new ArrayList<>();
        this.f8706w.add(getResources().getString(R.string.device_storage));
        this.f8706w.add(getResources().getString(R.string.memory_card));
        this.f8707x = new ArrayList<>();
        this.f8707x.add(getResources().getString(R.string.video_resolution_1920_960_2_1));
        this.f8707x.add(getResources().getString(R.string.video_resolution_1280_640_2_1));
        this.f8708y = new ArrayList<>();
        this.f8708y.add(getResources().getString(R.string.photo_resolution_5376_2688));
        this.f8708y.add(getResources().getString(R.string.photo_resolution_3840_1920));
        this.f8709z = new ArrayList<>();
        this.f8709z.add(getResources().getString(R.string.live_view_mode_eco));
        this.f8709z.add(getResources().getString(R.string.live_view_mode_hd));
        this.f8611A = new ArrayList<>();
        this.f8611A.add(getResources().getString(R.string.recording_time_short_movie));
        this.f8611A.add(getResources().getString(R.string.recording_time_long_movie));
        this.f8612B = new ArrayList<>();
        this.f8612B.add(getResources().getString(R.string.self_timer_off));
        this.f8612B.add(getResources().getString(R.string.self_timer_2_sec));
        this.f8612B.add(getResources().getString(R.string.self_timer_5_sec));
        this.f8612B.add(getResources().getString(R.string.self_timer_10_sec));
        this.f8613C = new ArrayList<>();
        this.f8613C.add(getResources().getString(R.string.pip_view_on));
        this.f8613C.add(getResources().getString(R.string.pip_view_off));
        this.f8614D = new ArrayList<>();
        this.f8614D.add(getResources().getString(R.string.shutter_sound_on));
        this.f8614D.add(getResources().getString(R.string.shutter_sound_off));
        this.f8615E = new ArrayList<>();
        this.f8615E.add(getResources().getString(R.string.water_mark_on));
        this.f8615E.add(getResources().getString(R.string.water_mark_off));
    }

    /* renamed from: v */
    private void m7887v() {
        this.f8665ag = new int[]{R.drawable.settings_radio_off, R.drawable.settings_radio_off};
        this.f8666ah = new int[]{R.drawable.settings_radio_off, R.drawable.settings_radio_off};
        this.f8667ai = new int[]{R.drawable.settings_radio_off, R.drawable.settings_radio_off};
        this.f8668aj = new int[]{R.drawable.settings_radio_off, R.drawable.settings_radio_off};
        this.f8669ak = new int[]{R.drawable.settings_radio_off, R.drawable.settings_radio_off};
        this.f8670al = new int[]{R.drawable.settings_radio_off, R.drawable.settings_radio_off, R.drawable.settings_radio_off, R.drawable.settings_radio_off};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m7868d(int i) {
        m7887v();
        this.f8674ap = (LinearLayout) findViewById(R.id.LL_ui_setting_submenu_listview_text);
        this.f8675aq = (LinearLayout) findViewById(R.id.LL_ui_setting_submenu_listview_icon);
        this.f8629S = (LinearLayout) findViewById(R.id.LL_ui_setting_submenu2);
        this.f8696m = (TextView) findViewById(R.id.TV_ui_setting_submenu_title);
        this.f8696m.setText(this.f8705v.get(i));
        this.f8634X = (ListView) findViewById(R.id.LV_ui_setting_submenu);
        this.f8621K = (ImageButton) findViewById(R.id.IB_ui_setting_submenu_topBack);
        this.f8621K.setOnClickListener(this.f8658aV);
        this.f8676ar = new ArrayList<>();
        switch (i) {
            case 0:
                this.f8676ar.addAll(Arrays.asList(this.f8642aF));
                this.f8665ag[C0088a.m820a()] = R.drawable.settings_radio_on;
                this.f8701r = new C1845e(this, this.f8665ag, this.f8706w, this.f8676ar);
                break;
            case 1:
                this.f8676ar.addAll(Arrays.asList(this.f8643aG));
                this.f8666ah[C0088a.m825b()] = R.drawable.settings_radio_on;
                this.f8701r = new C1845e(this, this.f8666ah, this.f8707x, this.f8676ar);
                break;
            case 2:
                this.f8676ar.addAll(Arrays.asList(this.f8644aH));
                this.f8667ai[C0088a.m829c()] = R.drawable.settings_radio_on;
                this.f8701r = new C1845e(this, this.f8667ai, this.f8708y, this.f8676ar);
                break;
            case 3:
                this.f8676ar.addAll(Arrays.asList(this.f8645aI));
                this.f8668aj[C0088a.m833d()] = R.drawable.settings_radio_on;
                this.f8701r = new C1845e(this, this.f8668aj, this.f8709z, this.f8676ar);
                break;
            case 4:
                this.f8676ar.addAll(Arrays.asList(this.f8646aJ));
                this.f8669ak[C0088a.m836e()] = R.drawable.settings_radio_on;
                this.f8701r = new C1845e(this, this.f8669ak, this.f8611A, this.f8676ar);
                break;
            case 5:
                this.f8676ar.addAll(Arrays.asList(this.f8647aK));
                this.f8670al[C0088a.m838f()] = R.drawable.settings_radio_on;
                this.f8701r = new C1845e(this, this.f8670al, this.f8612B, this.f8676ar);
                break;
        }
        this.f8634X.setAdapter((ListAdapter) this.f8701r);
        this.f8634X.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                UI_SettingMenuController.this.f8687d.f7587U = i2;
                if (UI_SettingMenuController.this.f8687d.f7586T != 0 || UI_SettingMenuController.this.f8687d.f7587U != 1 || UI_SettingMenuController.this.f8687d.f7597ad) {
                    UI_SettingMenuController.this.f8701r.m7921a(i2, view, adapterView);
                    UI_SettingMenuController.this.m7906i();
                } else {
                    UI_SettingMenuController.this.m7856a("MEMORY_CARD is disable", 3);
                }
            }
        });
    }

    /* renamed from: w */
    private void m7888w() {
        this.f8617G = new ArrayList<>();
        this.f8617G.add(getResources().getString(R.string.version_update));
        this.f8617G.add(getResources().getString(R.string.open_source_licenses));
    }

    /* renamed from: x */
    private void m7889x() {
        this.f8671am = new int[]{R.drawable.settings_arrow, R.drawable.settings_arrow};
    }

    /* renamed from: y */
    private void m7890y() {
        this.f8618H = new ArrayList<>();
        this.f8618H.add(getResources().getString(R.string.version_update_camera));
    }

    /* renamed from: z */
    private void m7891z() {
        this.f8672an = new int[]{R.drawable.settings_arrow};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public void m7841A() {
        m7889x();
        this.f8697n = (TextView) findViewById(R.id.TV_ui_setting_about_title);
        this.f8697n.setText(getResources().getString(R.string.about));
        this.f8635Y = (ListView) findViewById(R.id.LV_ui_setting_about);
        this.f8622L = (ImageButton) findViewById(R.id.IB_ui_setting_about_topBack);
        this.f8622L.setOnClickListener(this.f8658aV);
        this.f8678at = (TextView) findViewById(R.id.TV_ui_setting_about_version);
        this.f8678at.setText(m7846F());
        this.f8676ar = new ArrayList<>();
        this.f8676ar.addAll(Arrays.asList(this.f8651aO));
        this.f8702s = new C1843c(this, this.f8671am, this.f8617G, this.f8676ar);
        this.f8635Y.setAdapter((ListAdapter) this.f8702s);
        this.f8635Y.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.6
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                UI_SettingMenuController.this.f8687d.f7586T = i;
                if (UI_SettingMenuController.this.f8687d.f7586T == 0) {
                    UI_SettingMenuController.this.m7843C();
                    UI_SettingMenuController.this.f8630T.setVisibility(0);
                } else if (UI_SettingMenuController.this.f8687d.f7586T == 1) {
                    UI_SettingMenuController.this.f8631U.setVisibility(0);
                }
            }
        });
        findViewById(R.id.LL_ui_about_footer).setVisibility(0);
        m7842B();
    }

    /* renamed from: B */
    private void m7842B() {
        Spanned fromHtml;
        TextView textView = (TextView) findViewById(R.id.TV_ui_about_footer);
        if (Build.VERSION.SDK_INT >= 24) {
            fromHtml = Html.fromHtml(getResources().getString(R.string.about_footer), 0);
        } else {
            fromHtml = Html.fromHtml(getResources().getString(R.string.about_footer));
        }
        textView.setText(fromHtml);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        if (fromHtml instanceof Spannable) {
            URLSpan[] uRLSpanArr = (URLSpan[]) fromHtml.getSpans(0, fromHtml.length(), URLSpan.class);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(fromHtml);
            spannableStringBuilder.clearSpans();
            for (URLSpan uRLSpan : uRLSpanArr) {
                spannableStringBuilder.setSpan(new C1841a(uRLSpan.getURL()), fromHtml.getSpanStart(uRLSpan), fromHtml.getSpanEnd(uRLSpan), 33);
            }
            textView.setText(spannableStringBuilder);
        }
    }

    /* renamed from: ui_Controller.ui_Setting.UI_SettingMenuController$a */
    private class C1841a extends ClickableSpan {

        /* renamed from: b */
        private String f8722b;

        public C1841a(String str) {
            this.f8722b = str;
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(false);
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            UI_SettingMenuController.this.m7865c(this.f8722b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m7865c(String str) {
        String string;
        String string2;
        switch (str) {
            case "0":
                string = getResources().getString(R.string.agreement_page_title);
                string2 = getResources().getString(R.string.user_agreement_url);
                break;
            default:
                string = null;
                string2 = null;
                break;
        }
        m7857a(string, string2);
    }

    /* renamed from: a */
    private void m7857a(String str, String str2) {
        Intent intent = new Intent(this, (Class<?>) UI_SettingInformation.class);
        intent.putExtra("url", str2);
        intent.putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, str);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public void m7843C() {
        m7891z();
        this.f8698o = (TextView) findViewById(R.id.TV_ui_setting_update_title);
        this.f8698o.setText(getResources().getString(R.string.version_update));
        this.f8636Z = (ListView) findViewById(R.id.LV_ui_setting_update);
        this.f8623M = (ImageButton) findViewById(R.id.IB_ui_setting_update_topBack);
        this.f8623M.setOnClickListener(this.f8658aV);
        this.f8676ar = new ArrayList<>();
        this.f8676ar.addAll(Arrays.asList(this.f8652aP));
        this.f8703t = new C1846f(this, this.f8672an, this.f8618H, this.f8676ar);
        this.f8636Z.setAdapter((ListAdapter) this.f8703t);
        this.f8636Z.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.7
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                UI_SettingMenuController.this.f8687d.f7586T = i;
                if (UI_SettingMenuController.this.f8687d.f7586T == 0 && UI_SettingMenuController.this.f8686c.f8783d.m1264b()) {
                    if (UI_SettingMenuController.this.f8687d.f7617r) {
                        C0091o.m892a((Context) UI_SettingMenuController.this, true, false, UI_SettingMenuController.this.getResources().getString(R.string.camera_update_for_newer_camera_program), UI_SettingMenuController.this.getResources().getString(R.string.camera_update_content), new String[]{UI_SettingMenuController.this.getResources().getString(R.string.dialog_option_later), UI_SettingMenuController.this.getResources().getString(R.string.dialog_option_update)}, new int[]{12039, 9257});
                    } else {
                        C0091o.m889a((Context) UI_SettingMenuController.this, true, true, UI_SettingMenuController.this.getResources().getString(R.string.camera_update), UI_SettingMenuController.this.getResources().getString(R.string.camera_update_check), UI_SettingMenuController.this.getResources().getString(R.string.dialog_option_ok), 12039);
                    }
                }
            }
        });
    }

    /* renamed from: D */
    private void m7844D() {
        this.f8679au = (WebView) findViewById(R.id.WV_ui_setting_OpensourceLicense_content);
        WebSettings settings = this.f8679au.getSettings();
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        this.f8679au.loadUrl("file:///android_asset/OpenSourceLicense.htm");
        this.f8679au.setVerticalScrollBarEnabled(false);
    }

    /* renamed from: E */
    private String m7845E() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: d */
    protected C1844d m7901d() {
        return this.f8700q;
    }

    /* renamed from: ui_Controller.ui_Setting.UI_SettingMenuController$d */
    protected class C1844d extends BaseAdapter {

        /* renamed from: b */
        private int[] f8733b;

        /* renamed from: c */
        private List<String> f8734c;

        /* renamed from: d */
        private List<Integer> f8735d;

        /* renamed from: e */
        private boolean[] f8736e;

        /* renamed from: f */
        private boolean f8737f;

        public C1844d(Context context, int[] iArr, List<String> list, String[] strArr, List<Integer> list2, boolean z) {
            this.f8734c = list;
            this.f8733b = iArr;
            this.f8735d = list2;
            this.f8737f = z;
            this.f8736e = new boolean[list.size()];
            for (int i = 0; i < list.size(); i++) {
                this.f8736e[i] = true;
            }
        }

        /* renamed from: a */
        public void m7918a(boolean z) {
            this.f8737f = z;
        }

        /* renamed from: a */
        public void m7915a() {
            notifyDataSetChanged();
        }

        /* renamed from: b */
        public void m7919b() {
            this.f8733b[6] = R.drawable.settings_toggle_off;
            this.f8733b[7] = R.drawable.settings_toggle_on;
            this.f8733b[8] = R.drawable.settings_toggle_off;
            notifyDataSetChanged();
        }

        /* renamed from: a */
        public void m7916a(int i, View view, int i2) {
            if (i2 == 1) {
                this.f8733b[i] = R.drawable.settings_toggle_off;
            } else {
                this.f8733b[i] = R.drawable.settings_toggle_on;
            }
        }

        /* renamed from: a */
        public void m7917a(int i, View view, int i2, boolean z) {
            if (z) {
                if (i2 == 1) {
                    this.f8733b[i] = R.drawable.settings_toggle_on;
                    return;
                } else {
                    this.f8733b[i] = R.drawable.settings_toggle_off;
                    return;
                }
            }
            m7916a(i, view, i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f8735d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f8734c.get((int) getItemId(i));
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.f8735d.get(i).intValue();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (UI_SettingMenuController.this.f8660ab[i].booleanValue()) {
                View inflate = LayoutInflater.from(UI_SettingMenuController.this.getApplicationContext()).inflate(R.layout.setting_menu, (ViewGroup) null);
                ((LinearLayout) inflate.findViewById(R.id.LL_ui_setting_menu_listview_text)).getLayoutParams().height = UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b;
                ((LinearLayout) inflate.findViewById(R.id.LL_ui_setting_menu_listview_icon)).getLayoutParams().height = UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b;
                ((ImageView) inflate.findViewById(R.id.setting_menu_list_icon)).setImageResource(this.f8733b[i]);
                TextView textView = (TextView) inflate.findViewById(R.id.textTitle);
                textView.setText((CharSequence) UI_SettingMenuController.this.f8705v.get(i));
                TextView textView2 = (TextView) inflate.findViewById(R.id.textDetail);
                textView2.setText(UI_SettingMenuController.this.f8663ae[i]);
                if (!this.f8737f) {
                    if (UI_SettingMenuController.this.f8661ac[i].booleanValue()) {
                        textView.setTextColor(UI_SettingMenuController.this.getResources().getColor(R.color.gray2B));
                        textView2.setTextColor(UI_SettingMenuController.this.getResources().getColor(R.color.gray88));
                    } else {
                        textView.setTextColor(UI_SettingMenuController.this.getResources().getColor(R.color.grayC0));
                        textView2.setTextColor(UI_SettingMenuController.this.getResources().getColor(R.color.grayC0));
                    }
                }
                return inflate;
            }
            View inflate2 = LayoutInflater.from(UI_SettingMenuController.this.getApplicationContext()).inflate(R.layout.setting_menu_2, (ViewGroup) null);
            ((LinearLayout) inflate2.findViewById(R.id.LL_ui_setting_menu2_listview_text)).getLayoutParams().height = UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b;
            ((LinearLayout) inflate2.findViewById(R.id.LL_ui_setting_menu2_listview_icon)).getLayoutParams().height = UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b;
            TextView textView3 = (TextView) inflate2.findViewById(R.id.textTitle);
            textView3.setText((CharSequence) UI_SettingMenuController.this.f8705v.get(i));
            if (!this.f8737f) {
                if (UI_SettingMenuController.this.f8661ac[i].booleanValue()) {
                    textView3.setTextColor(UI_SettingMenuController.this.getResources().getColor(R.color.gray2B));
                    if (this.f8733b[i] == R.drawable.settings_toggle_on_disable) {
                        this.f8733b[i] = R.drawable.settings_toggle_on;
                    } else if (this.f8733b[i] == R.drawable.settings_toggle_off_disable) {
                        this.f8733b[i] = R.drawable.settings_toggle_off;
                    }
                } else {
                    textView3.setTextColor(UI_SettingMenuController.this.getResources().getColor(R.color.grayC0));
                    if (this.f8733b[i] == R.drawable.settings_toggle_on) {
                        this.f8733b[i] = R.drawable.settings_toggle_on_disable;
                    } else if (this.f8733b[i] == R.drawable.settings_toggle_off) {
                        this.f8733b[i] = R.drawable.settings_toggle_off_disable;
                    }
                }
            }
            ((ImageView) inflate2.findViewById(R.id.setting_menu_list_icon)).setImageResource(this.f8733b[i]);
            if (i == 11) {
                ImageView imageView = (ImageView) inflate2.findViewById(R.id.IV_setting_menu2_reddot);
                imageView.setImageResource(R.drawable.settings_about_reddot);
                if (UI_SettingMenuController.this.f8687d.f7613n || UI_SettingMenuController.this.f8687d.f7617r) {
                    imageView.setVisibility(0);
                    return inflate2;
                }
                imageView.setVisibility(4);
            }
            return inflate2;
        }
    }

    /* renamed from: ui_Controller.ui_Setting.UI_SettingMenuController$e */
    protected class C1845e extends BaseAdapter {

        /* renamed from: b */
        private int[] f8739b;

        /* renamed from: c */
        private List<String> f8740c;

        /* renamed from: d */
        private List<Integer> f8741d;

        /* renamed from: e */
        private boolean[] f8742e;

        public C1845e(Context context, int[] iArr, List<String> list, List<Integer> list2) {
            this.f8740c = list;
            this.f8739b = iArr;
            this.f8741d = list2;
            this.f8742e = new boolean[list.size()];
            for (int i = 0; i < list.size(); i++) {
                this.f8742e[i] = true;
            }
        }

        /* renamed from: a */
        public void m7920a() {
            notifyDataSetChanged();
        }

        /* renamed from: a */
        public void m7921a(int i, View view, ViewGroup viewGroup) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < getCount()) {
                    if (i3 == i) {
                        ((ImageView) view.findViewById(R.id.setting_submenu_list_icon)).setImageResource(R.drawable.settings_radio_on);
                    } else {
                        ((ImageView) viewGroup.getChildAt(i3).findViewById(R.id.setting_submenu_list_icon)).setImageResource(R.drawable.settings_radio_off);
                    }
                    i2 = i3 + 1;
                } else {
                    return;
                }
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f8741d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f8740c.get((int) getItemId(i));
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.f8741d.get(i).intValue();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(UI_SettingMenuController.this.getApplicationContext()).inflate(R.layout.setting_submenu, (ViewGroup) null);
            ((LinearLayout) inflate.findViewById(R.id.LL_ui_setting_submenu_listview_text)).getLayoutParams().height = UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b;
            ((LinearLayout) inflate.findViewById(R.id.LL_ui_setting_submenu_listview_icon)).getLayoutParams().height = UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b;
            TextView textView = (TextView) inflate.findViewById(R.id.textDetail);
            textView.setText(this.f8740c.get(i));
            if (this.f8740c.get(i).equals(UI_SettingMenuController.this.getString(R.string.memory_card))) {
                if (!UI_SettingMenuController.this.f8687d.f7597ad) {
                    textView.setTextColor(UI_SettingMenuController.this.getResources().getColor(R.color.grayC0));
                } else {
                    textView.setTextColor(UI_SettingMenuController.this.getResources().getColor(R.color.gray2B));
                }
            }
            ((ImageView) inflate.findViewById(R.id.setting_submenu_list_icon)).setImageResource(this.f8739b[i]);
            return inflate;
        }
    }

    /* renamed from: ui_Controller.ui_Setting.UI_SettingMenuController$c */
    protected class C1843c extends BaseAdapter {

        /* renamed from: b */
        private int[] f8728b;

        /* renamed from: c */
        private List<String> f8729c;

        /* renamed from: d */
        private List<Integer> f8730d;

        /* renamed from: e */
        private boolean[] f8731e;

        public C1843c(Context context, int[] iArr, List<String> list, List<Integer> list2) {
            this.f8729c = list;
            this.f8728b = iArr;
            this.f8730d = list2;
            this.f8731e = new boolean[list.size()];
            for (int i = 0; i < list.size(); i++) {
                this.f8731e[i] = true;
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f8730d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f8729c.get((int) getItemId(i));
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.f8730d.get(i).intValue();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(UI_SettingMenuController.this.getApplicationContext()).inflate(R.layout.setting_about, (ViewGroup) null);
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.LL_ui_setting_about_listview_text);
            linearLayout.getLayoutParams().height = UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b;
            LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.LL_ui_setting_about_listview_icon);
            linearLayout2.getLayoutParams().height = UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b;
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(0, UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b, 600.0f));
            linearLayout2.setLayoutParams(new LinearLayout.LayoutParams(0, UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b, 300.0f));
            ((TextView) inflate.findViewById(R.id.textTitle)).setText(this.f8729c.get(i));
            ((ImageView) inflate.findViewById(R.id.setting_about_list_icon)).setImageResource(this.f8728b[i]);
            if (i == 0) {
                ImageView imageView = (ImageView) inflate.findViewById(R.id.IV_setting_about_update);
                imageView.setImageResource(R.drawable.settings_about_reddot);
                if (UI_SettingMenuController.this.f8687d.f7613n || UI_SettingMenuController.this.f8687d.f7617r) {
                    imageView.setVisibility(0);
                } else {
                    imageView.setVisibility(4);
                }
            }
            return inflate;
        }
    }

    /* renamed from: ui_Controller.ui_Setting.UI_SettingMenuController$f */
    protected class C1846f extends BaseAdapter {

        /* renamed from: b */
        private int[] f8744b;

        /* renamed from: c */
        private List<String> f8745c;

        /* renamed from: d */
        private List<Integer> f8746d;

        /* renamed from: e */
        private boolean[] f8747e;

        public C1846f(Context context, int[] iArr, List<String> list, List<Integer> list2) {
            this.f8745c = list;
            this.f8744b = iArr;
            this.f8746d = list2;
            this.f8747e = new boolean[list.size()];
            for (int i = 0; i < list.size(); i++) {
                this.f8747e[i] = true;
            }
        }

        /* renamed from: a */
        public void m7922a() {
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f8746d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f8745c.get((int) getItemId(i));
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.f8746d.get(i).intValue();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(UI_SettingMenuController.this.getApplicationContext()).inflate(R.layout.setting_update, (ViewGroup) null);
            ((LinearLayout) inflate.findViewById(R.id.LL_ui_setting_update_listview_text)).getLayoutParams().height = UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b;
            ((LinearLayout) inflate.findViewById(R.id.LL_ui_setting_update_listview_icon)).getLayoutParams().height = UI_SettingMenuController.this.f8692i / UI_SettingMenuController.this.f8685b;
            TextView textView = (TextView) inflate.findViewById(R.id.textTitle);
            textView.setText(this.f8745c.get(i));
            textView.setMaxWidth(UI_SettingMenuController.this.f8691h / 3);
            ((ImageView) inflate.findViewById(R.id.setting_update_list_icon)).setImageResource(this.f8744b[i]);
            ImageView imageView = (ImageView) inflate.findViewById(R.id.IV_setting_update_reddot);
            imageView.setImageResource(R.drawable.settings_about_reddot);
            if (i == 0) {
                TextView textView2 = (TextView) inflate.findViewById(R.id.textDetail);
                if (UI_SettingMenuController.this.f8686c.f8783d.m1264b()) {
                    textView.setTextColor(UI_SettingMenuController.this.getResources().getColor(R.color.gray2B));
                    textView2.setText(UI_SettingMenuController.this.f8686c.f8782c.f7649g.f7631c);
                    if (UI_SettingMenuController.this.f8687d.f7617r) {
                        imageView.setVisibility(0);
                    } else {
                        imageView.setVisibility(4);
                    }
                } else {
                    textView.setTextColor(UI_SettingMenuController.this.getResources().getColor(R.color.grayC0));
                    textView2.setText("");
                }
            }
            return inflate;
        }
    }

    /* renamed from: ui_Controller.ui_Setting.UI_SettingMenuController$b */
    protected class C1842b extends BaseAdapter {

        /* renamed from: a */
        final /* synthetic */ UI_SettingMenuController f8723a;

        /* renamed from: b */
        private int[] f8724b;

        /* renamed from: c */
        private List<String> f8725c;

        /* renamed from: d */
        private List<Integer> f8726d;

        @Override // android.widget.Adapter
        public int getCount() {
            return this.f8726d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.f8725c.get((int) getItemId(i));
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return this.f8726d.get(i).intValue();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(this.f8723a.getApplicationContext()).inflate(R.layout.setting_update, (ViewGroup) null);
            ViewGroup.LayoutParams layoutParams = ((LinearLayout) inflate.findViewById(R.id.LL_ui_setting_update_listview_text)).getLayoutParams();
            layoutParams.height = this.f8723a.f8692i / this.f8723a.f8685b;
            layoutParams.width = (this.f8723a.f8691h * 800) / IMediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR;
            ViewGroup.LayoutParams layoutParams2 = ((LinearLayout) inflate.findViewById(R.id.LL_ui_setting_update_listview_icon)).getLayoutParams();
            layoutParams2.height = this.f8723a.f8692i / this.f8723a.f8685b;
            layoutParams2.width = (this.f8723a.f8691h * 100) / IMediaPlayer.MEDIA_INFO_TIMED_TEXT_ERROR;
            int m784a = C0079k.m784a(this.f8723a, this.f8723a.f8691h / 27);
            TextView textView = (TextView) inflate.findViewById(R.id.textTitle);
            textView.setText(this.f8725c.get(i));
            textView.setTextSize(m784a);
            ((ImageView) inflate.findViewById(R.id.setting_update_list_icon)).setImageResource(this.f8724b[i]);
            return inflate;
        }
    }

    /* renamed from: F */
    private String m7846F() {
        return "v" + m7845E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m7856a(String str, int i) {
        C0052d.m465a("UI_SettingMenuController", str, i);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo408a(int i, long j) {
        if (this.f8686c != null) {
            this.f8686c.m7981a(new C0121a(i), j);
        } else {
            m7856a("SendUiMsg error!! Msg=" + i, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo410a(C0121a c0121a, long j) {
        if (this.f8686c != null) {
            this.f8686c.m7981a(c0121a, j);
        } else {
            m7856a("SendUiMsg error!! MsgEx=" + c0121a.m1208b().what, 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo413b(int i, long j) {
        if (this.f8686c != null) {
            this.f8686c.m7987b(i, j);
        } else {
            m7856a("UI_SendAidMsg error!!", 0);
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public boolean mo417b() {
        return this.f8693j == 2;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.f8687d.f7591Y) {
            if (this.f8626P.isShown()) {
                this.f8686c.m7980a(new C0121a(8448));
                return;
            }
            if (this.f8655aS == null || !this.f8655aS.isShown()) {
                if (this.f8631U.isShown()) {
                    this.f8631U.setVisibility(4);
                    this.f8628R.setVisibility(4);
                    this.f8627Q.setVisibility(4);
                    this.f8626P.setVisibility(4);
                    this.f8628R.setVisibility(0);
                    return;
                }
                if (this.f8632V.isShown()) {
                    this.f8632V.setVisibility(4);
                    this.f8628R.setVisibility(0);
                    return;
                }
                if (this.f8627Q.isShown()) {
                    this.f8627Q.setVisibility(4);
                    this.f8626P.setVisibility(0);
                } else if (this.f8630T.isShown()) {
                    this.f8630T.setVisibility(4);
                    this.f8628R.setVisibility(0);
                    this.f8626P.setVisibility(4);
                } else if (this.f8628R.isShown()) {
                    this.f8628R.setVisibility(4);
                    this.f8627Q.setVisibility(4);
                    this.f8626P.setVisibility(0);
                }
            }
        }
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: b */
    public void mo416b(Message message) {
        m7856a("AidServer_Handler:0x" + Integer.toHexString(message.what), 3);
        this.f8694k.m7942c(message);
    }

    /* renamed from: e */
    protected void m7902e() {
        SharedPreferences.Editor m887b = C0090a.m887b(this.f8686c);
        m887b.putInt("storeLocation", C0088a.m820a()).apply();
        m887b.putInt("videoResolution", C0088a.m825b()).apply();
        m887b.putInt("photoResolution", C0088a.m829c()).apply();
        m887b.putInt("liveViewMode", C0088a.m833d()).apply();
        m887b.putInt("recordingTime", C0088a.m836e()).apply();
        m887b.putInt("getSelfTimer", C0088a.m838f()).apply();
        m887b.putInt("pipView", C0088a.m840g()).apply();
        m887b.putInt("shutterSound", C0088a.m842h()).apply();
        m887b.putInt("waterMark", C0088a.m844i()).apply();
    }

    /* renamed from: G */
    private void m7847G() {
        C0088a.m821a(C0090a.m886a(this.f8686c).getInt("storeLocation", 0));
        C0088a.m826b(C0090a.m886a(this.f8686c).getInt("videoResolution", 0));
        C0088a.m831c(C0090a.m886a(this.f8686c).getInt("photoResolution", 0));
        C0088a.m834d(C0090a.m886a(this.f8686c).getInt("liveViewMode", 0));
        C0088a.m837e(C0090a.m886a(this.f8686c).getInt("recordingTime", 0));
        C0088a.m839f(C0090a.m886a(this.f8686c).getInt("getSelfTimer", 0));
        C0088a.m841g(C0090a.m886a(this.f8686c).getInt("pipView", 1));
        C0088a.m843h(C0090a.m886a(this.f8686c).getInt("shutterSound", 0));
        C0088a.m845i(C0090a.m886a(this.f8686c).getInt("waterMark", 0));
        if (C0088a.m820a() == 1 && m7912o() == null) {
            C0088a.m821a(0);
        }
        this.f8687d.f7613n = C0090a.m886a(this.f8686c).getBoolean("haveNewApkVersion", false);
    }

    /* renamed from: a */
    protected void m7894a(String str) {
        if (this.f8681aw.getVisibility() == 0) {
            this.f8683ay.setText(str);
        }
    }

    /* renamed from: a */
    protected void m7896a(boolean z, String str) {
        this.f8682ax.setImageResource(R.drawable.anim_system_busy);
        if (z) {
            this.f8687d.f7591Y = true;
            this.f8683ay.setText(str);
            this.f8681aw.setVisibility(0);
            ((AnimationDrawable) this.f8682ax.getDrawable()).start();
            return;
        }
        this.f8687d.f7591Y = false;
        this.f8681aw.setVisibility(4);
        ((AnimationDrawable) this.f8682ax.getDrawable()).stop();
    }

    /* renamed from: H */
    private void m7848H() {
        this.f8681aw = (LinearLayout) findViewById(R.id.LL_ui_Setting_BusyLayout);
        this.f8682ax = (ImageView) findViewById(R.id.IV_ui_Setting_BusyIcon);
        this.f8683ay = (TextView) findViewById(R.id.TV_ui_Setting_BusyText);
        this.f8681aw.setVisibility(4);
        this.f8681aw.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* renamed from: a */
    protected void m7895a(boolean z) {
        this.f8637aA.setImageResource(R.drawable.anim_system_busy);
        if (z) {
            this.f8687d.f7591Y = true;
            this.f8639aC.setText("0%");
            this.f8684az.setVisibility(0);
            ((AnimationDrawable) this.f8637aA.getDrawable()).start();
            return;
        }
        this.f8687d.f7591Y = false;
        this.f8684az.setVisibility(4);
        this.f8639aC.setText("0%");
        ((AnimationDrawable) this.f8637aA.getDrawable()).stop();
    }

    /* renamed from: I */
    private void m7849I() {
        this.f8684az = (LinearLayout) findViewById(R.id.LL_ui_Setting_AppUpdate_BusyLayout);
        this.f8637aA = (ImageView) findViewById(R.id.IV_ui_Setting_AppUpdate_BusyIcon);
        this.f8638aB = (TextView) findViewById(R.id.TV_ui_Setting_AppUpdate_BusyText);
        this.f8639aC = (TextView) findViewById(R.id.TV_ui_Setting_AppUpdate_ProgressText);
        this.f8640aD = (Button) findViewById(R.id.B_ui_Setting_AppUpdate_Cancel);
        this.f8684az.setVisibility(4);
        this.f8638aB.setText(getResources().getString(R.string.app_update_busy_string));
        this.f8639aC.setText("0%");
        this.f8684az.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.9
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        this.f8640aD.setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_SettingMenuController.this.m407a(9244);
            }
        });
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m7856a("onCreate", 3);
        this.f8686c = (UI_ModeMain) getApplication();
        this.f8686c.m8016v();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.f8691h = displayMetrics.widthPixels;
        this.f8692i = displayMetrics.heightPixels;
        setContentView(R.layout.ui_setting_menu);
        m7883r();
        this.f8694k = new C1854a(this);
        this.f8687d = this.f8686c.f8782c.f7654l;
        this.f8686c.m7977a(2064, this);
        m7852L();
        m7847G();
        m7905h();
        m7885t();
        m7848H();
        m7849I();
        this.f8686c.f8782c.f7653k.f7478b.f7528ab = m7912o();
        m7856a("onCreate szSdCardPath = " + this.f8686c.f8782c.f7653k.f7478b.f7528ab, 1);
        if (this.f8686c.f8782c.f7653k.f7478b.f7528ab != null) {
            this.f8687d.f7597ad = true;
        } else {
            this.f8687d.f7597ad = false;
            m7851K();
        }
        if (this.f8686c.f8782c.f7654l.f7614o) {
            m7850J();
            m407a(9253);
            this.f8686c.f8782c.f7654l.f7614o = false;
        }
        if (this.f8686c.f8782c.f7654l.f7618s) {
            m7850J();
            m7914q();
            this.f8686c.f8782c.f7654l.f7618s = false;
        }
        m7855O();
    }

    /* renamed from: f */
    protected void m7903f() {
        this.f8687d.f7597ad = false;
        this.f8686c.f8782c.f7653k.f7478b.f7562x = true;
        this.f8686c.f8782c.f7653k.f7478b.f7555q = new C0043a(getApplicationContext(), true, getResources().getString(R.string.sdcard_removed), 2000);
        m7851K();
        if (this.f8627Q.isShown() && this.f8687d.f7586T == 0) {
            this.f8665ag[0] = R.drawable.settings_radio_on;
            this.f8665ag[1] = R.drawable.settings_radio_off;
            this.f8701r.m7920a();
        }
        this.f8700q.m7915a();
    }

    /* renamed from: g */
    protected void m7904g() {
        this.f8687d.f7597ad = true;
        if (m7912o() != null) {
            this.f8686c.f8782c.f7653k.f7478b.f7528ab = m7912o();
        }
        if (this.f8627Q.isShown() && this.f8687d.f7586T == 0) {
            this.f8701r.m7920a();
        }
    }

    /* renamed from: J */
    private void m7850J() {
        m7841A();
        m7843C();
        this.f8626P.setVisibility(4);
        this.f8628R.setVisibility(4);
        this.f8630T.setVisibility(0);
    }

    /* renamed from: K */
    private void m7851K() {
        C0088a.m821a(0);
        this.f8663ae[0] = this.f8706w.get(0);
    }

    /* renamed from: c */
    public void m7900c(int i) {
        C0052d.m464a(this, i);
    }

    /* renamed from: L */
    private void m7852L() {
        this.f8688e = this.f8686c.f8782c.f7650h;
        if (this.f8688e.f7706ad) {
            if (this.f8688e.f7705ac == 9) {
                m7900c(9);
                return;
            } else {
                m7900c(1);
                return;
            }
        }
        if (this.f8686c.f8783d.m1264b()) {
            m7900c(9);
        } else if (this.f8686c.f8782c.f7653k.f7487k == 9) {
            m7900c(9);
        } else {
            m7900c(1);
        }
    }

    /* renamed from: h */
    public void m7905h() {
        this.f8627Q = (LinearLayout) findViewById(R.id.LL_ui_setting_submenu);
        this.f8628R = (LinearLayout) findViewById(R.id.LL_ui_setting_about);
        this.f8630T = (LinearLayout) findViewById(R.id.LL_ui_setting_update);
        this.f8631U = (LinearLayout) findViewById(R.id.LL_ui_setting_OpensourceLicense);
        this.f8632V = (LinearLayout) findViewById(R.id.LL_ui_setting_LegalInformation_submenu);
        this.f8624N = (ImageButton) findViewById(R.id.IB_ui_setting_OpensourceLicense_topBack);
        this.f8624N.setOnClickListener(this.f8658aV);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onResume() {
        super.onResume();
        C0121a c0121a = new C0121a(12034);
        c0121a.m1200a("mode", 2048);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onPause() {
        super.onPause();
        m7902e();
        C0121a c0121a = new C0121a(12035);
        c0121a.m1200a("mode", 2048);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    public void onStop() {
        super.onStop();
        C0121a c0121a = new C0121a(12036);
        c0121a.m1200a("mode", 2048);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        C0121a c0121a = new C0121a(12037);
        c0121a.m1200a("mode", 2048);
        mo410a(c0121a, 0L);
    }

    @Override // GeneralFunction.p001a.ActivityC0044a
    /* renamed from: a */
    public void mo411a(Message message) {
        this.f8694k.m7940a(message);
    }

    /* renamed from: i */
    protected void m7906i() {
        m7856a("nSelectOption: " + this.f8687d.f7586T + "  lSubSelectOption: " + this.f8687d.f7587U, 3);
        switch (this.f8687d.f7586T) {
            case 0:
                this.f8663ae[this.f8687d.f7586T] = this.f8706w.get(this.f8687d.f7587U);
                for (int i = 0; i < this.f8665ag.length; i++) {
                    if (i == this.f8687d.f7587U) {
                        this.f8665ag[i] = R.drawable.settings_radio_on;
                    } else {
                        this.f8665ag[i] = R.drawable.settings_radio_off;
                    }
                }
                if (this.f8687d.f7587U == 1) {
                    this.f8627Q.setVisibility(4);
                    this.f8626P.setVisibility(0);
                    C0088a.m821a(this.f8687d.f7587U);
                    break;
                } else {
                    this.f8627Q.setVisibility(4);
                    this.f8626P.setVisibility(0);
                    C0088a.m821a(this.f8687d.f7587U);
                    break;
                }
            case 1:
                C0088a.m826b(this.f8687d.f7587U);
                C0088a.m818G(C0122b.m1226f(this.f8687d.f7587U));
                this.f8663ae[this.f8687d.f7586T] = this.f8707x.get(this.f8687d.f7587U);
                for (int i2 = 0; i2 < this.f8666ah.length; i2++) {
                    if (i2 == this.f8687d.f7587U) {
                        this.f8666ah[i2] = R.drawable.settings_radio_on;
                    } else {
                        this.f8666ah[i2] = R.drawable.settings_radio_off;
                    }
                }
                this.f8627Q.setVisibility(4);
                this.f8626P.setVisibility(0);
                break;
            case 2:
                C0088a.m831c(this.f8687d.f7587U);
                C0088a.m817F(C0122b.m1224e(this.f8687d.f7587U));
                this.f8663ae[this.f8687d.f7586T] = this.f8708y.get(this.f8687d.f7587U);
                for (int i3 = 0; i3 < this.f8667ai.length; i3++) {
                    if (i3 == this.f8687d.f7587U) {
                        this.f8667ai[i3] = R.drawable.settings_radio_on;
                    } else {
                        this.f8667ai[i3] = R.drawable.settings_radio_off;
                    }
                }
                this.f8627Q.setVisibility(4);
                this.f8626P.setVisibility(0);
                break;
            case 3:
                C0088a.m834d(this.f8687d.f7587U);
                this.f8663ae[this.f8687d.f7586T] = this.f8709z.get(this.f8687d.f7587U);
                for (int i4 = 0; i4 < this.f8668aj.length; i4++) {
                    if (i4 == this.f8687d.f7587U) {
                        this.f8668aj[i4] = R.drawable.settings_radio_on;
                    } else {
                        this.f8668aj[i4] = R.drawable.settings_radio_off;
                    }
                }
                this.f8627Q.setVisibility(4);
                this.f8626P.setVisibility(0);
                break;
            case 4:
                C0088a.m837e(this.f8687d.f7587U);
                this.f8663ae[this.f8687d.f7586T] = this.f8611A.get(this.f8687d.f7587U);
                for (int i5 = 0; i5 < this.f8669ak.length; i5++) {
                    if (i5 == this.f8687d.f7587U) {
                        this.f8669ak[i5] = R.drawable.settings_radio_on;
                    } else {
                        this.f8669ak[i5] = R.drawable.settings_radio_off;
                    }
                }
                this.f8627Q.setVisibility(4);
                this.f8626P.setVisibility(0);
                break;
            case 5:
                C0088a.m839f(this.f8687d.f7587U);
                this.f8663ae[this.f8687d.f7586T] = this.f8612B.get(this.f8687d.f7587U);
                for (int i6 = 0; i6 < this.f8670al.length; i6++) {
                    if (i6 == this.f8687d.f7587U) {
                        this.f8670al[i6] = R.drawable.settings_radio_on;
                    } else {
                        this.f8670al[i6] = R.drawable.settings_radio_off;
                    }
                }
                this.f8627Q.setVisibility(4);
                this.f8626P.setVisibility(0);
                break;
            case 6:
                C0088a.m841g(this.f8687d.f7587U);
                this.f8663ae[this.f8687d.f7586T] = this.f8613C.get(this.f8687d.f7587U);
                break;
            case 7:
                C0088a.m843h(this.f8687d.f7587U);
                C0088a.m819H(C0122b.m1234j(this.f8687d.f7587U));
                this.f8663ae[this.f8687d.f7586T] = this.f8614D.get(this.f8687d.f7587U);
                break;
            case 8:
                C0088a.m845i(this.f8687d.f7587U);
                this.f8663ae[this.f8687d.f7586T] = this.f8615E.get(this.f8687d.f7587U);
                break;
        }
        this.f8700q.m7915a();
        if (this.f8701r != null) {
            this.f8701r.m7920a();
        }
    }

    /* renamed from: j */
    public void m7907j() {
        this.f8663ae = new String[this.f8705v.size()];
        this.f8663ae[0] = this.f8706w.get(C0088a.m820a());
        this.f8663ae[1] = this.f8707x.get(C0088a.m825b());
        this.f8663ae[2] = this.f8708y.get(C0088a.m829c());
        this.f8663ae[3] = this.f8709z.get(C0088a.m833d());
        this.f8663ae[4] = this.f8611A.get(C0088a.m836e());
        this.f8663ae[5] = this.f8612B.get(C0088a.m838f());
        this.f8663ae[6] = this.f8613C.get(C0088a.m840g());
        this.f8663ae[7] = this.f8614D.get(C0088a.m842h());
        this.f8663ae[8] = this.f8615E.get(C0088a.m844i());
        this.f8663ae[9] = "";
        this.f8663ae[10] = "";
        this.f8663ae[11] = "";
    }

    /* renamed from: k */
    public void m7908k() {
        C0088a.m821a(0);
        C0088a.m826b(0);
        C0088a.m831c(0);
        C0088a.m834d(0);
        C0088a.m837e(0);
        C0088a.m839f(0);
        C0088a.m841g(1);
        C0088a.m843h(0);
        C0088a.m845i(0);
        C0088a.m853m(6);
        C0088a.m855n(0);
        C0088a.m857o(0);
        C0088a.m847j(1);
        this.f8686c.f8782c.f7650h.f7699aQ = "";
        this.f8686c.f8782c.f7650h.f7700aR = "";
        this.f8686c.f8782c.f7650h.f7701aS = "";
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        switch (i) {
            case 42:
                if (intent != null) {
                    this.f8686c.f8782c.f7653k.f7478b.f7527aa = intent.getData();
                    m7856a("objTreeUri: " + this.f8686c.f8782c.f7653k.f7478b.f7527aa.toString(), 3);
                    getContentResolver().takePersistableUriPermission(this.f8686c.f8782c.f7653k.f7478b.f7527aa, 3);
                    m7913p();
                    break;
                } else {
                    m407a(9237);
                    break;
                }
        }
    }

    /* renamed from: a */
    protected void m7892a(int i, int i2) {
        if (i < 0 || i2 <= 0 || i > i2) {
            m7856a("Invalid progress percentage! (" + i + "/" + i2 + ")", 0);
            return;
        }
        long j = (i * 100) / i2;
        if (j <= 100) {
            this.f8639aC.setText(Long.toString(j) + "%");
        } else {
            m7856a("Invalid percentage result: " + j, 0);
        }
    }

    /* renamed from: l */
    protected int m7909l() {
        return this.f8695l;
    }

    /* renamed from: m */
    protected void m7910m() {
        if (this.f8627Q.isShown()) {
            this.f8627Q.setVisibility(4);
            this.f8626P.setVisibility(0);
        } else if (this.f8630T.isShown()) {
            this.f8703t.m7922a();
            if (this.f8686c.f8782c.f7650h.f7713ak != 0) {
                C0091o.m889a((Context) this, true, true, getResources().getString(R.string.camera_update_for_update_failed), getResources().getString(R.string.camera_update_fail), getResources().getString(R.string.dialog_option_ok), 12039);
                this.f8686c.f8782c.f7650h.f7713ak = 0;
            }
        }
    }

    /* renamed from: b */
    protected void m7898b(boolean z) {
        this.f8700q.m7918a(z);
        this.f8700q.m7915a();
    }

    /* renamed from: n */
    protected void m7911n() {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        intent.addFlags(2);
        startActivityForResult(intent, 42);
    }

    /* renamed from: M */
    private boolean m7853M() {
        m7856a("sLocalGallery.szSdCardPath" + this.f8686c.f8782c.f7653k.f7478b.f7528ab, 3);
        if (new File(this.f8686c.f8782c.f7653k.f7478b.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/").exists()) {
            return true;
        }
        m7856a("SD CV60 not exists", 3);
        return false;
    }

    /* renamed from: N */
    private boolean m7854N() {
        if (new File(this.f8686c.f8782c.f7653k.f7478b.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM").exists()) {
            return true;
        }
        m7856a("SD DCIM not exists", 3);
        return false;
    }

    /* renamed from: o */
    protected String m7912o() {
        return C0052d.m462a(this.f8677as);
    }

    /* renamed from: d */
    private void m7869d(String str) {
        m7856a("CreateSDcardFolder" + str, 2);
        new File(str).mkdirs();
    }

    /* renamed from: p */
    protected void m7913p() {
        m7856a("checkFolder", 3);
        if (this.f8686c.f8782c.f7653k.f7478b.f7528ab == null) {
            this.f8686c.f8782c.f7653k.f7478b.f7528ab = m7912o();
        }
        if (this.f8686c.f8782c.f7653k.f7478b.f7528ab != null) {
            if (!m7854N()) {
                if (!m7853M()) {
                    m7869d(this.f8686c.f8782c.f7653k.f7478b.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/");
                }
            } else {
                m7869d(this.f8686c.f8782c.f7653k.f7478b.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM");
                m7869d(this.f8686c.f8782c.f7653k.f7478b.f7528ab + "/Android/data/com.huawei.cvIntl60/DCIM/CV60/");
                SharedPreferences.Editor m887b = C0090a.m887b(this.f8686c);
                m887b.putString("objTreeUri", this.f8686c.f8782c.f7653k.f7478b.f7528ab).apply();
                String str = this.f8686c.f8782c.f7653k.f7478b.f7528ab;
                this.f8686c.f8782c.f7653k.f7478b.f7529ac = str.substring(str.lastIndexOf("/") + 1, str.lastIndexOf("/") + 10);
                m887b.putString("szSDCardId", this.f8686c.f8782c.f7653k.f7478b.f7529ac).apply();
            }
            this.f8627Q.setVisibility(4);
            this.f8626P.setVisibility(0);
            C0088a.m821a(this.f8687d.f7587U);
        }
    }

    /* renamed from: q */
    protected void m7914q() {
        if (this.f8686c.f8782c.f7650h.f7713ak != 0) {
            m7856a("Warning: restart FW upgrade while lCurrentDataPartId = " + this.f8686c.f8782c.f7650h.f7713ak, 0);
        }
        if (this.f8686c.f8782c.f7649g.f7631c.compareTo("v1.3A00") >= 0 && this.f8686c.f8782c.f7649g.f7631c.compareTo("v1.5000") != 0 && this.f8686c.f8782c.f7649g.f7631c.compareTo("v1.5100") != 0) {
            this.f8686c.f8782c.f7654l.f7620u = true;
        } else {
            this.f8686c.f8782c.f7654l.f7620u = false;
        }
        this.f8686c.f8782c.f7650h.f7713ak = 1;
        this.f8686c.m7995c(new C0121a(18442));
    }

    /* renamed from: b */
    protected void m7897b(String str) {
        try {
            this.f8686c.f8782c.f7650h.f7708af = new FileInputStream(str);
            this.f8686c.f8782c.f7650h.f7709ag = this.f8686c.f8782c.f7650h.f7708af.available();
            m7856a("fileSize " + this.f8686c.f8782c.f7650h.f7709ag, 3);
            this.f8686c.f8782c.f7650h.f7712aj = this.f8686c.f8782c.f7650h.f7709ag / this.f8686c.f8782c.f7650h.f7710ah;
            if (this.f8686c.f8782c.f7650h.f7709ag % this.f8686c.f8782c.f7650h.f7710ah > 0) {
                this.f8686c.f8782c.f7650h.f7712aj++;
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    protected void m7893a(FileInputStream fileInputStream) {
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: O */
    private void m7855O() {
        this.f8657aU = (LinearLayout) findViewById(R.id.LL_ui_Setting_protect_layout);
        this.f8657aU.setOnTouchListener(new View.OnTouchListener() { // from class: ui_Controller.ui_Setting.UI_SettingMenuController.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m7866c(boolean z) {
        if (z) {
            this.f8657aU.setVisibility(0);
        } else {
            this.f8657aU.setVisibility(4);
        }
    }
}
