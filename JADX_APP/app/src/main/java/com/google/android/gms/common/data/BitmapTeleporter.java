package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zza();

    /* renamed from: BO */
    private Bitmap f6192BO;

    /* renamed from: BP */
    private boolean f6193BP;

    /* renamed from: BQ */
    private File f6194BQ;
    final int mVersionCode;

    /* renamed from: nV */
    final int f6195nV;
    ParcelFileDescriptor zzcme;

    BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.mVersionCode = i;
        this.zzcme = parcelFileDescriptor;
        this.f6195nV = i2;
        this.f6192BO = null;
        this.f6193BP = false;
    }

    public BitmapTeleporter(Bitmap bitmap) {
        this.mVersionCode = 1;
        this.zzcme = null;
        this.f6195nV = 0;
        this.f6192BO = bitmap;
        this.f6193BP = true;
    }

    private void zza(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w("BitmapTeleporter", "Could not close stream", e);
        }
    }

    private FileOutputStream zzauk() {
        if (this.f6194BQ == null) {
            throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
        }
        try {
            File createTempFile = File.createTempFile("teleporter", ".tmp", this.f6194BQ);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                this.zzcme = ParcelFileDescriptor.open(createTempFile, 268435456);
                createTempFile.delete();
                return fileOutputStream;
            } catch (FileNotFoundException e) {
                throw new IllegalStateException("Temporary file is somehow already deleted");
            }
        } catch (IOException e2) {
            throw new IllegalStateException("Could not create temporary file", e2);
        }
    }

    public void release() {
        if (this.f6193BP) {
            return;
        }
        try {
            this.zzcme.close();
        } catch (IOException e) {
            Log.w("BitmapTeleporter", "Could not close PFD", e);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.zzcme == null) {
            Bitmap bitmap = this.f6192BO;
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            DataOutputStream dataOutputStream = new DataOutputStream(zzauk());
            try {
                try {
                    dataOutputStream.writeInt(array.length);
                    dataOutputStream.writeInt(bitmap.getWidth());
                    dataOutputStream.writeInt(bitmap.getHeight());
                    dataOutputStream.writeUTF(bitmap.getConfig().toString());
                    dataOutputStream.write(array);
                } catch (IOException e) {
                    throw new IllegalStateException("Could not write into unlinked file", e);
                }
            } finally {
                zza(dataOutputStream);
            }
        }
        zza.zza(this, parcel, i | 1);
        this.zzcme = null;
    }

    public Bitmap zzauj() {
        if (!this.f6193BP) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.zzcme));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    int readInt = dataInputStream.readInt();
                    int readInt2 = dataInputStream.readInt();
                    Bitmap.Config valueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                    dataInputStream.read(bArr);
                    zza(dataInputStream);
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    Bitmap createBitmap = Bitmap.createBitmap(readInt, readInt2, valueOf);
                    createBitmap.copyPixelsFromBuffer(wrap);
                    this.f6192BO = createBitmap;
                    this.f6193BP = true;
                } catch (IOException e) {
                    throw new IllegalStateException("Could not read from parcel file descriptor", e);
                }
            } catch (Throwable th) {
                zza(dataInputStream);
                throw th;
            }
        }
        return this.f6192BO;
    }

    public void zzd(File file) {
        if (file == null) {
            throw new NullPointerException("Cannot set null temp directory");
        }
        this.f6194BQ = file;
    }
}
