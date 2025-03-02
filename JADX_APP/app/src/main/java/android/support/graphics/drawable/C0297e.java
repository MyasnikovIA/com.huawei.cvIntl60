package android.support.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.support.annotation.AnimatorRes;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.graphics.PathParser;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.graphics.drawable.e */
/* loaded from: classes.dex */
public class C0297e {
    /* renamed from: a */
    public static Animator m2217a(Context context, @AnimatorRes int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            return AnimatorInflater.loadAnimator(context, i);
        }
        return m2218a(context, context.getResources(), context.getTheme(), i);
    }

    /* renamed from: a */
    public static Animator m2218a(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i) {
        return m2219a(context, resources, theme, i, 1.0f);
    }

    /* renamed from: a */
    public static Animator m2219a(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i, float f) {
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = resources.getAnimation(i);
                    return m2220a(context, resources, theme, xmlResourceParser, f);
                } catch (XmlPullParserException e) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                    notFoundException.initCause(e);
                    throw notFoundException;
                }
            } catch (IOException e2) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }

    /* renamed from: android.support.graphics.drawable.e$a */
    private static class a implements TypeEvaluator<PathParser.PathDataNode[]> {

        /* renamed from: a */
        private PathParser.PathDataNode[] f1893a;

        a() {
        }

        @Override // android.animation.TypeEvaluator
        /* renamed from: a */
        public PathParser.PathDataNode[] evaluate(float f, PathParser.PathDataNode[] pathDataNodeArr, PathParser.PathDataNode[] pathDataNodeArr2) {
            if (!PathParser.canMorph(pathDataNodeArr, pathDataNodeArr2)) {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (this.f1893a == null || !PathParser.canMorph(this.f1893a, pathDataNodeArr)) {
                this.f1893a = PathParser.deepCopyNodes(pathDataNodeArr);
            }
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                this.f1893a[i].interpolatePathDataNode(pathDataNodeArr[i], pathDataNodeArr2[i], f);
            }
            return this.f1893a;
        }
    }

    /* renamed from: a */
    private static PropertyValuesHolder m2226a(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder propertyValuesHolder;
        int i4;
        int i5;
        int i6;
        float f;
        float f2;
        float f3;
        TypedValue peekValue = typedArray.peekValue(i2);
        boolean z = peekValue != null;
        int i7 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i3);
        boolean z2 = peekValue2 != null;
        int i8 = z2 ? peekValue2.type : 0;
        if (i == 4) {
            if ((z && m2232a(i7)) || (z2 && m2232a(i8))) {
                i = 3;
            } else {
                i = 0;
            }
        }
        boolean z3 = i == 0;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            PathParser.PathDataNode[] createNodesFromPathData = PathParser.createNodesFromPathData(string);
            PathParser.PathDataNode[] createNodesFromPathData2 = PathParser.createNodesFromPathData(string2);
            if (createNodesFromPathData != null || createNodesFromPathData2 != null) {
                if (createNodesFromPathData != null) {
                    a aVar = new a();
                    if (createNodesFromPathData2 == null) {
                        return PropertyValuesHolder.ofObject(str, aVar, createNodesFromPathData);
                    }
                    if (PathParser.canMorph(createNodesFromPathData, createNodesFromPathData2)) {
                        return PropertyValuesHolder.ofObject(str, aVar, createNodesFromPathData, createNodesFromPathData2);
                    }
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
                if (createNodesFromPathData2 != null) {
                    return PropertyValuesHolder.ofObject(str, new a(), createNodesFromPathData2);
                }
            }
            return null;
        }
        C0298f c0298f = null;
        if (i == 3) {
            c0298f = C0298f.m2235a();
        }
        if (z3) {
            if (z) {
                if (i7 == 5) {
                    f2 = typedArray.getDimension(i2, 0.0f);
                } else {
                    f2 = typedArray.getFloat(i2, 0.0f);
                }
                if (z2) {
                    if (i8 == 5) {
                        f3 = typedArray.getDimension(i3, 0.0f);
                    } else {
                        f3 = typedArray.getFloat(i3, 0.0f);
                    }
                    propertyValuesHolder = PropertyValuesHolder.ofFloat(str, f2, f3);
                } else {
                    propertyValuesHolder = PropertyValuesHolder.ofFloat(str, f2);
                }
            } else {
                if (i8 == 5) {
                    f = typedArray.getDimension(i3, 0.0f);
                } else {
                    f = typedArray.getFloat(i3, 0.0f);
                }
                propertyValuesHolder = PropertyValuesHolder.ofFloat(str, f);
            }
        } else if (z) {
            if (i7 == 5) {
                i5 = (int) typedArray.getDimension(i2, 0.0f);
            } else if (m2232a(i7)) {
                i5 = typedArray.getColor(i2, 0);
            } else {
                i5 = typedArray.getInt(i2, 0);
            }
            if (z2) {
                if (i8 == 5) {
                    i6 = (int) typedArray.getDimension(i3, 0.0f);
                } else if (m2232a(i8)) {
                    i6 = typedArray.getColor(i3, 0);
                } else {
                    i6 = typedArray.getInt(i3, 0);
                }
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i5, i6);
            } else {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i5);
            }
        } else if (!z2) {
            propertyValuesHolder = null;
        } else {
            if (i8 == 5) {
                i4 = (int) typedArray.getDimension(i3, 0.0f);
            } else if (m2232a(i8)) {
                i4 = typedArray.getColor(i3, 0);
            } else {
                i4 = typedArray.getInt(i3, 0);
            }
            propertyValuesHolder = PropertyValuesHolder.ofInt(str, i4);
        }
        if (propertyValuesHolder != null && c0298f != null) {
            propertyValuesHolder.setEvaluator(c0298f);
            return propertyValuesHolder;
        }
        return propertyValuesHolder;
    }

    /* renamed from: a */
    private static void m2229a(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long namedInt = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "duration", 1, 300);
        long namedInt2 = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "startOffset", 2, 0);
        int namedInt3 = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "valueType", 7, 4);
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "valueFrom") && TypedArrayUtils.hasAttribute(xmlPullParser, "valueTo")) {
            if (namedInt3 == 4) {
                namedInt3 = m2216a(typedArray, 5, 6);
            }
            PropertyValuesHolder m2226a = m2226a(typedArray, namedInt3, 5, 6, "");
            if (m2226a != null) {
                valueAnimator.setValues(m2226a);
            }
        }
        valueAnimator.setDuration(namedInt);
        valueAnimator.setStartDelay(namedInt2);
        valueAnimator.setRepeatCount(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            m2228a(valueAnimator, typedArray2, namedInt3, f, xmlPullParser);
        }
    }

    /* renamed from: a */
    private static void m2228a(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "pathData", 1);
        if (namedString != null) {
            String namedString2 = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "propertyXName", 2);
            String namedString3 = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "propertyYName", 3);
            if (i == 2 || i == 4) {
            }
            if (namedString2 == null && namedString3 == null) {
                throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
            }
            m2230a(PathParser.createPathFromPathData(namedString), objectAnimator, 0.5f * f, namedString2, namedString3);
            return;
        }
        objectAnimator.setPropertyName(TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "propertyName", 0));
    }

    /* renamed from: a */
    private static void m2230a(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        int i;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float f2 = 0.0f;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Float.valueOf(0.0f));
        do {
            f2 += pathMeasure.getLength();
            arrayList.add(Float.valueOf(f2));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int min = Math.min(100, ((int) (f2 / f)) + 1);
        float[] fArr = new float[min];
        float[] fArr2 = new float[min];
        float[] fArr3 = new float[2];
        int i2 = 0;
        float f3 = f2 / (min - 1);
        float f4 = 0.0f;
        int i3 = 0;
        while (i3 < min) {
            pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i2)).floatValue(), fArr3, null);
            fArr[i3] = fArr3[0];
            fArr2[i3] = fArr3[1];
            f4 += f3;
            if (i2 + 1 >= arrayList.size() || f4 <= ((Float) arrayList.get(i2 + 1)).floatValue()) {
                i = i2;
            } else {
                i = i2 + 1;
                pathMeasure2.nextContour();
            }
            i3++;
            i2 = i;
        }
        PropertyValuesHolder propertyValuesHolder = null;
        PropertyValuesHolder propertyValuesHolder2 = null;
        if (str != null) {
            propertyValuesHolder = PropertyValuesHolder.ofFloat(str, fArr);
        }
        if (str2 != null) {
            propertyValuesHolder2 = PropertyValuesHolder.ofFloat(str2, fArr2);
        }
        if (propertyValuesHolder == null) {
            objectAnimator.setValues(propertyValuesHolder2);
        } else if (propertyValuesHolder2 == null) {
            objectAnimator.setValues(propertyValuesHolder);
        } else {
            objectAnimator.setValues(propertyValuesHolder, propertyValuesHolder2);
        }
    }

    /* renamed from: a */
    private static Animator m2220a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) {
        return m2221a(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x00f9, code lost:
    
        if (r9.hasNext() == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00fb, code lost:
    
        r8[r6] = (android.animation.Animator) r9.next();
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0107, code lost:
    
        if (r23 != 0) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0109, code lost:
    
        r22.playTogether(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x010f, code lost:
    
        r22.playSequentially(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x010e, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x00e5, code lost:
    
        if (r22 == null) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x00e7, code lost:
    
        if (r13 == null) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x00e9, code lost:
    
        r8 = new android.animation.Animator[r13.size()];
        r9 = r13.iterator();
        r6 = 0;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.animation.Animator m2221a(android.content.Context r17, android.content.res.Resources r18, android.content.res.Resources.Theme r19, org.xmlpull.v1.XmlPullParser r20, android.util.AttributeSet r21, android.animation.AnimatorSet r22, int r23, float r24) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.graphics.drawable.C0297e.m2221a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    /* renamed from: a */
    private static PropertyValuesHolder[] m2233a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1876i);
                    String namedString = TypedArrayUtils.getNamedString(obtainAttributes, xmlPullParser, "propertyName", 3);
                    int namedInt = TypedArrayUtils.getNamedInt(obtainAttributes, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder m2225a = m2225a(context, resources, theme, xmlPullParser, namedString, namedInt);
                    PropertyValuesHolder m2226a = m2225a == null ? m2226a(obtainAttributes, namedInt, 0, 1, namedString) : m2225a;
                    if (m2226a != null) {
                        arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                        arrayList.add(m2226a);
                    } else {
                        arrayList = arrayList2;
                    }
                    obtainAttributes.recycle();
                } else {
                    arrayList = arrayList2;
                }
                xmlPullParser.next();
                arrayList2 = arrayList;
            }
        }
        if (arrayList2 == null) {
            return null;
        }
        int size = arrayList2.size();
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[size];
        for (int i = 0; i < size; i++) {
            propertyValuesHolderArr[i] = (PropertyValuesHolder) arrayList2.get(i);
        }
        return propertyValuesHolderArr;
    }

    /* renamed from: a */
    private static int m2215a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        int i = 0;
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1877j);
        TypedValue peekNamedValue = TypedArrayUtils.peekNamedValue(obtainAttributes, xmlPullParser, "value", 0);
        if ((peekNamedValue != null) && m2232a(peekNamedValue.type)) {
            i = 3;
        }
        obtainAttributes.recycle();
        return i;
    }

    /* renamed from: a */
    private static int m2216a(TypedArray typedArray, int i, int i2) {
        TypedValue peekValue = typedArray.peekValue(i);
        boolean z = peekValue != null;
        int i3 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i2);
        boolean z2 = peekValue2 != null;
        return ((z && m2232a(i3)) || (z2 && m2232a(z2 ? peekValue2.type : 0))) ? 3 : 0;
    }

    /* renamed from: a */
    private static PropertyValuesHolder m2225a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) {
        int size;
        int i2;
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        int i3 = i;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals("keyframe")) {
                if (i3 == 4) {
                    i3 = m2215a(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe m2223a = m2223a(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i3, xmlPullParser);
                if (m2223a != null) {
                    arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList.add(m2223a);
                } else {
                    arrayList = arrayList2;
                }
                xmlPullParser.next();
            } else {
                arrayList = arrayList2;
            }
            arrayList2 = arrayList;
        }
        if (arrayList2 == null || (size = arrayList2.size()) <= 0) {
            return null;
        }
        Keyframe keyframe = (Keyframe) arrayList2.get(0);
        Keyframe keyframe2 = (Keyframe) arrayList2.get(size - 1);
        float fraction = keyframe2.getFraction();
        if (fraction >= 1.0f) {
            i2 = size;
        } else if (fraction < 0.0f) {
            keyframe2.setFraction(1.0f);
            i2 = size;
        } else {
            arrayList2.add(arrayList2.size(), m2222a(keyframe2, 1.0f));
            i2 = size + 1;
        }
        float fraction2 = keyframe.getFraction();
        if (fraction2 != 0.0f) {
            if (fraction2 < 0.0f) {
                keyframe.setFraction(0.0f);
            } else {
                arrayList2.add(0, m2222a(keyframe, 0.0f));
                i2++;
            }
        }
        Keyframe[] keyframeArr = new Keyframe[i2];
        arrayList2.toArray(keyframeArr);
        for (int i4 = 0; i4 < i2; i4++) {
            Keyframe keyframe3 = keyframeArr[i4];
            if (keyframe3.getFraction() < 0.0f) {
                if (i4 == 0) {
                    keyframe3.setFraction(0.0f);
                } else if (i4 == i2 - 1) {
                    keyframe3.setFraction(1.0f);
                } else {
                    int i5 = i4;
                    for (int i6 = i4 + 1; i6 < i2 - 1 && keyframeArr[i6].getFraction() < 0.0f; i6++) {
                        i5 = i6;
                    }
                    m2231a(keyframeArr, keyframeArr[i5 + 1].getFraction() - keyframeArr[i4 - 1].getFraction(), i4, i5);
                }
            }
        }
        PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
        if (i3 == 3) {
            ofKeyframe.setEvaluator(C0298f.m2235a());
            return ofKeyframe;
        }
        return ofKeyframe;
    }

    /* renamed from: a */
    private static Keyframe m2222a(Keyframe keyframe, float f) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f);
        }
        if (keyframe.getType() == Integer.TYPE) {
            return Keyframe.ofInt(f);
        }
        return Keyframe.ofObject(f);
    }

    /* renamed from: a */
    private static void m2231a(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    /* renamed from: a */
    private static Keyframe m2223a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i, XmlPullParser xmlPullParser) {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1877j);
        Keyframe keyframe = null;
        float namedFloat = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue peekNamedValue = TypedArrayUtils.peekNamedValue(obtainAttributes, xmlPullParser, "value", 0);
        boolean z = peekNamedValue != null;
        if (i == 4) {
            i = (z && m2232a(peekNamedValue.type)) ? 3 : 0;
        }
        if (z) {
            switch (i) {
                case 0:
                    keyframe = Keyframe.ofFloat(namedFloat, TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "value", 0, 0.0f));
                    break;
                case 1:
                case 3:
                    keyframe = Keyframe.ofInt(namedFloat, TypedArrayUtils.getNamedInt(obtainAttributes, xmlPullParser, "value", 0, 0));
                    break;
            }
        } else {
            keyframe = i == 0 ? Keyframe.ofFloat(namedFloat) : Keyframe.ofInt(namedFloat);
        }
        int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainAttributes, xmlPullParser, "interpolator", 1, 0);
        if (namedResourceId > 0) {
            keyframe.setInterpolator(C0296d.m2213a(context, namedResourceId));
        }
        obtainAttributes.recycle();
        return keyframe;
    }

    /* renamed from: a */
    private static ObjectAnimator m2224a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        m2227a(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    /* renamed from: a */
    private static ValueAnimator m2227a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1874g);
        TypedArray obtainAttributes2 = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, C0293a.f1878k);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        m2229a(valueAnimator, obtainAttributes, obtainAttributes2, f, xmlPullParser);
        int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainAttributes, xmlPullParser, "interpolator", 0, 0);
        if (namedResourceId > 0) {
            valueAnimator.setInterpolator(C0296d.m2213a(context, namedResourceId));
        }
        obtainAttributes.recycle();
        if (obtainAttributes2 != null) {
            obtainAttributes2.recycle();
        }
        return valueAnimator;
    }

    /* renamed from: a */
    private static boolean m2232a(int i) {
        return i >= 28 && i <= 31;
    }
}
