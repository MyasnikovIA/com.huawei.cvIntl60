package android.support.v4.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.compat.R;
import android.util.AttributeSet;
import android.util.Xml;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
final class GradientColorInflaterCompat {
    private static final int TILE_MODE_CLAMP = 0;
    private static final int TILE_MODE_MIRROR = 2;
    private static final int TILE_MODE_REPEAT = 1;

    private GradientColorInflaterCompat() {
    }

    static Shader createFromXml(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme) {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return createFromXmlInner(resources, xmlPullParser, asAttributeSet, theme);
    }

    static Shader createFromXmlInner(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, R.styleable.GradientColor);
        float namedFloat = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "startX", R.styleable.GradientColor_android_startX, 0.0f);
        float namedFloat2 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "startY", R.styleable.GradientColor_android_startY, 0.0f);
        float namedFloat3 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "endX", R.styleable.GradientColor_android_endX, 0.0f);
        float namedFloat4 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "endY", R.styleable.GradientColor_android_endY, 0.0f);
        float namedFloat5 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "centerX", R.styleable.GradientColor_android_centerX, 0.0f);
        float namedFloat6 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "centerY", R.styleable.GradientColor_android_centerY, 0.0f);
        int namedInt = TypedArrayUtils.getNamedInt(obtainAttributes, xmlPullParser, IjkMediaMeta.IJKM_KEY_TYPE, R.styleable.GradientColor_android_type, 0);
        int namedColor = TypedArrayUtils.getNamedColor(obtainAttributes, xmlPullParser, "startColor", R.styleable.GradientColor_android_startColor, 0);
        boolean hasAttribute = TypedArrayUtils.hasAttribute(xmlPullParser, "centerColor");
        int namedColor2 = TypedArrayUtils.getNamedColor(obtainAttributes, xmlPullParser, "centerColor", R.styleable.GradientColor_android_centerColor, 0);
        int namedColor3 = TypedArrayUtils.getNamedColor(obtainAttributes, xmlPullParser, "endColor", R.styleable.GradientColor_android_endColor, 0);
        int namedInt2 = TypedArrayUtils.getNamedInt(obtainAttributes, xmlPullParser, "tileMode", R.styleable.GradientColor_android_tileMode, 0);
        float namedFloat7 = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "gradientRadius", R.styleable.GradientColor_android_gradientRadius, 0.0f);
        obtainAttributes.recycle();
        ColorStops checkColors = checkColors(inflateChildElements(resources, xmlPullParser, attributeSet, theme), namedColor, namedColor3, hasAttribute, namedColor2);
        switch (namedInt) {
            case 1:
                if (namedFloat7 <= 0.0f) {
                    throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
                }
                return new RadialGradient(namedFloat5, namedFloat6, namedFloat7, checkColors.mColors, checkColors.mOffsets, parseTileMode(namedInt2));
            case 2:
                return new SweepGradient(namedFloat5, namedFloat6, checkColors.mColors, checkColors.mOffsets);
            default:
                return new LinearGradient(namedFloat, namedFloat2, namedFloat3, namedFloat4, checkColors.mColors, checkColors.mOffsets, parseTileMode(namedInt2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x006b, code lost:
    
        throw new org.xmlpull.v1.XmlPullParserException(r8.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.support.v4.content.res.GradientColorInflaterCompat.ColorStops inflateChildElements(@android.support.annotation.NonNull android.content.res.Resources r7, @android.support.annotation.NonNull org.xmlpull.v1.XmlPullParser r8, @android.support.annotation.NonNull android.util.AttributeSet r9, @android.support.annotation.Nullable android.content.res.Resources.Theme r10) {
        /*
            r3 = 20
            int r0 = r8.getDepth()
            int r0 = r0 + 1
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>(r3)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>(r3)
        L12:
            int r3 = r8.next()
            r4 = 1
            if (r3 == r4) goto L8c
            int r4 = r8.getDepth()
            if (r4 >= r0) goto L22
            r5 = 3
            if (r3 == r5) goto L8c
        L22:
            r5 = 2
            if (r3 != r5) goto L12
            if (r4 > r0) goto L12
            java.lang.String r3 = r8.getName()
            java.lang.String r4 = "item"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L12
            int[] r3 = android.support.compat.R.styleable.GradientColorItem
            android.content.res.TypedArray r3 = android.support.v4.content.res.TypedArrayUtils.obtainAttributes(r7, r10, r9, r3)
            int r4 = android.support.compat.R.styleable.GradientColorItem_android_color
            boolean r4 = r3.hasValue(r4)
            int r5 = android.support.compat.R.styleable.GradientColorItem_android_offset
            boolean r5 = r3.hasValue(r5)
            if (r4 == 0) goto L49
            if (r5 != 0) goto L6c
        L49:
            org.xmlpull.v1.XmlPullParserException r0 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = r8.getPositionDescription()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = ": <item> tag requires a 'color' attribute and a 'offset' "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "attribute!"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L6c:
            int r4 = android.support.compat.R.styleable.GradientColorItem_android_color
            r5 = 0
            int r4 = r3.getColor(r4, r5)
            int r5 = android.support.compat.R.styleable.GradientColorItem_android_offset
            r6 = 0
            float r5 = r3.getFloat(r5, r6)
            r3.recycle()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r4)
            r2.add(r3)
            java.lang.Float r3 = java.lang.Float.valueOf(r5)
            r1.add(r3)
            goto L12
        L8c:
            int r0 = r2.size()
            if (r0 <= 0) goto L98
            android.support.v4.content.res.GradientColorInflaterCompat$ColorStops r0 = new android.support.v4.content.res.GradientColorInflaterCompat$ColorStops
            r0.<init>(r2, r1)
        L97:
            return r0
        L98:
            r0 = 0
            goto L97
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.res.GradientColorInflaterCompat.inflateChildElements(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.support.v4.content.res.GradientColorInflaterCompat$ColorStops");
    }

    private static ColorStops checkColors(@Nullable ColorStops colorStops, @ColorInt int i, @ColorInt int i2, boolean z, @ColorInt int i3) {
        if (colorStops == null) {
            if (z) {
                return new ColorStops(i, i3, i2);
            }
            return new ColorStops(i, i2);
        }
        return colorStops;
    }

    private static Shader.TileMode parseTileMode(int i) {
        switch (i) {
            case 1:
                return Shader.TileMode.REPEAT;
            case 2:
                return Shader.TileMode.MIRROR;
            default:
                return Shader.TileMode.CLAMP;
        }
    }

    static final class ColorStops {
        final int[] mColors;
        final float[] mOffsets;

        ColorStops(@NonNull List<Integer> list, @NonNull List<Float> list2) {
            int size = list.size();
            this.mColors = new int[size];
            this.mOffsets = new float[size];
            for (int i = 0; i < size; i++) {
                this.mColors[i] = list.get(i).intValue();
                this.mOffsets[i] = list2.get(i).floatValue();
            }
        }

        ColorStops(@ColorInt int i, @ColorInt int i2) {
            this.mColors = new int[]{i, i2};
            this.mOffsets = new float[]{0.0f, 1.0f};
        }

        ColorStops(@ColorInt int i, @ColorInt int i2, @ColorInt int i3) {
            this.mColors = new int[]{i, i2, i3};
            this.mOffsets = new float[]{0.0f, 0.5f, 1.0f};
        }
    }
}
