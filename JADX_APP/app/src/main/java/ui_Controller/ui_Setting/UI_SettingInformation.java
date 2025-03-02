package ui_Controller.ui_Setting;

import GeneralFunction.p001a.ActivityC0044a;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.TextView;
import com.google.android.gms.plus.PlusShare;
import com.huawei.cvIntl60.R;

/* loaded from: classes.dex */
public class UI_SettingInformation extends ActivityC0044a {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.ui_setting_info);
        String stringExtra = getIntent().getStringExtra("url");
        String stringExtra2 = getIntent().getStringExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE);
        WebView webView = (WebView) findViewById(R.id.WV_ui_Information_content);
        webView.loadUrl(stringExtra);
        webView.getSettings().setAllowFileAccess(false);
        webView.getSettings().setJavaScriptEnabled(false);
        webView.getSettings().setAllowFileAccessFromFileURLs(false);
        webView.getSettings().setAllowUniversalAccessFromFileURLs(false);
        webView.getSettings().setGeolocationEnabled(false);
        webView.getSettings().setAllowContentAccess(false);
        ((TextView) findViewById(R.id.TV_ui_Information_title)).setText(stringExtra2);
        findViewById(R.id.IB_ui_Information_topBack).setOnClickListener(new View.OnClickListener() { // from class: ui_Controller.ui_Setting.UI_SettingInformation.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                UI_SettingInformation.this.onBackPressed();
            }
        });
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }
}
