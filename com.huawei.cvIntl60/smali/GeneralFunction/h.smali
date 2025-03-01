.class public LGeneralFunction/h;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGeneralFunction/h$a;,
        LGeneralFunction/h$b;
    }
.end annotation


# instance fields
.field private a:LGeneralFunction/h$b;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(LGeneralFunction/h;)LGeneralFunction/h$b;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LGeneralFunction/h;->a:LGeneralFunction/h$b;

    return-object v0
.end method

.method private a()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, LGeneralFunction/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LGeneralFunction/f;->a(Landroid/content/Context;)LGeneralFunction/f;

    move-result-object v0

    const v1, 0x7f0a00c6

    .line 98
    invoke-virtual {v0, v1}, LGeneralFunction/f;->a(I)LGeneralFunction/f;

    move-result-object v0

    new-instance v1, LGeneralFunction/h$3;

    invoke-direct {v1, p0}, LGeneralFunction/h$3;-><init>(LGeneralFunction/h;)V

    .line 99
    invoke-virtual {v0, v1}, LGeneralFunction/f;->a(LGeneralFunction/f$b;)LGeneralFunction/f;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, LGeneralFunction/f;->a(Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method private a(LGeneralFunction/h$b;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, LGeneralFunction/h;->a:LGeneralFunction/h$b;

    .line 34
    return-void
.end method

.method static synthetic a(LGeneralFunction/h;LGeneralFunction/h$b;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, LGeneralFunction/h;->a(LGeneralFunction/h$b;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    const v0, 0x7f040035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 94
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 43
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 44
    invoke-virtual {p0}, LGeneralFunction/h;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {p0}, LGeneralFunction/h;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 46
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 47
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 48
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 49
    invoke-virtual {p0}, LGeneralFunction/h;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 50
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v4, 0x7f1000e2

    const v3, 0x7f1000e1

    const v2, 0x7f1000e0

    .line 57
    iget-object v0, p0, LGeneralFunction/h;->a:LGeneralFunction/h$b;

    if-eqz v0, :cond_0

    .line 58
    const v0, 0x7f100094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LGeneralFunction/h;->b:Landroid/view/View;

    .line 59
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, LGeneralFunction/h;->a:LGeneralFunction/h$b;

    invoke-static {v1}, LGeneralFunction/h$b;->a(LGeneralFunction/h$b;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LGeneralFunction/h$1;

    invoke-direct {v1, p0}, LGeneralFunction/h$1;-><init>(LGeneralFunction/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, LGeneralFunction/h;->a:LGeneralFunction/h$b;

    invoke-static {v1}, LGeneralFunction/h$b;->c(LGeneralFunction/h$b;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LGeneralFunction/h$2;

    invoke-direct {v1, p0}, LGeneralFunction/h$2;-><init>(LGeneralFunction/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, LGeneralFunction/h;->a:LGeneralFunction/h$b;

    invoke-static {v0}, LGeneralFunction/h$b;->e(LGeneralFunction/h$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, LGeneralFunction/h;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 82
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LGeneralFunction/h;->setCancelable(Z)V

    .line 84
    :cond_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
