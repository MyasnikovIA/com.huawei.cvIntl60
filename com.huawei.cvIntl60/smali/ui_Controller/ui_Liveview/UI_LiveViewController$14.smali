.class Lui_Controller/ui_Liveview/UI_LiveViewController$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui_Controller/ui_Liveview/UI_LiveViewController;->av()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lui_Controller/ui_Liveview/UI_LiveViewController;

.field private b:I


# direct methods
.method constructor <init>(Lui_Controller/ui_Liveview/UI_LiveViewController;)V
    .locals 1

    .prologue
    .line 2045
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$14;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2046
    const/16 v0, 0x64

    iput v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$14;->b:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    .line 2054
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$14;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$14;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->i(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/EditText;

    move-result-object v2

    iget v4, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$14;->b:I

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$14;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->j(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/TextView;

    move-result-object v5

    move-object v1, p1

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Landroid/text/Editable;Landroid/widget/EditText;Landroid/text/TextWatcher;ILandroid/widget/TextView;)V

    .line 2055
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 2051
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 2049
    return-void
.end method
