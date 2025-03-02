package android.support.v7.widget;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.ResourceCursorAdapter;
import android.support.v7.appcompat.R;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* renamed from: android.support.v7.widget.be */
/* loaded from: classes.dex */
class ViewOnClickListenerC0681be extends ResourceCursorAdapter implements View.OnClickListener {

    /* renamed from: a */
    private final SearchManager f3714a;

    /* renamed from: b */
    private final SearchView f3715b;

    /* renamed from: c */
    private final SearchableInfo f3716c;

    /* renamed from: d */
    private final Context f3717d;

    /* renamed from: e */
    private final WeakHashMap<String, Drawable.ConstantState> f3718e;

    /* renamed from: f */
    private final int f3719f;

    /* renamed from: g */
    private boolean f3720g;

    /* renamed from: h */
    private int f3721h;

    /* renamed from: i */
    private ColorStateList f3722i;

    /* renamed from: j */
    private int f3723j;

    /* renamed from: k */
    private int f3724k;

    /* renamed from: l */
    private int f3725l;

    /* renamed from: m */
    private int f3726m;

    /* renamed from: n */
    private int f3727n;

    /* renamed from: o */
    private int f3728o;

    public ViewOnClickListenerC0681be(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), (Cursor) null, true);
        this.f3720g = false;
        this.f3721h = 1;
        this.f3723j = -1;
        this.f3724k = -1;
        this.f3725l = -1;
        this.f3726m = -1;
        this.f3727n = -1;
        this.f3728o = -1;
        this.f3714a = (SearchManager) this.mContext.getSystemService("search");
        this.f3715b = searchView;
        this.f3716c = searchableInfo;
        this.f3719f = searchView.getSuggestionCommitIconResId();
        this.f3717d = context;
        this.f3718e = weakHashMap;
    }

    /* renamed from: a */
    public void m4154a(int i) {
        this.f3721h = i;
    }

    @Override // android.support.v4.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.support.v4.widget.CursorAdapter, android.support.v4.widget.CursorFilter.CursorFilterClient
    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f3715b.getVisibility() != 0 || this.f3715b.getWindowVisibility() != 0) {
            return null;
        }
        try {
            Cursor m4152a = m4152a(this.f3716c, charSequence2, 50);
            if (m4152a != null) {
                m4152a.getCount();
                return m4152a;
            }
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
        }
        return null;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m4142a(getCursor());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m4142a(getCursor());
    }

    /* renamed from: a */
    private void m4142a(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    @Override // android.support.v4.widget.CursorAdapter, android.support.v4.widget.CursorFilter.CursorFilterClient
    public void changeCursor(Cursor cursor) {
        if (this.f3720g) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.changeCursor(cursor);
            if (cursor != null) {
                this.f3723j = cursor.getColumnIndex("suggest_text_1");
                this.f3724k = cursor.getColumnIndex("suggest_text_2");
                this.f3725l = cursor.getColumnIndex("suggest_text_2_url");
                this.f3726m = cursor.getColumnIndex("suggest_icon_1");
                this.f3727n = cursor.getColumnIndex("suggest_icon_2");
                this.f3728o = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    @Override // android.support.v4.widget.ResourceCursorAdapter, android.support.v4.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View newView = super.newView(context, cursor, viewGroup);
        newView.setTag(new a(newView));
        ((ImageView) newView.findViewById(R.id.edit_query)).setImageResource(this.f3719f);
        return newView;
    }

    /* renamed from: android.support.v7.widget.be$a */
    private static final class a {

        /* renamed from: a */
        public final TextView f3729a;

        /* renamed from: b */
        public final TextView f3730b;

        /* renamed from: c */
        public final ImageView f3731c;

        /* renamed from: d */
        public final ImageView f3732d;

        /* renamed from: e */
        public final ImageView f3733e;

        public a(View view) {
            this.f3729a = (TextView) view.findViewById(android.R.id.text1);
            this.f3730b = (TextView) view.findViewById(android.R.id.text2);
            this.f3731c = (ImageView) view.findViewById(android.R.id.icon1);
            this.f3732d = (ImageView) view.findViewById(android.R.id.icon2);
            this.f3733e = (ImageView) view.findViewById(R.id.edit_query);
        }
    }

    @Override // android.support.v4.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        CharSequence m4140a;
        a aVar = (a) view.getTag();
        int i = this.f3728o != -1 ? cursor.getInt(this.f3728o) : 0;
        if (aVar.f3729a != null) {
            m4144a(aVar.f3729a, m4140a(cursor, this.f3723j));
        }
        if (aVar.f3730b != null) {
            String m4140a2 = m4140a(cursor, this.f3725l);
            if (m4140a2 != null) {
                m4140a = m4139a((CharSequence) m4140a2);
            } else {
                m4140a = m4140a(cursor, this.f3724k);
            }
            if (TextUtils.isEmpty(m4140a)) {
                if (aVar.f3729a != null) {
                    aVar.f3729a.setSingleLine(false);
                    aVar.f3729a.setMaxLines(2);
                }
            } else if (aVar.f3729a != null) {
                aVar.f3729a.setSingleLine(true);
                aVar.f3729a.setMaxLines(1);
            }
            m4144a(aVar.f3730b, m4140a);
        }
        if (aVar.f3731c != null) {
            m4143a(aVar.f3731c, m4147b(cursor), 4);
        }
        if (aVar.f3732d != null) {
            m4143a(aVar.f3732d, m4150c(cursor), 8);
        }
        if (this.f3721h == 2 || (this.f3721h == 1 && (i & 1) != 0)) {
            aVar.f3733e.setVisibility(0);
            aVar.f3733e.setTag(aVar.f3729a.getText());
            aVar.f3733e.setOnClickListener(this);
            return;
        }
        aVar.f3733e.setVisibility(8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f3715b.m3647a((CharSequence) tag);
        }
    }

    /* renamed from: a */
    private CharSequence m4139a(CharSequence charSequence) {
        if (this.f3722i == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(R.attr.textColorSearchUrl, typedValue, true);
            this.f3722i = this.mContext.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f3722i, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    /* renamed from: a */
    private void m4144a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    /* renamed from: b */
    private Drawable m4147b(Cursor cursor) {
        if (this.f3726m == -1) {
            return null;
        }
        Drawable m4138a = m4138a(cursor.getString(this.f3726m));
        return m4138a == null ? m4151d(cursor) : m4138a;
    }

    /* renamed from: c */
    private Drawable m4150c(Cursor cursor) {
        if (this.f3727n == -1) {
            return null;
        }
        return m4138a(cursor.getString(this.f3727n));
    }

    /* renamed from: a */
    private void m4143a(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    @Override // android.support.v4.widget.CursorAdapter, android.support.v4.widget.CursorFilter.CursorFilterClient
    public CharSequence convertToString(Cursor cursor) {
        String m4141a;
        String m4141a2;
        if (cursor == null) {
            return null;
        }
        String m4141a3 = m4141a(cursor, "suggest_intent_query");
        if (m4141a3 != null) {
            return m4141a3;
        }
        if (this.f3716c.shouldRewriteQueryFromData() && (m4141a2 = m4141a(cursor, "suggest_intent_data")) != null) {
            return m4141a2;
        }
        if (!this.f3716c.shouldRewriteQueryFromText() || (m4141a = m4141a(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return m4141a;
    }

    @Override // android.support.v4.widget.CursorAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View newView = newView(this.mContext, this.mCursor, viewGroup);
            if (newView != null) {
                ((a) newView.getTag()).f3729a.setText(e.toString());
            }
            return newView;
        }
    }

    @Override // android.support.v4.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View newDropDownView = newDropDownView(this.mContext, this.mCursor, viewGroup);
            if (newDropDownView != null) {
                ((a) newDropDownView.getTag()).f3729a.setText(e.toString());
            }
            return newDropDownView;
        }
    }

    /* renamed from: a */
    private Drawable m4138a(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(str);
            String str2 = "android.resource://" + this.f3717d.getPackageName() + "/" + parseInt;
            Drawable m4149b = m4149b(str2);
            if (m4149b == null) {
                Drawable drawable = ContextCompat.getDrawable(this.f3717d, parseInt);
                m4145a(str2, drawable);
                return drawable;
            }
            return m4149b;
        } catch (Resources.NotFoundException e) {
            Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException e2) {
            Drawable m4149b2 = m4149b(str);
            if (m4149b2 == null) {
                Drawable m4148b = m4148b(Uri.parse(str));
                m4145a(str, m4148b);
                return m4148b;
            }
            return m4149b2;
        }
    }

    /* renamed from: b */
    private Drawable m4148b(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return m4153a(uri);
                } catch (Resources.NotFoundException e) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream openInputStream = this.f3717d.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            try {
                Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
                try {
                    openInputStream.close();
                    return createFromStream;
                } catch (IOException e2) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e2);
                    return createFromStream;
                }
            } finally {
            }
        } catch (FileNotFoundException e3) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
        return null;
    }

    /* renamed from: b */
    private Drawable m4149b(String str) {
        Drawable.ConstantState constantState = this.f3718e.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    /* renamed from: a */
    private void m4145a(String str, Drawable drawable) {
        if (drawable != null) {
            this.f3718e.put(str, drawable.getConstantState());
        }
    }

    /* renamed from: d */
    private Drawable m4151d(Cursor cursor) {
        Drawable m4137a = m4137a(this.f3716c.getSearchActivity());
        return m4137a != null ? m4137a : this.mContext.getPackageManager().getDefaultActivityIcon();
    }

    /* renamed from: a */
    private Drawable m4137a(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        if (this.f3718e.containsKey(flattenToShortString)) {
            Drawable.ConstantState constantState = this.f3718e.get(flattenToShortString);
            if (constantState == null) {
                return null;
            }
            return constantState.newDrawable(this.f3717d.getResources());
        }
        Drawable m4146b = m4146b(componentName);
        this.f3718e.put(flattenToShortString, m4146b != null ? m4146b.getConstantState() : null);
        return m4146b;
    }

    /* renamed from: b */
    private Drawable m4146b(ComponentName componentName) {
        PackageManager packageManager = this.mContext.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("SuggestionsAdapter", e.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static String m4141a(Cursor cursor, String str) {
        return m4140a(cursor, cursor.getColumnIndex(str));
    }

    /* renamed from: a */
    private static String m4140a(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            return null;
        }
    }

    /* renamed from: a */
    Drawable m4153a(Uri uri) {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.mContext.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException e) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else if (size == 2) {
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            } else {
                throw new FileNotFoundException("More than two path segments: " + uri);
            }
            if (identifier == 0) {
                throw new FileNotFoundException("No resource found for: " + uri);
            }
            return resourcesForApplication.getDrawable(identifier);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    /* renamed from: a */
    Cursor m4152a(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
            strArr = null;
        }
        if (i > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.mContext.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
    }
}
