package GeneralFunction;

import android.content.Context;
import android.support.annotation.StringRes;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.View;

/* renamed from: GeneralFunction.f */
/* loaded from: classes.dex */
public class C0064f {

    /* renamed from: a */
    private Context f511a;

    /* renamed from: b */
    private String f512b = "";

    /* renamed from: c */
    private b f513c;

    /* renamed from: GeneralFunction.f$b */
    public interface b {
        /* renamed from: a */
        void mo630a(String str);
    }

    public C0064f(Context context) {
        this.f511a = context;
    }

    /* renamed from: a */
    public static C0064f m584a(Context context) {
        return new C0064f(context);
    }

    /* renamed from: a */
    public C0064f m585a(@StringRes int i) {
        this.f512b += this.f511a.getString(i);
        return this;
    }

    /* renamed from: a */
    public SpannableStringBuilder m587a(boolean z) {
        Spanned fromHtml = Html.fromHtml(this.f512b);
        URLSpan[] uRLSpanArr = (URLSpan[]) fromHtml.getSpans(0, fromHtml.length(), URLSpan.class);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(fromHtml);
        spannableStringBuilder.clearSpans();
        for (URLSpan uRLSpan : uRLSpanArr) {
            spannableStringBuilder.setSpan(new a(uRLSpan.getURL(), z), fromHtml.getSpanStart(uRLSpan), fromHtml.getSpanEnd(uRLSpan), 33);
        }
        return spannableStringBuilder;
    }

    /* renamed from: a */
    public C0064f m586a(b bVar) {
        this.f513c = bVar;
        return this;
    }

    /* renamed from: GeneralFunction.f$a */
    private class a extends ClickableSpan {

        /* renamed from: b */
        private String f515b;

        /* renamed from: c */
        private boolean f516c;

        public a(String str, boolean z) {
            this.f515b = str;
            this.f516c = z;
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setUnderlineText(this.f516c);
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            if (C0064f.this.f513c != null) {
                C0064f.this.f513c.mo630a(this.f515b);
            }
        }
    }
}
