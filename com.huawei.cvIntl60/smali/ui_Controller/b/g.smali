.class public Lui_Controller/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LGeneralFunction/e/g;

.field public b:Landroid/database/sqlite/SQLiteDatabase;

.field public c:LGeneralFunction/e/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, LGeneralFunction/e/f;

    invoke-direct {v0}, LGeneralFunction/e/f;-><init>()V

    iput-object v0, p0, Lui_Controller/b/g;->c:LGeneralFunction/e/f;

    .line 18
    invoke-direct {p0}, Lui_Controller/b/g;->a()V

    .line 19
    iget-object v0, p0, Lui_Controller/b/g;->a:LGeneralFunction/e/g;

    invoke-virtual {v0}, LGeneralFunction/e/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lui_Controller/b/g;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 27
    new-instance v0, LGeneralFunction/e/g;

    invoke-static {}, Lui_Controller/ui_StartMode/UI_ModeMain;->s()Landroid/content/Context;

    move-result-object v1

    const-string v2, "VS80102W_DB"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, LGeneralFunction/e/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lui_Controller/b/g;->a:LGeneralFunction/e/g;

    .line 28
    return-void
.end method
