package GeneralFunction.p017n;

import android.app.Application;
import android.content.SharedPreferences;

/* renamed from: GeneralFunction.n.a */
/* loaded from: classes.dex */
public class C0090a {
    /* renamed from: a */
    public static SharedPreferences m886a(Application application) {
        return application.getSharedPreferences("com.ability.wearablecam", 0);
    }

    /* renamed from: b */
    public static SharedPreferences.Editor m887b(Application application) {
        return application.getSharedPreferences("com.ability.wearablecam", 0).edit();
    }
}
