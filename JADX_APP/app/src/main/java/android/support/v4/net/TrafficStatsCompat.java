package android.support.v4.net;

import android.net.TrafficStats;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import java.net.DatagramSocket;
import java.net.Socket;

/* loaded from: classes.dex */
public final class TrafficStatsCompat {
    @Deprecated
    public static void clearThreadStatsTag() {
        TrafficStats.clearThreadStatsTag();
    }

    @Deprecated
    public static int getThreadStatsTag() {
        return TrafficStats.getThreadStatsTag();
    }

    @Deprecated
    public static void incrementOperationCount(int i) {
        TrafficStats.incrementOperationCount(i);
    }

    @Deprecated
    public static void incrementOperationCount(int i, int i2) {
        TrafficStats.incrementOperationCount(i, i2);
    }

    @Deprecated
    public static void setThreadStatsTag(int i) {
        TrafficStats.setThreadStatsTag(i);
    }

    @Deprecated
    public static void tagSocket(Socket socket) {
        TrafficStats.tagSocket(socket);
    }

    @Deprecated
    public static void untagSocket(Socket socket) {
        TrafficStats.untagSocket(socket);
    }

    public static void tagDatagramSocket(@NonNull DatagramSocket datagramSocket) {
        if (Build.VERSION.SDK_INT >= 24) {
            TrafficStats.tagDatagramSocket(datagramSocket);
            return;
        }
        ParcelFileDescriptor fromDatagramSocket = ParcelFileDescriptor.fromDatagramSocket(datagramSocket);
        TrafficStats.tagSocket(new DatagramSocketWrapper(datagramSocket, fromDatagramSocket.getFileDescriptor()));
        fromDatagramSocket.detachFd();
    }

    public static void untagDatagramSocket(@NonNull DatagramSocket datagramSocket) {
        if (Build.VERSION.SDK_INT >= 24) {
            TrafficStats.untagDatagramSocket(datagramSocket);
            return;
        }
        ParcelFileDescriptor fromDatagramSocket = ParcelFileDescriptor.fromDatagramSocket(datagramSocket);
        TrafficStats.untagSocket(new DatagramSocketWrapper(datagramSocket, fromDatagramSocket.getFileDescriptor()));
        fromDatagramSocket.detachFd();
    }

    private TrafficStatsCompat() {
    }
}
