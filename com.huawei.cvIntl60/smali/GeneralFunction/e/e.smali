.class public LGeneralFunction/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:LGeneralFunction/e/g;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private final d:LGeneralFunction/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, LGeneralFunction/e/e;->a:Landroid/database/Cursor;

    .line 27
    new-instance v0, LGeneralFunction/j;

    invoke-direct {v0}, LGeneralFunction/j;-><init>()V

    iput-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    .line 49
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 50
    invoke-direct {p0, p1}, LGeneralFunction/e/e;->a(Landroid/content/Context;)V

    .line 51
    iget-object v0, p0, LGeneralFunction/e/e;->b:LGeneralFunction/e/g;

    invoke-virtual {v0}, LGeneralFunction/e/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 53
    return-void
.end method

.method private a(LGeneralFunction/e/b;III)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 81
    iget-object v0, p1, LGeneralFunction/e/b;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/c;

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Group Map Get Null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, LGeneralFunction/e/e;->a(Ljava/lang/String;I)V

    .line 84
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    move v0, v1

    .line 97
    :goto_0
    return v0

    .line 88
    :cond_0
    iget v0, v0, LGeneralFunction/e/c;->a:I

    .line 90
    iget-object v2, p1, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    .line 91
    iget v2, v0, LGeneralFunction/e/a;->a:I

    if-ne v2, v1, :cond_1

    .line 92
    iput p4, v0, LGeneralFunction/e/a;->a:I

    .line 93
    iget-object v0, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static a(Ljava/util/ArrayList;I)LGeneralFunction/e/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LGeneralFunction/e/a;",
            ">;I)",
            "LGeneralFunction/e/b;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 364
    new-instance v3, LGeneralFunction/e/b;

    invoke-direct {v3}, LGeneralFunction/e/b;-><init>()V

    .line 368
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v4, v0, LGeneralFunction/e/a;->b:I

    move v1, v2

    .line 369
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget-object v0, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 370
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget-object v0, v0, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 372
    new-instance v6, LGeneralFunction/e/a;

    invoke-direct {v6}, LGeneralFunction/e/a;-><init>()V

    .line 373
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LGeneralFunction/e/a;

    iget v0, v0, LGeneralFunction/e/a;->a:I

    add-int/2addr v0, v1

    iput v0, v6, LGeneralFunction/e/a;->a:I

    .line 374
    iput v4, v6, LGeneralFunction/e/a;->b:I

    .line 375
    iget-object v0, v6, LGeneralFunction/e/a;->c:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, v3, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 380
    :cond_0
    new-instance v0, LGeneralFunction/e/c;

    invoke-direct {v0}, LGeneralFunction/e/c;-><init>()V

    .line 381
    iput v2, v0, LGeneralFunction/e/c;->a:I

    .line 382
    iget-object v1, v3, LGeneralFunction/e/b;->b:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-object v3
.end method

.method private a(LGeneralFunction/e/b;I)V
    .locals 3

    .prologue
    .line 71
    new-instance v0, LGeneralFunction/e/a;

    invoke-direct {v0}, LGeneralFunction/e/a;-><init>()V

    .line 72
    iput p2, v0, LGeneralFunction/e/a;->b:I

    .line 73
    iget-object v1, p1, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, LGeneralFunction/e/c;

    invoke-direct {v0}, LGeneralFunction/e/c;-><init>()V

    .line 76
    iget-object v1, p1, LGeneralFunction/e/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LGeneralFunction/e/c;->a:I

    .line 77
    iget-object v1, p1, LGeneralFunction/e/b;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 56
    new-instance v0, LGeneralFunction/e/g;

    const-string v1, "PICO2nd_DB"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, LGeneralFunction/e/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, LGeneralFunction/e/e;->b:LGeneralFunction/e/g;

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, LGeneralFunction/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(ILGeneralFunction/e/b;LGeneralFunction/e/b;LGeneralFunction/e/b;)I
    .locals 14

    .prologue
    .line 101
    iget-object v2, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->a()I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 106
    new-instance v2, LGeneralFunction/e/f;

    invoke-direct {v2}, LGeneralFunction/e/f;-><init>()V

    .line 109
    iget-object v3, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "PhonePicture_INF"

    invoke-virtual {v2, v3, v6}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 110
    iget-object v3, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "PhonePicture_INF"

    const-string v7, "ASC"

    invoke-virtual {v2, v3, v6, v7}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, LGeneralFunction/e/e;->a:Landroid/database/Cursor;

    .line 112
    iget-object v3, p0, LGeneralFunction/e/e;->a:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 113
    const-string v2, "Error: LocalAllFileCursor is not init"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, LGeneralFunction/e/e;->a(Ljava/lang/String;I)V

    .line 114
    iget-object v2, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->b()V

    .line 115
    const/4 v2, -0x1

    .line 191
    :goto_0
    return v2

    .line 117
    :cond_0
    iget-object v6, p0, LGeneralFunction/e/e;->a:Landroid/database/Cursor;

    .line 119
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 120
    iget-object v3, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "PhonePicture_INF"

    const-string v8, "DownloadTime"

    const-string v9, "DESC"

    invoke-virtual {v2, v3, v7, v8, v9}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 125
    :goto_1
    invoke-virtual/range {p2 .. p2}, LGeneralFunction/e/b;->a()V

    .line 126
    invoke-virtual/range {p3 .. p3}, LGeneralFunction/e/b;->a()V

    .line 127
    invoke-virtual/range {p4 .. p4}, LGeneralFunction/e/b;->a()V

    .line 128
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    .line 129
    const-string v2, "Error: Database Group Empty"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, LGeneralFunction/e/e;->a(Ljava/lang/String;I)V

    .line 130
    iget-object v2, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->b()V

    .line 131
    const/4 v2, -0x2

    goto :goto_0

    .line 122
    :cond_1
    iget-object v3, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "PhonePicture_INF"

    const-string v8, "DownloadTime"

    const-string v9, "ASC"

    invoke-virtual {v2, v3, v7, v8, v9}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1

    .line 134
    :cond_2
    const/4 v3, 0x0

    .line 136
    const-string v7, "GroupIndex"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 137
    const-string v8, "IsSDCard"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 138
    const-string v9, "IsMyAlbum"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 141
    :cond_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 142
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GroupCursor["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]lGroupIndex:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, LGeneralFunction/e/e;->a(Ljava/lang/String;I)V

    .line 143
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 144
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v10}, LGeneralFunction/e/e;->a(LGeneralFunction/e/b;I)V

    .line 151
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 152
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_6

    .line 157
    const-string v2, "Error: Database Empty"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, LGeneralFunction/e/e;->a(Ljava/lang/String;I)V

    .line 158
    invoke-virtual/range {p2 .. p2}, LGeneralFunction/e/b;->a()V

    .line 159
    invoke-virtual/range {p3 .. p3}, LGeneralFunction/e/b;->a()V

    .line 160
    invoke-virtual/range {p4 .. p4}, LGeneralFunction/e/b;->a()V

    .line 161
    iget-object v2, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->b()V

    .line 162
    const/4 v2, -0x3

    goto/16 :goto_0

    .line 145
    :cond_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 146
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v10}, LGeneralFunction/e/e;->a(LGeneralFunction/e/b;I)V

    goto :goto_2

    .line 148
    :cond_5
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v10}, LGeneralFunction/e/e;->a(LGeneralFunction/e/b;I)V

    goto :goto_2

    .line 165
    :cond_6
    const/4 v2, 0x0

    .line 167
    const-string v3, "GroupIndex"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 168
    const-string v7, "FileIndexInGroup"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 169
    const-string v8, "IsSDCard"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 170
    const-string v9, "IsMyAlbum"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 173
    :cond_7
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 174
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 175
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AllFileCursor "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    invoke-direct {p0, v12, v13}, LGeneralFunction/e/e;->a(Ljava/lang/String;I)V

    .line 177
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    .line 178
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v10, v11, v2}, LGeneralFunction/e/e;->a(LGeneralFunction/e/b;III)I

    .line 185
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetLinkList cost time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, LGeneralFunction/e/e;->a(Ljava/lang/String;I)V

    .line 190
    iget-object v2, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->b()V

    .line 191
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 179
    :cond_8
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 180
    move-object/from16 v0, p4

    invoke-direct {p0, v0, v10, v11, v2}, LGeneralFunction/e/e;->a(LGeneralFunction/e/b;III)I

    goto :goto_3

    .line 182
    :cond_9
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v10, v11, v2}, LGeneralFunction/e/e;->a(LGeneralFunction/e/b;III)I

    goto :goto_3
.end method

.method public a()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 66
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 67
    iget-object v0, p0, LGeneralFunction/e/e;->a:Landroid/database/Cursor;

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 316
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 317
    new-instance v0, LGeneralFunction/e/f;

    invoke-direct {v0}, LGeneralFunction/e/f;-><init>()V

    .line 318
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    const-string v4, "1"

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, LGeneralFunction/e/f;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 319
    iget-object v1, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 320
    return-object v0
.end method

.method public a(Ljava/lang/String;ZII)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 308
    new-instance v0, LGeneralFunction/e/f;

    invoke-direct {v0}, LGeneralFunction/e/f;-><init>()V

    .line 309
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 310
    iget-object v1, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 311
    return-object v0

    .line 309
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public a(II)V
    .locals 10

    .prologue
    .line 268
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 270
    new-instance v0, LGeneralFunction/e/f;

    invoke-direct {v0}, LGeneralFunction/e/f;-><init>()V

    .line 271
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    const-string v3, "GroupIndex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileIndexInGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local_DeleteFile cost time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v0, v8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/e;->a(Ljava/lang/String;I)V

    .line 274
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 275
    return-void
.end method

.method public a(IIJ)V
    .locals 9

    .prologue
    .line 348
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 349
    new-instance v0, LGeneralFunction/e/f;

    invoke-direct {v0}, LGeneralFunction/e/f;-><init>()V

    .line 350
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    const-string v3, "GroupIndex"

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileIndexInGroup"

    .line 355
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "FileSize"

    .line 357
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 350
    invoke-virtual/range {v0 .. v8}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 360
    return-void
.end method

.method public a(IIZLjava/lang/String;)V
    .locals 9

    .prologue
    .line 325
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 326
    new-instance v0, LGeneralFunction/e/f;

    invoke-direct {v0}, LGeneralFunction/e/f;-><init>()V

    .line 327
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    const-string v3, "GroupIndex"

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileIndexInGroup"

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "FilePath"

    move-object v8, p4

    .line 327
    invoke-virtual/range {v0 .. v8}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    const-string v3, "GroupIndex"

    .line 339
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileIndexInGroup"

    .line 341
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "IsSDCard"

    if-eqz p3, :cond_0

    const/4 v8, 0x1

    .line 343
    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 336
    invoke-virtual/range {v0 .. v8}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 345
    return-void

    .line 341
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 278
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 280
    new-instance v0, LGeneralFunction/e/f;

    invoke-direct {v0}, LGeneralFunction/e/f;-><init>()V

    .line 281
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    const-string v3, "FileName"

    const-string v5, "FileSize"

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local_DeleteFile cost time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v0, v8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, LGeneralFunction/e/e;->a(Ljava/lang/String;I)V

    .line 284
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 285
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZ)V
    .locals 27

    .prologue
    .line 218
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    invoke-virtual/range {v1 .. v26}, LGeneralFunction/e/e;->a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V

    .line 224
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIZZZZZZZZZ)V
    .locals 35

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->a()I

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 234
    new-instance v3, LGeneralFunction/e/f;

    invoke-direct {v3}, LGeneralFunction/e/f;-><init>()V

    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "PhonePicture_INF"

    if-eqz p17, :cond_0

    const/16 v22, 0x1

    :goto_0
    if-eqz p18, :cond_1

    const/16 v23, 0x1

    :goto_1
    if-eqz p19, :cond_2

    const/16 v24, 0x1

    :goto_2
    if-eqz p20, :cond_3

    const/16 v25, 0x1

    :goto_3
    if-eqz p21, :cond_4

    const/16 v26, 0x1

    :goto_4
    if-eqz p22, :cond_5

    const/16 v27, 0x1

    :goto_5
    if-eqz p23, :cond_6

    const/16 v28, 0x1

    :goto_6
    if-eqz p24, :cond_7

    const/16 v29, 0x1

    :goto_7
    if-eqz p25, :cond_8

    const/16 v30, 0x1

    :goto_8
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-wide/from16 v14, p9

    move-wide/from16 v16, p11

    move-wide/from16 v18, p13

    move/from16 v20, p15

    move/from16 v21, p16

    invoke-virtual/range {v3 .. v30}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIIJJJIIIIIIIIIII)V

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local_AddToTable cost time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v2, v2, v32

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, LGeneralFunction/e/e;->a(Ljava/lang/String;I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v2}, LGeneralFunction/j;->b()V

    .line 245
    return-void

    .line 235
    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    :cond_1
    const/16 v23, 0x0

    goto :goto_1

    :cond_2
    const/16 v24, 0x0

    goto :goto_2

    :cond_3
    const/16 v25, 0x0

    goto :goto_3

    :cond_4
    const/16 v26, 0x0

    goto :goto_4

    :cond_5
    const/16 v27, 0x0

    goto :goto_5

    :cond_6
    const/16 v28, 0x0

    goto :goto_6

    :cond_7
    const/16 v29, 0x0

    goto :goto_7

    :cond_8
    const/16 v30, 0x0

    goto :goto_8
.end method

.method public b()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 197
    new-instance v0, LGeneralFunction/e/f;

    invoke-direct {v0}, LGeneralFunction/e/f;-><init>()V

    .line 199
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 200
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    const-string v3, "ASC"

    invoke-virtual {v0, v1, v2, v3}, LGeneralFunction/e/f;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/e/e;->a:Landroid/database/Cursor;

    .line 201
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->b()V

    .line 202
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 288
    .line 289
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 290
    new-instance v0, LGeneralFunction/e/f;

    invoke-direct {v0}, LGeneralFunction/e/f;-><init>()V

    .line 291
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    const-string v3, "FilePath"

    const-string v5, "FileName"

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, LGeneralFunction/e/f;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 292
    iget-object v1, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 293
    return v0
.end method

.method public c()I
    .locals 3

    .prologue
    .line 297
    .line 298
    iget-object v0, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v0}, LGeneralFunction/j;->a()I

    .line 299
    new-instance v0, LGeneralFunction/e/f;

    invoke-direct {v0}, LGeneralFunction/e/f;-><init>()V

    .line 300
    iget-object v1, p0, LGeneralFunction/e/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PhonePicture_INF"

    invoke-virtual {v0, v1, v2}, LGeneralFunction/e/f;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    .line 301
    iget-object v1, p0, LGeneralFunction/e/e;->d:LGeneralFunction/j;

    invoke-virtual {v1}, LGeneralFunction/j;->b()V

    .line 302
    return v0
.end method
