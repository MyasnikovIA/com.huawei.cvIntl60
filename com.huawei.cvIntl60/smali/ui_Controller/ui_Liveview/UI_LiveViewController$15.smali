.class Lui_Controller/ui_Liveview/UI_LiveViewController$15;
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
    .line 2057
    iput-object p1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$15;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2058
    const/16 v0, 0xfa

    iput v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$15;->b:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    .line 2066
    iget-object v0, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$15;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$15;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->k(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/EditText;

    move-result-object v2

    iget v4, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$15;->b:I

    iget-object v1, p0, Lui_Controller/ui_Liveview/UI_LiveViewController$15;->a:Lui_Controller/ui_Liveview/UI_LiveViewController;

    invoke-static {v1}, Lui_Controller/ui_Liveview/UI_LiveViewController;->l(Lui_Controller/ui_Liveview/UI_LiveViewController;)Landroid/widget/TextView;

    move-result-object v5

    move-object v1, p1

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lui_Controller/ui_Liveview/UI_LiveViewController;->a(Lui_Controller/ui_Liveview/UI_LiveViewController;Landroid/text/Editable;Landroid/widget/EditText;Landroid/text/TextWatcher;ILandroid/widget/TextView;)V

    .line 2067
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 2063
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 2061
    return-void
.end method
