package android.support.v4.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.v4.content.res.FontResourcesParserCompat;
import android.support.v4.provider.FontsContractCompat;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
class TypefaceCompatBaseImpl {
    private static final String CACHE_FILE_PREFIX = "cached_font_";
    private static final String TAG = "TypefaceCompatBaseImpl";

    private interface StyleExtractor<T> {
        int getWeight(T t);

        boolean isItalic(T t);
    }

    TypefaceCompatBaseImpl() {
    }

    private static <T> T findBestFont(T[] tArr, int i, StyleExtractor<T> styleExtractor) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int abs = (styleExtractor.isItalic(t2) == z ? 0 : 1) + (Math.abs(styleExtractor.getWeight(t2) - i2) * 2);
            if (t == null || i3 > abs) {
                i3 = abs;
                t = t2;
            }
        }
        return t;
    }

    /* renamed from: android.support.v4.graphics.TypefaceCompatBaseImpl$1 */
    class C03801 implements StyleExtractor<FontsContractCompat.FontInfo> {
        C03801() {
        }

        @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public int getWeight(FontsContractCompat.FontInfo fontInfo) {
            return fontInfo.getWeight();
        }

        @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public boolean isItalic(FontsContractCompat.FontInfo fontInfo) {
            return fontInfo.isItalic();
        }
    }

    protected FontsContractCompat.FontInfo findBestInfo(FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        return (FontsContractCompat.FontInfo) findBestFont(fontInfoArr, i, new StyleExtractor<FontsContractCompat.FontInfo>() { // from class: android.support.v4.graphics.TypefaceCompatBaseImpl.1
            C03801() {
            }

            @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public int getWeight(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.getWeight();
            }

            @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public boolean isItalic(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.isItalic();
            }
        });
    }

    protected Typeface createFromInputStream(Context context, InputStream inputStream) {
        Typeface typeface = null;
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile != null) {
            try {
                if (TypefaceCompatUtil.copyToFile(tempFile, inputStream)) {
                    typeface = Typeface.createFromFile(tempFile.getPath());
                }
            } catch (RuntimeException e) {
            } finally {
                tempFile.delete();
            }
        }
        return typeface;
    }

    public Typeface createFromFontInfo(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        Throwable th;
        InputStream inputStream;
        InputStream inputStream2;
        Typeface typeface = null;
        if (fontInfoArr.length >= 1) {
            try {
                inputStream2 = context.getContentResolver().openInputStream(findBestInfo(fontInfoArr, i).getUri());
                try {
                    typeface = createFromInputStream(context, inputStream2);
                    TypefaceCompatUtil.closeQuietly(inputStream2);
                } catch (IOException e) {
                    TypefaceCompatUtil.closeQuietly(inputStream2);
                    return typeface;
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = inputStream2;
                    TypefaceCompatUtil.closeQuietly(inputStream);
                    throw th;
                }
            } catch (IOException e2) {
                inputStream2 = null;
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
            }
        }
        return typeface;
    }

    /* renamed from: android.support.v4.graphics.TypefaceCompatBaseImpl$2 */
    class C03812 implements StyleExtractor<FontResourcesParserCompat.FontFileResourceEntry> {
        C03812() {
        }

        @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public int getWeight(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
            return fontFileResourceEntry.getWeight();
        }

        @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public boolean isItalic(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
            return fontFileResourceEntry.isItalic();
        }
    }

    private FontResourcesParserCompat.FontFileResourceEntry findBestEntry(FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, int i) {
        return (FontResourcesParserCompat.FontFileResourceEntry) findBestFont(fontFamilyFilesResourceEntry.getEntries(), i, new StyleExtractor<FontResourcesParserCompat.FontFileResourceEntry>() { // from class: android.support.v4.graphics.TypefaceCompatBaseImpl.2
            C03812() {
            }

            @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public int getWeight(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.getWeight();
            }

            @Override // android.support.v4.graphics.TypefaceCompatBaseImpl.StyleExtractor
            public boolean isItalic(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.isItalic();
            }
        });
    }

    @Nullable
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        FontResourcesParserCompat.FontFileResourceEntry findBestEntry = findBestEntry(fontFamilyFilesResourceEntry, i);
        if (findBestEntry == null) {
            return null;
        }
        return TypefaceCompat.createFromResourcesFontFile(context, resources, findBestEntry.getResourceId(), findBestEntry.getFileName(), i);
    }

    @Nullable
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        Typeface typeface = null;
        File tempFile = TypefaceCompatUtil.getTempFile(context);
        if (tempFile != null) {
            try {
                if (TypefaceCompatUtil.copyToFile(tempFile, resources, i)) {
                    typeface = Typeface.createFromFile(tempFile.getPath());
                }
            } catch (RuntimeException e) {
            } finally {
                tempFile.delete();
            }
        }
        return typeface;
    }
}
