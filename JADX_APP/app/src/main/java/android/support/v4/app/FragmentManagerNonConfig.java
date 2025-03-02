package android.support.v4.app;

import android.arch.lifecycle.C0149p;
import java.util.List;

/* loaded from: classes.dex */
public class FragmentManagerNonConfig {
    private final List<FragmentManagerNonConfig> mChildNonConfigs;
    private final List<Fragment> mFragments;
    private final List<C0149p> mViewModelStores;

    FragmentManagerNonConfig(List<Fragment> list, List<FragmentManagerNonConfig> list2, List<C0149p> list3) {
        this.mFragments = list;
        this.mChildNonConfigs = list2;
        this.mViewModelStores = list3;
    }

    List<Fragment> getFragments() {
        return this.mFragments;
    }

    List<FragmentManagerNonConfig> getChildNonConfigs() {
        return this.mChildNonConfigs;
    }

    List<C0149p> getViewModelStores() {
        return this.mViewModelStores;
    }
}
