.class public Lcom/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/a/a/h/d;


# instance fields
.field protected b:Lcom/a/a/h/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/a/a/e;

.field private final d:Lcom/a/a/j;

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/a/a/h/d;

.field private final g:Lcom/a/a/c;

.field private h:Lcom/a/a/k;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/k",
            "<*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/a/a/h/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/c",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private k:Lcom/a/a/i;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/a/a/h/d;

    invoke-direct {v0}, Lcom/a/a/h/d;-><init>()V

    sget-object v1, Lcom/a/a/d/b/h;->c:Lcom/a/a/d/b/h;

    .line 38
    invoke-virtual {v0, v1}, Lcom/a/a/h/d;->b(Lcom/a/a/d/b/h;)Lcom/a/a/h/d;

    move-result-object v0

    sget-object v1, Lcom/a/a/g;->d:Lcom/a/a/g;

    invoke-virtual {v0, v1}, Lcom/a/a/h/d;->a(Lcom/a/a/g;)Lcom/a/a/h/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/a/a/h/d;->a(Z)Lcom/a/a/h/d;

    move-result-object v0

    sput-object v0, Lcom/a/a/i;->a:Lcom/a/a/h/d;

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/a/a/c;Lcom/a/a/j;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c;",
            "Lcom/a/a/j;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/i;->m:Z

    .line 65
    iput-object p1, p0, Lcom/a/a/i;->g:Lcom/a/a/c;

    .line 66
    iput-object p2, p0, Lcom/a/a/i;->d:Lcom/a/a/j;

    .line 67
    invoke-virtual {p1}, Lcom/a/a/c;->e()Lcom/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/i;->c:Lcom/a/a/e;

    .line 68
    iput-object p3, p0, Lcom/a/a/i;->e:Ljava/lang/Class;

    .line 69
    invoke-virtual {p2}, Lcom/a/a/j;->h()Lcom/a/a/h/d;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/i;->f:Lcom/a/a/h/d;

    .line 70
    invoke-virtual {p2, p3}, Lcom/a/a/j;->b(Ljava/lang/Class;)Lcom/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/i;->h:Lcom/a/a/k;

    .line 71
    iget-object v0, p0, Lcom/a/a/i;->f:Lcom/a/a/h/d;

    iput-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    .line 72
    return-void
.end method

.method private a(Lcom/a/a/g;)Lcom/a/a/g;
    .locals 3

    .prologue
    .line 579
    sget-object v0, Lcom/a/a/i$1;->b:[I

    invoke-virtual {p1}, Lcom/a/a/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    invoke-virtual {v2}, Lcom/a/a/h/d;->x()Lcom/a/a/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :pswitch_0
    sget-object v0, Lcom/a/a/g;->c:Lcom/a/a/g;

    .line 586
    :goto_0
    return-object v0

    .line 583
    :pswitch_1
    sget-object v0, Lcom/a/a/g;->b:Lcom/a/a/g;

    goto :goto_0

    .line 586
    :pswitch_2
    sget-object v0, Lcom/a/a/g;->a:Lcom/a/a/g;

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/a/a/h/a/h;Lcom/a/a/h/d;)Lcom/a/a/h/a/h;
    .locals 3
    .param p1    # Lcom/a/a/h/a/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/a/a/h/a/h",
            "<TTranscodeType;>;>(TY;",
            "Lcom/a/a/h/d;",
            ")TY;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 359
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-boolean v0, p0, Lcom/a/a/i;->n:Z

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    invoke-virtual {p2}, Lcom/a/a/h/d;->h()Lcom/a/a/h/d;

    move-result-object v0

    .line 365
    invoke-direct {p0, p1, v0}, Lcom/a/a/i;->b(Lcom/a/a/h/a/h;Lcom/a/a/h/d;)Lcom/a/a/h/a;

    move-result-object v0

    .line 367
    invoke-interface {p1}, Lcom/a/a/h/a/h;->b()Lcom/a/a/h/a;

    move-result-object v1

    .line 368
    invoke-interface {v0, v1}, Lcom/a/a/h/a;->a(Lcom/a/a/h/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    invoke-interface {v0}, Lcom/a/a/h/a;->i()V

    .line 374
    invoke-static {v1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/h/a;

    invoke-interface {v0}, Lcom/a/a/h/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    invoke-interface {v1}, Lcom/a/a/h/a;->a()V

    .line 384
    :cond_1
    :goto_0
    return-object p1

    .line 380
    :cond_2
    iget-object v1, p0, Lcom/a/a/i;->d:Lcom/a/a/j;

    invoke-virtual {v1, p1}, Lcom/a/a/j;->a(Lcom/a/a/h/a/h;)V

    .line 381
    invoke-interface {p1, v0}, Lcom/a/a/h/a/h;->a(Lcom/a/a/h/a;)V

    .line 382
    iget-object v1, p0, Lcom/a/a/i;->d:Lcom/a/a/j;

    invoke-virtual {v1, p1, v0}, Lcom/a/a/j;->a(Lcom/a/a/h/a/h;Lcom/a/a/h/a;)V

    goto :goto_0
.end method

.method private a(Lcom/a/a/h/a/h;Lcom/a/a/h/d;Lcom/a/a/h/b;Lcom/a/a/k;Lcom/a/a/g;II)Lcom/a/a/h/a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/h",
            "<TTranscodeType;>;",
            "Lcom/a/a/h/d;",
            "Lcom/a/a/h/b;",
            "Lcom/a/a/k",
            "<*-TTranscodeType;>;",
            "Lcom/a/a/g;",
            "II)",
            "Lcom/a/a/h/a;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/a/a/i;->c:Lcom/a/a/e;

    iget-object v1, p0, Lcom/a/a/i;->i:Ljava/lang/Object;

    iget-object v2, p0, Lcom/a/a/i;->e:Ljava/lang/Class;

    iget-object v8, p0, Lcom/a/a/i;->j:Lcom/a/a/h/c;

    iget-object v3, p0, Lcom/a/a/i;->c:Lcom/a/a/e;

    .line 680
    invoke-virtual {v3}, Lcom/a/a/e;->b()Lcom/a/a/d/b/i;

    move-result-object v10

    .line 681
    invoke-virtual/range {p4 .. p4}, Lcom/a/a/k;->b()Lcom/a/a/h/b/c;

    move-result-object v11

    move-object v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p5

    move-object v7, p1

    move-object v9, p3

    .line 669
    invoke-static/range {v0 .. v11}, Lcom/a/a/h/f;->a(Lcom/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/a/a/h/d;IILcom/a/a/g;Lcom/a/a/h/a/h;Lcom/a/a/h/c;Lcom/a/a/h/b;Lcom/a/a/d/b/i;Lcom/a/a/h/b/c;)Lcom/a/a/h/f;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/a/a/h/a/h;Lcom/a/a/h/g;Lcom/a/a/k;Lcom/a/a/g;IILcom/a/a/h/d;)Lcom/a/a/h/a;
    .locals 14
    .param p2    # Lcom/a/a/h/g;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/h",
            "<TTranscodeType;>;",
            "Lcom/a/a/h/g;",
            "Lcom/a/a/k",
            "<*-TTranscodeType;>;",
            "Lcom/a/a/g;",
            "II",
            "Lcom/a/a/h/d;",
            ")",
            "Lcom/a/a/h/a;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v1, p0, Lcom/a/a/i;->k:Lcom/a/a/i;

    if-eqz v1, :cond_2

    .line 603
    iget-boolean v1, p0, Lcom/a/a/i;->o:Z

    if-eqz v1, :cond_0

    .line 604
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/a/a/i;->k:Lcom/a/a/i;

    iget-object v1, v1, Lcom/a/a/i;->h:Lcom/a/a/k;

    .line 613
    iget-object v2, p0, Lcom/a/a/i;->k:Lcom/a/a/i;

    iget-boolean v2, v2, Lcom/a/a/i;->m:Z

    if-eqz v2, :cond_5

    move-object/from16 v10, p3

    .line 617
    :goto_0
    iget-object v1, p0, Lcom/a/a/i;->k:Lcom/a/a/i;

    iget-object v1, v1, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    invoke-virtual {v1}, Lcom/a/a/h/d;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/a/i;->k:Lcom/a/a/i;

    iget-object v1, v1, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    .line 618
    invoke-virtual {v1}, Lcom/a/a/h/d;->x()Lcom/a/a/g;

    move-result-object v1

    move-object v11, v1

    .line 620
    :goto_1
    iget-object v1, p0, Lcom/a/a/i;->k:Lcom/a/a/i;

    iget-object v1, v1, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    invoke-virtual {v1}, Lcom/a/a/h/d;->y()I

    move-result v2

    .line 621
    iget-object v1, p0, Lcom/a/a/i;->k:Lcom/a/a/i;

    iget-object v1, v1, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    invoke-virtual {v1}, Lcom/a/a/h/d;->A()I

    move-result v1

    .line 622
    invoke-static/range {p5 .. p6}, Lcom/a/a/j/i;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/a/a/i;->k:Lcom/a/a/i;

    iget-object v3, v3, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    .line 623
    invoke-virtual {v3}, Lcom/a/a/h/d;->z()Z

    move-result v3

    if-nez v3, :cond_4

    .line 624
    invoke-virtual/range {p7 .. p7}, Lcom/a/a/h/d;->y()I

    move-result v2

    .line 625
    invoke-virtual/range {p7 .. p7}, Lcom/a/a/h/d;->A()I

    move-result v1

    move v12, v1

    move v13, v2

    .line 628
    :goto_2
    new-instance v4, Lcom/a/a/h/g;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/a/a/h/g;-><init>(Lcom/a/a/h/b;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 629
    invoke-direct/range {v1 .. v8}, Lcom/a/a/i;->a(Lcom/a/a/h/a/h;Lcom/a/a/h/d;Lcom/a/a/h/b;Lcom/a/a/k;Lcom/a/a/g;II)Lcom/a/a/h/a;

    move-result-object v1

    .line 631
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/a/a/i;->o:Z

    .line 633
    iget-object v2, p0, Lcom/a/a/i;->k:Lcom/a/a/i;

    iget-object v3, p0, Lcom/a/a/i;->k:Lcom/a/a/i;

    iget-object v9, v3, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    move-object v3, p1

    move-object v5, v10

    move-object v6, v11

    move v7, v13

    move v8, v12

    .line 634
    invoke-direct/range {v2 .. v9}, Lcom/a/a/i;->a(Lcom/a/a/h/a/h;Lcom/a/a/h/g;Lcom/a/a/k;Lcom/a/a/g;IILcom/a/a/h/d;)Lcom/a/a/h/a;

    move-result-object v2

    .line 642
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/a/a/i;->o:Z

    .line 643
    invoke-virtual {v4, v1, v2}, Lcom/a/a/h/g;->a(Lcom/a/a/h/a;Lcom/a/a/h/a;)V

    .line 660
    :goto_3
    return-object v4

    .line 618
    :cond_1
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/a/a/i;->a(Lcom/a/a/g;)Lcom/a/a/g;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    .line 645
    :cond_2
    iget-object v1, p0, Lcom/a/a/i;->l:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 647
    new-instance v4, Lcom/a/a/h/g;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/a/a/h/g;-><init>(Lcom/a/a/h/b;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 648
    invoke-direct/range {v1 .. v8}, Lcom/a/a/i;->a(Lcom/a/a/h/a/h;Lcom/a/a/h/d;Lcom/a/a/h/b;Lcom/a/a/k;Lcom/a/a/g;II)Lcom/a/a/h/a;

    move-result-object v9

    .line 650
    invoke-virtual/range {p7 .. p7}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/i;->l:Ljava/lang/Float;

    .line 651
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/h/d;->a(F)Lcom/a/a/h/d;

    move-result-object v3

    .line 654
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/a/a/i;->a(Lcom/a/a/g;)Lcom/a/a/g;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 653
    invoke-direct/range {v1 .. v8}, Lcom/a/a/i;->a(Lcom/a/a/h/a/h;Lcom/a/a/h/d;Lcom/a/a/h/b;Lcom/a/a/k;Lcom/a/a/g;II)Lcom/a/a/h/a;

    move-result-object v1

    .line 656
    invoke-virtual {v4, v9, v1}, Lcom/a/a/h/g;->a(Lcom/a/a/h/a;Lcom/a/a/h/a;)V

    goto :goto_3

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 660
    invoke-direct/range {v1 .. v8}, Lcom/a/a/i;->a(Lcom/a/a/h/a/h;Lcom/a/a/h/d;Lcom/a/a/h/b;Lcom/a/a/k;Lcom/a/a/g;II)Lcom/a/a/h/a;

    move-result-object v4

    goto :goto_3

    :cond_4
    move v12, v1

    move v13, v2

    goto/16 :goto_2

    :cond_5
    move-object v10, v1

    goto/16 :goto_0
.end method

.method private b(Lcom/a/a/h/a/h;Lcom/a/a/h/d;)Lcom/a/a/h/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/a/h",
            "<TTranscodeType;>;",
            "Lcom/a/a/h/d;",
            ")",
            "Lcom/a/a/h/a;"
        }
    .end annotation

    .prologue
    .line 593
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/a/a/i;->h:Lcom/a/a/k;

    invoke-virtual {p2}, Lcom/a/a/h/d;->x()Lcom/a/a/g;

    move-result-object v4

    .line 594
    invoke-virtual {p2}, Lcom/a/a/h/d;->y()I

    move-result v5

    invoke-virtual {p2}, Lcom/a/a/h/d;->A()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 593
    invoke-direct/range {v0 .. v7}, Lcom/a/a/i;->a(Lcom/a/a/h/a/h;Lcom/a/a/h/g;Lcom/a/a/k;Lcom/a/a/g;IILcom/a/a/h/d;)Lcom/a/a/h/a;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Lcom/a/a/i;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/a/a/i;->i:Ljava/lang/Object;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/i;->n:Z

    .line 203
    return-object p0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)Lcom/a/a/h/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/a/a/h/a/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 400
    invoke-static {}, Lcom/a/a/j/i;->a()V

    .line 401
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    .line 404
    invoke-virtual {v0}, Lcom/a/a/h/d;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/a/a/h/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 410
    sget-object v1, Lcom/a/a/i$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/a/a/i;->c:Lcom/a/a/e;

    iget-object v2, p0, Lcom/a/a/i;->e:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/a/a/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/a/a/h/a/h;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/a/a/i;->a(Lcom/a/a/h/a/h;Lcom/a/a/h/d;)Lcom/a/a/h/a/h;

    move-result-object v0

    return-object v0

    .line 412
    :pswitch_0
    invoke-virtual {v0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h/d;->d()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0

    .line 415
    :pswitch_1
    invoke-virtual {v0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h/d;->f()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0

    .line 420
    :pswitch_2
    invoke-virtual {v0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h/d;->e()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0

    .line 423
    :pswitch_3
    invoke-virtual {v0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h/d;->f()Lcom/a/a/h/d;

    move-result-object v0

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/a/a/h/a/h;)Lcom/a/a/h/a/h;
    .locals 1
    .param p1    # Lcom/a/a/h/a/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/a/a/h/a/h",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/a/a/i;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/a/a/i;->a(Lcom/a/a/h/a/h;Lcom/a/a/h/d;)Lcom/a/a/h/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/a/a/h/d;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/a/a/i;->f:Lcom/a/a/h/d;

    iget-object v1, p0, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    .line 96
    invoke-virtual {v0}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    goto :goto_0
.end method

.method public a(Lcom/a/a/h/d;)Lcom/a/a/i;
    .locals 1
    .param p1    # Lcom/a/a/h/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/h/d;",
            ")",
            "Lcom/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Lcom/a/a/j/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcom/a/a/i;->a()Lcom/a/a/h/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/h/d;->a(Lcom/a/a/h/d;)Lcom/a/a/h/d;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    .line 91
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/a/a/i;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/a/a/i;->b(Ljava/lang/Object;)Lcom/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/a/a/i;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/i",
            "<TTranscodeType;>;"
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/i;

    .line 338
    iget-object v1, v0, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    invoke-virtual {v1}, Lcom/a/a/h/d;->a()Lcom/a/a/h/d;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/i;->b:Lcom/a/a/h/d;

    .line 339
    iget-object v1, v0, Lcom/a/a/i;->h:Lcom/a/a/k;

    invoke-virtual {v1}, Lcom/a/a/k;->a()Lcom/a/a/k;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/i;->h:Lcom/a/a/k;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    return-object v0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/a/a/i;->b()Lcom/a/a/i;

    move-result-object v0

    return-object v0
.end method
