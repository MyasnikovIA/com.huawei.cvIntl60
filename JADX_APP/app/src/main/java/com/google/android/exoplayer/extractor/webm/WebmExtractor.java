package com.google.android.exoplayer.extractor.webm;

import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer.C1167C;
import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.drm.DrmInitData;
import com.google.android.exoplayer.extractor.ChunkIndex;
import com.google.android.exoplayer.extractor.Extractor;
import com.google.android.exoplayer.extractor.ExtractorInput;
import com.google.android.exoplayer.extractor.ExtractorOutput;
import com.google.android.exoplayer.extractor.PositionHolder;
import com.google.android.exoplayer.extractor.SeekMap;
import com.google.android.exoplayer.extractor.TrackOutput;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.android.exoplayer.util.LongArray;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.ParsableByteArray;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes.dex */
public final class WebmExtractor implements Extractor {
    private static final int BLOCK_STATE_DATA = 2;
    private static final int BLOCK_STATE_HEADER = 1;
    private static final int BLOCK_STATE_START = 0;
    private static final String CODEC_ID_AAC = "A_AAC";
    private static final String CODEC_ID_AC3 = "A_AC3";
    private static final String CODEC_ID_ACM = "A_MS/ACM";
    private static final String CODEC_ID_DTS = "A_DTS";
    private static final String CODEC_ID_DTS_EXPRESS = "A_DTS/EXPRESS";
    private static final String CODEC_ID_DTS_LOSSLESS = "A_DTS/LOSSLESS";
    private static final String CODEC_ID_E_AC3 = "A_EAC3";
    private static final String CODEC_ID_FLAC = "A_FLAC";
    private static final String CODEC_ID_FOURCC = "V_MS/VFW/FOURCC";
    private static final String CODEC_ID_H264 = "V_MPEG4/ISO/AVC";
    private static final String CODEC_ID_H265 = "V_MPEGH/ISO/HEVC";
    private static final String CODEC_ID_MP3 = "A_MPEG/L3";
    private static final String CODEC_ID_MPEG2 = "V_MPEG2";
    private static final String CODEC_ID_MPEG4_AP = "V_MPEG4/ISO/AP";
    private static final String CODEC_ID_MPEG4_ASP = "V_MPEG4/ISO/ASP";
    private static final String CODEC_ID_MPEG4_SP = "V_MPEG4/ISO/SP";
    private static final String CODEC_ID_OPUS = "A_OPUS";
    private static final String CODEC_ID_PCM_INT_LIT = "A_PCM/INT/LIT";
    private static final String CODEC_ID_PGS = "S_HDMV/PGS";
    private static final String CODEC_ID_SUBRIP = "S_TEXT/UTF8";
    private static final String CODEC_ID_TRUEHD = "A_TRUEHD";
    private static final String CODEC_ID_VOBSUB = "S_VOBSUB";
    private static final String CODEC_ID_VORBIS = "A_VORBIS";
    private static final String CODEC_ID_VP8 = "V_VP8";
    private static final String CODEC_ID_VP9 = "V_VP9";
    private static final String DOC_TYPE_MATROSKA = "matroska";
    private static final String DOC_TYPE_WEBM = "webm";
    private static final int ENCRYPTION_IV_SIZE = 8;
    private static final int FOURCC_COMPRESSION_VC1 = 826496599;
    private static final int ID_AUDIO = 225;
    private static final int ID_AUDIO_BIT_DEPTH = 25188;
    private static final int ID_BLOCK = 161;
    private static final int ID_BLOCK_DURATION = 155;
    private static final int ID_BLOCK_GROUP = 160;
    private static final int ID_CHANNELS = 159;
    private static final int ID_CLUSTER = 524531317;
    private static final int ID_CODEC_DELAY = 22186;
    private static final int ID_CODEC_ID = 134;
    private static final int ID_CODEC_PRIVATE = 25506;
    private static final int ID_CONTENT_COMPRESSION = 20532;
    private static final int ID_CONTENT_COMPRESSION_ALGORITHM = 16980;
    private static final int ID_CONTENT_COMPRESSION_SETTINGS = 16981;
    private static final int ID_CONTENT_ENCODING = 25152;
    private static final int ID_CONTENT_ENCODINGS = 28032;
    private static final int ID_CONTENT_ENCODING_ORDER = 20529;
    private static final int ID_CONTENT_ENCODING_SCOPE = 20530;
    private static final int ID_CONTENT_ENCRYPTION = 20533;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS = 18407;
    private static final int ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE = 18408;
    private static final int ID_CONTENT_ENCRYPTION_ALGORITHM = 18401;
    private static final int ID_CONTENT_ENCRYPTION_KEY_ID = 18402;
    private static final int ID_CUES = 475249515;
    private static final int ID_CUE_CLUSTER_POSITION = 241;
    private static final int ID_CUE_POINT = 187;
    private static final int ID_CUE_TIME = 179;
    private static final int ID_CUE_TRACK_POSITIONS = 183;
    private static final int ID_DEFAULT_DURATION = 2352003;
    private static final int ID_DISPLAY_HEIGHT = 21690;
    private static final int ID_DISPLAY_UNIT = 21682;
    private static final int ID_DISPLAY_WIDTH = 21680;
    private static final int ID_DOC_TYPE = 17026;
    private static final int ID_DOC_TYPE_READ_VERSION = 17029;
    private static final int ID_DURATION = 17545;
    private static final int ID_EBML = 440786851;
    private static final int ID_EBML_READ_VERSION = 17143;
    private static final int ID_INFO = 357149030;
    private static final int ID_LANGUAGE = 2274716;
    private static final int ID_PIXEL_HEIGHT = 186;
    private static final int ID_PIXEL_WIDTH = 176;
    private static final int ID_REFERENCE_BLOCK = 251;
    private static final int ID_SAMPLING_FREQUENCY = 181;
    private static final int ID_SEEK = 19899;
    private static final int ID_SEEK_HEAD = 290298740;
    private static final int ID_SEEK_ID = 21419;
    private static final int ID_SEEK_POSITION = 21420;
    private static final int ID_SEEK_PRE_ROLL = 22203;
    private static final int ID_SEGMENT = 408125543;
    private static final int ID_SEGMENT_INFO = 357149030;
    private static final int ID_SIMPLE_BLOCK = 163;
    private static final int ID_TIMECODE_SCALE = 2807729;
    private static final int ID_TIME_CODE = 231;
    private static final int ID_TRACKS = 374648427;
    private static final int ID_TRACK_ENTRY = 174;
    private static final int ID_TRACK_NUMBER = 215;
    private static final int ID_TRACK_TYPE = 131;
    private static final int ID_VIDEO = 224;
    private static final int LACING_EBML = 3;
    private static final int LACING_FIXED_SIZE = 2;
    private static final int LACING_NONE = 0;
    private static final int LACING_XIPH = 1;
    private static final int MP3_MAX_INPUT_SIZE = 4096;
    private static final int OPUS_MAX_INPUT_SIZE = 5760;
    private static final int SUBRIP_PREFIX_END_TIMECODE_OFFSET = 19;
    private static final int SUBRIP_TIMECODE_LENGTH = 12;
    private static final int TRACK_TYPE_AUDIO = 2;
    private static final int UNKNOWN = -1;
    private static final int VORBIS_MAX_INPUT_SIZE = 8192;
    private static final int WAVE_FORMAT_EXTENSIBLE = 65534;
    private static final int WAVE_FORMAT_PCM = 1;
    private static final int WAVE_FORMAT_SIZE = 18;
    private long blockDurationUs;
    private int blockFlags;
    private int blockLacingSampleCount;
    private int blockLacingSampleIndex;
    private int[] blockLacingSampleSizes;
    private int blockState;
    private long blockTimeUs;
    private int blockTrackNumber;
    private int blockTrackNumberLength;
    private long clusterTimecodeUs;
    private LongArray cueClusterPositions;
    private LongArray cueTimesUs;
    private long cuesContentPosition;
    private Track currentTrack;
    private long durationTimecode;
    private long durationUs;
    private final ParsableByteArray encryptionInitializationVector;
    private final ParsableByteArray encryptionSubsampleData;
    private ByteBuffer encryptionSubsampleDataBuffer;
    private ExtractorOutput extractorOutput;
    private final ParsableByteArray nalLength;
    private final ParsableByteArray nalStartCode;
    private final EbmlReader reader;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private boolean sampleEncodingHandled;
    private boolean sampleInitializationVectorRead;
    private int samplePartitionCount;
    private boolean samplePartitionCountRead;
    private boolean sampleRead;
    private boolean sampleSeenReferenceBlock;
    private byte sampleSignalByte;
    private boolean sampleSignalByteRead;
    private final ParsableByteArray sampleStrippedBytes;
    private final ParsableByteArray scratch;
    private int seekEntryId;
    private final ParsableByteArray seekEntryIdBytes;
    private long seekEntryPosition;
    private boolean seekForCues;
    private long seekPositionAfterBuildingCues;
    private boolean seenClusterPositionForCurrentCuePoint;
    private long segmentContentPosition;
    private long segmentContentSize;
    private boolean sentDrmInitData;
    private boolean sentSeekMap;
    private final ParsableByteArray subripSample;
    private long timecodeScale;
    private final SparseArray<Track> tracks;
    private final VarintReader varintReader;
    private final ParsableByteArray vorbisNumPageSamples;
    private static final byte[] SUBRIP_PREFIX = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, 48, 48, 48, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.CARRIAGE_RETURN, ClosedCaptionCtrl.CARRIAGE_RETURN, 62, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, 48, 48, 58, 48, 48, 58, 48, 48, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY, 48, 48, 48, 10};
    private static final byte[] SUBRIP_TIMECODE_EMPTY = {ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING, ClosedCaptionCtrl.RESUME_CAPTION_LOADING};
    private static final UUID WAVE_SUBFORMAT_PCM = new UUID(72057594037932032L, -9223371306706625679L);

    public WebmExtractor() {
        this(new DefaultEbmlReader());
    }

    WebmExtractor(EbmlReader ebmlReader) {
        this.segmentContentPosition = -1L;
        this.segmentContentSize = -1L;
        this.timecodeScale = -1L;
        this.durationTimecode = -1L;
        this.durationUs = -1L;
        this.cuesContentPosition = -1L;
        this.seekPositionAfterBuildingCues = -1L;
        this.clusterTimecodeUs = -1L;
        this.reader = ebmlReader;
        this.reader.init(new InnerEbmlReaderOutput());
        this.varintReader = new VarintReader();
        this.tracks = new SparseArray<>();
        this.scratch = new ParsableByteArray(4);
        this.vorbisNumPageSamples = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.seekEntryIdBytes = new ParsableByteArray(4);
        this.nalStartCode = new ParsableByteArray(NalUnitUtil.NAL_START_CODE);
        this.nalLength = new ParsableByteArray(4);
        this.sampleStrippedBytes = new ParsableByteArray();
        this.subripSample = new ParsableByteArray();
        this.encryptionInitializationVector = new ParsableByteArray(8);
        this.encryptionSubsampleData = new ParsableByteArray();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public boolean sniff(ExtractorInput extractorInput) {
        return new Sniffer().sniff(extractorInput);
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void init(ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void seek() {
        this.clusterTimecodeUs = -1L;
        this.blockState = 0;
        this.reader.reset();
        this.varintReader.reset();
        resetSample();
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer.extractor.Extractor
    public int read(ExtractorInput extractorInput, PositionHolder positionHolder) {
        this.sampleRead = false;
        boolean z = true;
        while (z && !this.sampleRead) {
            z = this.reader.read(extractorInput);
            if (z && maybeSeekForCues(positionHolder, extractorInput.getPosition())) {
                return 1;
            }
        }
        return !z ? -1 : 0;
    }

    int getElementType(int i) {
        switch (i) {
            case ID_TRACK_TYPE /* 131 */:
            case ID_BLOCK_DURATION /* 155 */:
            case ID_CHANNELS /* 159 */:
            case ID_PIXEL_WIDTH /* 176 */:
            case ID_CUE_TIME /* 179 */:
            case ID_PIXEL_HEIGHT /* 186 */:
            case ID_TRACK_NUMBER /* 215 */:
            case ID_TIME_CODE /* 231 */:
            case ID_CUE_CLUSTER_POSITION /* 241 */:
            case ID_REFERENCE_BLOCK /* 251 */:
            case ID_CONTENT_COMPRESSION_ALGORITHM /* 16980 */:
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
            case ID_EBML_READ_VERSION /* 17143 */:
            case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
            case ID_CONTENT_ENCODING_ORDER /* 20529 */:
            case ID_CONTENT_ENCODING_SCOPE /* 20530 */:
            case ID_SEEK_POSITION /* 21420 */:
            case ID_DISPLAY_WIDTH /* 21680 */:
            case ID_DISPLAY_UNIT /* 21682 */:
            case ID_DISPLAY_HEIGHT /* 21690 */:
            case ID_CODEC_DELAY /* 22186 */:
            case ID_SEEK_PRE_ROLL /* 22203 */:
            case ID_AUDIO_BIT_DEPTH /* 25188 */:
            case ID_DEFAULT_DURATION /* 2352003 */:
            case ID_TIMECODE_SCALE /* 2807729 */:
                return 2;
            case ID_CODEC_ID /* 134 */:
            case ID_DOC_TYPE /* 17026 */:
            case ID_LANGUAGE /* 2274716 */:
                return 3;
            case ID_BLOCK_GROUP /* 160 */:
            case ID_TRACK_ENTRY /* 174 */:
            case ID_CUE_TRACK_POSITIONS /* 183 */:
            case ID_CUE_POINT /* 187 */:
            case 224:
            case ID_AUDIO /* 225 */:
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS /* 18407 */:
            case ID_SEEK /* 19899 */:
            case ID_CONTENT_COMPRESSION /* 20532 */:
            case ID_CONTENT_ENCRYPTION /* 20533 */:
            case ID_CONTENT_ENCODING /* 25152 */:
            case ID_CONTENT_ENCODINGS /* 28032 */:
            case ID_SEEK_HEAD /* 290298740 */:
            case 357149030:
            case ID_TRACKS /* 374648427 */:
            case ID_SEGMENT /* 408125543 */:
            case ID_EBML /* 440786851 */:
            case ID_CUES /* 475249515 */:
            case ID_CLUSTER /* 524531317 */:
                return 1;
            case ID_BLOCK /* 161 */:
            case ID_SIMPLE_BLOCK /* 163 */:
            case ID_CONTENT_COMPRESSION_SETTINGS /* 16981 */:
            case ID_CONTENT_ENCRYPTION_KEY_ID /* 18402 */:
            case ID_SEEK_ID /* 21419 */:
            case ID_CODEC_PRIVATE /* 25506 */:
                return 4;
            case ID_SAMPLING_FREQUENCY /* 181 */:
            case ID_DURATION /* 17545 */:
                return 5;
            default:
                return 0;
        }
    }

    boolean isLevel1Element(int i) {
        return i == 357149030 || i == ID_CLUSTER || i == ID_CUES || i == ID_TRACKS;
    }

    void startMasterElement(int i, long j, long j2) {
        switch (i) {
            case ID_BLOCK_GROUP /* 160 */:
                this.sampleSeenReferenceBlock = false;
                return;
            case ID_TRACK_ENTRY /* 174 */:
                this.currentTrack = new Track();
                return;
            case ID_CUE_POINT /* 187 */:
                this.seenClusterPositionForCurrentCuePoint = false;
                return;
            case ID_SEEK /* 19899 */:
                this.seekEntryId = -1;
                this.seekEntryPosition = -1L;
                return;
            case ID_CONTENT_ENCRYPTION /* 20533 */:
                this.currentTrack.hasContentEncryption = true;
                return;
            case ID_CONTENT_ENCODING /* 25152 */:
            default:
                return;
            case ID_SEGMENT /* 408125543 */:
                if (this.segmentContentPosition != -1 && this.segmentContentPosition != j) {
                    throw new ParserException("Multiple Segment elements not supported");
                }
                this.segmentContentPosition = j;
                this.segmentContentSize = j2;
                return;
            case ID_CUES /* 475249515 */:
                this.cueTimesUs = new LongArray();
                this.cueClusterPositions = new LongArray();
                return;
            case ID_CLUSTER /* 524531317 */:
                if (this.sentSeekMap) {
                    return;
                }
                if (this.cuesContentPosition != -1) {
                    this.seekForCues = true;
                    return;
                } else {
                    this.extractorOutput.seekMap(SeekMap.UNSEEKABLE);
                    this.sentSeekMap = true;
                    return;
                }
        }
    }

    void endMasterElement(int i) {
        switch (i) {
            case ID_BLOCK_GROUP /* 160 */:
                if (this.blockState == 2) {
                    if (!this.sampleSeenReferenceBlock) {
                        this.blockFlags |= 1;
                    }
                    commitSampleToOutput(this.tracks.get(this.blockTrackNumber), this.blockTimeUs);
                    this.blockState = 0;
                    return;
                }
                return;
            case ID_TRACK_ENTRY /* 174 */:
                if (this.tracks.get(this.currentTrack.number) == null && isCodecSupported(this.currentTrack.codecId)) {
                    this.currentTrack.initializeOutput(this.extractorOutput, this.currentTrack.number, this.durationUs);
                    this.tracks.put(this.currentTrack.number, this.currentTrack);
                }
                this.currentTrack = null;
                return;
            case ID_SEEK /* 19899 */:
                if (this.seekEntryId == -1 || this.seekEntryPosition == -1) {
                    throw new ParserException("Mandatory element SeekID or SeekPosition not found");
                }
                if (this.seekEntryId == ID_CUES) {
                    this.cuesContentPosition = this.seekEntryPosition;
                    return;
                }
                return;
            case ID_CONTENT_ENCODING /* 25152 */:
                if (this.currentTrack.hasContentEncryption) {
                    if (this.currentTrack.encryptionKeyId == null) {
                        throw new ParserException("Encrypted Track found but ContentEncKeyID was not found");
                    }
                    if (!this.sentDrmInitData) {
                        this.extractorOutput.drmInitData(new DrmInitData.Universal(new DrmInitData.SchemeInitData(MimeTypes.VIDEO_WEBM, this.currentTrack.encryptionKeyId)));
                        this.sentDrmInitData = true;
                        return;
                    }
                    return;
                }
                return;
            case ID_CONTENT_ENCODINGS /* 28032 */:
                if (this.currentTrack.hasContentEncryption && this.currentTrack.sampleStrippedBytes != null) {
                    throw new ParserException("Combining encryption and compression is not supported");
                }
                return;
            case 357149030:
                if (this.timecodeScale == -1) {
                    this.timecodeScale = C1167C.MICROS_PER_SECOND;
                }
                if (this.durationTimecode != -1) {
                    this.durationUs = scaleTimecodeToUs(this.durationTimecode);
                    return;
                }
                return;
            case ID_TRACKS /* 374648427 */:
                if (this.tracks.size() == 0) {
                    throw new ParserException("No valid tracks were found");
                }
                this.extractorOutput.endTracks();
                return;
            case ID_CUES /* 475249515 */:
                if (!this.sentSeekMap) {
                    this.extractorOutput.seekMap(buildSeekMap());
                    this.sentSeekMap = true;
                    return;
                }
                return;
            default:
                return;
        }
    }

    void integerElement(int i, long j) {
        switch (i) {
            case ID_TRACK_TYPE /* 131 */:
                this.currentTrack.type = (int) j;
                return;
            case ID_BLOCK_DURATION /* 155 */:
                this.blockDurationUs = scaleTimecodeToUs(j);
                return;
            case ID_CHANNELS /* 159 */:
                this.currentTrack.channelCount = (int) j;
                return;
            case ID_PIXEL_WIDTH /* 176 */:
                this.currentTrack.width = (int) j;
                return;
            case ID_CUE_TIME /* 179 */:
                this.cueTimesUs.add(scaleTimecodeToUs(j));
                return;
            case ID_PIXEL_HEIGHT /* 186 */:
                this.currentTrack.height = (int) j;
                return;
            case ID_TRACK_NUMBER /* 215 */:
                this.currentTrack.number = (int) j;
                return;
            case ID_TIME_CODE /* 231 */:
                this.clusterTimecodeUs = scaleTimecodeToUs(j);
                return;
            case ID_CUE_CLUSTER_POSITION /* 241 */:
                if (!this.seenClusterPositionForCurrentCuePoint) {
                    this.cueClusterPositions.add(j);
                    this.seenClusterPositionForCurrentCuePoint = true;
                    return;
                }
                return;
            case ID_REFERENCE_BLOCK /* 251 */:
                this.sampleSeenReferenceBlock = true;
                return;
            case ID_CONTENT_COMPRESSION_ALGORITHM /* 16980 */:
                if (j != 3) {
                    throw new ParserException("ContentCompAlgo " + j + " not supported");
                }
                return;
            case ID_DOC_TYPE_READ_VERSION /* 17029 */:
                if (j < 1 || j > 2) {
                    throw new ParserException("DocTypeReadVersion " + j + " not supported");
                }
                return;
            case ID_EBML_READ_VERSION /* 17143 */:
                if (j != 1) {
                    throw new ParserException("EBMLReadVersion " + j + " not supported");
                }
                return;
            case ID_CONTENT_ENCRYPTION_ALGORITHM /* 18401 */:
                if (j != 5) {
                    throw new ParserException("ContentEncAlgo " + j + " not supported");
                }
                return;
            case ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE /* 18408 */:
                if (j != 1) {
                    throw new ParserException("AESSettingsCipherMode " + j + " not supported");
                }
                return;
            case ID_CONTENT_ENCODING_ORDER /* 20529 */:
                if (j != 0) {
                    throw new ParserException("ContentEncodingOrder " + j + " not supported");
                }
                return;
            case ID_CONTENT_ENCODING_SCOPE /* 20530 */:
                if (j != 1) {
                    throw new ParserException("ContentEncodingScope " + j + " not supported");
                }
                return;
            case ID_SEEK_POSITION /* 21420 */:
                this.seekEntryPosition = this.segmentContentPosition + j;
                return;
            case ID_DISPLAY_WIDTH /* 21680 */:
                this.currentTrack.displayWidth = (int) j;
                return;
            case ID_DISPLAY_UNIT /* 21682 */:
                this.currentTrack.displayUnit = (int) j;
                return;
            case ID_DISPLAY_HEIGHT /* 21690 */:
                this.currentTrack.displayHeight = (int) j;
                return;
            case ID_CODEC_DELAY /* 22186 */:
                this.currentTrack.codecDelayNs = j;
                return;
            case ID_SEEK_PRE_ROLL /* 22203 */:
                this.currentTrack.seekPreRollNs = j;
                return;
            case ID_AUDIO_BIT_DEPTH /* 25188 */:
                this.currentTrack.audioBitDepth = (int) j;
                return;
            case ID_DEFAULT_DURATION /* 2352003 */:
                this.currentTrack.defaultSampleDurationNs = (int) j;
                return;
            case ID_TIMECODE_SCALE /* 2807729 */:
                this.timecodeScale = j;
                return;
            default:
                return;
        }
    }

    void floatElement(int i, double d) {
        switch (i) {
            case ID_SAMPLING_FREQUENCY /* 181 */:
                this.currentTrack.sampleRate = (int) d;
                break;
            case ID_DURATION /* 17545 */:
                this.durationTimecode = (long) d;
                break;
        }
    }

    void stringElement(int i, String str) {
        switch (i) {
            case ID_CODEC_ID /* 134 */:
                this.currentTrack.codecId = str;
                return;
            case ID_DOC_TYPE /* 17026 */:
                if (!DOC_TYPE_WEBM.equals(str) && !DOC_TYPE_MATROSKA.equals(str)) {
                    throw new ParserException("DocType " + str + " not supported");
                }
                return;
            case ID_LANGUAGE /* 2274716 */:
                this.currentTrack.language = str;
                return;
            default:
                return;
        }
    }

    void binaryElement(int i, int i2, ExtractorInput extractorInput) {
        int i3;
        switch (i) {
            case ID_BLOCK /* 161 */:
            case ID_SIMPLE_BLOCK /* 163 */:
                if (this.blockState == 0) {
                    this.blockTrackNumber = (int) this.varintReader.readUnsignedVarint(extractorInput, false, true, 8);
                    this.blockTrackNumberLength = this.varintReader.getLastLength();
                    this.blockDurationUs = -1L;
                    this.blockState = 1;
                    this.scratch.reset();
                }
                Track track = this.tracks.get(this.blockTrackNumber);
                if (track == null) {
                    extractorInput.skipFully(i2 - this.blockTrackNumberLength);
                    this.blockState = 0;
                    return;
                }
                if (this.blockState == 1) {
                    readScratch(extractorInput, 3);
                    int i4 = (this.scratch.data[2] & 6) >> 1;
                    if (i4 == 0) {
                        this.blockLacingSampleCount = 1;
                        this.blockLacingSampleSizes = ensureArrayCapacity(this.blockLacingSampleSizes, 1);
                        this.blockLacingSampleSizes[0] = (i2 - this.blockTrackNumberLength) - 3;
                    } else {
                        if (i != ID_SIMPLE_BLOCK) {
                            throw new ParserException("Lacing only supported in SimpleBlocks.");
                        }
                        readScratch(extractorInput, 4);
                        this.blockLacingSampleCount = (this.scratch.data[3] & 255) + 1;
                        this.blockLacingSampleSizes = ensureArrayCapacity(this.blockLacingSampleSizes, this.blockLacingSampleCount);
                        if (i4 == 2) {
                            Arrays.fill(this.blockLacingSampleSizes, 0, this.blockLacingSampleCount, ((i2 - this.blockTrackNumberLength) - 4) / this.blockLacingSampleCount);
                        } else if (i4 == 1) {
                            int i5 = 0;
                            int i6 = 4;
                            for (int i7 = 0; i7 < this.blockLacingSampleCount - 1; i7++) {
                                this.blockLacingSampleSizes[i7] = 0;
                                do {
                                    i6++;
                                    readScratch(extractorInput, i6);
                                    i3 = this.scratch.data[i6 - 1] & 255;
                                    int[] iArr = this.blockLacingSampleSizes;
                                    iArr[i7] = iArr[i7] + i3;
                                } while (i3 == 255);
                                i5 += this.blockLacingSampleSizes[i7];
                            }
                            this.blockLacingSampleSizes[this.blockLacingSampleCount - 1] = ((i2 - this.blockTrackNumberLength) - i6) - i5;
                        } else if (i4 == 3) {
                            int i8 = 0;
                            int i9 = 4;
                            for (int i10 = 0; i10 < this.blockLacingSampleCount - 1; i10++) {
                                this.blockLacingSampleSizes[i10] = 0;
                                i9++;
                                readScratch(extractorInput, i9);
                                if (this.scratch.data[i9 - 1] == 0) {
                                    throw new ParserException("No valid varint length mask found");
                                }
                                long j = 0;
                                int i11 = 0;
                                while (true) {
                                    int i12 = i11;
                                    if (i12 < 8) {
                                        int i13 = 1 << (7 - i12);
                                        if ((this.scratch.data[i9 - 1] & i13) == 0) {
                                            i11 = i12 + 1;
                                        } else {
                                            int i14 = i9 - 1;
                                            i9 += i12;
                                            readScratch(extractorInput, i9);
                                            j = this.scratch.data[i14] & 255 & (i13 ^ (-1));
                                            for (int i15 = i14 + 1; i15 < i9; i15++) {
                                                j = (j << 8) | (this.scratch.data[i15] & 255);
                                            }
                                            if (i10 > 0) {
                                                j -= (1 << ((i12 * 7) + 6)) - 1;
                                            }
                                        }
                                    }
                                }
                                if (j < -2147483648L || j > 2147483647L) {
                                    throw new ParserException("EBML lacing sample size out of range.");
                                }
                                int i16 = (int) j;
                                int[] iArr2 = this.blockLacingSampleSizes;
                                if (i10 != 0) {
                                    i16 += this.blockLacingSampleSizes[i10 - 1];
                                }
                                iArr2[i10] = i16;
                                i8 += this.blockLacingSampleSizes[i10];
                            }
                            this.blockLacingSampleSizes[this.blockLacingSampleCount - 1] = ((i2 - this.blockTrackNumberLength) - i9) - i8;
                        } else {
                            throw new ParserException("Unexpected lacing value: " + i4);
                        }
                    }
                    this.blockTimeUs = this.clusterTimecodeUs + scaleTimecodeToUs((this.scratch.data[0] << 8) | (this.scratch.data[1] & 255));
                    this.blockFlags = ((this.scratch.data[2] & 8) == 8 ? C1167C.SAMPLE_FLAG_DECODE_ONLY : 0) | (track.type == 2 || (i == ID_SIMPLE_BLOCK && (this.scratch.data[2] & 128) == 128) ? 1 : 0);
                    this.blockState = 2;
                    this.blockLacingSampleIndex = 0;
                }
                if (i == ID_SIMPLE_BLOCK) {
                    while (this.blockLacingSampleIndex < this.blockLacingSampleCount) {
                        writeSampleData(extractorInput, track, this.blockLacingSampleSizes[this.blockLacingSampleIndex]);
                        commitSampleToOutput(track, this.blockTimeUs + ((this.blockLacingSampleIndex * track.defaultSampleDurationNs) / 1000));
                        this.blockLacingSampleIndex++;
                    }
                    this.blockState = 0;
                    return;
                }
                writeSampleData(extractorInput, track, this.blockLacingSampleSizes[0]);
                return;
            case ID_CONTENT_COMPRESSION_SETTINGS /* 16981 */:
                this.currentTrack.sampleStrippedBytes = new byte[i2];
                extractorInput.readFully(this.currentTrack.sampleStrippedBytes, 0, i2);
                return;
            case ID_CONTENT_ENCRYPTION_KEY_ID /* 18402 */:
                this.currentTrack.encryptionKeyId = new byte[i2];
                extractorInput.readFully(this.currentTrack.encryptionKeyId, 0, i2);
                return;
            case ID_SEEK_ID /* 21419 */:
                Arrays.fill(this.seekEntryIdBytes.data, (byte) 0);
                extractorInput.readFully(this.seekEntryIdBytes.data, 4 - i2, i2);
                this.seekEntryIdBytes.setPosition(0);
                this.seekEntryId = (int) this.seekEntryIdBytes.readUnsignedInt();
                return;
            case ID_CODEC_PRIVATE /* 25506 */:
                this.currentTrack.codecPrivate = new byte[i2];
                extractorInput.readFully(this.currentTrack.codecPrivate, 0, i2);
                return;
            default:
                throw new ParserException("Unexpected id: " + i);
        }
    }

    private void commitSampleToOutput(Track track, long j) {
        if (CODEC_ID_SUBRIP.equals(track.codecId)) {
            writeSubripSample(track);
        }
        track.output.sampleMetadata(j, this.blockFlags, this.sampleBytesWritten, 0, track.encryptionKeyId);
        this.sampleRead = true;
        resetSample();
    }

    private void resetSample() {
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        this.sampleEncodingHandled = false;
        this.sampleSignalByteRead = false;
        this.samplePartitionCountRead = false;
        this.samplePartitionCount = 0;
        this.sampleSignalByte = (byte) 0;
        this.sampleInitializationVectorRead = false;
        this.sampleStrippedBytes.reset();
    }

    private void readScratch(ExtractorInput extractorInput, int i) {
        if (this.scratch.limit() < i) {
            if (this.scratch.capacity() < i) {
                this.scratch.reset(Arrays.copyOf(this.scratch.data, Math.max(this.scratch.data.length * 2, i)), this.scratch.limit());
            }
            extractorInput.readFully(this.scratch.data, this.scratch.limit(), i - this.scratch.limit());
            this.scratch.setLimit(i);
        }
    }

    private void writeSampleData(ExtractorInput extractorInput, Track track, int i) {
        if (CODEC_ID_SUBRIP.equals(track.codecId)) {
            int length = SUBRIP_PREFIX.length + i;
            if (this.subripSample.capacity() < length) {
                this.subripSample.data = Arrays.copyOf(SUBRIP_PREFIX, length + i);
            }
            extractorInput.readFully(this.subripSample.data, SUBRIP_PREFIX.length, i);
            this.subripSample.setPosition(0);
            this.subripSample.setLimit(length);
            return;
        }
        TrackOutput trackOutput = track.output;
        if (!this.sampleEncodingHandled) {
            if (track.hasContentEncryption) {
                this.blockFlags &= -3;
                if (!this.sampleSignalByteRead) {
                    extractorInput.readFully(this.scratch.data, 0, 1);
                    this.sampleBytesRead++;
                    if ((this.scratch.data[0] & 128) == 128) {
                        throw new ParserException("Extension bit is set in signal byte");
                    }
                    this.sampleSignalByte = this.scratch.data[0];
                    this.sampleSignalByteRead = true;
                }
                if ((this.sampleSignalByte & 1) == 1) {
                    boolean z = (this.sampleSignalByte & 2) == 2;
                    this.blockFlags |= 2;
                    if (!this.sampleInitializationVectorRead) {
                        extractorInput.readFully(this.encryptionInitializationVector.data, 0, 8);
                        this.sampleBytesRead += 8;
                        this.sampleInitializationVectorRead = true;
                        this.scratch.data[0] = (byte) ((z ? 128 : 0) | 8);
                        this.scratch.setPosition(0);
                        trackOutput.sampleData(this.scratch, 1);
                        this.sampleBytesWritten++;
                        this.encryptionInitializationVector.setPosition(0);
                        trackOutput.sampleData(this.encryptionInitializationVector, 8);
                        this.sampleBytesWritten += 8;
                    }
                    if (z) {
                        if (!this.samplePartitionCountRead) {
                            extractorInput.readFully(this.scratch.data, 0, 1);
                            this.sampleBytesRead++;
                            this.scratch.setPosition(0);
                            this.samplePartitionCount = this.scratch.readUnsignedByte();
                            this.samplePartitionCountRead = true;
                        }
                        int i2 = this.samplePartitionCount * 4;
                        if (this.scratch.limit() < i2) {
                            this.scratch.reset(new byte[i2], i2);
                        }
                        extractorInput.readFully(this.scratch.data, 0, i2);
                        this.sampleBytesRead += i2;
                        this.scratch.setPosition(0);
                        this.scratch.setLimit(i2);
                        short s = (short) ((this.samplePartitionCount / 2) + 1);
                        int i3 = (s * 6) + 2;
                        if (this.encryptionSubsampleDataBuffer == null || this.encryptionSubsampleDataBuffer.capacity() < i3) {
                            this.encryptionSubsampleDataBuffer = ByteBuffer.allocate(i3);
                        }
                        this.encryptionSubsampleDataBuffer.position(0);
                        this.encryptionSubsampleDataBuffer.putShort(s);
                        int i4 = 0;
                        int i5 = 0;
                        while (i4 < this.samplePartitionCount) {
                            int readUnsignedIntToInt = this.scratch.readUnsignedIntToInt();
                            if (i4 % 2 == 0) {
                                this.encryptionSubsampleDataBuffer.putShort((short) (readUnsignedIntToInt - i5));
                            } else {
                                this.encryptionSubsampleDataBuffer.putInt(readUnsignedIntToInt - i5);
                            }
                            i4++;
                            i5 = readUnsignedIntToInt;
                        }
                        int i6 = (i - this.sampleBytesRead) - i5;
                        if (this.samplePartitionCount % 2 == 1) {
                            this.encryptionSubsampleDataBuffer.putInt(i6);
                        } else {
                            this.encryptionSubsampleDataBuffer.putShort((short) i6);
                            this.encryptionSubsampleDataBuffer.putInt(0);
                        }
                        this.encryptionSubsampleData.reset(this.encryptionSubsampleDataBuffer.array(), i3);
                        trackOutput.sampleData(this.encryptionSubsampleData, i3);
                        this.sampleBytesWritten += i3;
                    }
                }
            } else if (track.sampleStrippedBytes != null) {
                this.sampleStrippedBytes.reset(track.sampleStrippedBytes, track.sampleStrippedBytes.length);
            }
            this.sampleEncodingHandled = true;
        }
        int limit = this.sampleStrippedBytes.limit() + i;
        if (CODEC_ID_H264.equals(track.codecId) || CODEC_ID_H265.equals(track.codecId)) {
            byte[] bArr = this.nalLength.data;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i7 = track.nalUnitLengthFieldLength;
            int i8 = 4 - track.nalUnitLengthFieldLength;
            while (this.sampleBytesRead < limit) {
                if (this.sampleCurrentNalBytesRemaining == 0) {
                    readToTarget(extractorInput, bArr, i8, i7);
                    this.nalLength.setPosition(0);
                    this.sampleCurrentNalBytesRemaining = this.nalLength.readUnsignedIntToInt();
                    this.nalStartCode.setPosition(0);
                    trackOutput.sampleData(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                } else {
                    this.sampleCurrentNalBytesRemaining -= readToOutput(extractorInput, trackOutput, this.sampleCurrentNalBytesRemaining);
                }
            }
        } else {
            while (this.sampleBytesRead < limit) {
                readToOutput(extractorInput, trackOutput, limit - this.sampleBytesRead);
            }
        }
        if (CODEC_ID_VORBIS.equals(track.codecId)) {
            this.vorbisNumPageSamples.setPosition(0);
            trackOutput.sampleData(this.vorbisNumPageSamples, 4);
            this.sampleBytesWritten += 4;
        }
    }

    private void writeSubripSample(Track track) {
        setSubripSampleEndTimecode(this.subripSample.data, this.blockDurationUs);
        track.output.sampleData(this.subripSample, this.subripSample.limit());
        this.sampleBytesWritten += this.subripSample.limit();
    }

    private static void setSubripSampleEndTimecode(byte[] bArr, long j) {
        byte[] bytes;
        if (j == -1) {
            bytes = SUBRIP_TIMECODE_EMPTY;
        } else {
            int i = (int) (j / 3600000000L);
            long j2 = j - (i * 3600000000L);
            int i2 = (int) (j2 / 60000000);
            long j3 = j2 - (60000000 * i2);
            bytes = String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf((int) (j3 / C1167C.MICROS_PER_SECOND)), Integer.valueOf((int) ((j3 - (1000000 * r4)) / 1000))).getBytes();
        }
        System.arraycopy(bytes, 0, bArr, 19, 12);
    }

    private void readToTarget(ExtractorInput extractorInput, byte[] bArr, int i, int i2) {
        int min = Math.min(i2, this.sampleStrippedBytes.bytesLeft());
        extractorInput.readFully(bArr, i + min, i2 - min);
        if (min > 0) {
            this.sampleStrippedBytes.readBytes(bArr, i, min);
        }
        this.sampleBytesRead += i2;
    }

    private int readToOutput(ExtractorInput extractorInput, TrackOutput trackOutput, int i) {
        int sampleData;
        int bytesLeft = this.sampleStrippedBytes.bytesLeft();
        if (bytesLeft > 0) {
            sampleData = Math.min(i, bytesLeft);
            trackOutput.sampleData(this.sampleStrippedBytes, sampleData);
        } else {
            sampleData = trackOutput.sampleData(extractorInput, i, false);
        }
        this.sampleBytesRead += sampleData;
        this.sampleBytesWritten += sampleData;
        return sampleData;
    }

    private SeekMap buildSeekMap() {
        if (this.segmentContentPosition == -1 || this.durationUs == -1 || this.cueTimesUs == null || this.cueTimesUs.size() == 0 || this.cueClusterPositions == null || this.cueClusterPositions.size() != this.cueTimesUs.size()) {
            this.cueTimesUs = null;
            this.cueClusterPositions = null;
            return SeekMap.UNSEEKABLE;
        }
        int size = this.cueTimesUs.size();
        int[] iArr = new int[size];
        long[] jArr = new long[size];
        long[] jArr2 = new long[size];
        long[] jArr3 = new long[size];
        for (int i = 0; i < size; i++) {
            jArr3[i] = this.cueTimesUs.get(i);
            jArr[i] = this.segmentContentPosition + this.cueClusterPositions.get(i);
        }
        for (int i2 = 0; i2 < size - 1; i2++) {
            iArr[i2] = (int) (jArr[i2 + 1] - jArr[i2]);
            jArr2[i2] = jArr3[i2 + 1] - jArr3[i2];
        }
        iArr[size - 1] = (int) ((this.segmentContentPosition + this.segmentContentSize) - jArr[size - 1]);
        jArr2[size - 1] = this.durationUs - jArr3[size - 1];
        this.cueTimesUs = null;
        this.cueClusterPositions = null;
        return new ChunkIndex(iArr, jArr, jArr2, jArr3);
    }

    private boolean maybeSeekForCues(PositionHolder positionHolder, long j) {
        if (this.seekForCues) {
            this.seekPositionAfterBuildingCues = j;
            positionHolder.position = this.cuesContentPosition;
            this.seekForCues = false;
            return true;
        }
        if (!this.sentSeekMap || this.seekPositionAfterBuildingCues == -1) {
            return false;
        }
        positionHolder.position = this.seekPositionAfterBuildingCues;
        this.seekPositionAfterBuildingCues = -1L;
        return true;
    }

    private long scaleTimecodeToUs(long j) {
        if (this.timecodeScale == -1) {
            throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
        }
        return Util.scaleLargeTimestamp(j, this.timecodeScale, 1000L);
    }

    private static boolean isCodecSupported(String str) {
        return CODEC_ID_VP8.equals(str) || CODEC_ID_VP9.equals(str) || CODEC_ID_MPEG2.equals(str) || CODEC_ID_MPEG4_SP.equals(str) || CODEC_ID_MPEG4_ASP.equals(str) || CODEC_ID_MPEG4_AP.equals(str) || CODEC_ID_H264.equals(str) || CODEC_ID_H265.equals(str) || CODEC_ID_FOURCC.equals(str) || CODEC_ID_OPUS.equals(str) || CODEC_ID_VORBIS.equals(str) || CODEC_ID_AAC.equals(str) || CODEC_ID_MP3.equals(str) || CODEC_ID_AC3.equals(str) || CODEC_ID_E_AC3.equals(str) || CODEC_ID_TRUEHD.equals(str) || CODEC_ID_DTS.equals(str) || CODEC_ID_DTS_EXPRESS.equals(str) || CODEC_ID_DTS_LOSSLESS.equals(str) || CODEC_ID_FLAC.equals(str) || CODEC_ID_ACM.equals(str) || CODEC_ID_PCM_INT_LIT.equals(str) || CODEC_ID_SUBRIP.equals(str) || CODEC_ID_VOBSUB.equals(str) || CODEC_ID_PGS.equals(str);
    }

    private static int[] ensureArrayCapacity(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        return iArr.length < i ? new int[Math.max(iArr.length * 2, i)] : iArr;
    }

    private final class InnerEbmlReaderOutput implements EbmlReaderOutput {
        private InnerEbmlReaderOutput() {
        }

        /* synthetic */ InnerEbmlReaderOutput(WebmExtractor webmExtractor, C12081 c12081) {
            this();
        }

        @Override // com.google.android.exoplayer.extractor.webm.EbmlReaderOutput
        public int getElementType(int i) {
            return WebmExtractor.this.getElementType(i);
        }

        @Override // com.google.android.exoplayer.extractor.webm.EbmlReaderOutput
        public boolean isLevel1Element(int i) {
            return WebmExtractor.this.isLevel1Element(i);
        }

        @Override // com.google.android.exoplayer.extractor.webm.EbmlReaderOutput
        public void startMasterElement(int i, long j, long j2) {
            WebmExtractor.this.startMasterElement(i, j, j2);
        }

        @Override // com.google.android.exoplayer.extractor.webm.EbmlReaderOutput
        public void endMasterElement(int i) {
            WebmExtractor.this.endMasterElement(i);
        }

        @Override // com.google.android.exoplayer.extractor.webm.EbmlReaderOutput
        public void integerElement(int i, long j) {
            WebmExtractor.this.integerElement(i, j);
        }

        @Override // com.google.android.exoplayer.extractor.webm.EbmlReaderOutput
        public void floatElement(int i, double d) {
            WebmExtractor.this.floatElement(i, d);
        }

        @Override // com.google.android.exoplayer.extractor.webm.EbmlReaderOutput
        public void stringElement(int i, String str) {
            WebmExtractor.this.stringElement(i, str);
        }

        @Override // com.google.android.exoplayer.extractor.webm.EbmlReaderOutput
        public void binaryElement(int i, int i2, ExtractorInput extractorInput) {
            WebmExtractor.this.binaryElement(i, i2, extractorInput);
        }
    }

    private static final class Track {
        private static final int DISPLAY_UNIT_PIXELS = 0;
        public int audioBitDepth;
        public int channelCount;
        public long codecDelayNs;
        public String codecId;
        public byte[] codecPrivate;
        public int defaultSampleDurationNs;
        public int displayHeight;
        public int displayUnit;
        public int displayWidth;
        public byte[] encryptionKeyId;
        public boolean hasContentEncryption;
        public int height;
        private String language;
        public int nalUnitLengthFieldLength;
        public int number;
        public TrackOutput output;
        public int sampleRate;
        public byte[] sampleStrippedBytes;
        public long seekPreRollNs;
        public int type;
        public int width;

        private Track() {
            this.width = -1;
            this.height = -1;
            this.displayWidth = -1;
            this.displayHeight = -1;
            this.displayUnit = 0;
            this.channelCount = 1;
            this.audioBitDepth = -1;
            this.sampleRate = 8000;
            this.codecDelayNs = 0L;
            this.seekPreRollNs = 0L;
            this.language = "eng";
        }

        /* synthetic */ Track(C12081 c12081) {
            this();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:11:0x013d  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x02da  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void initializeOutput(com.google.android.exoplayer.extractor.ExtractorOutput r12, int r13, long r14) {
            /*
                Method dump skipped, instructions count: 1022
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.extractor.webm.WebmExtractor.Track.initializeOutput(com.google.android.exoplayer.extractor.ExtractorOutput, int, long):void");
        }

        private static List<byte[]> parseFourCcVc1Private(ParsableByteArray parsableByteArray) {
            try {
                parsableByteArray.skipBytes(16);
                long readLittleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
                if (readLittleEndianUnsignedInt != 826496599) {
                    throw new ParserException("Unsupported FourCC compression type: " + readLittleEndianUnsignedInt);
                }
                byte[] bArr = parsableByteArray.data;
                for (int position = parsableByteArray.getPosition() + 20; position < bArr.length - 4; position++) {
                    if (bArr[position] == 0 && bArr[position + 1] == 0 && bArr[position + 2] == 1 && bArr[position + 3] == 15) {
                        return Collections.singletonList(Arrays.copyOfRange(bArr, position, bArr.length));
                    }
                }
                throw new ParserException("Failed to find FourCC VC1 initialization data");
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing FourCC VC1 codec private");
            }
        }

        private static Pair<List<byte[]>, Integer> parseAvcCodecPrivate(ParsableByteArray parsableByteArray) {
            try {
                parsableByteArray.setPosition(4);
                int readUnsignedByte = (parsableByteArray.readUnsignedByte() & 3) + 1;
                if (readUnsignedByte == 3) {
                    throw new ParserException();
                }
                ArrayList arrayList = new ArrayList();
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
                for (int i = 0; i < readUnsignedByte2; i++) {
                    arrayList.add(NalUnitUtil.parseChildNalUnit(parsableByteArray));
                }
                int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                for (int i2 = 0; i2 < readUnsignedByte3; i2++) {
                    arrayList.add(NalUnitUtil.parseChildNalUnit(parsableByteArray));
                }
                return Pair.create(arrayList, Integer.valueOf(readUnsignedByte));
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing AVC codec private");
            }
        }

        private static Pair<List<byte[]>, Integer> parseHevcCodecPrivate(ParsableByteArray parsableByteArray) {
            try {
                parsableByteArray.setPosition(21);
                int readUnsignedByte = parsableByteArray.readUnsignedByte() & 3;
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                int position = parsableByteArray.getPosition();
                int i = 0;
                int i2 = 0;
                while (i < readUnsignedByte2) {
                    parsableByteArray.skipBytes(1);
                    int readUnsignedShort = parsableByteArray.readUnsignedShort();
                    int i3 = i2;
                    for (int i4 = 0; i4 < readUnsignedShort; i4++) {
                        int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
                        i3 += readUnsignedShort2 + 4;
                        parsableByteArray.skipBytes(readUnsignedShort2);
                    }
                    i++;
                    i2 = i3;
                }
                parsableByteArray.setPosition(position);
                byte[] bArr = new byte[i2];
                int i5 = 0;
                for (int i6 = 0; i6 < readUnsignedByte2; i6++) {
                    parsableByteArray.skipBytes(1);
                    int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
                    for (int i7 = 0; i7 < readUnsignedShort3; i7++) {
                        int readUnsignedShort4 = parsableByteArray.readUnsignedShort();
                        System.arraycopy(NalUnitUtil.NAL_START_CODE, 0, bArr, i5, NalUnitUtil.NAL_START_CODE.length);
                        int length = i5 + NalUnitUtil.NAL_START_CODE.length;
                        System.arraycopy(parsableByteArray.data, parsableByteArray.getPosition(), bArr, length, readUnsignedShort4);
                        i5 = length + readUnsignedShort4;
                        parsableByteArray.skipBytes(readUnsignedShort4);
                    }
                }
                return Pair.create(i2 == 0 ? null : Collections.singletonList(bArr), Integer.valueOf(readUnsignedByte + 1));
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing HEVC codec private");
            }
        }

        private static List<byte[]> parseVorbisCodecPrivate(byte[] bArr) {
            int i = 0;
            try {
                if (bArr[0] != 2) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i2 = 0;
                int i3 = 1;
                while (bArr[i3] == -1) {
                    i3++;
                    i2 += 255;
                }
                int i4 = i3 + 1;
                int i5 = i2 + bArr[i3];
                while (bArr[i4] == -1) {
                    i += 255;
                    i4++;
                }
                int i6 = i4 + 1;
                int i7 = i + bArr[i4];
                if (bArr[i6] != 1) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr2 = new byte[i5];
                System.arraycopy(bArr, i6, bArr2, 0, i5);
                int i8 = i5 + i6;
                if (bArr[i8] != 3) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i9 = i7 + i8;
                if (bArr[i9] != 5) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr3 = new byte[bArr.length - i9];
                System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing vorbis codec private");
            }
        }

        private static boolean parseMsAcmCodecPrivate(ParsableByteArray parsableByteArray) {
            try {
                int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
                if (readLittleEndianUnsignedShort == 1) {
                    return true;
                }
                if (readLittleEndianUnsignedShort != WebmExtractor.WAVE_FORMAT_EXTENSIBLE) {
                    return false;
                }
                parsableByteArray.setPosition(24);
                if (parsableByteArray.readLong() == WebmExtractor.WAVE_SUBFORMAT_PCM.getMostSignificantBits()) {
                    if (parsableByteArray.readLong() == WebmExtractor.WAVE_SUBFORMAT_PCM.getLeastSignificantBits()) {
                        return true;
                    }
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing MS/ACM codec private");
            }
        }
    }
}
