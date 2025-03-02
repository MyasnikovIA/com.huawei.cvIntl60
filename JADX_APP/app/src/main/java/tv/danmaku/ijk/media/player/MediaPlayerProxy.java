package tv.danmaku.ijk.media.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.io.FileDescriptor;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.misc.IMediaDataSource;
import tv.danmaku.ijk.media.player.misc.ITrackInfo;

/* loaded from: classes.dex */
public class MediaPlayerProxy implements IMediaPlayer {
    protected final IMediaPlayer mBackEndMediaPlayer;

    public MediaPlayerProxy(IMediaPlayer iMediaPlayer) {
        this.mBackEndMediaPlayer = iMediaPlayer;
    }

    public IMediaPlayer getInternalMediaPlayer() {
        return this.mBackEndMediaPlayer;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.mBackEndMediaPlayer.setDisplay(surfaceHolder);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    @TargetApi(14)
    public void setSurface(Surface surface) {
        this.mBackEndMediaPlayer.setSurface(surface);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setDataSource(Context context, Uri uri) {
        this.mBackEndMediaPlayer.setDataSource(context, uri);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    @TargetApi(14)
    public void setDataSource(Context context, Uri uri, Map<String, String> map) {
        this.mBackEndMediaPlayer.setDataSource(context, uri, map);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setDataSource(FileDescriptor fileDescriptor) {
        this.mBackEndMediaPlayer.setDataSource(fileDescriptor);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setDataSource(String str) {
        this.mBackEndMediaPlayer.setDataSource(str);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        this.mBackEndMediaPlayer.setDataSource(iMediaDataSource);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public String getDataSource() {
        return this.mBackEndMediaPlayer.getDataSource();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void prepareAsync() {
        this.mBackEndMediaPlayer.prepareAsync();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void start() {
        this.mBackEndMediaPlayer.start();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void stop() {
        this.mBackEndMediaPlayer.stop();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void pause() {
        this.mBackEndMediaPlayer.pause();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setScreenOnWhilePlaying(boolean z) {
        this.mBackEndMediaPlayer.setScreenOnWhilePlaying(z);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public int getVideoWidth() {
        return this.mBackEndMediaPlayer.getVideoWidth();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public int getVideoHeight() {
        return this.mBackEndMediaPlayer.getVideoHeight();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public boolean isPlaying() {
        return this.mBackEndMediaPlayer.isPlaying();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void seekTo(long j) {
        this.mBackEndMediaPlayer.seekTo(j);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public long getCurrentPosition() {
        return this.mBackEndMediaPlayer.getCurrentPosition();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public long getDuration() {
        return this.mBackEndMediaPlayer.getDuration();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void release() {
        this.mBackEndMediaPlayer.release();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void reset() {
        this.mBackEndMediaPlayer.reset();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setVolume(float f, float f2) {
        this.mBackEndMediaPlayer.setVolume(f, f2);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public int getAudioSessionId() {
        return this.mBackEndMediaPlayer.getAudioSessionId();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public MediaInfo getMediaInfo() {
        return this.mBackEndMediaPlayer.getMediaInfo();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setLogEnabled(boolean z) {
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public boolean isPlayable() {
        return false;
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setOnPreparedListener(IMediaPlayer.OnPreparedListener onPreparedListener) {
        if (onPreparedListener != null) {
            this.mBackEndMediaPlayer.setOnPreparedListener(new IMediaPlayer.OnPreparedListener() { // from class: tv.danmaku.ijk.media.player.MediaPlayerProxy.1
                final /* synthetic */ IMediaPlayer.OnPreparedListener val$finalListener;

                C15931(IMediaPlayer.OnPreparedListener onPreparedListener2) {
                    onPreparedListener = onPreparedListener2;
                }

                @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
                public void onPrepared(IMediaPlayer iMediaPlayer) {
                    onPreparedListener.onPrepared(MediaPlayerProxy.this);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnPreparedListener(null);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.MediaPlayerProxy$1 */
    class C15931 implements IMediaPlayer.OnPreparedListener {
        final /* synthetic */ IMediaPlayer.OnPreparedListener val$finalListener;

        C15931(IMediaPlayer.OnPreparedListener onPreparedListener2) {
            onPreparedListener = onPreparedListener2;
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
        public void onPrepared(IMediaPlayer iMediaPlayer) {
            onPreparedListener.onPrepared(MediaPlayerProxy.this);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setOnCompletionListener(IMediaPlayer.OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            this.mBackEndMediaPlayer.setOnCompletionListener(new IMediaPlayer.OnCompletionListener() { // from class: tv.danmaku.ijk.media.player.MediaPlayerProxy.2
                final /* synthetic */ IMediaPlayer.OnCompletionListener val$finalListener;

                C15942(IMediaPlayer.OnCompletionListener onCompletionListener2) {
                    onCompletionListener = onCompletionListener2;
                }

                @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
                public void onCompletion(IMediaPlayer iMediaPlayer) {
                    onCompletionListener.onCompletion(MediaPlayerProxy.this);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnCompletionListener(null);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.MediaPlayerProxy$2 */
    class C15942 implements IMediaPlayer.OnCompletionListener {
        final /* synthetic */ IMediaPlayer.OnCompletionListener val$finalListener;

        C15942(IMediaPlayer.OnCompletionListener onCompletionListener2) {
            onCompletionListener = onCompletionListener2;
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
        public void onCompletion(IMediaPlayer iMediaPlayer) {
            onCompletionListener.onCompletion(MediaPlayerProxy.this);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setOnBufferingUpdateListener(IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener) {
        if (onBufferingUpdateListener != null) {
            this.mBackEndMediaPlayer.setOnBufferingUpdateListener(new IMediaPlayer.OnBufferingUpdateListener() { // from class: tv.danmaku.ijk.media.player.MediaPlayerProxy.3
                final /* synthetic */ IMediaPlayer.OnBufferingUpdateListener val$finalListener;

                C15953(IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener2) {
                    onBufferingUpdateListener = onBufferingUpdateListener2;
                }

                @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
                public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i) {
                    onBufferingUpdateListener.onBufferingUpdate(MediaPlayerProxy.this, i);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnBufferingUpdateListener(null);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.MediaPlayerProxy$3 */
    class C15953 implements IMediaPlayer.OnBufferingUpdateListener {
        final /* synthetic */ IMediaPlayer.OnBufferingUpdateListener val$finalListener;

        C15953(IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener2) {
            onBufferingUpdateListener = onBufferingUpdateListener2;
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i) {
            onBufferingUpdateListener.onBufferingUpdate(MediaPlayerProxy.this, i);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setOnSeekCompleteListener(IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        if (onSeekCompleteListener != null) {
            this.mBackEndMediaPlayer.setOnSeekCompleteListener(new IMediaPlayer.OnSeekCompleteListener() { // from class: tv.danmaku.ijk.media.player.MediaPlayerProxy.4
                final /* synthetic */ IMediaPlayer.OnSeekCompleteListener val$finalListener;

                C15964(IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener2) {
                    onSeekCompleteListener = onSeekCompleteListener2;
                }

                @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnSeekCompleteListener
                public void onSeekComplete(IMediaPlayer iMediaPlayer) {
                    onSeekCompleteListener.onSeekComplete(MediaPlayerProxy.this);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnSeekCompleteListener(null);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.MediaPlayerProxy$4 */
    class C15964 implements IMediaPlayer.OnSeekCompleteListener {
        final /* synthetic */ IMediaPlayer.OnSeekCompleteListener val$finalListener;

        C15964(IMediaPlayer.OnSeekCompleteListener onSeekCompleteListener2) {
            onSeekCompleteListener = onSeekCompleteListener2;
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(IMediaPlayer iMediaPlayer) {
            onSeekCompleteListener.onSeekComplete(MediaPlayerProxy.this);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setOnVideoSizeChangedListener(IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        if (onVideoSizeChangedListener != null) {
            this.mBackEndMediaPlayer.setOnVideoSizeChangedListener(new IMediaPlayer.OnVideoSizeChangedListener() { // from class: tv.danmaku.ijk.media.player.MediaPlayerProxy.5
                final /* synthetic */ IMediaPlayer.OnVideoSizeChangedListener val$finalListener;

                C15975(IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener2) {
                    onVideoSizeChangedListener = onVideoSizeChangedListener2;
                }

                @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener
                public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i, int i2, int i3, int i4) {
                    onVideoSizeChangedListener.onVideoSizeChanged(MediaPlayerProxy.this, i, i2, i3, i4);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnVideoSizeChangedListener(null);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.MediaPlayerProxy$5 */
    class C15975 implements IMediaPlayer.OnVideoSizeChangedListener {
        final /* synthetic */ IMediaPlayer.OnVideoSizeChangedListener val$finalListener;

        C15975(IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener2) {
            onVideoSizeChangedListener = onVideoSizeChangedListener2;
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i, int i2, int i3, int i4) {
            onVideoSizeChangedListener.onVideoSizeChanged(MediaPlayerProxy.this, i, i2, i3, i4);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setOnErrorListener(IMediaPlayer.OnErrorListener onErrorListener) {
        if (onErrorListener != null) {
            this.mBackEndMediaPlayer.setOnErrorListener(new IMediaPlayer.OnErrorListener() { // from class: tv.danmaku.ijk.media.player.MediaPlayerProxy.6
                final /* synthetic */ IMediaPlayer.OnErrorListener val$finalListener;

                C15986(IMediaPlayer.OnErrorListener onErrorListener2) {
                    onErrorListener = onErrorListener2;
                }

                @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
                public boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
                    return onErrorListener.onError(MediaPlayerProxy.this, i, i2);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnErrorListener(null);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.MediaPlayerProxy$6 */
    class C15986 implements IMediaPlayer.OnErrorListener {
        final /* synthetic */ IMediaPlayer.OnErrorListener val$finalListener;

        C15986(IMediaPlayer.OnErrorListener onErrorListener2) {
            onErrorListener = onErrorListener2;
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
        public boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
            return onErrorListener.onError(MediaPlayerProxy.this, i, i2);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        if (onInfoListener != null) {
            this.mBackEndMediaPlayer.setOnInfoListener(new IMediaPlayer.OnInfoListener() { // from class: tv.danmaku.ijk.media.player.MediaPlayerProxy.7
                final /* synthetic */ IMediaPlayer.OnInfoListener val$finalListener;

                C15997(IMediaPlayer.OnInfoListener onInfoListener2) {
                    onInfoListener = onInfoListener2;
                }

                @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
                public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
                    return onInfoListener.onInfo(MediaPlayerProxy.this, i, i2);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnInfoListener(null);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.MediaPlayerProxy$7 */
    class C15997 implements IMediaPlayer.OnInfoListener {
        final /* synthetic */ IMediaPlayer.OnInfoListener val$finalListener;

        C15997(IMediaPlayer.OnInfoListener onInfoListener2) {
            onInfoListener = onInfoListener2;
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
        public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
            return onInfoListener.onInfo(MediaPlayerProxy.this, i, i2);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setOnTimedTextListener(IMediaPlayer.OnTimedTextListener onTimedTextListener) {
        if (onTimedTextListener != null) {
            this.mBackEndMediaPlayer.setOnTimedTextListener(new IMediaPlayer.OnTimedTextListener() { // from class: tv.danmaku.ijk.media.player.MediaPlayerProxy.8
                final /* synthetic */ IMediaPlayer.OnTimedTextListener val$finalListener;

                C16008(IMediaPlayer.OnTimedTextListener onTimedTextListener2) {
                    onTimedTextListener = onTimedTextListener2;
                }

                @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnTimedTextListener
                public void onTimedText(IMediaPlayer iMediaPlayer, IjkTimedText ijkTimedText) {
                    onTimedTextListener.onTimedText(MediaPlayerProxy.this, ijkTimedText);
                }
            });
        } else {
            this.mBackEndMediaPlayer.setOnTimedTextListener(null);
        }
    }

    /* renamed from: tv.danmaku.ijk.media.player.MediaPlayerProxy$8 */
    class C16008 implements IMediaPlayer.OnTimedTextListener {
        final /* synthetic */ IMediaPlayer.OnTimedTextListener val$finalListener;

        C16008(IMediaPlayer.OnTimedTextListener onTimedTextListener2) {
            onTimedTextListener = onTimedTextListener2;
        }

        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnTimedTextListener
        public void onTimedText(IMediaPlayer iMediaPlayer, IjkTimedText ijkTimedText) {
            onTimedTextListener.onTimedText(MediaPlayerProxy.this, ijkTimedText);
        }
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setAudioStreamType(int i) {
        this.mBackEndMediaPlayer.setAudioStreamType(i);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setKeepInBackground(boolean z) {
        this.mBackEndMediaPlayer.setKeepInBackground(z);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public int getVideoSarNum() {
        return this.mBackEndMediaPlayer.getVideoSarNum();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public int getVideoSarDen() {
        return this.mBackEndMediaPlayer.getVideoSarDen();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setWakeMode(Context context, int i) {
        this.mBackEndMediaPlayer.setWakeMode(context, i);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public ITrackInfo[] getTrackInfo() {
        return this.mBackEndMediaPlayer.getTrackInfo();
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public void setLooping(boolean z) {
        this.mBackEndMediaPlayer.setLooping(z);
    }

    @Override // tv.danmaku.ijk.media.player.IMediaPlayer
    public boolean isLooping() {
        return this.mBackEndMediaPlayer.isLooping();
    }
}
