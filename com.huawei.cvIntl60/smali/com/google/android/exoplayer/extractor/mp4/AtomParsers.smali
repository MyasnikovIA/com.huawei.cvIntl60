.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    return-void
.end method

.method private static findEsdsPosition(Lcom/google/android/exoplayer/util/ParsableByteArray;II)I
    .locals 4

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 926
    :goto_0
    sub-int v0, v1, p1

    if-ge v0, p2, :cond_2

    .line 927
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 928
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 929
    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 930
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 931
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 936
    :goto_2
    return v0

    .line 929
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 934
    :cond_1
    add-int/2addr v1, v2

    .line 935
    goto :goto_0

    .line 936
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 19

    .prologue
    .line 809
    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 811
    const/4 v6, 0x0

    .line 812
    if-eqz p8, :cond_6

    .line 813
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 815
    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move v8, v6

    .line 823
    :goto_0
    if-eqz v8, :cond_0

    const/4 v6, 0x1

    if-ne v8, v6, :cond_7

    .line 824
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    .line 825
    const/4 v6, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v6

    .line 828
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1b

    .line 829
    const/16 v8, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move v8, v7

    .line 845
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v16

    .line 846
    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_1

    .line 847
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;IILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I

    move-result p1

    .line 848
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 852
    :cond_1
    const/4 v7, 0x0

    .line 853
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_8

    .line 854
    const-string v7, "audio/ac3"

    .line 871
    :cond_2
    :goto_2
    const/16 v17, 0x0

    move v13, v6

    move v12, v8

    .line 872
    :goto_3
    sub-int v6, v16, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_16

    .line 873
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v18

    .line 875
    if-lez v18, :cond_11

    const/4 v6, 0x1

    :goto_4
    const-string v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 877
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v6, v8, :cond_3

    if-eqz p8, :cond_13

    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_wave:I

    if-ne v6, v8, :cond_13

    .line 878
    :cond_3
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v6, v8, :cond_12

    move/from16 v6, v16

    .line 880
    :goto_5
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1a

    .line 882
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v8

    .line 883
    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 884
    iget-object v6, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, [B

    .line 885
    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 889
    invoke-static {v8}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v9

    .line 890
    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 891
    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_4
    :goto_6
    move-object/from16 v17, v8

    .line 907
    :cond_5
    :goto_7
    add-int v16, v16, v18

    .line 908
    goto :goto_3

    .line 817
    :cond_6
    const/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move v8, v6

    goto/16 :goto_0

    .line 831
    :cond_7
    const/4 v6, 0x2

    if-ne v8, v6, :cond_17

    .line 832
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 839
    const/16 v8, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move v8, v7

    goto/16 :goto_1

    .line 855
    :cond_8
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_9

    .line 856
    const-string v7, "audio/eac3"

    goto/16 :goto_2

    .line 857
    :cond_9
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_a

    .line 858
    const-string v7, "audio/vnd.dts"

    goto/16 :goto_2

    .line 859
    :cond_a
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_b

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_c

    .line 860
    :cond_b
    const-string v7, "audio/vnd.dts.hd"

    goto/16 :goto_2

    .line 861
    :cond_c
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_d

    .line 862
    const-string v7, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_2

    .line 863
    :cond_d
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_e

    .line 864
    const-string v7, "audio/3gpp"

    goto/16 :goto_2

    .line 865
    :cond_e
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_f

    .line 866
    const-string v7, "audio/amr-wb"

    goto/16 :goto_2

    .line 867
    :cond_f
    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    move/from16 v0, p1

    if-eq v0, v9, :cond_10

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_2

    .line 868
    :cond_10
    const-string v7, "audio/raw"

    goto/16 :goto_2

    .line 875
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 879
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/google/android/exoplayer/util/ParsableByteArray;II)I

    move-result v6

    goto/16 :goto_5

    .line 894
    :cond_13
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dac3:I

    if-ne v6, v8, :cond_14

    .line 895
    add-int/lit8 v6, v16, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 896
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lcom/google/android/exoplayer/util/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_7

    .line 898
    :cond_14
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dec3:I

    if-ne v6, v8, :cond_15

    .line 899
    add-int/lit8 v6, v16, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 900
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-object/from16 v3, p7

    invoke-static {v0, v6, v1, v2, v3}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer/util/ParsableByteArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_7

    .line 902
    :cond_15
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ddts:I

    if-ne v6, v8, :cond_5

    .line 903
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v15}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_7

    .line 910
    :cond_16
    move-object/from16 v0, p9

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v6, :cond_17

    if-eqz v7, :cond_17

    .line 912
    const-string v6, "audio/raw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const/16 v16, 0x2

    .line 914
    :goto_8
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    if-nez v17, :cond_19

    const/4 v14, 0x0

    :goto_9
    move-wide/from16 v10, p5

    move-object/from16 v15, p7

    invoke-static/range {v6 .. v16}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p9

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 919
    :cond_17
    return-void

    .line 912
    :cond_18
    const/16 v16, -0x1

    goto :goto_8

    .line 916
    :cond_19
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_9

    :cond_1a
    move-object/from16 v8, v17

    goto/16 :goto_6

    :cond_1b
    move v8, v7

    goto/16 :goto_1
.end method

.method private static parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 696
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 698
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v0, 0x1

    .line 699
    const/4 v0, 0x3

    if-ne v3, v0, :cond_0

    .line 700
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 702
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 703
    const/high16 v0, 0x3f800000    # 1.0f

    .line 704
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v5, v1, 0x1f

    move v1, v2

    .line 705
    :goto_0
    if-ge v1, v5, :cond_1

    .line 706
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    move v1, v2

    .line 709
    :goto_1
    if-ge v1, v6, :cond_2

    .line 710
    invoke-static {p0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseChildNalUnit(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 713
    :cond_2
    if-lez v5, :cond_3

    .line 715
    new-instance v1, Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 717
    add-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->setPosition(I)V

    .line 718
    invoke-static {v1}, Lcom/google/android/exoplayer/util/NalUnitUtil;->parseSpsNalUnit(Lcom/google/android/exoplayer/util/ParsableBitArray;)Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->pixelWidthAspectRatio:F

    .line 721
    :cond_3
    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    invoke-direct {v1, v4, v3, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;-><init>(Ljava/util/List;IF)V

    return-object v1
.end method

.method private static parseEdts(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair",
            "<[J[J>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 775
    if-eqz p0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-nez v0, :cond_1

    .line 776
    :cond_0
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 796
    :goto_0
    return-object v0

    .line 778
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 779
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 780
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 781
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    .line 782
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 783
    new-array v6, v5, [J

    .line 784
    new-array v7, v5, [J

    .line 785
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_5

    .line 786
    if-ne v4, v8, :cond_2

    .line 787
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v6, v2

    .line 788
    if-ne v4, v8, :cond_3

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    :goto_3
    aput-wide v0, v7, v2

    .line 789
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readShort()S

    move-result v0

    .line 790
    if-eq v0, v8, :cond_4

    .line 792
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_2

    .line 788
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    .line 794
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 785
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 796
    :cond_5
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 943
    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 945
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 946
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    .line 947
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 949
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 950
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 951
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 953
    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 954
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 956
    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 957
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 961
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 962
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    .line 965
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 967
    sparse-switch v1, :sswitch_data_0

    .line 1005
    :goto_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1008
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1009
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v1

    .line 1010
    new-array v2, v1, [B

    .line 1011
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 1012
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_1
    return-object v0

    .line 969
    :sswitch_0
    const-string v1, "audio/mpeg"

    .line 970
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 972
    :sswitch_1
    const-string v0, "video/mp4v-es"

    goto :goto_0

    .line 975
    :sswitch_2
    const-string v0, "video/avc"

    goto :goto_0

    .line 978
    :sswitch_3
    const-string v0, "video/hevc"

    goto :goto_0

    .line 984
    :sswitch_4
    const-string v0, "audio/mp4a-latm"

    goto :goto_0

    .line 987
    :sswitch_5
    const-string v0, "audio/ac3"

    goto :goto_0

    .line 990
    :sswitch_6
    const-string v0, "audio/eac3"

    goto :goto_0

    .line 994
    :sswitch_7
    const-string v1, "audio/vnd.dts"

    .line 995
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 998
    :sswitch_8
    const-string v1, "audio/vnd.dts.hd"

    .line 999
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 967
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x21 -> :sswitch_2
        0x23 -> :sswitch_3
        0x40 -> :sswitch_4
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
        0x68 -> :sswitch_4
        0x6b -> :sswitch_0
        0xa5 -> :sswitch_5
        0xa6 -> :sswitch_6
        0xa9 -> :sswitch_7
        0xaa -> :sswitch_8
        0xab -> :sswitch_8
        0xac -> :sswitch_7
    .end sparse-switch
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 3

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1108
    and-int/lit8 v0, v1, 0x7f

    .line 1109
    :goto_0
    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1111
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_0

    .line 1113
    :cond_0
    return v0
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 1

    .prologue
    .line 519
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseHvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 727
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x15

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 728
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v5, v0, 0x3

    .line 731
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 733
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v7

    move v3, v1

    move v4, v1

    .line 734
    :goto_0
    if-ge v3, v6, :cond_1

    .line 735
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 736
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v0, v1

    move v2, v4

    .line 737
    :goto_1
    if-ge v0, v8, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 739
    add-int/lit8 v9, v4, 0x4

    add-int/2addr v2, v9

    .line 740
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 734
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_0

    .line 745
    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 746
    new-array v7, v4, [B

    move v3, v1

    move v2, v1

    .line 748
    :goto_2
    if-ge v3, v6, :cond_3

    .line 749
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 750
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    move v0, v1

    .line 751
    :goto_3
    if-ge v0, v8, :cond_2

    .line 752
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 753
    sget-object v10, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    sget-object v11, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v11, v11

    invoke-static {v10, v1, v7, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    sget-object v10, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v10, v10

    add-int/2addr v2, v10

    .line 756
    iget-object v10, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v11

    invoke-static {v10, v11, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 757
    add-int/2addr v2, v9

    .line 758
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 748
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 762
    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x0

    .line 763
    :goto_4
    add-int/lit8 v1, v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 762
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4
.end method

.method private static parseIlst(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x0

    .line 402
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_5

    .line 403
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 404
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int v4, v0, v1

    .line 405
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 406
    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_DASHES:I

    if-ne v0, v1, :cond_6

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    .line 410
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-ge v5, v4, :cond_4

    .line 411
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    add-int/lit8 v5, v5, -0xc

    .line 412
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 413
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 414
    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mean:I

    if-ne v6, v7, :cond_1

    .line 415
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 416
    :cond_1
    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_name:I

    if-ne v6, v7, :cond_2

    .line 417
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 418
    :cond_2
    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_data:I

    if-ne v6, v7, :cond_3

    .line 419
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 420
    add-int/lit8 v0, v5, -0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 422
    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 425
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v4, "com.apple.iTunes"

    .line 426
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-static {v1, v0}, Lcom/google/android/exoplayer/extractor/GaplessInfo;->createFromComment(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v3

    .line 433
    :cond_5
    return-object v3

    .line 430
    :cond_6
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 531
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 532
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 533
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 534
    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 535
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    .line 536
    if-nez v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 537
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 534
    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parseMetaAtom(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .locals 4

    .prologue
    .line 383
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 384
    new-instance v1, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    .line 385
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    add-int/lit8 v2, v0, -0x8

    .line 387
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 388
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ilst:I

    if-ne v0, v3, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->reset([BI)V

    .line 390
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 391
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 398
    :goto_1
    return-object v0

    .line 396
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 443
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 445
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 446
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 448
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 450
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0

    .line 448
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F
    .locals 2

    .prologue
    .line 800
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 801
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 802
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 803
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)[B
    .locals 4

    .prologue
    .line 1089
    add-int/lit8 v0, p1, 0x8

    .line 1090
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1091
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1092
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1093
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1094
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_proj:I

    if-ne v2, v3, :cond_0

    .line 1095
    iget-object v2, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/2addr v1, v0

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1099
    :goto_1
    return-object v0

    .line 1097
    :cond_0
    add-int/2addr v0, v1

    .line 1098
    goto :goto_0

    .line 1099
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;IILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1021
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v3, v0

    .line 1022
    :goto_0
    sub-int v0, v3, p1

    if-ge v0, p2, :cond_0

    .line 1023
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1024
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1025
    if-lez v4, :cond_1

    move v0, v1

    :goto_1
    const-string v5, "childAtomSize should be positive"

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1026
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1027
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sinf:I

    if-ne v0, v5, :cond_3

    .line 1028
    invoke-static {p0, v3, v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    .line 1030
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 1031
    if-eqz v0, :cond_2

    :goto_2
    const-string v2, "frma atom is mandatory"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1032
    iget-object v2, p3, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    aput-object v1, v2, p4

    .line 1033
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1038
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 1025
    goto :goto_1

    :cond_2
    move v1, v2

    .line 1031
    goto :goto_2

    .line 1035
    :cond_3
    add-int v0, v3, v4

    move v3, v0

    .line 1036
    goto :goto_0
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1068
    add-int/lit8 v2, p1, 0x8

    .line 1069
    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_2

    .line 1070
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 1072
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1073
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tenc:I

    if-ne v4, v5, :cond_1

    .line 1074
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1075
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1076
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 1077
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 1078
    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 1079
    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    move-object v0, v1

    .line 1083
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1075
    goto :goto_1

    .line 1081
    :cond_1
    add-int/2addr v2, v3

    .line 1082
    goto :goto_0

    .line 1083
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static parseSinfFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1043
    add-int/lit8 v3, p1, 0x8

    move-object v0, v2

    move-object v1, v2

    .line 1047
    :goto_0
    sub-int v2, v3, p1

    if-ge v2, p2, :cond_3

    .line 1048
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1049
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1050
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1051
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_frma:I

    if-ne v4, v5, :cond_1

    .line 1052
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1060
    :cond_0
    :goto_1
    add-int/2addr v2, v3

    move v3, v2

    .line 1061
    goto :goto_0

    .line 1053
    :cond_1
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_schm:I

    if-ne v4, v5, :cond_2

    .line 1054
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1055
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    .line 1056
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    goto :goto_1

    .line 1057
    :cond_2
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_schi:I

    if-ne v4, v5, :cond_0

    .line 1058
    invoke-static {p0, v3, v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    goto :goto_1

    .line 1063
    :cond_3
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static parseStbl(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
    .locals 32

    .prologue
    .line 95
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_0

    .line 97
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    .line 106
    :goto_0
    invoke-interface {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v27

    .line 107
    if-nez v27, :cond_2

    .line 108
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    const/4 v3, 0x0

    new-array v3, v3, [J

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [J

    const/4 v7, 0x0

    new-array v7, v7, [I

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    .line 349
    :goto_1
    return-object v2

    .line 99
    :cond_0
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stz2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 100
    if-nez v3, :cond_1

    .line 101
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "Track has no sample table size information"

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_1
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    .line 112
    :cond_2
    const/4 v4, 0x0

    .line 113
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 114
    if-nez v3, :cond_3

    .line 115
    const/4 v4, 0x1

    .line 116
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 118
    :cond_3
    iget-object v6, v3, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 120
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v7, v3, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 122
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v0, v3, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v28, v0

    .line 124
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 125
    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 127
    :goto_2
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    .line 128
    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 131
    :goto_3
    new-instance v29, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;

    move-object/from16 v0, v29

    invoke-direct {v0, v7, v6, v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/util/ParsableByteArray;Z)V

    .line 134
    const/16 v4, 0xc

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 135
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    add-int/lit8 v13, v4, -0x1

    .line 136
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v26

    .line 137
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    .line 140
    const/4 v9, 0x0

    .line 141
    const/4 v8, 0x0

    .line 142
    const/4 v7, 0x0

    .line 143
    if-eqz v5, :cond_4

    .line 144
    const/16 v4, 0xc

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 145
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 148
    :cond_4
    const/4 v6, -0x1

    .line 149
    const/4 v4, 0x0

    .line 150
    if-eqz v3, :cond_5

    .line 151
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 152
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 153
    if-lez v4, :cond_8

    .line 154
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 162
    :cond_5
    :goto_4
    invoke-interface {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "audio/raw"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v12, v12, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 163
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-nez v13, :cond_9

    if-nez v8, :cond_9

    if-nez v4, :cond_9

    const/4 v10, 0x1

    move v12, v10

    .line 170
    :goto_5
    const/4 v10, 0x0

    .line 174
    if-nez v12, :cond_17

    .line 175
    move/from16 v0, v27

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 176
    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 177
    move/from16 v0, v27

    new-array v15, v0, [J

    .line 178
    move/from16 v0, v27

    new-array v14, v0, [I

    .line 179
    const-wide/16 v24, 0x0

    .line 180
    const-wide/16 v22, 0x0

    .line 181
    const/16 v20, 0x0

    .line 183
    const/4 v12, 0x0

    move/from16 v21, v12

    move/from16 v18, v4

    move/from16 v19, v6

    :goto_6
    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    .line 185
    :goto_7
    if-nez v20, :cond_a

    .line 186
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 187
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v22, v0

    .line 188
    move-object/from16 v0, v29

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v20, v4

    goto :goto_7

    .line 125
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 128
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 157
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 163
    :cond_9
    const/4 v10, 0x0

    move v12, v10

    goto :goto_5

    .line 192
    :cond_a
    if-eqz v5, :cond_2e

    move v4, v7

    move v6, v8

    .line 193
    :goto_8
    if-nez v9, :cond_b

    if-lez v6, :cond_b

    .line 194
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    .line 200
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 201
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 203
    :cond_b
    add-int/lit8 v7, v9, -0x1

    move v9, v7

    .line 206
    :goto_9
    aput-wide v22, v17, v21

    .line 207
    invoke-interface {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v7

    aput v7, v16, v21

    .line 208
    aget v7, v16, v21

    if-le v7, v10, :cond_c

    .line 209
    aget v7, v16, v21

    move v10, v7

    .line 211
    :cond_c
    int-to-long v0, v4

    move-wide/from16 v30, v0

    add-long v30, v30, v24

    aput-wide v30, v15, v21

    .line 214
    if-nez v3, :cond_e

    const/4 v7, 0x1

    :goto_a
    aput v7, v14, v21

    .line 215
    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 216
    const/4 v7, 0x1

    aput v7, v14, v21

    .line 217
    add-int/lit8 v7, v18, -0x1

    .line 218
    if-lez v7, :cond_2d

    .line 219
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move/from16 v18, v7

    move/from16 v19, v8

    .line 224
    :cond_d
    :goto_b
    int-to-long v0, v11

    move-wide/from16 v30, v0

    add-long v24, v24, v30

    .line 225
    add-int/lit8 v7, v26, -0x1

    .line 226
    if-nez v7, :cond_2c

    if-lez v13, :cond_2c

    .line 227
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 228
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    .line 229
    add-int/lit8 v13, v13, -0x1

    move v11, v7

    move v12, v8

    .line 232
    :goto_c
    aget v7, v16, v21

    int-to-long v0, v7

    move-wide/from16 v30, v0

    add-long v22, v22, v30

    .line 233
    add-int/lit8 v20, v20, -0x1

    .line 183
    add-int/lit8 v21, v21, 0x1

    move v7, v4

    move v8, v6

    move/from16 v26, v12

    goto/16 :goto_6

    .line 214
    :cond_e
    const/4 v7, 0x0

    goto :goto_a

    .line 236
    :cond_f
    if-nez v9, :cond_10

    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 238
    :goto_e
    if-lez v8, :cond_12

    .line 239
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 240
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    .line 241
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 236
    :cond_10
    const/4 v2, 0x0

    goto :goto_d

    .line 239
    :cond_11
    const/4 v2, 0x0

    goto :goto_f

    .line 245
    :cond_12
    if-nez v18, :cond_13

    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 246
    if-nez v26, :cond_14

    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 247
    if-nez v20, :cond_15

    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 248
    if-nez v13, :cond_16

    const/4 v2, 0x1

    :goto_13
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    move-object v7, v14

    move-object v6, v15

    move v5, v10

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    .line 266
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    if-nez v2, :cond_19

    .line 267
    const-wide/32 v8, 0xf4240

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static {v6, v8, v9, v10, v11}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 268
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 245
    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 246
    :cond_14
    const/4 v2, 0x0

    goto :goto_11

    .line 247
    :cond_15
    const/4 v2, 0x0

    goto :goto_12

    .line 248
    :cond_16
    const/4 v2, 0x0

    goto :goto_13

    .line 250
    :cond_17
    move-object/from16 v0, v29

    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v3, v3, [J

    .line 251
    move-object/from16 v0, v29

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [I

    .line 252
    :goto_15
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 253
    move-object/from16 v0, v29

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v29

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v6, v3, v5

    .line 254
    move-object/from16 v0, v29

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v29

    iget v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v6, v4, v5

    goto :goto_15

    .line 256
    :cond_18
    invoke-interface {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v2

    .line 257
    int-to-long v6, v11

    invoke-static {v2, v3, v4, v6, v7}, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v2

    .line 259
    iget-object v3, v2, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 260
    iget-object v4, v2, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 261
    iget v5, v2, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 262
    iget-object v6, v2, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 263
    iget-object v7, v2, Lcom/google/android/exoplayer/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    goto :goto_14

    .line 276
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v2, v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    const/4 v8, 0x0

    aget-wide v8, v2, v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_1b

    .line 280
    const/4 v2, 0x0

    :goto_16
    array-length v8, v6

    if-ge v2, v8, :cond_1a

    .line 281
    aget-wide v8, v6, v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xf4240

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    aput-wide v8, v6, v2

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 284
    :cond_1a
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    .line 288
    :cond_1b
    const/4 v10, 0x0

    .line 289
    const/4 v9, 0x0

    .line 290
    const/4 v8, 0x0

    .line 291
    const/4 v2, 0x0

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    :goto_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    if-ge v2, v8, :cond_1d

    .line 292
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v18, v8, v2

    .line 293
    const-wide/16 v8, -0x1

    cmp-long v8, v18, v8

    if-eqz v8, :cond_2b

    .line 294
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v8, v8, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 296
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v18

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v11

    .line 297
    add-long v8, v8, v18

    const/4 v10, 0x1

    const/4 v12, 0x0

    invoke-static {v6, v8, v9, v10, v12}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v9

    .line 298
    sub-int v8, v9, v11

    add-int v10, v16, v8

    .line 299
    if-eq v15, v11, :cond_1c

    const/4 v8, 0x1

    :goto_18
    or-int/2addr v8, v14

    .line 291
    :goto_19
    add-int/lit8 v2, v2, 0x1

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    goto :goto_17

    .line 299
    :cond_1c
    const/4 v8, 0x0

    goto :goto_18

    .line 303
    :cond_1d
    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_21

    const/4 v2, 0x1

    :goto_1a
    or-int v23, v14, v2

    .line 306
    if-eqz v23, :cond_22

    move/from16 v0, v16

    new-array v2, v0, [J

    move-object/from16 v22, v2

    .line 307
    :goto_1b
    if-eqz v23, :cond_23

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v21, v2

    .line 308
    :goto_1c
    if-eqz v23, :cond_1e

    const/4 v5, 0x0

    .line 309
    :cond_1e
    if-eqz v23, :cond_24

    move/from16 v0, v16

    new-array v2, v0, [I

    move-object/from16 v17, v2

    .line 310
    :goto_1d
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v24, v0

    .line 311
    const-wide/16 v10, 0x0

    .line 312
    const/4 v8, 0x0

    .line 313
    const/4 v2, 0x0

    move v14, v8

    move-wide/from16 v18, v10

    :goto_1e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v8, v8

    if-ge v2, v8, :cond_26

    .line 314
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v26, v8, v2

    .line 315
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    aget-wide v8, v8, v2

    .line 316
    const-wide/16 v10, -0x1

    cmp-long v10, v26, v10

    if-eqz v10, :cond_2a

    .line 317
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    add-long v12, v26, v10

    .line 319
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-wide/from16 v0, v26

    invoke-static {v6, v0, v1, v10, v11}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v10

    .line 320
    const/4 v11, 0x1

    const/4 v15, 0x0

    invoke-static {v6, v12, v13, v11, v15}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v25

    .line 321
    if-eqz v23, :cond_1f

    .line 322
    sub-int v11, v25, v10

    .line 323
    move-object/from16 v0, v22

    invoke-static {v3, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    move-object/from16 v0, v21

    invoke-static {v4, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    move-object/from16 v0, v17

    invoke-static {v7, v10, v0, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    move/from16 v20, v10

    move/from16 v16, v14

    .line 327
    :goto_1f
    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_25

    .line 328
    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v10, v18

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v28

    .line 329
    aget-wide v10, v6, v20

    sub-long v10, v10, v26

    const-wide/32 v12, 0xf4240

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 331
    add-long v10, v10, v28

    aput-wide v10, v24, v16

    .line 332
    if-eqz v23, :cond_20

    aget v10, v21, v16

    if-le v10, v5, :cond_20

    .line 333
    aget v5, v4, v20

    .line 335
    :cond_20
    add-int/lit8 v16, v16, 0x1

    .line 327
    add-int/lit8 v10, v20, 0x1

    move/from16 v20, v10

    goto :goto_1f

    .line 303
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_22
    move-object/from16 v22, v3

    .line 306
    goto/16 :goto_1b

    :cond_23
    move-object/from16 v21, v4

    .line 307
    goto/16 :goto_1c

    :cond_24
    move-object/from16 v17, v7

    .line 309
    goto/16 :goto_1d

    :cond_25
    move/from16 v10, v16

    .line 338
    :goto_20
    add-long v8, v8, v18

    .line 313
    add-int/lit8 v2, v2, 0x1

    move v14, v10

    move-wide/from16 v18, v8

    goto/16 :goto_1e

    .line 341
    :cond_26
    const/4 v3, 0x0

    .line 342
    const/4 v2, 0x0

    :goto_21
    move-object/from16 v0, v17

    array-length v4, v0

    if-ge v2, v4, :cond_28

    if-nez v3, :cond_28

    .line 343
    aget v4, v17, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    :goto_22
    or-int/2addr v3, v4

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 343
    :cond_27
    const/4 v4, 0x0

    goto :goto_22

    .line 345
    :cond_28
    if-nez v3, :cond_29

    .line 346
    new-instance v2, Lcom/google/android/exoplayer/ParserException;

    const-string v3, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 349
    :cond_29
    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    move-object/from16 v3, v22

    move-object/from16 v4, v21

    move-object/from16 v6, v24

    move-object/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[II[J[I)V

    goto/16 :goto_1

    :cond_2a
    move v10, v14

    goto :goto_20

    :cond_2b
    move v8, v14

    move v9, v15

    move/from16 v10, v16

    goto/16 :goto_19

    :cond_2c
    move v12, v7

    goto/16 :goto_c

    :cond_2d
    move/from16 v18, v7

    goto/16 :goto_b

    :cond_2e
    move v4, v7

    move v6, v8

    goto/16 :goto_9
.end method

.method private static parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;
    .locals 26

    .prologue
    .line 557
    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v24

    .line 559
    new-instance v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    .line 560
    const/4 v12, 0x0

    :goto_0
    move/from16 v0, v24

    if-ge v12, v0, :cond_9

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 563
    if-lez v6, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 565
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v4, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vp09:I

    if-ne v4, v2, :cond_3

    :cond_0
    move-object/from16 v3, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    .line 570
    invoke-static/range {v3 .. v12}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    .line 594
    :cond_1
    :goto_2
    add-int v2, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 560
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 563
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 572
    :cond_3
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v4, v2, :cond_4

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sowt:I

    if-ne v4, v2, :cond_5

    :cond_4
    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, p1

    move-wide/from16 v18, p2

    move-object/from16 v20, p5

    move/from16 v21, p6

    move-object/from16 v22, v11

    move/from16 v23, v12

    .line 578
    invoke-static/range {v13 .. v23}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJLjava/lang/String;ZLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_2

    .line 580
    :cond_5
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v4, v2, :cond_6

    .line 581
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/ttml+xml"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_2

    .line 583
    :cond_6
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tx3g:I

    if-ne v4, v2, :cond_7

    .line 584
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/x-quicktime-tx3g"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_2

    .line 586
    :cond_7
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_wvtt:I

    if-ne v4, v2, :cond_8

    .line 587
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/x-mp4vtt"

    const/4 v15, -0x1

    move-wide/from16 v16, p2

    move-object/from16 v18, p5

    invoke-static/range {v13 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_2

    .line 589
    :cond_8
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stpp:I

    if-ne v4, v2, :cond_1

    .line 590
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "application/ttml+xml"

    const/16 v16, -0x1

    const-wide/16 v20, 0x0

    move-wide/from16 v17, p2

    move-object/from16 v19, p5

    invoke-static/range {v14 .. v21}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    iput-object v2, v11, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_2

    .line 596
    :cond_9
    return-object v11
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;
    .locals 13

    .prologue
    const-wide/16 v4, -0x1

    const/16 v2, 0x10

    const/16 v1, 0x8

    const/4 v3, 0x4

    const/4 v6, 0x0

    .line 459
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 460
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 461
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    .line 463
    if-nez v8, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 464
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 466
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 467
    const/4 v0, 0x1

    .line 468
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v10

    .line 469
    if-nez v8, :cond_0

    move v1, v3

    :cond_0
    move v7, v6

    .line 470
    :goto_1
    if-ge v7, v1, :cond_1

    .line 471
    iget-object v11, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int v12, v10, v7

    aget-byte v11, v11, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    move v0, v6

    .line 477
    :cond_1
    if-eqz v0, :cond_5

    .line 478
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    move-wide v0, v4

    .line 489
    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 490
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 491
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 492
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 493
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 494
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 497
    const/high16 v7, 0x10000

    .line 498
    if-nez v2, :cond_7

    if-ne v4, v7, :cond_7

    neg-int v8, v7

    if-ne v3, v8, :cond_7

    if-nez v5, :cond_7

    .line 499
    const/16 v2, 0x5a

    .line 509
    :goto_3
    new-instance v3, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {v3, v9, v0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v3

    :cond_3
    move v0, v2

    .line 463
    goto :goto_0

    .line 470
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 481
    :cond_5
    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 482
    :goto_4
    const-wide/16 v10, 0x0

    cmp-long v7, v0, v10

    if-nez v7, :cond_2

    move-wide v0, v4

    .line 485
    goto :goto_2

    .line 481
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_4

    .line 500
    :cond_7
    if-nez v2, :cond_8

    neg-int v8, v7

    if-ne v4, v8, :cond_8

    if-ne v3, v7, :cond_8

    if-nez v5, :cond_8

    .line 501
    const/16 v2, 0x10e

    goto :goto_3

    .line 502
    :cond_8
    neg-int v8, v7

    if-ne v2, v8, :cond_9

    if-nez v4, :cond_9

    if-nez v3, :cond_9

    neg-int v2, v7

    if-ne v5, v2, :cond_9

    .line 503
    const/16 v2, 0xb4

    goto :goto_3

    :cond_9
    move v2, v6

    .line 506
    goto :goto_3
.end method

.method public static parseTrak(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;JZ)Lcom/google/android/exoplayer/extractor/mp4/Track;
    .locals 28

    .prologue
    .line 53
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v8

    .line 54
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v15

    .line 55
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_soun:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_text:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_sbtl:I

    if-eq v15, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_subt:I

    if-eq v15, v2, :cond_0

    .line 57
    const/4 v13, 0x0

    .line 78
    :goto_0
    return-object v13

    .line 60
    :cond_0
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v16

    .line 61
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    .line 62
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v2

    .line 64
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    .line 66
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 67
    const-wide/16 v10, -0x1

    .line 71
    :goto_2
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    .line 72
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    .line 74
    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v3

    .line 75
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    .line 76
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v12

    iget-object v13, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move/from16 v14, p4

    .line 75
    invoke-static/range {v8 .. v14}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer/util/ParsableByteArray;IJILjava/lang/String;Z)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    .line 77
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v5

    .line 78
    iget-object v2, v4, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v2, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    .line 69
    :cond_1
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    goto :goto_2

    .line 78
    :cond_2
    new-instance v13, Lcom/google/android/exoplayer/extractor/mp4/Track;

    .line 79
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v23, v0

    iget v0, v4, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v24, v0

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [J

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [J

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    invoke-direct/range {v13 .. v26}, Lcom/google/android/exoplayer/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I[J[J)V

    goto/16 :goto_0

    :cond_3
    move-wide/from16 v2, p2

    goto/16 :goto_1
.end method

.method public static parseUdta(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x8

    .line 361
    if-eqz p1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-object v0

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 367
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 368
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 369
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 370
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 371
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v3, v4, :cond_2

    .line 372
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 373
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setLimit(I)V

    .line 374
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseMetaAtom(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/GaplessInfo;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_2
    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIIJILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 19

    .prologue
    .line 601
    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 603
    const/16 v6, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v13

    .line 606
    const/4 v9, 0x0

    .line 607
    const/high16 v16, 0x3f800000    # 1.0f

    .line 608
    const/16 v6, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 611
    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_0

    .line 612
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;IILcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;I)I

    .line 613
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 616
    :cond_0
    const/4 v14, 0x0

    .line 617
    const/4 v7, 0x0

    .line 618
    const/16 v17, 0x0

    .line 619
    const/16 v18, -0x1

    move v10, v6

    .line 620
    :goto_0
    sub-int v6, v10, p2

    move/from16 v0, p3

    if-ge v6, v0, :cond_1

    .line 621
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v11

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 624
    if-nez v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v6

    sub-int v6, v6, p2

    move/from16 v0, p3

    if-ne v6, v0, :cond_2

    .line 686
    :cond_1
    if-nez v7, :cond_12

    .line 693
    :goto_1
    return-void

    .line 628
    :cond_2
    if-lez v15, :cond_4

    const/4 v6, 0x1

    :goto_2
    const-string v8, "childAtomSize should be positive"

    invoke-static {v6, v8}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 630
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avcC:I

    if-ne v6, v8, :cond_6

    .line 631
    if-nez v7, :cond_5

    const/4 v6, 0x1

    :goto_3
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 632
    const-string v7, "video/avc"

    .line 633
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseAvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;

    move-result-object v6

    .line 634
    iget-object v14, v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->initializationData:Ljava/util/List;

    .line 635
    iget v8, v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p8

    iput v8, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 636
    if-nez v9, :cond_3

    .line 637
    iget v0, v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$AvcCData;->pixelWidthAspectRatio:F

    move/from16 v16, v0

    .line 682
    :cond_3
    :goto_4
    add-int v6, v10, v15

    move v10, v6

    .line 683
    goto :goto_0

    .line 628
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 631
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 639
    :cond_6
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hvcC:I

    if-ne v6, v8, :cond_8

    .line 640
    if-nez v7, :cond_7

    const/4 v6, 0x1

    :goto_5
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 641
    const-string v8, "video/hevc"

    .line 642
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseHvcCFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v7

    .line 643
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 644
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p8

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v7, v8

    move-object v14, v6

    .line 645
    goto :goto_4

    .line 640
    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 645
    :cond_8
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_d263:I

    if-ne v6, v8, :cond_a

    .line 646
    if-nez v7, :cond_9

    const/4 v6, 0x1

    :goto_6
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 647
    const-string v7, "video/3gpp"

    goto :goto_4

    .line 646
    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    .line 648
    :cond_a
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v6, v8, :cond_c

    .line 649
    if-nez v7, :cond_b

    const/4 v6, 0x1

    :goto_7
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 651
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v7

    .line 652
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 653
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object v7, v6

    .line 654
    goto :goto_4

    .line 649
    :cond_b
    const/4 v6, 0x0

    goto :goto_7

    .line 654
    :cond_c
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pasp:I

    if-ne v6, v8, :cond_d

    .line 655
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F

    move-result v16

    .line 656
    const/4 v6, 0x1

    move v9, v6

    goto :goto_4

    .line 657
    :cond_d
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vpcC:I

    if-ne v6, v8, :cond_10

    .line 658
    if-nez v7, :cond_e

    const/4 v6, 0x1

    :goto_8
    invoke-static {v6}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 659
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vp08:I

    move/from16 v0, p1

    if-ne v0, v6, :cond_f

    const-string v7, "video/x-vnd.on2.vp8"

    goto :goto_4

    .line 658
    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 659
    :cond_f
    const-string v7, "video/x-vnd.on2.vp9"

    goto :goto_4

    .line 660
    :cond_10
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sv3d:I

    if-ne v6, v8, :cond_11

    .line 661
    move-object/from16 v0, p0

    invoke-static {v0, v11, v15}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer/util/ParsableByteArray;II)[B

    move-result-object v17

    goto/16 :goto_4

    .line 662
    :cond_11
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_st3d:I

    if-ne v6, v8, :cond_3

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 664
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 665
    if-nez v6, :cond_3

    .line 666
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 667
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    .line 669
    :pswitch_0
    const/16 v18, 0x0

    .line 670
    goto/16 :goto_4

    .line 672
    :pswitch_1
    const/16 v18, 0x1

    .line 673
    goto/16 :goto_4

    .line 675
    :pswitch_2
    const/16 v18, 0x2

    .line 676
    goto/16 :goto_4

    .line 690
    :cond_12
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-wide/from16 v10, p5

    move/from16 v15, p7

    invoke-static/range {v6 .. v18}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF[BI)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    move-object/from16 v0, p8

    iput-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdData;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    goto/16 :goto_1

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
